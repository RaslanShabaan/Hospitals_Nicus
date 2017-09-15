package Controller;

import Entities.Nicu;
import Entities.Register;
import Entities.authorities;
import Entities.users;
import Mail_Sender.Email_Sender;
import Service.NicuDaoService;
import Service.RegisterDaoService;
import Test.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@Controller
public class Controler {

    // users db configuration
    @Autowired(required = true)
    @Qualifier("usersDaoService")
    Service.usersDaoService usersDaoService;


    // authorities db configuration
    @Autowired(required = true)
    @Qualifier("authoritiesDaoService")
    Service.authoritiesDaoService authoritiesDaoService;
    // Register db configuration
    @Autowired(required = true)
    @Qualifier("RegisterDaoService")
    RegisterDaoService registerDaoService;

    // Register db configuration
    @Autowired(required = true)
    @Qualifier("NicuDaoService")
    NicuDaoService nicuDaoService;



    public static String HospitalConEmail;
    public static String HospitalEmail;


    // show index page if login success
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView Home() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalName = authentication.getName();

        HospitalConEmail=currentPrincipalName;
       // System.out.println(currentPrincipalName+"44444444444444444444444444444444");

//        if (!(authentication instanceof AnonymousAuthenticationToken)) {
//            String currentUserName = authentication.getName();
//            return currentUserName;
//        }


    ModelAndView M = new ModelAndView("Index");
        return M;
    }
    // show login page and spring security make authentication
    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public ModelAndView Login(@RequestParam(name = "error", required = false) String error) {
        ModelAndView modelAndView = new ModelAndView("Login");
        //System.out.println(name+"555555555555555555555");
        if (error != null) {
            modelAndView.addObject("error", "Please Enter Correct Data :)");
        }
        return modelAndView;
    }

//    // show index page if login success
//    @RequestMapping(value = "/user", method = RequestMethod.GET)
//    public ModelAndView user() {
//
//        ModelAndView M = new ModelAndView("Test");
//        return M;
//    }
//    // show login page and spring security make authentication
//    @RequestMapping(value = "/User", method = RequestMethod.GET)
//    public ModelAndView User() {
//        ModelAndView modelAndView = new ModelAndView("User");
//        return modelAndView;
//    }





    // button travel to nicustate page from index in page &&& Select nicus for hosp
    @RequestMapping(value = "/GoNicuState", method = RequestMethod.GET)
    public ModelAndView GoNicuState(HttpSession session) {

        ModelAndView M = new ModelAndView("NicuState");


        users users =new users();
        users=  usersDaoService.Select(Controler.HospitalConEmail);
        String Mail=  users.getHospEmail();


        ArrayList<String> f=new ArrayList<String>();

        System.out.println(Mail+"    555555555555");
        f =nicuDaoService.SelectByMail(Mail);

        for (int d=0;d<f.size();d++) {
            System.out.println(f.get(d));
        }


        session.setAttribute("arrayy",f);
        return M;
    }

    // button travel to addnicu page from index in page
    @RequestMapping(value = "/GoAddNicu", method = RequestMethod.GET)
    public ModelAndView GoAddNice() {

        ModelAndView M = new ModelAndView("AddNicu");
        return M;
    }

    // button travel to index page from index in page
    @RequestMapping(value = "/GoNicuHome", method = RequestMethod.GET)
    public ModelAndView GoNicuHome() {

        ModelAndView M = new ModelAndView("Index");
        return M;

    }

    // button travel to location page from index in page
    @RequestMapping(value = "/GoNicuLocation", method = RequestMethod.GET)
    public ModelAndView GoNicuLocation() {

        ModelAndView M = new ModelAndView("NicuLocation");
        return M;

    }

    // button travel to register page from log in page
    @RequestMapping(value = "/GoToRegist", method = RequestMethod.GET)
    public ModelAndView GoToRegist() {

        ModelAndView M = new ModelAndView("Register");
        return M;

    }

    // register data page
    @RequestMapping(value = "/Register", method = RequestMethod.POST)
    public ModelAndView Register(@RequestParam("Hospital_Name") String Hospital_Name, @RequestParam("Hospital_Gov") String Hospital_Gov,
                                 @RequestParam("Hospital_Address") String Hospital_Address, @RequestParam("Hospital_Phone") String Hospital_Phone,
                                 @RequestParam("Hospital_Email") String Hospital_Email, @RequestParam("Hospital_Password") String Hospital_Password
    ) {

        Register R = new Register();
        users users = new users();
        authorities authorities = new authorities();
        Test test = new Test();
        Email_Sender email_sender = new Email_Sender();

        String EncodedPass = test.PassWordEncoder(Hospital_Password);

        System.out.println(Hospital_Name + " " + Hospital_Gov + " " + Hospital_Address + " " + Hospital_Email + " " + Hospital_Phone + " " + Hospital_Password);

           R.setHospital_Email(Hospital_Email);
           R.setHospital_Name(Hospital_Name);
           R.setHospital_Gov(Hospital_Gov);
           R.setHospital_Address(Hospital_Address);
           R.setHospital_Phone(Hospital_Phone);
           R.setHospital_Password(EncodedPass);

           String RegisterRes = registerDaoService.Insert(R);
           authorities.setUsername(Hospital_Name + "@Nicus");
           authorities.setAuthority("ROLE_USER");
           String authoritiesRes = authoritiesDaoService.Insert(authorities);

           users.setEnabled(1);
           users.setPassword(EncodedPass);
           users.setUsername(Hospital_Name + "@Nicus");
           System.out.println(Hospital_Email);
           users.setHospEmail(Hospital_Email);

           String usersRes = usersDaoService.Insert(users);

        //check insertion
        if (RegisterRes == "Doen" && usersRes == "Doen" && authoritiesRes == "Doen") {
            //send him mail
            String Res = email_sender.SendMail(Hospital_Email, Hospital_Name, Hospital_Name + "@Nicus", Hospital_Password);
        } else {
            //insert again
        }

        // send him login code
        String Res = email_sender.SendMail(Hospital_Email, Hospital_Name, Hospital_Name + "@Nicus", Hospital_Password);
        if (RegisterRes == "Doen") {

        } else {
            email_sender.SendMail(Hospital_Email, Hospital_Name, Hospital_Name + "@Nicus", Hospital_Password);
        }

        ModelAndView modelAndView = new ModelAndView("Login");
        return modelAndView;
    }


    // Add Nicu For Hospital
    @RequestMapping(value = "InsertNicu", method = RequestMethod.POST)
    public ModelAndView InsertNicu(@RequestParam("NicuId") String NicuId, @RequestParam("NicuCost") String NicuCost,@RequestParam("NicuDesc") String NicuDesc
                                         ,      @RequestParam ("NicuState") String NicuState
//
    ){

        ModelAndView modelAndView=new ModelAndView("AddNicu");

        users users =new users();
        users=  usersDaoService.Select(Controler.HospitalConEmail);

         String Mail=  users.getHospEmail();


        Register register =new Register();
        register=registerDaoService.SelectByMail(Mail);
        System.out.println(register.getHospital_Name()+" "+register.getHospital_Address()+" "+register.getHospital_Gov()+" "+register.getHospital_Email());

        System.out.println(NicuId+" "+NicuDesc+" "+NicuCost+" "+NicuState +" "+Controler.HospitalConEmail+"------------------------------");


        Nicu nicu=new Nicu();

        nicu.setHospAddress(register.getHospital_Gov());
        nicu.setHospEmail(register.getHospital_Email());
        nicu.setHospName(register.getHospital_Name());
        nicu.setNicuStatus(NicuState);
        nicu.setHospSubAddress(register.getHospital_Address());
        nicu.setNicuDesc(NicuDesc);
        nicu.setNicuId(NicuId);
        nicu.setNicuCost(NicuCost);

        nicuDaoService.Insert(nicu);
        return modelAndView;

    }


    // update nicu state
    @RequestMapping(value = "/UpdateNicu",method = RequestMethod.POST)
    public ModelAndView UpdateNicu(@RequestParam("NicuIdd") String Id)
    {

     ModelAndView modelAndView =new ModelAndView("Index");
        Nicu n =new Nicu();
        Nicu b =new Nicu();

    b= nicuDaoService.Select(Id);

        n.setHospEmail(b.getHospEmail());
        n.setHospAddress(b.getHospAddress());
        n.setNicuCost(b.getNicuCost());
        n.setNicuId(Id);
        n.setNicuDesc(b.getNicuDesc());
        n.setHospSubAddress(b.getHospSubAddress());
        n.setHospName(b.getHospName());
        n.setNicuStatus("Empty");


        nicuDaoService.Update(n);

        return modelAndView;
    }

    // delete nicu state
    @RequestMapping(value = "/DeleteNicu",method = RequestMethod.POST)
    public ModelAndView DeleteNicu(@RequestParam("NicuIddd") String Id)
    {
        ModelAndView modelAndView =new ModelAndView("Index");

        nicuDaoService.Delete(Id);
        return modelAndView;
    }


    // user search nicu
    @RequestMapping(value = "/UserSearch",method = RequestMethod.POST)
    public ModelAndView  UserSearch(@RequestParam("Govern") String Govern,@RequestParam("NicuDesc") String  NicuDesc,HttpSession session)
    {

        ArrayList<String> d=new ArrayList<String>();
        ModelAndView modelAndView =new ModelAndView("Reserve");


        System.out.println(Govern);
        System.out.println(NicuDesc);

        d= nicuDaoService.UserSeach(NicuDesc,Govern,"Empty");

        session.setAttribute("Search",d);

        return modelAndView;
    }


    // user reserve nicu
    @RequestMapping(value = "/UserReserve",method = RequestMethod.POST)
    public ModelAndView  UserReserve(@RequestParam("NID") String NID,@RequestParam("UNAME") String  UNAME,@RequestParam("UID") String  UID,
                                     @RequestParam("UPHONE") String UPHONE   )
    {

        Email_Sender S=new Email_Sender();
        Nicu nicu=new Nicu();
        ModelAndView modelAndView =new ModelAndView("Map");


        System.out.println(NID+"  "+UID);
        System.out.println(UNAME+"  "+UPHONE);

        nicu  = nicuDaoService.Select(NID);
        String Hosp_Mail =nicu.getHospEmail();
        String Hosp_Name =nicu.getHospName();

        S.USendMail(Hosp_Mail,Hosp_Name,UNAME,UPHONE,NID,UID);



        nicu.setHospEmail(nicu.getHospEmail());
        nicu.setHospAddress(nicu.getHospAddress());
        nicu.setNicuCost(nicu.getNicuCost());
        nicu.setNicuId(NID);
        nicu.setNicuDesc(nicu.getNicuDesc());
        nicu.setHospSubAddress(nicu.getHospSubAddress());
        nicu.setHospName(nicu.getHospName());
        nicu.setNicuStatus("Busy");

        nicuDaoService.Update(nicu);
        return modelAndView;
    }

    // user back back
    @RequestMapping(value = "/Back",method = RequestMethod.POST)
    public ModelAndView  Back ()
    {

        ModelAndView modelAndView =new ModelAndView("Login");
        return modelAndView;
    }



    // logout from demo
    @RequestMapping(value = "/Logout",method = RequestMethod.GET)
    public ModelAndView Logout(HttpServletRequest request, HttpServletResponse response)
    {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        if(auth !=null)
        {
            new SecurityContextLogoutHandler().logout(request,response,auth);
        }

        System.out.println("-----------------------------");
        ModelAndView modelAndView =new ModelAndView("Login");
        return modelAndView;
    }

}
