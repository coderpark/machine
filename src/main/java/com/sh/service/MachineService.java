package com.sh.service;

import com.github.pagehelper.PageHelper;
import com.sh.mapper.MachineMapper;
import com.sh.model.Machine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhaopin on 16/6/4.
 */
@Service
public class MachineService {

    @Autowired
    private MachineMapper machineMapper;

    public List<Machine> getAll(Machine machine) {
        if(machine.getPage() != null && machine.getRows() != null) {
            PageHelper.startPage(machine.getPage(), machine.getRows(), "id");
        }
        return machineMapper.selectAll();
    }
}
