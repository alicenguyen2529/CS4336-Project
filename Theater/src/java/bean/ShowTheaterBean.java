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
import java.util.ArrayList;
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
    private String message;

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

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public boolean suggestion() {
        try {
            theater = theaterEJB.getTheater(zipcode);
            return true;
           
        } catch (Exception e) {
            List<Theater> theaterList = theaterEJB.getAllTheater();
            
            List<String> zipcodes = new ArrayList<>();
            
            for(Theater theater : theaterList) {
                zipcodes.add(theater.getZipcode());
            }
            
            message = "No theater found for Zip Code: " + zipcode + ". Here is the list of available Zip Codes: " + zipcodes.toString();
            return false;
        }
    }
    
    public String showTheater() {
        if(suggestion()) {
            return "theater.xhtml";
        }
        return null;
    }

    public List<Movie> getMovieList() {
        if (theater != null) {
            return theaterEJB.getMovie(theater.getTheaterid());
        } else {
            return null;
        }
    }

}
