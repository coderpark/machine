package com.sh.common;

/**
 * Created by zhaopin on 16/6/5.
 */
public class ReturnT<T> {

    private Integer code;

    private T content;

    public static final ReturnT<String> SUCCESS = new ReturnT<String>(200, "success");

    public static final ReturnT<String> FAILURE = new ReturnT<>(500, "failure");

    public ReturnT(Integer code, T content) {
        this.code = code;
        this.content = content;
    }

    public ReturnT(T content) {
        this.code = 200;
        this.content = content;
    }

    @Override
    public String toString() {
        return " ResultT [ code=" + code + ", content=" + content + "]";
    }
}
