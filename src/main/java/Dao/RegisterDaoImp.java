package Dao;

import Entities.Register;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class RegisterDaoImp implements RegisterDao {

    SessionFactory sessionFactory;
    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    public String Insert(Register register) {
         sessionFactory.getCurrentSession().save(register);
        return "Doen";
    }

    public String Delete(String Hospital_Email) {
       sessionFactory.getCurrentSession().delete(new Register(Hospital_Email));
        return "Doen";
    }

    public String Update(Register register) {
       sessionFactory.getCurrentSession().update(register);
        return "Doen";
    }

    public  ArrayList<String> Select(String Hospital_Email,String Gov) {

        ArrayList<String> ddd=new ArrayList<String>();
       // Register v=new Register();
   //     return (Register) sessionFactory.getCurrentSession().createQuery("");

        org.hibernate.Query  d= sessionFactory.getCurrentSession().createQuery("from  Register  where Hospital_Email=? and Hospital_Gov=?");
        d.setString(0,Hospital_Email);
        d.setString(1,Gov);

        List<Register> l =d.list();
        for(Register z:l)
        {
           ddd.add(  z.getHospital_Address() );
          ddd.add(  z.getHospital_Name());
          ddd.add(  z.getHospital_Password());
        }


        return ddd;
    }



    public List<Register> SelectAllUsers() {
        return sessionFactory.getCurrentSession().createCriteria(Register.class).list();
    }

    public Register SelectByMail(String Hospital_Email) {

        return (Register) sessionFactory.getCurrentSession().get(Register.class,Hospital_Email);
    }
}
