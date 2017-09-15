package Service;

import Dao.RegisterDao;
import Entities.Register;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;


@Service
public class RegisterDaoServiceImp implements RegisterDaoService {

    private RegisterDao registerDao;
    public void setRegisterDao(RegisterDao RegisterDao) {
        registerDao = RegisterDao;
    }
    public RegisterDao getRegisterDao() {
        return registerDao;
    }

    @Transactional
    public String Insert(Register register) {
        return registerDao.Insert(register);
    }

    @Transactional
    public String Delete(String Hospital_Email) {
        return registerDao.Delete(Hospital_Email);
    }

    @Transactional
    public String Update(Register register) {
        return registerDao.Update(register);
    }

    @Transactional
    public ArrayList<String> Select(String Hospital_Email ,String Gov) {
        return registerDao.Select(Hospital_Email,Gov);
    }

@Transactional
    public List<Register> SelectAllUsers() {
        return registerDao.SelectAllUsers();
    }

    @Transactional
    public Register SelectByMail(String Hospital_Email) {
        return   registerDao.SelectByMail(Hospital_Email);
    }


}