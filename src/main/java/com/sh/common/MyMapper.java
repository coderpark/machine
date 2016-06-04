package com.sh.common;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;

/**
 * Created by zhaopin on 16/5/28.
 */
public interface MyMapper<T> extends Mapper<T>, MySqlMapper<T> {
}
