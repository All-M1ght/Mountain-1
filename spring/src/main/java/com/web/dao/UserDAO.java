package com.web.dao;
import com.web.pojo.record.UserRecord;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Component;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import javax.annotation.Resource;
import java.util.List;


@Component
public class UserDAO extends SqlSessionDaoSupport {
    @Resource
    @Override
    public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
        super.setSqlSessionTemplate(sqlSessionTemplate);
    }

    public void createNew(UserRecord record) {
        super.getSqlSession()
                .update("USER.CREATE", record);
    }
    public int guess(UserRecord record) {
        return super.getSqlSession()
                .update("USER.GUESS", record);
    }
    public void reject(UserRecord record) {
        super.getSqlSession()
                .update("USER.REJECT", record);
    }

}
