package Dao;

import Entities.Register;

import java.util.ArrayList;
import java.util.List;


public interface RegisterDao {

    public String Insert(Register register);
    public String Delete(String Hospital_Email);
    public String Update(Register register);
    public ArrayList<String> Select(String Hospital_Email, String Gov);
    public List<Register> SelectAllUsers();

    public Register SelectByMail(String Hospital_Email);
}
