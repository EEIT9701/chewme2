package com.iii.eeit9703.backstage;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.simple.JSONValue;

import com.iii.eeit9703.actEditor.AttrVO;
import com.iii.eeit9703.activity.model.ActService;
import com.iii.eeit9703.activity.model.ActivityDAO;
import com.iii.eeit9703.activity.model.ActivityVO;
import com.iii.eeit9703.adphoto.model.PhotoDAO;
import com.iii.eeit9703.adphoto.model.PhotoVO;

/**
 * Servlet implementation class activity
 */
@WebServlet("/activity")
public class activity extends HttpServlet {
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
			String action = request.getParameter("action");
			request.setCharacterEncoding("UTF-8");
			
			
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			
			
			if("getAllphoto".equals(action)){
				
				PhotoDAO dao = new PhotoDAO();
				//List<PhotoVO> countyList =  dao.getAll();			
				//System.out.println(countyList.size());
				ArrayList<PhotoVO> attrList = (ArrayList<PhotoVO>) dao.getAll();
				for(PhotoVO  aa :attrList){
				System.out.println(aa.getPhoto());
					
				}
				JSONArray attrArrayList = new JSONArray(attrList);
		
				out.print(attrArrayList.toString());
				}
			
				if("getAllactivity".equals(action)){
				ActService ser= new ActService();
			//	ActivityDAO dao = new ActivityDAO();
				//List<PhotoVO> countyList =  dao.getAll();			
				//System.out.println(countyList.size());
				ArrayList<ActivityVO> attrList = (ArrayList<ActivityVO>) ser.getAll();
				System.out.println("aaww");
				
				JSONArray attrArrayList = new JSONArray(attrList);
		
				out.print(attrArrayList.toString());
				}
			
				if("delete".equals(action)){
					System.out.println("delete");
				Integer id =new Integer(request.getParameter("ID"));
					PhotoDAO dao = new PhotoDAO();
					//List<PhotoVO> countyList =  dao.getAll();			
					//System.out.println(countyList.size());
					dao.delete(id);
					
					ArrayList<PhotoVO> attrList = (ArrayList<PhotoVO>) dao.getAll();
					
					JSONArray attrArrayList = new JSONArray(attrList);
			
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
