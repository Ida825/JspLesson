package cn.et.model;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
/**
 * javabean 是mvc是设计模式的模型层（Model层）操作数据
 * @author Administrator
 *
 */
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
	
	public List<Map> getTable(String name) throws SQLException{
		if(name==null){
			name="";
		}
		List<Map> list = DbUtils.query("select * from dept where dname like '%"+name+"%'");		
		return list;
	}
	
	
	/**
	 * 返回查询到的数据的总数
	 * @return
	 * @throws SQLException 
	 */
	public Integer getTableListCount(String name) throws SQLException{
		if(name==null){
			name="";
		}
		//创建查询数据总数的SQL语句
		String sql="select count(rowid) as cr from EMP where ENAME like '%"+name+"%'";
		//获取查询到的数据
		List<Map> list = DbUtils.query(sql);
		//返回查到的数据总数
		return Integer.parseInt(list.get(0).get("CR").toString());
	}
	
	
	/**
	 * 获取分页参数
	 * @param name 
	 * @param curPage 
	 * @return 
	 * @throws SQLException
	 */
	public PageTools getTableListPage(String name,Integer curPage) throws SQLException{
		if(name==null){
			name="";
		}
		//获取数据总条数
		Integer totalCount = getTableListCount(name);
		
		//获取分页参数的对象
		PageTools pt = new PageTools(curPage, totalCount, null);
		//查询出页面要显示的数据并存入集合
		String sql = "select * from (select t.*,rownum as rn from emp t where t.ename like '%"+name+"%') where rn>="+pt.getStartIndex()+" and rn<="+pt.getEndIndex()+"";
		List<Map> list = DbUtils.query(sql);
		//将数据存入集合
		pt.setData(list);
		return pt;
	}
}
