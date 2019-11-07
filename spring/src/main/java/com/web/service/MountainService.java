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
    public List<MountainsRecord> loadAll(Long id) {
        return mountainsDAO.loadAll(id);
    }

}
