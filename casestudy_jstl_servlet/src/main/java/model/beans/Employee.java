package model.beans;

import java.util.Date;

public class Employee {
    private int employee_id ;
    private String employee_name;
    private Date employee_birthday;
    private boolean employee_gender;
    private String employee_id_card;
    private String employee_phone ;
    private String employee_email;
    private String employee_address;
    private int employee_type_id;

    public Employee() {
    }

    public Employee(int employee_id, String employee_name, Date employee_birthday, boolean employee_gender, String employee_id_card, String employee_phone, String employee_email, String employee_address, int employee_type_id) {
        this.employee_id = employee_id;
        this.employee_name = employee_name;
        this.employee_birthday = employee_birthday;
        this.employee_gender = employee_gender;
        this.employee_id_card = employee_id_card;
        this.employee_phone = employee_phone;
        this.employee_email = employee_email;
        this.employee_address = employee_address;
        this.employee_type_id = employee_type_id;
    }

    public int getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(int employee_id) {
        this.employee_id = employee_id;
    }

    public String getEmployee_name() {
        return employee_name;
    }

    public void setEmployee_name(String employee_name) {
        this.employee_name = employee_name;
    }

    public Date getEmployee_birthday() {
        return employee_birthday;
    }

    public void setEmployee_birthday(Date employee_birthday) {
        this.employee_birthday = employee_birthday;
    }

    public boolean isEmployee_gender() {
        return employee_gender;
    }

    public void setEmployee_gender(boolean employee_gender) {
        this.employee_gender = employee_gender;
    }

    public String getEmployee_id_card() {
        return employee_id_card;
    }

    public void setEmployee_id_card(String employee_id_card) {
        this.employee_id_card = employee_id_card;
    }

    public String getEmployee_phone() {
        return employee_phone;
    }

    public void setEmployee_phone(String employee_phone) {
        this.employee_phone = employee_phone;
    }

    public String getEmployee_email() {
        return employee_email;
    }

    public void setEmployee_email(String employee_email) {
        this.employee_email = employee_email;
    }

    public String getEmployee_address() {
        return employee_address;
    }

    public void setEmployee_address(String employee_address) {
        this.employee_address = employee_address;
    }

    public int getEmployee_type_id() {
        return employee_type_id;
    }

    public void setEmployee_type_id(int employee_type_id) {
        this.employee_type_id = employee_type_id;
    }
}
