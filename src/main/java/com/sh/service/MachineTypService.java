package com.sh.service;

import com.github.pagehelper.PageHelper;
import com.sh.entity.MachineTyp;
import com.sh.mapper.MachineTypMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhaopin on 16/8/16.
 */
@Service
public class MachineTypService {

    @Autowired
    private MachineTypMapper machineTypMapper;

    public List<MachineTyp> getMachineTyps() {
        return machineTypMapper.selectAll();
    }

    public List<MachineTyp> getTypsByPages(MachineTyp typ) {
        if(typ.getPage() != null && typ.getRows() != null) {
            PageHelper.startPage(typ.getPage(), typ.getRows(), "id");
        }
        return machineTypMapper.selectAll();
    }

    public void save(MachineTyp typ) {
        List<MachineTyp> typs = machineTypMapper.getTypByName(typ.getName());
        if(typs.size() == 0) {
            machineTypMapper.insert(typ);
        }
    }

    public void deleteTyp(Long id) {
        machineTypMapper.deleteByPrimaryKey(id);
    }
}
