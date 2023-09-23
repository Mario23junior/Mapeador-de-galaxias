package dao;

import java.util.List;

import model.Galaxy;

public interface OperacaoCrudAssinatur {
	
  public static void cricaoGalaxy(Galaxy galaxy) {};
  public static void eclusaoGalaxy(int galaxiId) {};
  public static Galaxy buscaIdGalaxy() {return null;}
  public static List<Galaxy> GalaxiaBuscaPor(String galaxyPesqu){return null;}
  public static void galaxyUpdate(Galaxy galaxy){};
}
