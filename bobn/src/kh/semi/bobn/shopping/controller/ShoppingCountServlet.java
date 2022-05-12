package kh.semi.bobn.shopping.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.shopbasket.model.service.ShopbasketService;
import kh.semi.bobn.shopping.model.service.ShoppingService;

/**
 * Servlet implementation class BasketCountServlet
 */
@WebServlet("/shopcount")
public class ShoppingCountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingCountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/shopcount");

		PrintWriter out = response.getWriter();
		
		String pId = request.getParameter("pId");
		System.out.println(pId);
		String memberId="ziwoo123";		
		
		int updateValue = 0;
		String updateValueStr = request.getParameter("updateValue");
		try {
			updateValue = Integer.parseInt(updateValueStr);
		} catch (Exception e) {
	}
		int result = new ShoppingService().updateAmount(pId, memberId, updateValue);
		out.print(result);   /// 이제 진짜 중요한 데이터만 들고 갈꺼에요.
		out.flush();out.close();
	}

}
