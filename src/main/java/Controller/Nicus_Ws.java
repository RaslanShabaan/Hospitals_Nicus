package Controller;

import Entities.Nicu;
import Entities.users;
import Service.NicuDaoService;
import Service.RegisterDaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class Nicus_Ws {

    // Register db configuration
    @Autowired(required = true)
    @Qualifier("NicuDaoService")
    NicuDaoService nicuDaoService;

// select all nicus from db
    @RequestMapping(value = "/All_Nicus",method = RequestMethod.GET)
    public List<Nicu> All_Nicus()
    {

      List<Nicu> Nicus= nicuDaoService.SelectAllNicus();
        return Nicus;
    }


    // select  nicu by id from db
    @RequestMapping(value = "/NicuById/{NicuId}",method = RequestMethod.GET)
    public Nicu NicuById(@PathVariable ("NicuId") String NicuId)
    {

        Nicu N=   nicuDaoService.Select(NicuId);
        return N;
    }

    // delete  nicu by id from db
    @RequestMapping(value = "/DeleteNicuById/{NicuId}",method = RequestMethod.DELETE)
    public ResponseEntity<Boolean> DeleteNicuById(@PathVariable ("NicuId") String NicuId)
    {
        System.out.println(NicuId);
        System.out.println("********************************************************************");
      String Result=  nicuDaoService.Delete(NicuId);
        return new ResponseEntity<Boolean>(true, HttpStatus.OK);
    }



    // delete  nicu by id from db
    @RequestMapping(value = "/UpdateNicu",method = RequestMethod.PUT)
    public ResponseEntity<Boolean> UpdateNicu(@RequestBody Nicu nicu)
    {
        Nicu nicu1 =new Nicu();
             nicu1.setHospEmail(nicu.getHospEmail());
             nicu1.setNicuDesc(nicu.getNicuDesc());
             nicu1.setHospName(nicu.getHospName());
             nicu1.setNicuId(nicu.getNicuId());
             nicu1.setHospSubAddress(nicu.getHospSubAddress());
             nicu1.setHospAddress(nicu.getHospAddress());
             nicu1.setNicuCost(nicu.getNicuCost());
             nicu1.setNicuStatus(nicu.getNicuStatus());

        String Result=  nicuDaoService.Update(nicu1);
        System.out.println(Result+"44444444444444444444444444444");
        return new ResponseEntity<Boolean>(true, HttpStatus.OK);
    }


    // delete  nicu by id from db
    @RequestMapping(value = "/InsertNicu",method = RequestMethod.PUT)
    public ResponseEntity<Boolean> InsertNicu(@RequestBody Nicu nicu)
    {
        Nicu nicu1 =new Nicu();
        nicu1.setHospEmail(nicu.getHospEmail());
        nicu1.setNicuDesc(nicu.getNicuDesc());
        nicu1.setHospName(nicu.getHospName());
        nicu1.setNicuId(nicu.getNicuId());
        nicu1.setHospSubAddress(nicu.getHospSubAddress());
        nicu1.setHospAddress(nicu.getHospAddress());
        nicu1.setNicuCost(nicu.getNicuCost());
        nicu1.setNicuStatus(nicu.getNicuStatus());

        String Result=  nicuDaoService.Insert(nicu1);
        System.out.println(Result+"44444444444444444444444444444");
        return new ResponseEntity<Boolean>(true, HttpStatus.OK);
    }

}
