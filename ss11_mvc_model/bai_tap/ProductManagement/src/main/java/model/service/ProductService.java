package model.service;

import model.bean.Product;

import java.util.List;
import java.util.Map;

public interface ProductService {
    Map<Integer,Product> findAll();

    void save(Product product);

    Product findById(int id);

    void remove(int id);

    void update(int id, Product product);
}
