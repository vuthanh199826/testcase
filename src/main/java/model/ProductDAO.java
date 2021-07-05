package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO implements IProductDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/pm?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    public ProductDAO() {
    }


    @Override
    public void insert(Product product) throws SQLException {
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("insert into product values (?,?,?,?,?,?)");
        preparedStatement.setInt(1, product.getId());
        preparedStatement.setString(2, product.getModel());
        preparedStatement.setString(3, product.getName());
        preparedStatement.setInt(4, product.getPrice());
        preparedStatement.setString(5, product.getImg());
        preparedStatement.setString(6, product.getDescribe());
        preparedStatement.executeUpdate();
    }

    @Override
    public Product selectProduct(int id) throws SQLException {
        Product product = null;
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("select* from Product where id = ?");
        preparedStatement.setInt(1,id);
        ResultSet resultSet =  preparedStatement.executeQuery();
        while (resultSet.next()){
            String model = resultSet.getString("model");
            String name = resultSet.getString("name");
            int price = resultSet.getInt("price");
            String img = resultSet.getString("img");
            String describe = resultSet.getString("describe");
            product = new Product(id,model,name,price,img,describe);
        }
        return product;
    }

    @Override
    public List<Product> selectAllProduct() throws SQLException {
        List<Product> products = new ArrayList<>();
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("select* from Product");
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String model = resultSet.getString("model");
            String name = resultSet.getString("name");
            int price = resultSet.getInt("price");
            String img = resultSet.getString("img");
            String decribe = resultSet.getString("describe");
            products.add(new Product(id, model, name, price, img, decribe));
        }
        return products;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        boolean rowDeleted;
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("delete from Product where id = ?");
        preparedStatement.setInt(1,id);
        rowDeleted = preparedStatement.executeUpdate() > 0;
        return rowDeleted;
    }

    @Override
    public boolean update(Product product) throws SQLException {
        boolean rowUpdated;
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("update Product set model = ? , name = ?, price = ? , img = ? , product.describe = ? where  id = ?;");
        preparedStatement.setString(1,product.getModel());
        preparedStatement.setString(2,product.getName());
        preparedStatement.setInt(3,product.getPrice());
        preparedStatement.setString(4,product.getImg());
        preparedStatement.setString(5 ,product.getDescribe());
        preparedStatement.setInt(6,product.getId());
        rowUpdated = preparedStatement.executeUpdate() >0;
        return  rowUpdated;
    }

    @Override
    public List<Product> searchByName(String name) throws SQLException {
        List<Product> products = new ArrayList<>();
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("select* from product where name like ?");
        preparedStatement.setString(1,"%"+name+"%");
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            int id = resultSet.getInt("id");
            String model = resultSet.getString("model");
            String namex = resultSet.getString("name");
            int price = resultSet.getInt("price");
            String img = resultSet.getString("img");
            String describe = resultSet.getString("describe");
            products.add(new Product(id,model,namex,price,img,describe));
        }
        return products;
    }

    @Override
    public List<Product> searchById(int id) throws SQLException {
        List<Product> products = new ArrayList<>();
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("select* from product where id = ?");
        preparedStatement.setInt(1,id);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String model = resultSet.getString("model");
            String namex = resultSet.getString("name");
            int price = resultSet.getInt("price");
            String img = resultSet.getString("img");
            String describe = resultSet.getString("describe");
            products.add(new Product(id,model,namex,price,img,describe));
        }
        return products;
    }

    @Override
    public List<Product> sort(String type) throws SQLException {
        List<Product> products = new ArrayList<>();
        Connection connection = getConnection();
        PreparedStatement preparedStatement;
        if(type.equals("name")){
           preparedStatement = connection.prepareStatement("select* from Product order by name ");
        }else if(type.equals("id")){
           preparedStatement = connection.prepareStatement("select* from Product order by id ");
        }else if(type.equals("price")){
           preparedStatement = connection.prepareStatement("select* from Product order by price ");
        }else {
            preparedStatement = connection.prepareStatement("select* from Product order by id ");
        }
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String model = resultSet.getString("model");
            String name = resultSet.getString("name");
            int price = resultSet.getInt("price");
            String img = resultSet.getString("img");
            String decribe = resultSet.getString("describe");
            products.add(new Product(id, model, name, price, img, decribe));
        }
        return products;
    }
}
