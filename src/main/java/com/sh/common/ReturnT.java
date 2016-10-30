package com.sh.common;

/**
 * Created by zhaopin on 16/6/5.
 */
public class ReturnT<T> {

    private Integer code;

    private T content;

    public static final ReturnT<String> SUCCESS = new ReturnT<String>(200, "success");

    public static final ReturnT<String> FAILURE = new ReturnT<String>(500, "failure");

    public ReturnT(Integer code, T content) {
        this.code = code;
        this.content = content;
    }

    public ReturnT(T content) {
        this.code = 200;
        this.content = content;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public T getContent() {
        return content;
    }

    public void setContent(T content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return " ResultT [ code=" + code + ", content=" + content + "]";
    }
}
