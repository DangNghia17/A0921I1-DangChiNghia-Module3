package model.service.Impl;

import model.bean.Product;
import model.repository.ProductRepo;
import model.repository.ProductRepoImpl;
import model.service.ProductService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    public static ProductRepo productRepo = new ProductRepoImpl();


    @Override
    public Map<Integer,Product> findAll() {
        return productRepo.findAll();
    }

    @Override
    public void save(Product product) {
        productRepo.save(product);
    }

    @Override
    public Product findById(int id) {
        return productRepo.findById(id);
    }

    @Override
    public void remove(int id) {
        productRepo.remove(id);
    }

    @Override
    public void update(int id, Product product) {
        productRepo.update(id,product);
    }
}

