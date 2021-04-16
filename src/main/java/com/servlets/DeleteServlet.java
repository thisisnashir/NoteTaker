package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.entitites.Note;

import com.helper.FactoryProvider;

/**
 * Servlet implementation class DeleteServelet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteServlet() {
		super();
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
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			// note_id variable contains the value of the note ID but as string
			// so we trim(whitespaces,if any) and then parse it into integer
			
			Session session = FactoryProvider.getFactory().openSession();
			Note note = (Note)session.get(Note.class, noteId);
			session.beginTransaction();
			session.delete(note);
			
			session.getTransaction().commit();

			session.close();
			response.sendRedirect("all_notes.jsp");

		} catch (Exception x) {
			x.printStackTrace();
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
