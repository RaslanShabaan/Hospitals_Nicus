package Dao;


import Entities.Nicu;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class NicuDaoImpl implements NicuDao {


    SessionFactory sessionFactory;
    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    public String Insert(Nicu nicu) {
         sessionFactory.getCurrentSession().save(nicu);
        return "Doen";
    }

    public String Delete(String NicuId) {
      sessionFactory.getCurrentSession().delete(new Nicu(NicuId));
        return "Doen";
    }

    public String Update(Nicu nicu) {
      sessionFactory.getCurrentSession().update(nicu);
        return "Doen";
    }

    public Nicu Select(String NicuId) {
        return (Nicu) sessionFactory.getCurrentSession().get(Nicu.class,NicuId);
    }

    public List<Nicu> SelectAllNicus() {
        return sessionFactory.getCurrentSession().createCriteria(Nicu.class).list();
    }


    public ArrayList<String> SelectByMail(String NicuEmail) {

     ArrayList<String>   cc=new ArrayList<String>();

        org.hibernate.Query  d= sessionFactory.getCurrentSession().createQuery("from  Nicu  where HospEmail=?");
        d.setString(0,NicuEmail);

        List<Nicu> l =d.list();
        for(Nicu z:l)
        {
           cc.add(  z.getNicuDesc( ));
              cc.add(z.getNicuId());
            cc.add( z.getNicuCost());
          cc.add( z.getNicuStatus());

        }

        //return (Nicu) sessionFactory.getCurrentSession().get(Nicu.class,NicuEmail);
    return cc;
    }

    public ArrayList<String> UserSeach(String NicuDesc, String HospAddress, String NicuStatus) {

        ArrayList<String> search =new ArrayList<String>();

        org.hibernate.Query  d= sessionFactory.getCurrentSession().createQuery("from  Nicu  where NicuDesc=? and HospAddress=? and NicuStatus=?");
        d.setString(0,NicuDesc);
        d.setString(1,HospAddress);
        d.setString(2,NicuStatus);

        List<Nicu> l =d.list();
        for(Nicu z:l)
        {
            search.add(z.getNicuId());
            search.add(z.getHospAddress());
            search.add( z.getHospSubAddress());
            search.add( z.getHospName());
            search.add( z.getNicuCost());
            search.add( z.getHospEmail());

        }

        return search;
    }


}
