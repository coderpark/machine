package com.sh.mapper;

import com.sh.common.MyMapper;
import com.sh.entity.Machine;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * Created by zhaopin on 16/6/4.
 */
public interface MachineMapper extends MyMapper<Machine> {

    Integer getCount();

    List<Machine> searchMachine(@Param("searchName") String searchName,
                                @Param("serial") String serial,
                                @Param("fixDate") Date fixDate,
                                @Param("buyDate") Date buyDate,
                                @Param("typId") Long typId);
}
