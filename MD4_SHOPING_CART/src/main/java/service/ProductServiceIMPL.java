package service;

import model.Product;
import until.ConnectionDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductServiceIMPL implements IProductService{
    @Override
    public List<Product> findAll() {
        List<Product> productList = new ArrayList<Product>();
        try {
            Connection connection = ConnectionDB.getConnection();
            PreparedStatement pre = connection.prepareStatement("SELECT * from Product");
            ResultSet rs = pre.executeQuery();
            while (rs.next()){
                Product product = new Product();
                product.setpId(rs.getInt("pId"));
                product.setpName(rs.getString("pName"));
                product.setpDes(rs.getString("pDes"));
                product.setpImage(rs.getString("pImage"));
                product.setpPrice(rs.getFloat("pPrice"));
                product.setpStatus(rs.getBoolean("pStatus"));
                productList.add(product);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return productList;
    }

    @Override
    public Product findById(int id) {
        for (Product pro:findAll()) {
            if (pro.getpId()==id){
                return pro;
            }
        }
        return null;
    }
}
