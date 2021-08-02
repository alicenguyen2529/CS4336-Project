/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import entity.Movie;
import entity.Theater;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author alice
 */
@Stateless
public class TheaterEJB {

    @PersistenceContext(unitName = "TheaterPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }

    public Theater getTheater(String zipcode) {
        return em.createNamedQuery("Theater.findByZipcode", Theater.class).setParameter("zipcode", zipcode).getSingleResult();

    }
    
    public Movie getMovieById(int movieId) {
        return em.createNamedQuery("Movie.findByMovieid", Movie.class).setParameter("movieid", movieId).getSingleResult();
    }
}
