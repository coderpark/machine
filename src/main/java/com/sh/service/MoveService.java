package com.sh.service;

import com.github.pagehelper.PageHelper;
import com.sh.entity.MachineMove;
import com.sh.mapper.MoveMapper;
import com.sh.model.MachineMoveVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhaopin on 16/6/10.
 */
@Service
public class MoveService {

    @Autowired
    private MoveMapper moveMapper;

    public void addMove(MachineMove move) {
        moveMapper.insert(move);
    }

    public List<MachineMove> getListByPage(MachineMove move) {
        if(move.getPage() != null && move.getRows() != null) {
            PageHelper.startPage(move.getPage(), move.getRows(), "id desc");
        }
        return moveMapper.selectAll();
    }

    public List<MachineMoveVO> listMachineMoveVo(MachineMove move) {
        if(move.getPage() != null && move.getRows() != null) {
            PageHelper.startPage(move.getPage(), move.getRows(), "id desc");
        }
        return moveMapper.getMoveVO();
    }

    public Boolean cannotMove(Long machineId) {
        return moveMapper.cannotMove(machineId);
    }
}
