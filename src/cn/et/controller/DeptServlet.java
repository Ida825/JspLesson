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
 * Servlet 是MVC设计模式的控制层（controller）负责调度（Javabean的创建 服务调用）
 * 如：
 * 		1.获取表单数据 调用Javabean写入数据库
 * 		2.调用Javabean获取数据集合 将数据传递到jsp视图中
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
	 * 假设当前页参数是curPage
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//获取要查询的参数
			String name = request.getParameter("ename");
			
			//获取当前页参数
			String curPage = request.getParameter("curPage");
			Integer curPageVar = 1;
		
			if(curPage!=null){
				curPageVar = Integer.parseInt(curPage);
			}
			
			//控制层调用模型层获取数据
			PageTools pt = query.getTableListPage(name, curPageVar);
			//将数据存到request作用域
			request.setAttribute("pt",pt);
			//请求转发到界面层(界面层可以用el表达式通过request作用域可以取到数据)
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
