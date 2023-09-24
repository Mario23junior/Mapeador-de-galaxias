package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GalaxyDao;
import model.Galaxy;

 
@WebServlet("/galaxyUpdate")
public class galaxyUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public galaxyUpdate() {
        super();
     }

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int galaxId = Integer.parseInt(request.getParameter("id"));
		Galaxy galaxi = GalaxyDao.buscaGalaxyId(galaxId);
 	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		doGet(request, response);
	}

}
