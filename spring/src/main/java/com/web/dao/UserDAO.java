package com.web.dao;
import com.web.pojo.record.UserRecord;
import com.web.pojo.record.param.ipParam;
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
    public int reject(UserRecord record) {
        return super.getSqlSession()
                .update("USER.REJECT", record);
    }
    public List<UserRecord> fineMe(String ip){
        return super.getSqlSession()
                .selectList("USER.FINDME", new ipParam(ip));
    }

}
