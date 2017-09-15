package Service;

import Entities.Register;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by RESO on 7/21/2017.
 */
public interface RegisterDaoService {

    public String Insert(Register register);

    public String Delete(String Hospital_Email);

    public String Update(Register register);

    public ArrayList<String> Select(String Hospital_Email, String Gov);

    public List<Register> SelectAllUsers();
    public Register SelectByMail(String Hospital_Email);

}