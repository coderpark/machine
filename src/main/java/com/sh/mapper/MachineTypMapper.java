package com.sh.mapper;

import com.sh.common.MyMapper;
import com.sh.entity.MachineTyp;

import java.util.List;

/**
 * Created by zhaopin on 16/8/16.
 */
public interface MachineTypMapper extends MyMapper<MachineTyp> {

    List<MachineTyp> getTypByName(String name);
}
