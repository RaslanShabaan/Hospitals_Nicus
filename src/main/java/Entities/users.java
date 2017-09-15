package Entities;


import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class users {

    @Id
    private String username;
    private String password;
    private int enabled;
    private String HospEmail;

    public users(){}
    public users(String username){
        this.username=username;
    }

    public users(String username,String password,int enabled,String HospEmail){

        this.username=username;
        this.password=password;
        this.enabled=enabled;
        this.HospEmail=HospEmail;

    }


    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public int getEnabled() {
        return enabled;
    }
    public void setEnabled(int enabled) {
        this.enabled = enabled;
    }


    public String getHospEmail() {
        return HospEmail;
    }
    public void setHospEmail(String hospEmail) {
        HospEmail = hospEmail;
    }

}
