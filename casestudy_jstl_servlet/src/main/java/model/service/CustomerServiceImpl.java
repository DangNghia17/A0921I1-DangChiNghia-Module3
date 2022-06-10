package model.service;

import model.beans.Customer;
import model.repository.CustomerRepo;
import model.repository.Impl.CustomerRepoImpl;

import java.sql.SQLException;
import java.util.List;

public class CustomerServiceImpl implements CustomerService {
    CustomerRepo customerRepo = new CustomerRepoImpl();
    @Override
    public List<Customer> selectAllCustomer() throws SQLException {
            return customerRepo.selectAllCustomer();
    }

    @Override
    public Customer selectCustomerById(int id) throws SQLException {
        return null;
    }

    @Override
    public boolean insertCustomer(Customer customer) throws SQLException {
        return false;
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        return false;
    }

    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        return false;
    }
}
