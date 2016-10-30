package com.sh.controller;

import com.github.pagehelper.PageInfo;
import com.sh.common.ExportExcelUtil;
import com.sh.common.ReturnT;
import com.sh.entity.Machine;
import com.sh.entity.MachineMove;
import com.sh.entity.MachineTyp;
import com.sh.entity.Role;
import com.sh.model.MoveVO;
import com.sh.service.MachineService;
import com.sh.service.MachineTypService;
import com.sh.service.MoveService;
import com.sh.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;

/**
 * Created by zhaopin on 16/6/5.
 */
@RestController
@RequestMapping("/machine")
public class MachineController {

    @Autowired
    private MachineService machineService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private MoveService moveService;

    @Autowired
    private MachineTypService machineTypService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list(Machine machine) {
        ModelAndView result = new ModelAndView("machineList");
        List<Machine> machines = machineService.getAll(machine);
        result.addObject("pageInfo", new PageInfo<Machine>(machines));
        result.addObject("queryParam", machine);
        result.addObject("page", machine.getPage());
        result.addObject("rows", machine.getRows());
        result.addObject("machineTyps", machineTypService.getMachineTyps());
        return result;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @ResponseBody
    public ReturnT<String> save(@ModelAttribute Machine machine) {
        machineService.saveOrUpdate(machine);
        return ReturnT.SUCCESS;
    }

    @RequestMapping(value = "/page/add", method = RequestMethod.GET)
    public ModelAndView toInBase() {
        ModelAndView result = new ModelAndView("editMachine", "command", new Machine());
        result.addObject("machineTyps", machineTypService.getMachineTyps());
        return result;
    }

    @RequestMapping(value = "/move/{machine}", method = RequestMethod.GET)
    @ResponseBody
    public ReturnT<MoveVO> moveMachine(@PathVariable("machine") Long machineId) {
        Machine machine = machineService.getById(machineId);
        List<Role> roles = roleService.getAllRoles();
        MoveVO vo = new MoveVO(roles, machine);
        return new ReturnT<MoveVO>(vo);
    }

    @RequestMapping(value = "/move/add", method = RequestMethod.POST)
    @ResponseBody
    public ReturnT<String> addMove(@ModelAttribute MachineMove move) {
        if(moveService.cannotMove(move.getMachine())) {
            return new ReturnT<String>(300, "设备已借出, 不能再次借出.");
        }
        moveService.addMove(move);
        return ReturnT.SUCCESS;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("id") Long machineId) {
        Machine m = machineService.getById(machineId);
        ModelAndView result = new ModelAndView("editMachine");
        result.addObject("machine", m);
        return result;
    }

    @RequestMapping(value = "/export", method = RequestMethod.GET)
    public ModelAndView export(HttpServletResponse response, Machine machine) {
        String[] headers = {"设备名称", "设备序列号"};
        String[] columns = {"name", "serial"};
        List<Machine> machines = machineService.getAll(machine);
        List<LinkedHashMap<String, Object>> results = new ArrayList<>();
        for(Machine m: machines) {
            LinkedHashMap<String, Object> line = new LinkedHashMap<>();
            line.put("name", m.getName());
            line.put("serial", m.getSerial());
            results.add(line);
        }
        try {
            ExportExcelUtil.export("设备列表", headers, columns, results, response, "machines");
        }catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "typ/list", method = RequestMethod.GET)
    public ModelAndView machineTyps(MachineTyp typ) {
        ModelAndView result = new ModelAndView("typList");
        List<MachineTyp> typs = machineTypService.getTypsByPages(typ);
        result.addObject("pageInfo", new PageInfo<MachineTyp>(typs));
        result.addObject("queryParam", typ);
        result.addObject("page", typ.getPage());
        result.addObject("rows", typ.getRows());
        return result;
    }

    @RequestMapping(value = "/typ/add", method = RequestMethod.POST)
    @ResponseBody
    public ReturnT<String> saveMachineTyp(@ModelAttribute MachineTyp typ) {
        machineTypService.save(typ);
        return ReturnT.SUCCESS;
    }

    @RequestMapping(value = "/typ/{typId}/delete", method = RequestMethod.POST)
    public ReturnT<String> deleteTyp(@PathVariable("typId") Long typId) {
        machineTypService.deleteTyp(typId);
        return ReturnT.SUCCESS;
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public ModelAndView searchMachines(String name, String serial, @DateTimeFormat(pattern = "MM/dd/yyyy") Date fixDate,
                                       @DateTimeFormat(pattern = "MM/dd/yyyy") Date buyDate, Long typId) {
        ModelAndView result = new ModelAndView("machineList");
        List<Machine> machines = machineService.searchMachines(name, serial, fixDate, buyDate, typId);
        result.addObject("pageInfo", new PageInfo<Machine>(machines));
        result.addObject("machineTyps", machineTypService.getMachineTyps());
        return result;
    }
}
