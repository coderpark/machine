package com.sh.mapper;

import com.sh.common.MyMapper;
import com.sh.entity.Machine;

/**
 * Created by zhaopin on 16/6/4.
 */
public interface MachineMapper extends MyMapper<Machine> {

    Integer getCount();
}
