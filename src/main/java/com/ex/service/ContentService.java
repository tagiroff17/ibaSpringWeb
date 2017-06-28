package com.ex.service;

import com.ex.entity.Content;
import com.ex.entity.Item;

/**
 * Created by Tagirov on 10.05.2017.
 */
public interface ContentService {
     void refresh(Content newContent);

     void addItem();

     void deleteAllNecessaryItems();

     Item getNewItem();

    Content getContent();

    void setContent(Content content);


}
