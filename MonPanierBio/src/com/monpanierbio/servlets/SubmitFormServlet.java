package com.monpanierbio.servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monpanierbio.entities.Panier;

public class SubmitFormServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("SubmitFormServlet.doPost");

		boolean saisiSucceed = validate(req);
		toutOK(req); // pour afficher le message de fin de reussite
		
		// ce qui devrait être fait
		if(saisiSucceed) {
			Panier panier = new Panier();
			panier.setCode(req.getParameter("code"));
			
			int categorieInt = Integer.parseInt(req.getParameter("categorie"));
			String categorieStr = "";
			if(categorieInt == 1) {
				categorieStr = "Laitue";
			} else if(categorieInt == 2) {
				categorieStr = "Fruit";
			} else if(categorieInt == 3) {
				categorieStr = "Mélangé";
			}
			
			panier.setCategorie(categorieStr);
			panier.setNom(req.getParameter("nom"));
			panier.setPrix(Double.parseDouble(req.getParameter("prix")));
			
			panier.setPoids(Double.parseDouble(req.getParameter("poids")));
			
			String[] dateparts = req.getParameter("date").split("/");
			panier.setDate(LocalDate.of(Integer.parseInt(dateparts[2]), Integer.parseInt(dateparts[1]), Integer.parseInt(dateparts[0])));
			
			panier.setDescription(req.getParameter("description"));
			
			System.out.println(panier.toString());
		}
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/jspf/creer-panier.jsp");
		dispatcher.forward(req, resp);
	}

	public static boolean isNumeric(String strNum) {
		return strNum.matches("-?\\d+(\\.\\d+)?");
	}

	public static boolean isValidDate(String inDate) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		dateFormat.setLenient(false);
		try {
			dateFormat.parse(inDate.trim());
		} catch (ParseException pe) {
			return false;
		}
		return true;
	}

	private static boolean validate(HttpServletRequest req) {
		boolean validate = true;
		String nom = req.getParameter("nom");
		if (nom == null || nom.isEmpty()) {
			req.setAttribute("obligatoireNom", "(Obligatoire)");
			validate = false;
		}

		String code = req.getParameter("code");
		if (code == null || code.isEmpty()) {
			req.setAttribute("obligatoireCode", "(Obligatoire)");
			validate = false;
		}

		String prix = req.getParameter("prix");
		if (prix == null || prix.isEmpty()) {
			req.setAttribute("obligatoirePrix", "(Obligatoire)");
			validate = false;
		}

		String poids = req.getParameter("poids");
		if (poids == null || poids.isEmpty()) {
			req.setAttribute("obligatoirePoids", "(Obligatoire)");
			validate = false;
		}

		String date = req.getParameter("date");
		if (date == null || date.isEmpty()) {
			req.setAttribute("obligatoireDate", "(Obligatoire)");
			validate = false;
		}

		String description = req.getParameter("description");
		if (description == null || date.isEmpty()) {
			req.setAttribute("obligatoireDescription", "(Obligatoire)");
			validate = false;
		}

		String categorie = req.getParameter("categorie");
		int categorieInt = Integer.parseInt(categorie);
		
		if (categorie == null || categorieInt == 0) {
			req.setAttribute("obligatoireCategorie", "(Obligatoire)");
			validate = false;
		}
		
		if(categorieInt == 0) {
			req.setAttribute("categorie0", "selected");
		} else if(categorieInt == 1) {
			req.setAttribute("categorie1", "selected");
			req.setAttribute("categorie0", "start");
		} else if(categorieInt == 2) {
			req.setAttribute("categorie2", "selected");
			req.setAttribute("categorie0", "start");
		} else if(categorieInt == 3) {
			req.setAttribute("categorie3", "selected");
			req.setAttribute("categorie0", "start");
		}
		
		if(!isNumeric(poids)) {
			req.setAttribute("errorPoids", "Le poids doit être un nombre.");
			validate = false;
		}

		if(!isNumeric(prix)) {
			req.setAttribute("errorPrix", "Le prix doit être un nombre.");
			validate = false;
		}
		
		if(!isValidDate(date)) {
			req.setAttribute("errorDate", "Ce n'est pas une date.");
			validate = false;
		}

		return validate;
	}
	
	private static void toutOK(HttpServletRequest req) {
		if(validate(req)) {
			req.setAttribute("toutOK", "OK");
		}
	}
}
