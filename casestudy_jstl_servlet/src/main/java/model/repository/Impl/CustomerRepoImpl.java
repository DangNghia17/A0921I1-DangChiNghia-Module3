package model.repository.Impl;

import model.beans.Customer;
import model.repository.ConnectionData;
import model.repository.CustomerRepo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepoImpl implements CustomerRepo {
    private static final String SELECT_ALL_CUSTOMER = "select * from khach_hang;";

    @Override
    public List<Customer> selectAllCustomer() throws SQLException {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = ConnectionData.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int customer_id = resultSet.getInt("customer_id");
            String customer_name = resultSet.getString("customer_name");
            String customer_birthday = resultSet.getString("customer_birthday");
            String customer_gender = resultSet.getString("customer_gender");
            String customer_id_card = resultSet.getString("customer_id_card");
            String customer_phone = resultSet.getString("customer_phone");
            String customer_email = resultSet.getString("customer_email");
            String customer_address = resultSet.getString("customer_address");
            int customer_type_id = resultSet.getInt("customer_type_id");
            Customer customer = new Customer(customer_id, customer_name, customer_birthday, customer_gender, customer_id_card, customer_phone, customer_email, customer_address ,customer_type_id);
            customerList.add(customer);
        }
        return customerList;
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
