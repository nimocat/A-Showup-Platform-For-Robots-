package myRobot.pojo;

import java.util.List;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

/**
 	* A data access object (DAO) providing persistence and search support for Userinfo entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see myRobot.pojo.Userinfo
  * @author MyEclipse Persistence Tools 
 */

@Repository
public class UserinfoDAO extends BaseHibernateDAO  {
	     private static final Logger log = LoggerFactory.getLogger(UserinfoDAO.class);
		//property constants
	public static final String USERNAME = "username";
	public static final String PASSWORD = "password";
	public static final String EMAILADDRESS = "emailaddress";



    
    public void save(Userinfo transientInstance) {
        log.debug("saving Userinfo instance");
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
        } finally {
        	session.close();
        }
    }
    
	public void delete(Userinfo persistentInstance) {
        log.debug("deleting Userinfo instance");
        try {
            getSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public Userinfo findById( java.lang.Integer id) {
        log.debug("getting Userinfo instance with id: " + id);
        try {
            Userinfo instance = (Userinfo) getSession()
                    .get("myRobot.pojo.Userinfo", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(Userinfo instance) {
        log.debug("finding Userinfo instance by example");
        try {
            List results = getSession()
                    .createCriteria("myRobot.pojo.Userinfo")
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
      log.debug("finding Userinfo instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Userinfo as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByUsername(Object username
	) {
		return findByProperty(USERNAME, username
		);
	}
	
	public List findByPassword(Object password
	) {
		return findByProperty(PASSWORD, password
		);
	}
	
	public List findByEmailaddress(Object emailaddress
	) {
		return findByProperty(EMAILADDRESS, emailaddress
		);
	}
	

	public List findAll() {
		log.debug("finding all Userinfo instances");
		try {
			String queryString = "from Userinfo";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public Userinfo merge(Userinfo detachedInstance) {
        log.debug("merging Userinfo instance");
        try {
            Userinfo result = (Userinfo) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Userinfo instance) {
        log.debug("attaching dirty Userinfo instance");
        try {
            getSession().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(Userinfo instance) {
        log.debug("attaching clean Userinfo instance");
        try {
                      	getSession().buildLockRequest(LockOptions.NONE).lock(instance);
          	            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
}