package com.home.controller;

import com.home.dao.ItemDao;
import com.home.dao.daoimpl.ItemDaoImpl;
import com.home.model.Item;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Itzhak
 */
@WebServlet("/ItemServlet")
public class ItemServlet extends HttpServlet {

    private ItemDao dao;
    private static final String LIST_ITEM = "/views/item/itemList.jsp";
    private static final String INSERT_OR_EDIT = "/views/item/item.jsp";
    private static final String INDEX = "index.jsp";

    public ItemServlet() {
        dao = new ItemDaoImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward = "";
        String action = request.getParameter("action");

        if (action == null) {
            action = LIST_ITEM;
        }

        if (action.equalsIgnoreCase("delete")) {
            forward = LIST_ITEM;
            int itemId = Integer.parseInt(request.getParameter("itemId"));
            dao.deleteItem(itemId);
            request.setAttribute("items", dao.getAllItems());

        } else if (action.equalsIgnoreCase("edit")) {
            forward = INSERT_OR_EDIT;
            int itemId = Integer.parseInt(request.getParameter("itemId"));
            Item item = dao.getItemById(itemId);
            request.setAttribute("item", item);

        } else if (action.equalsIgnoreCase("insert")) {
            forward = INSERT_OR_EDIT;

        } else {
            forward = LIST_ITEM;
            request.setAttribute("items", dao.getAllItems());
        }
        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Item item = new Item();
        item.setModel(request.getParameter("model"));
        item.setMemory(request.getParameter("memory"));
        item.setColor(request.getParameter("color"));
        String itemId = request.getParameter("itemId");

        if (itemId == null || itemId.isEmpty()) {
            dao.addItem(item);
        } else {
            item.setItemId(Integer.parseInt(itemId));
            dao.updateItem(item);
        }
        request.setAttribute("items", dao.getAllItems());
        RequestDispatcher view = request.getRequestDispatcher(LIST_ITEM);
        view.forward(request, response);
    }
}
