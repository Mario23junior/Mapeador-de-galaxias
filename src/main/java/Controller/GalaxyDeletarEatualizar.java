package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GalaxyDao;

@WebServlet("/galaxyDel")
public class GalaxyDeletarEatualizar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GalaxyDeletarEatualizar() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int galaxiId = Integer.parseInt(request.getParameter("id"));
		GalaxyDao.exclusaoGalaxy(galaxiId);
	}
}
