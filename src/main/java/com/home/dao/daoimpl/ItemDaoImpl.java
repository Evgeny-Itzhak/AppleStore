package com.home.dao.daoimpl;

import com.home.dao.ItemDao;
import com.home.model.Item;
import com.home.util.DbUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Itzhak
 */
public class ItemDaoImpl implements ItemDao {

    private Connection connection;

    public ItemDaoImpl() {
        connection = DbUtil.getConnection();
    }

    public void addItem(Item item) {
        String query = "INSERT INTO item (model, memory, color) VALUES (?,?,?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, item.getModel());
            preparedStatement.setString(2, item.getMemory());
            preparedStatement.setString(3, item.getColor());
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void deleteItem(int itemId) {
        String query = "DELETE FROM item WHERE item_id=?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, itemId);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void updateItem(Item item) {
        String query = "UPDATE item SET model=?, memory=?, color=?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, item.getModel());
            preparedStatement.setString(2, item.getMemory());
            preparedStatement.setString(3, item.getColor());
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Item> getAllItems() {
        List<Item> items = new ArrayList<Item>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM item");
            while (resultSet.next()) {
                Item item = new Item();
                item.setItemId(resultSet.getInt("item_id"));
                item.setModel(resultSet.getString("model"));
                item.setMemory(resultSet.getString("memory"));
                item.setColor(resultSet.getString("color"));
                items.add(item);
            }
            resultSet.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return items;
    }

    public Item getItemById(int itemId) {
        Item item = new Item();
        String query = "SELECT * FROM item WHERE item_id=?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, itemId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                item.setItemId(resultSet.getInt("item_id"));
                item.setModel(resultSet.getString("model"));
                item.setMemory(resultSet.getString("memory"));
                item.setColor(resultSet.getString("color"));
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return item;
    }
}
