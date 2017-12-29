package com.et.jc;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class Query {
	/**
	 * 封装get方法
	 * @return
	 * @throws SQLException 
	 */
	/*public String getTable() throws SQLException{
		StringBuffer buffer = new StringBuffer();
		//先获取查询的数据
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
