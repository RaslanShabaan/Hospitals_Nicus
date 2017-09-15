package Entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Nicu {

@Id
        private String NicuId;
        private String NicuCost;
        private String NicuDesc;
        private String HospName;
        private String HospAddress;
        private String HospSubAddress;
        private String HospEmail;
        private String NicuStatus;


    public Nicu(){}
    public Nicu(String NicuId){this.NicuId=NicuId;}
    public Nicu(String NicuId,String NicuCost,String NicuDesc,String NicuImg, String HospName,String HospAddress,String HospSubAddress,String HospEmail,String NicuStatus)
    {
        this.NicuId=NicuId;
        this.HospAddress=HospAddress;
        this.HospEmail=HospEmail;
        this.HospName=HospName;
        this.HospSubAddress=HospSubAddress;
        this.NicuCost=NicuCost;
        this.NicuDesc=NicuDesc;
        this.NicuStatus=NicuStatus;

    }

    public String getNicuId() {
        return NicuId;
    }
    public void setNicuId(String nicuId) {
        NicuId = nicuId;
    }

    public String getNicuCost() {
        return NicuCost;
    }
    public void setNicuCost(String nicuCost) {
        NicuCost = nicuCost;
    }

    public String getNicuDesc() {
        return NicuDesc;
    }
    public void setNicuDesc(String nicuDesc) {
        NicuDesc = nicuDesc;
    }

    public String getHospName() {
        return HospName;
    }
    public void setHospName(String hospName) {
        HospName = hospName;
    }

    public String getHospAddress() {
        return HospAddress;
    }
    public void setHospAddress(String hospAddress) {
        HospAddress = hospAddress;
    }

    public String getHospSubAddress() {
        return HospSubAddress;
    }
    public void setHospSubAddress(String hospSubAddress) {
        HospSubAddress = hospSubAddress;
    }

    public String getHospEmail() {
        return HospEmail;
    }
    public void setHospEmail(String hospEmail) {
        HospEmail = hospEmail;
    }

    public String getNicuStatus() {
        return NicuStatus;
    }
    public void setNicuStatus(String nicuStatus) {
        NicuStatus = nicuStatus;
    }

    }


