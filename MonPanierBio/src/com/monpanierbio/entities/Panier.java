package com.monpanierbio.entities;

import java.time.LocalDate;

public class Panier {
	private String code;
	private String categorie;
	private String nom;
	private Double prix;
	private Double poids;
	private LocalDate date;
	private String description;

	public Panier() {
		//
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	public Double getPrix() {
		return prix;
	}

	public void setPrix(Double prix) {
		this.prix = prix;
	}

	public Double getPoids() {
		return poids;
	}

	public void setPoids(Double poids) {
		this.poids = poids;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Panier [code=" + code + ", categorie=" + categorie + ", nom=" + nom + ", prix=" + prix + ", poids="
				+ poids + ", date=" + date + ", description=" + description + "]";
	}
	
}
