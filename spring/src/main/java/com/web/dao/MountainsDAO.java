package com.web.dao;
import com.web.pojo.record.MountainsRecord;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Component;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import javax.annotation.Resource;
import java.util.List;


@Component
public class MountainsDAO extends SqlSessionDaoSupport {
    @Resource
    @Override
    public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
        super.setSqlSessionTemplate(sqlSessionTemplate);
    }

    public List<MountainsRecord> loadAll(Long id) {
        return super.getSqlSession()
                .selectList("MERCHANDISE.SELECT_ALL", id);
    }


}
