/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import ejb.TheaterEJB;
import entity.Movie;
import entity.Theater;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import javax.faces.context.FacesContext;

/**
 *
 * @author thinh
 */
@Named(value = "showMovieBean")
@SessionScoped
public class ShowMovieBean implements Serializable {

    @EJB
    private TheaterEJB theaterEJB;
    private Theater theater;
    private Movie movie;

    public TheaterEJB getTheaterEJB() {
        return theaterEJB;
    }

    public void setTheaterEJB(TheaterEJB theaterEJB) {
        this.theaterEJB = theaterEJB;
    }

    public Theater getTheater() {
        return theater;
    }

    public void setTheater(Theater theater) {
        this.theater = theater;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public ShowMovieBean() {

    }

    public String showMovie() {
        try {
            FacesContext fc = FacesContext.getCurrentInstance();
            Map<String, String> params = fc.getExternalContext().getRequestParameterMap();
            int movieId = Integer.parseInt(params.get("movieid"));
            movie = theaterEJB.getMovieById(movieId);
            return "movie.xhtml";
        } catch (Exception e) {
            return "Error";
        }
    }
    
    public String getMovie(Movie movie) {
        this.movie = movie;
        return "movie.xhtml";
    }

}
