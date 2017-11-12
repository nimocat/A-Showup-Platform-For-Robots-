package myRobot.pojo;

import java.util.List;

import org.hibernate.CacheMode;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 	* A data access object (DAO) providing persistence and search support for Cart entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see myRobot.pojo.Cart
  * @author MyEclipse Persistence Tools 
 */

@Repository
public class CartDAO extends BaseHibernateDAO  {
	     private static final Logger log = LoggerFactory.getLogger(CartDAO.class);
		//property constants
	public static final String USERNAME = "username";
	public static final String PRO_ID = "proId";
	public static final String NUMBER = "number";



    
    public void save(Cart transientInstance) {
        log.debug("saving Cart instance");
        Session session = getSession();
        Transaction transaction = null;
        try {
        	transaction = session.beginTransaction();
            session.save(transientInstance);
            transaction.commit();
            log.debug("save successful");
        } catch (RuntimeException re) {
        	transaction.rollback();
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(Cart persistentInstance) {
		Session session = getSession();
        Transaction transaction = null;
        log.debug("deleting Cart instance");
        try {
        	transaction = session.beginTransaction();
            getSession().delete(persistentInstance);
            transaction.commit();
            log.debug("delete successful");
        } catch (RuntimeException re) {
        	transaction.rollback();
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public Cart findById( java.lang.Integer id) {
        log.debug("getting Cart instance with id: " + id);
        try {
            Cart instance = (Cart) getSession()
                    .get("myRobot.pojo.Cart", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(Cart instance) {
        log.debug("finding Cart instance by example");
        try {
            List results = getSession()
                    .createCriteria("myRobot.pojo.Cart")
                    .add(Example.create(instance))
            .list();
            log.debug("find by example successful, result size: " + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }    
    
	public List findByProperty(String propertyName, Object value) {
		Session session = getSession();
        Transaction transaction = null;
		log.debug("finding Cart instance with property: " + propertyName + ", value: " + value);
		try {
			transaction = session.beginTransaction();
			String queryString = "from Cart as model where model." + propertyName + "= ?";
			Query queryObject = session.createQuery(queryString);
			queryObject.setParameter(0, value);
			transaction.commit();
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		} finally {
			session.close();
		}
	}

	public List findByUsername(Object username) {
		return findByProperty(USERNAME, username);
	}
	
	public List findByProId(Object proId) {
		return findByProperty(PRO_ID, proId);
	}
	
	public List findByNumber(Object number) {
		return findByProperty(NUMBER, number);
	}
	

	public List findAll() {
		log.debug("finding all Cart instances");
		try {
			String queryString = "from Cart";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public Cart merge(Cart detachedInstance) {
        log.debug("merging Cart instance");
        try {
            Cart result = (Cart) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Cart instance) {
        log.debug("attaching dirty Cart instance");
        try {
            getSession().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(Cart instance) {
        log.debug("attaching clean Cart instance");
        try {
                      	getSession().buildLockRequest(LockOptions.NONE).lock(instance);
          	            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
}