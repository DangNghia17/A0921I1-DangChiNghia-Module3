package model.service;

import model.beans.Customer;

import java.sql.SQLException;
import java.util.List;

public interface CustomerService {

     List<Customer> selectAllCustomer() throws SQLException ;
     Customer selectCustomerById(int id) throws SQLException ;
    boolean insertCustomer(Customer customer) throws SQLException;
    boolean updateCustomer(Customer customer) throws SQLException;
    boolean deleteCustomer(int id) throws SQLException;

}
