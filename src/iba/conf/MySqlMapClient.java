package iba.conf;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class MySqlMapClient {
	/*
	    sqlMapConfig.xml(sql���� ������ xml���)������ ��üȭ �����ִ� Ŭ����
	    
	         ��sqlMapClientŬ����: XML���� �ۼ��� sql���� ȣ��!
	 */
	private static final SqlMapClient sqlMap;
	
	static {
		try {
			String resource = "./iba/conf/sqlMapConfig.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("MySqlMapConfig �ʱ�ȭ �� ����: "+e);
		}
	}//static
	
	public static SqlMapClient getSqlMapInstance() {
		
		return sqlMap;
	}
	
}
