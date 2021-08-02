/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import entity.Movie;
import entity.Theater;
import java.util.List;
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
    
        public List<Theater> findAllTheater()
    {
        return em.createNamedQuery("Theater.findAll", Theater.class).getResultList();
    }

    public Theater getTheater(String zipcode) {
        return em.createNamedQuery("Theater.findByZipcode", Theater.class).setParameter("zipcode", zipcode).getSingleResult();

    }
        public Theater getTheaterByID(int theaterid)
    {
        return em.createNamedQuery("Theater.findByTheaterid", Theater.class).setParameter("theaterid", theaterid).getSingleResult();
    }
        public List<Movie> getMovie(int theaterID)
    {
        return em.createNamedQuery("Theater.findMovie", Movie.class).setParameter("theaterid", theaterID).getResultList();
    }
    
        public Movie getMovieByID(int movieid)
    {
        return em.createNamedQuery("Movie.findByMovieid", Movie.class).setParameter("movieid", movieid).getSingleResult();
    }
}
