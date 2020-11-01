package tools;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import tools.JdbcUtils;

public class JdbcUtils {
	private static String DRIVER;
	private static String URL;
	private static String NAME;
	private static String PWD;
	
	private static Connection connection;
	private static PreparedStatement ps;
	private static ResultSet rs;
	
	static {
		try {
			Loading_Properties();
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.err.println("�����������ʧ�ܣ���");
			e.printStackTrace();
		}
	}

	// ���������ļ�
	private static void Loading_Properties() {
		try {
			Properties properties = new Properties();
			InputStream in = JdbcUtils.class.getClassLoader().getResourceAsStream("config/jdbc.properties");
			properties.load(in);
			DRIVER = properties.getProperty("jdbc.drive");
			URL = properties.getProperty("jdbc.url");
			NAME = properties.getProperty("jdbc.name");
			PWD = properties.getProperty("jdbc.pwd");
		} catch (IOException e) {
			e.printStackTrace();
			System.err.println("���������ļ�����");
		}
	}

	//���ݿ�����
	public static Connection getConnection() {
		try {
			connection = DriverManager.getConnection(URL,NAME,PWD);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.err.println("���ݿ�����ʧ�ܣ�����");
			e.printStackTrace();
		}
		return connection;
	}
	
	public static void execute(String sql , Object...obj) throws SQLException {
		ps = getConnection().prepareStatement(sql);
		for(int i=0;i<obj.length;i++) {
			ps.setObject(i+1, obj[i]);
		}
	}
	
	//��ѯ��ǰ�û�
	public static ResultSet query(String sql, Object...obj) throws SQLException {
		execute(sql, obj);
		rs = ps.executeQuery();
		return rs;
	}
	
	//�������
	public static int dataInsert(String sql, Object...obj) throws SQLException {
		execute(sql, obj);
		int i = ps.executeUpdate();
		close();
		return i;
	}
	
	//���ݿ�ر�
	public static void close() throws SQLException {
		if(rs!=null) {
			rs.close();
		}
		if(ps!=null) {
			ps.close();
		}
		if(connection!=null) {
			connection.close();
		}
	}
	

}
