package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GalaxyDao;
import model.Galaxy;

@WebServlet("/GalaxyCreate")
public class GalaxyCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public GalaxyCreate() {
        super();
     }
 	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		String pesquisa = request.getParameter("pesquisa");
 		if(pesquisa == null) {
 			pesquisa = "";
 		}
 		
 		List<Galaxy> galaxiFind = GalaxyDao.GalaxiaBuscaPor(pesquisa);
 		
 	}
 	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Galaxy galaxi = new Galaxy();
		galaxi.setNome (request.getParameter("nome"));
		galaxi.setImg (request.getParameter("img"));
		galaxi.setAno (request.getParameter("ano"));
		galaxi.setMagnitude(request.getParameter("magnitude"));
		galaxi.setQtproxima(request.getParameter("qtproxima"));
		galaxi.setDistancia(request.getParameter("distancia"));
		galaxi.setConstelacao(request.getParameter("constelacao"));
		galaxi.setDescricao(request.getParameter("descricao"));
		galaxi.setTipo(request.getParameter("tipo"));
		GalaxyDao.cricaoGalaxy(galaxi);
 		doGet(request, response);
	}

}
