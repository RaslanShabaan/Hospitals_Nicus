package Dao;


import Entities.Nicu;

import java.util.ArrayList;
import java.util.List;

public interface NicuDao {

    public String Insert(Nicu nicu);
    public String Delete(String NicuId);
    public String Update(Nicu nicu);
    public Nicu Select(String NicuId);
    public List<Nicu> SelectAllNicus();
    public ArrayList<String> SelectByMail(String NicuEmail);

    public ArrayList<String> UserSeach(String NicuDesc ,String HospAddress ,String NicuStatus);

}
