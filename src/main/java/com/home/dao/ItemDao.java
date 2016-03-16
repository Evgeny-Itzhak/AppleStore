package com.home.dao;

import com.home.model.Item;

import java.util.List;

/**
 * @author Itzhak
 */
public interface ItemDao {

    void addItem(Item item);

    void deleteItem(int itemId);

    void updateItem(Item item);

    List<Item> getAllItems();

    Item getItemById(int itemId);
}
