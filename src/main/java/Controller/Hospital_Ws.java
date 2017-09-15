package Controller;

import Entities.Nicu;
import Entities.Register;
import Service.RegisterDaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class Hospital_Ws {

    // Register db configuration
    @Autowired(required = true)
    @Qualifier("RegisterDaoService")
    RegisterDaoService registerDaoService;



    // select all hospitals from db
    @RequestMapping(value = "/All_Hospitals",method = RequestMethod.GET)
    public List<Register> All_Hospitals()
    {

        List<Register> Reg= registerDaoService.SelectAllUsers();
        return Reg;
    }


    // select  hospital  by mail from db
    @RequestMapping(value = "/HospitalByMail/{HospitalMail}",method = RequestMethod.GET)
    public Register HospitalByMail(@PathVariable("HospitalMail") String HospitalMail)
    {

        Register R= registerDaoService.SelectByMail(HospitalMail);
        System.out.println(R);
        return R;
    }



}
