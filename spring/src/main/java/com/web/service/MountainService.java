package com.web.service;

import com.web.dao.MountainsDAO;
import com.web.pojo.record.MountainsRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MountainService {
    private final MountainsDAO mountainsDAO;

    @Autowired
    public MountainService(MountainsDAO mountainDAO) {
        this.mountainsDAO = mountainDAO;
    }
    public List<MountainsRecord> loadSome() {
        return mountainsDAO.loadSome();
    }

}
