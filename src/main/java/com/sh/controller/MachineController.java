package com.sh.controller;

import com.github.pagehelper.PageInfo;
import com.sh.common.ReturnT;
import com.sh.entity.Machine;
import com.sh.service.MachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by zhaopin on 16/6/5.
 */
@RestController
@RequestMapping("/machine")
public class MachineController {

    @Autowired
    private MachineService machineService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list(Machine machine) {
        ModelAndView result = new ModelAndView("machineList");
        List<Machine> machines = machineService.getAll(machine);
        result.addObject("pageInfo", new PageInfo<Machine>(machines));
        result.addObject("queryParam", machine);
        result.addObject("page", machine.getPage());
        result.addObject("rows", machine.getRows());
        return result;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @ResponseBody
    public ReturnT<String> save(@ModelAttribute("machine") Machine machine) {
        machineService.save(machine);
        return ReturnT.SUCCESS;
    }
}
