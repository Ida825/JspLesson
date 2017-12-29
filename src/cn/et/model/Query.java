package cn.et.model;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
/**
 * javabean ��mvc�����ģʽ��ģ�Ͳ㣨Model�㣩��������
 * @author Administrator
 *
 */
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
	
	public List<Map> getTable(String name) throws SQLException{
		if(name==null){
			name="";
		}
		List<Map> list = DbUtils.query("select * from dept where dname like '%"+name+"%'");		
		return list;
	}
	
	
	/**
	 * ���ز�ѯ�������ݵ�����
	 * @return
	 * @throws SQLException 
	 */
	public Integer getTableListCount(String name) throws SQLException{
		if(name==null){
			name="";
		}
		//������ѯ����������SQL���
		String sql="select count(rowid) as cr from EMP where ENAME like '%"+name+"%'";
		//��ȡ��ѯ��������
		List<Map> list = DbUtils.query(sql);
		//���ز鵽����������
		return Integer.parseInt(list.get(0).get("CR").toString());
	}
	
	
	/**
	 * ��ȡ��ҳ����
	 * @param name 
	 * @param curPage 
	 * @return 
	 * @throws SQLException
	 */
	public PageTools getTableListPage(String name,Integer curPage) throws SQLException{
		if(name==null){
			name="";
		}
		//��ȡ����������
		Integer totalCount = getTableListCount(name);
		
		//��ȡ��ҳ�����Ķ���
		PageTools pt = new PageTools(curPage, totalCount, null);
		//��ѯ��ҳ��Ҫ��ʾ�����ݲ����뼯��
		String sql = "select * from (select t.*,rownum as rn from emp t where t.ename like '%"+name+"%') where rn>="+pt.getStartIndex()+" and rn<="+pt.getEndIndex()+"";
		List<Map> list = DbUtils.query(sql);
		//�����ݴ��뼯��
		pt.setData(list);
		return pt;
	}
}
