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
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;

/**
 *
 * @author thinh
 */
@Named(value = "showMovieBean")
@RequestScoped
public class ShowMovieBean implements Serializable {

    @EJB
    private TheaterEJB theaterEJB;
    private Theater theater;
    private Movie movie;
    
    
    public ShowMovieBean() {
    }
    
}
