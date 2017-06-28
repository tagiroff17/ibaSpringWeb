package com.ex.service.impl;

import com.ex.annotation.ContentServiceQualifier;
import com.ex.entity.Content;
import com.ex.entity.Item;
import com.ex.service.ContentService;

import javax.management.relation.Role;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;

/**
 * Created by TagirovA on 10.05.2017.
 */
@Service
@ContentServiceQualifier
public abstract class ContentServiceImpl implements ContentService {

    @Autowired
    @Qualifier("content")
    private Content content;

    public Content getContent() {
        return content;
    }

    public void setContent(Content content) {
        this.content = content;
    }

    public void refresh(Content newContent){
        for(int i = 0; i< content.getItems().size(); i++){
            content.getItems().get(i).copy(newContent.getItems().get(i));
        }
    }

    public void addItem(){
        content.getItems().add(getNewItem());
    }
    @Secured("ROLE_ADMIN")
    public void deleteAllNecessaryItems(){
        for(int i = 0; i< content.getItems().size(); i++){
            if(content.getItems().get(i).isDelete()){
                content.getItems().remove(i);
                i--;
            }
        }
    }

    public abstract Item getNewItem();


}
