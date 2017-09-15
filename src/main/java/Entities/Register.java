package Entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Register {

    @Id
    private String Hospital_Email;
    private String Hospital_Name;
    private  String Hospital_Gov;
    private String Hospital_Address;
    private String Hospital_Phone;
    private String  Hospital_Password;



    public Register(){}

    public Register( String Hospital_Email){
        this.Hospital_Email=Hospital_Email;
    }

    public Register(String Hospital_Email,String Hospital_Name, String Hospital_Gov, String Hospital_Address, String Hospital_Phone,String  Hospital_Password)
    {
        this.Hospital_Email=Hospital_Email;
        this.Hospital_Name=Hospital_Name;
        this.Hospital_Gov=Hospital_Gov;
        this.Hospital_Address=Hospital_Address;
        this.Hospital_Phone=Hospital_Phone;
        this.Hospital_Password=Hospital_Password;
    }

    public String getHospital_Email() {
        return Hospital_Email;
    }
    public void setHospital_Email(String hospital_Email) {
        Hospital_Email = hospital_Email;
    }

    public String getHospital_Name() {
        return Hospital_Name;
    }
    public void setHospital_Name(String hospital_Name) {
        Hospital_Name = hospital_Name;
    }

    public String getHospital_Gov() {
        return Hospital_Gov;
    }
    public void setHospital_Gov(String hospital_Gov) {
        Hospital_Gov = hospital_Gov;
    }

    public String getHospital_Address() {
        return Hospital_Address;
    }
    public void setHospital_Address(String hospital_Address) {
        Hospital_Address = hospital_Address;
    }

    public String getHospital_Phone() {
        return Hospital_Phone;
    }
    public void setHospital_Phone(String hospital_Phone) {
        Hospital_Phone = hospital_Phone;
    }

    public String getHospital_Password() {
        return Hospital_Password;
    }
    public void setHospital_Password(String hospital_Password) {
        Hospital_Password = hospital_Password;
    }


}
