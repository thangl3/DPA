package internship.fpt.dpa.controller.management.pet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import internship.fpt.dpa.model.bo.PetBO;

/**
 * Servlet implementation class ShowListPet
 */
@WebServlet("/ShowListPet")
public class ShowListPet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowListPet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		
		if(session.isNew()) {
			RequestDispatcher view = request.getRequestDispatcher("pages/home/login.jsp");
			view.forward(request, response);
		} else if("admin".equals(session.getAttribute("role"))){
			PetBO pbo = PetBO.getInstance();
			request.setAttribute("listPet", pbo.getListPet());
			RequestDispatcher view = request.getRequestDispatcher("pages/pet/listpet.jsp");
			view.forward(request, response);
		} else {
			RequestDispatcher view = request.getRequestDispatcher("pages/home/login.jsp");
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
