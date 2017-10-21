package com.iii.eeit9703.actEditor;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;



/**
 * Servlet implementation class AreaServlet
 */
@WebServlet("/AreaServlet.do")
public class AreaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			String mission = request.getParameter("mission");
			request.setCharacterEncoding("UTF-8");
			String countryID = null;
			Integer countyID = null;
			
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			
			
			if("getCountry".equals(mission)){
				countryID = request.getParameter("country");
				CountyDAO countydao = new CountyDAO();
				ArrayList<CountyVO> countyList = countydao.getCounty(countryID);			
			
				JSONArray countyArrayList = new JSONArray(countyList);
//				System.out.print(countyArrayList);
				out.print(countyArrayList.toString());
				}
			
			if("getCounty".equals(mission)){
				countyID =  Integer.parseInt(request.getParameter("county"));
				System.out.println(countyID);
				AttrDAO attrdao = new AttrDAO();
				ArrayList<AttrVO> attrList = attrdao.getAttr(countyID);
				
				JSONArray attrArrayList = new JSONArray(attrList);
//				System.out.println(attrArrayList);
				out.print(attrArrayList.toString());
				
			}
/*			HttpSession session = request.getSession();
			session.setAttribute("countyList", countyList);
			
			String url = "Success.jsp";
			RequestDispatcher success = request.getRequestDispatcher(url);
			success.forward(request, response);
			return;
*/			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}