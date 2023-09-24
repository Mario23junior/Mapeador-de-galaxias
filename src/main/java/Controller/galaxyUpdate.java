package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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

		request.setAttribute("galaxy", galaxi);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("galaxyFormUpdate.jsp");
		requestDispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Galaxy galaxi = new Galaxy();
		
		galaxi.setId(Integer.parseInt(request.getParameter("id")));
 		galaxi.setNome(request.getParameter("nome"));
		galaxi.setImg(request.getParameter("img"));
		galaxi.setAno(request.getParameter("ano"));
		galaxi.setMagnitude(request.getParameter("magnitude"));
		galaxi.setQtproxima(request.getParameter("qtproxima"));
		galaxi.setDistancia(request.getParameter("distancia"));
		galaxi.setConstelacao(request.getParameter("constelacao"));
		galaxi.setDescricao(request.getParameter("descricao"));
		galaxi.setTipo(request.getParameter("tipo"));
		GalaxyDao.galaxyUpdate(galaxi);

		GalaxyCreate galaxiSelesct = new GalaxyCreate();
		galaxiSelesct.doGet(request, response);

	}

}
