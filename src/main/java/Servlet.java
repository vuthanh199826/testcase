import model.Product;
import model.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "Servlet", urlPatterns = "/products")
public class Servlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;

    public void init() {
        productDAO = new ProductDAO();
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {

            case "create":
                showFormCreate(request, response);
                break;
            case "delete":
                try {
                    delete(request, response);
                    listProduct(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "edit":
                try {
                    showFormEdit(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "search":
                try {
                    search(request,response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "sort":
                try {
                    sort(request,response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "display":
                try {
                    display(request,response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            default:
                try {
                    listProduct(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                try {
                    add(request, response);
                    listProduct(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "edit":
                try {
                    update(request, response);
                    listProduct(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;

        }
    }

    private void display(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<Product> products = productDAO.selectAllProduct();
        request.setAttribute("listProduct", products);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/display.jsp");
        requestDispatcher.forward(request, response);
    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<Product> products = productDAO.selectAllProduct();
        request.setAttribute("listProduct", products);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/list.jsp");
        requestDispatcher.forward(request, response);
    }


    private void showFormCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("create.jsp");
        requestDispatcher.forward(request, response);
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        if(checkNull(request,response)){
            listProduct(request,response);
        }else {
        int id = Integer.parseInt(request.getParameter("id"));
        String model = request.getParameter("model");
        String name = request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
        String img = request.getParameter("img");
        String describe = request.getParameter("describe");
        Product product = new Product(id, model, name, price, img, describe);
        productDAO.insert(product);}
    }


    public boolean checkNull(HttpServletRequest request, HttpServletResponse response) {
        if (request.getParameter("id").equals("")
                || request.getParameter("name").equals("")
                || request.getParameter("model").equals("")
                || request.getParameter("price").equals("")
                || request.getParameter("img").equals("")
                || request.getParameter("describe").equals("")
        ){
            return true;
        }else {
            return false;
        }

    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        productDAO.delete(id);
    }

    private void showFormEdit(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productDAO.selectProduct(id);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("edit.jsp");
        request.setAttribute("product", product);
        requestDispatcher.forward(request, response);
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String model = request.getParameter("model");
        String name = request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
        String img = request.getParameter("img");
        String describe = request.getParameter("describe");
        Product product = new Product(id, model, name, price, img, describe);
        System.out.println(product);
        productDAO.update(product);
    }

    public  void searchByName(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String name = request.getParameter("input");
        List<Product> products =  productDAO.searchByName(name);
        request.setAttribute("listProduct", products);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/list.jsp");
        requestDispatcher.forward(request, response);
    }

    public  void searchByID(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt( request.getParameter("input"));
        List<Product> products =  productDAO.searchById(id);
        request.setAttribute("listProduct", products);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/list.jsp");
        requestDispatcher.forward(request, response);
    }

    public void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {
        String type = request.getParameter("type");
        if(type.equals("name")){
            searchByName(request,response);
        }else if(type.equals("id")){
            searchByID(request,response);
        }
    }

    public void sort(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String type = request.getParameter("sort");
        List<Product> products = productDAO.sort(type);
        request.setAttribute("listProduct", products);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/list.jsp");
        requestDispatcher.forward(request, response);
    }

}
