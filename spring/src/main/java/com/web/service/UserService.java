package com.web.service;

import com.web.dao.UserDAO;
import com.web.pojo.record.UserRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    private final UserDAO userDAO;

    @Autowired
    public UserService(UserDAO userDAO) { this.userDAO = userDAO; }

    public void createNew(UserRecord record) {
        userDAO.createNew(record);
    }
    public boolean guess(UserRecord record){
        return 1 == userDAO.guess(record);
    }
    public void reject(UserRecord record) { userDAO.reject(record); }
    public List<UserRecord> findMe(String ip) { return userDAO.fineMe(ip); }
}
