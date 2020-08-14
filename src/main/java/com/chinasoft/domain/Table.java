package com.chinasoft.domain;

import lombok.Data;

import java.util.List;

@Data
public class Table<T> {

    private Integer code;
    private String msg;
    private Integer count;
    private List<T> data;



}
