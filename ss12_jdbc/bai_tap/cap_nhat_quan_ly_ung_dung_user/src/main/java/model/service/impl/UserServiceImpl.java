package model.service.impl;

import model.bean.User;
import model.repository.IUserDAO;

import model.repository.impl.IUserDAOImpl;
import model.service.UserService;

import java.sql.SQLException;
import java.util.List;

public class UserServiceImpl implements UserService {
    IUserDAO userDAO=new IUserDAOImpl();
    @Override
    public void insertUser(User user) throws SQLException {
        userDAO.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return userDAO.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return userDAO.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return userDAO.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return userDAO.updateUser(user);
    }

    @Override
    public List<User> findByCountry(String country) {
        return userDAO.findByCountry(country);
    }

    @Override
    public List<User> sortUserByName() {
        return userDAO.sortUserByName();
    }
}
