/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import ejb.TheaterEJB;
import entity.Movie;
import java.io.Serializable;
import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

/**
 *
 * @author alice
 */
@Named(value = "paymentBean")
@SessionScoped
public class PaymentBean implements Serializable {

    @EJB
    private TheaterEJB theaterEJB;
    private Movie movie;
    private int adultTicket;
    private int childrenTicket;
    private int seniorTicket;
    private String creditcard;
    private String nameoncard;
    private String expirationMonth;
    private String expirationYear;
    private String showtime;
    private String CVV;
    private String zipCode;
    private double adultPrice;
    private double childrenPrice;
    private double seniorPrice;
    private double preTax;
    private double tax;
    private double total;

    public PaymentBean() {
    }

    public void loadData() {
        Movie newMovie = new Movie();
        newMovie.setTitile("A Quite Place II");
        newMovie.setTime1("7:10 am");
        newMovie.setTime2("4:45 pm");
        newMovie.setTime3("8:40 pm");
        newMovie.setDuration("1 HR 35 M");

        movie = newMovie;

        adultPrice = 0;
        childrenPrice = 0;
        seniorPrice = 0;

        adultTicket = 0;
        childrenTicket = 0;
        seniorTicket = 0;
        
        tax = 0;
        total = 0;
    }

    public TheaterEJB getTheaterEJB() {
        return theaterEJB;
    }

    public void setTheaterEJB(TheaterEJB theaterEJB) {
        this.theaterEJB = theaterEJB;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public int getAdultTicket() {
        return adultTicket;
    }

    public void setAdultTicket(int adultTicket) {
        this.adultTicket = adultTicket;
    }

    public int getChildrenTicket() {
        return childrenTicket;
    }

    public void setChildrenTicket(int childrenTicket) {
        this.childrenTicket = childrenTicket;
    }

    public int getSeniorTicket() {
        return seniorTicket;
    }

    public void setSeniorTicket(int seniorTicket) {
        this.seniorTicket = seniorTicket;
    }

    public String getCreditcard() {
        return creditcard;
    }

    public void setCreditcard(String creditcard) {
        this.creditcard = creditcard;
    }

    public String getNameoncard() {
        return nameoncard;
    }

    public void setNameoncard(String nameoncard) {
        this.nameoncard = nameoncard;
    }

    public String getExpirationMonth() {
        return expirationMonth;
    }

    public void setExpirationMonth(String expirationMonth) {
        this.expirationMonth = expirationMonth;
    }

    public String getExpirationYear() {
        return expirationYear;
    }

    public void setExpirationYear(String expirationYear) {
        this.expirationYear = expirationYear;
    }

    public String getShowtime() {
        return showtime;
    }

    public void setShowtime(String showtime) {
        this.showtime = showtime;
    }

    public double getAdultPrice() {
        return adultPrice;
    }

    public void setAdultPrice(double adultPrice) {
        this.adultPrice = adultPrice;
    }

    public double getChildrenPrice() {
        return childrenPrice;
    }

    public void setChildrenPrice(double childrenPrice) {
        this.childrenPrice = childrenPrice;
    }

    public double getSeniorPrice() {
        return seniorPrice;
    }

    public void setSeniorPrice(double seniorPrice) {
        this.seniorPrice = seniorPrice;
    }

    public double getTax() {
        return tax;
    }

    public void setTax(double tax) {
        this.tax = tax;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getCVV() {
        return CVV;
    }

    public void setCVV(String CVV) {
        this.CVV = CVV;
    }

    public void addTicketAdult() {
        this.adultTicket += 1;
        this.adultPrice += 10;
        calculate();
    }

    public void subtractTicketAdult() {
        this.adultTicket -= 1;
        this.adultPrice -= 10;
        calculate();
    }

    public void addTicketChild() {
        this.childrenTicket += 1;
        this.childrenPrice += 5;
        calculate();
    }

    public void subtractTicketChild() {
        this.childrenTicket -= 1;
        this.childrenPrice -= 5;
        calculate();
    }

    public void addTicketSenior() {
        this.seniorTicket += 1;
        this.seniorPrice += 5;
        calculate();
    }

    public void subtractTicketSenior() {
        this.seniorTicket -= 1;
        this.seniorPrice -= 5;
        calculate();
    }
    
    private void calculate() {
        this.preTax = adultPrice + childrenPrice + seniorPrice;
        this.tax = (preTax * 10) / 100;
        this.total = preTax + tax;
    }

    public String purchase() {
        return "thankyou.xhtml";
    }

}
