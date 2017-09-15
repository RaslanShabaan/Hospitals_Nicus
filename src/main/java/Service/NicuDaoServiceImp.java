package Service;


import Dao.NicuDao;
import Entities.Nicu;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;


@Service
public class NicuDaoServiceImp implements NicuDaoService{

    private NicuDao nicuDao;

    public void setNicuDao(NicuDao NicuDao) {
        nicuDao = NicuDao;
    }
    public NicuDao getNicuDao() {
        return nicuDao;
    }


    @Transactional
    public String Insert(Nicu nicu) {
       nicuDao.Insert(nicu);
        return "Doen";
    }

    @Transactional
    public String Delete(String NicuId) {
      nicuDao.Delete(NicuId);
        return "Doen";
    }

    @Transactional
    public String Update(Nicu nicu) {
       nicuDao.Update(nicu);
        return "Doen";
    }

    @Transactional
    public Nicu Select(String NicuId) {
        return nicuDao.Select(NicuId);
    }

    @Transactional
    public List<Nicu> SelectAllNicus() {
        return nicuDao.SelectAllNicus();
    }
    @Transactional
    public ArrayList<String> SelectByMail(String NicuEmail) {
        return nicuDao.SelectByMail(NicuEmail);
    }
    @Transactional
    public ArrayList<String> UserSeach(String NicuDesc, String HospAddress, String NicuStatus) {

        return nicuDao.UserSeach(NicuDesc ,HospAddress ,NicuStatus);
    }


}
