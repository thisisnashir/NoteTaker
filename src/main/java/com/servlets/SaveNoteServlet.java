package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.entitites.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class SaveNoteServelet
 */
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public SaveNoteServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {

			// title,content fetch
			String title = request.getParameter("title");
			String content = request.getParameter("content");

			// Now we create the note object with the received information
			Note note = new Note(title, content, new Date());

			System.out.println(note);// See if we are receiving okay
			Session session = FactoryProvider.getFactory().openSession();
			session.beginTransaction();
			
			session.save(note);
			
			session.getTransaction().commit();
			session.close();
			
			response.setContentType("text/html");
			PrintWriter printwriter = response.getWriter();
			printwriter.println("<h1 style='text-align:center;'>Note is added</h1>");
			printwriter.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>view all</h1>");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		// response.getWriter().append("Served at: ").append(request.getContextPath());

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
