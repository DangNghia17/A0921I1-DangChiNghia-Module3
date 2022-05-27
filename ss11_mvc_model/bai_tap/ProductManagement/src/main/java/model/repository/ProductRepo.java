package model.repository;

import model.bean.Product;

import java.util.Map;

public interface ProductRepo {
    Map<Integer,Product> findAll();

    void save(Product product);

    Product findById(int id);

    void remove(int id);

    void update(int id, Product product);
}
