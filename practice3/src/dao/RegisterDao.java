package dao;

import java.sql.SQLException;
import vo.User;
import tools.JdbcUtils;


public class RegisterDao {
	public int addUser(User user) {
        int update = 0;
        try {
            // ����û�
            update = JdbcUtils.dataInsert("INSERT INTO t_user VALUES (?,?,?,?,?,?)",user.getUserName(),user.getPassword(),user.getChrName(),user.getEmailAddress(),user.getProvince(),user.getCity());
            // ���û����Ȩ��
            if(update != 0) update = JdbcUtils.dataInsert("INSERT INTO t_user_role (roleId,userName) VALUES (?,?)",2,user.getUserName());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            System.err.println("�û����ʧ�ܣ���");
        }
        return update;
    }

}
