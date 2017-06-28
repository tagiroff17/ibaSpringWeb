package com.ex.entity;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.springframework.stereotype.Component;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created by Tagirov on 06.05.2017
 */


public class Item {

    private String value;
    private boolean isDelete;

    public Item() {
    }


    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }


    public boolean isDelete() {
        return isDelete;
    }

    public void setDelete(boolean delete) {
        isDelete = delete;
    }

    public Item(String value) {
        this.value = value;
    }

    public Item(String value, boolean isDelete) {
        this.value = value;
        this.isDelete = isDelete;
    }

    public void copy(Item item){
        this.value = item.getValue();
        this.isDelete = item.isDelete();
    }
}
