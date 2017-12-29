package cn.et.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.et.model.PageTools;
import cn.et.model.Query;

/**
 * Servlet ��MVC���ģʽ�Ŀ��Ʋ㣨controller��������ȣ�Javabean�Ĵ��� ������ã�
 * �磺
 * 		1.��ȡ������ ����Javabeanд�����ݿ�
 * 		2.����Javabean��ȡ���ݼ��� �����ݴ��ݵ�jsp��ͼ��
 */
public class DeptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeptServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    Query query = new Query();
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 * ���赱ǰҳ������curPage
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//��ȡҪ��ѯ�Ĳ���
			String name = request.getParameter("ename");
			
			//��ȡ��ǰҳ����
			String curPage = request.getParameter("curPage");
			Integer curPageVar = 1;
		
			if(curPage!=null){
				curPageVar = Integer.parseInt(curPage);
			}
			
			//���Ʋ����ģ�Ͳ��ȡ����
			PageTools pt = query.getTableListPage(name, curPageVar);
			//�����ݴ浽request������
			request.setAttribute("pt",pt);
			//����ת���������(����������el���ʽͨ��request���������ȡ������)
			request.getRequestDispatcher("/lesson08/deptView.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
