package com.et.jc;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class Query {
	/**
	 * ��װget����
	 * @return
	 * @throws SQLException 
	 */
	/*public String getTable() throws SQLException{
		StringBuffer buffer = new StringBuffer();
		//�Ȼ�ȡ��ѯ������
		List<Map> list = DbUtils.query("select * from dept");
		buffer.append("<table>");
		buffer.append("<tr><th>deptno</th><th>dname</th><th>loc</th></tr>");
		for(Map map:list){
			buffer.append("<tr><th>"+map.get("deptno")+"</th><th>"+map.get("dname")+"</th><th>"+map.get("loc")+"</th></tr>");
		}
		buffer.append("</table>");
		return buffer.toString();
	}*/
	
	public List<Map> getTable() throws SQLException{
		List<Map> list = DbUtils.query("select * from dept");		
		return list;
	}
}
