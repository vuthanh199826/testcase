package model;

import java.sql.SQLException;
import java.util.List;

public interface IProductDAO {
void insert(Product product) throws SQLException;
Product selectProduct(int id) throws SQLException;
List<Product> selectAllProduct() throws SQLException;
boolean delete(int id) throws SQLException;
boolean update(Product product) throws SQLException;
List<Product> searchByName(String name) throws SQLException;
    List<Product> searchById(int id) throws SQLException;
    List<Product> sort(String type) throws SQLException;
}
