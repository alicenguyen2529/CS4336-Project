/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import ejb.TheaterEJB;
import entity.Movie;
import entity.Theater;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
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

    //getter and setter
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
    
    

    //show movie by theaterID. TheaterID is a parameter that get passed from html page.
    public String showMovie()
    {
        try{
            FacesContext fc = FacesContext.getCurrentInstance();
            Map<String,String> params = fc.getExternalContext().getRequestParameterMap();
            int theaterid = Integer.parseInt(params.get("theaterid"));
            theater = theaterEJB.getTheaterByID(theaterid);
            return "movie.xhtml";
        }
        
        catch(Exception e)
        {
            return "Error";
        }
                
    }
    
    //get list of movie
    public List<Movie> getMovieList()
    {
        if(theater != null)
        {
            return theaterEJB.getMovie(theater.getTheaterid());
        }
        else 
            return null;
    }
    /**
     * Creates a new instance of ShowMovieBean
     */
    public ShowMovieBean() {
        
        
    }
    
}
