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
import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

/**
 *
 * @author alice
 */
@Named(value = "showTheaterBean")
@SessionScoped
public class ShowTheaterBean implements Serializable {

    @EJB
    private TheaterEJB theaterEJB;
    private Theater theater;
    private String zipcode;

    public ShowTheaterBean() {

    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public Theater getTheater() {
        return theater;
    }

    public void setTheater(Theater theater) {
        this.theater = theater;
    }

    public String showTheater() {
        try {
            theater = theaterEJB.getTheater(zipcode);
            return "theater.xhtml";
        } catch (Exception e) {
            return "No theater found.";
        }
    }

    public List<Movie> getMovieList() {
        if (theater != null) {
            return theaterEJB.getMovie(theater.getTheaterid());
        } else {
            return null;
        }
    }

}
