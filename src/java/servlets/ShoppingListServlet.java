/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 815138
 */
public class ShoppingListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getSession().getAttribute("username") == null || request.getSession().getAttribute("username").equals("")) {
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        } else if (request.getParameter("action") != null && request.getParameter("action").equals("logout")) {
            request.getSession().setAttribute("username", null);
            request.getSession().setAttribute("shoppingList", null);
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        } else {
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        switch (request.getParameter("action")) {
            case "register":
                request.getSession().setAttribute("username", request.getParameter("username"));
                request.getSession().setAttribute("shoppingList", new ArrayList<String>());
                break;
            case "add":
                String newItem = request.getParameter("item");
                ((ArrayList)request.getSession().getAttribute("shoppingList")).add(newItem);
                break;
            case "delete":
                //Find what item(s) they want to delete
                String itemDelete = request.getParameter("itemDelete");
                 ((ArrayList)request.getSession().getAttribute("shoppingList")).remove(itemDelete);
                break;
        }
        getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
                       
    }


}
