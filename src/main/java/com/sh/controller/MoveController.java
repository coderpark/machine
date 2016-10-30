package com.sh.controller;

import com.github.pagehelper.PageInfo;
import com.sh.entity.MachineMove;
import com.sh.model.MachineMoveVO;
import com.sh.service.MoveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by zhaopin on 16/6/10.
 */
@RestController
@RequestMapping("/move")
public class MoveController {

    @Autowired
    private MoveService moveService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list(MachineMove move) {
//        List<MachineMove> moves = moveService.getListByPage(move);
        List<MachineMoveVO> machineMoveVOs = moveService.listMachineMoveVo(move);
        ModelAndView result = new ModelAndView("moveList");
        result.addObject("pageInfo", new PageInfo<MachineMoveVO>(machineMoveVOs));
        result.addObject("queryParam", move);
        return result;
    }

}
