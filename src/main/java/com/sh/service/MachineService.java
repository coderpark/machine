package com.sh.service;

import com.github.pagehelper.PageHelper;
import com.sh.entity.Machine;
import com.sh.mapper.MachineMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
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

    public Machine getById(Long id) {
        return machineMapper.selectByPrimaryKey(id);
    }

    public void save(Machine machine) {
        machineMapper.insert(machine);
    }

    public void saveOrUpdate(Machine machine) {
        if(machine.getId() != null && machine.getId() > 0) {
            machineMapper.updateByPrimaryKey(machine);
        } else {
            machineMapper.insert(machine);
        }
    }

    public void deleteById(Long id) {
        machineMapper.deleteByPrimaryKey(id);
    }

    public Integer getMachineCount() {
        return machineMapper.getCount();
    }

    public List<Machine> searchMachines(String name, String serial, Date fixDate, Date buyDate, Long typId) {

        return machineMapper.searchMachine(name, serial, fixDate, buyDate, typId);
    }
}
