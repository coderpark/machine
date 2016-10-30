package com.sh.mapper;

import com.sh.common.MyMapper;
import com.sh.entity.MachineMove;
import com.sh.model.MachineMoveVO;

import java.util.List;

/**
 * Created by zhaopin on 16/6/10.
 */
public interface MoveMapper extends MyMapper<MachineMove> {

    Boolean cannotMove(Long machineId);

    List<MachineMoveVO> getMoveVO();
}
