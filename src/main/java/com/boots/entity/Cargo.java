package com.boots.entity;




import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;
import java.sql.Time;
import java.util.Date;

@Entity
public class Cargo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String cargoName;
    private Integer cargoQuan;

    private Date dataTime;
    private String userName;

    public Cargo() {
    }

    public Cargo(String cargoName, Integer cargoQuan, Date dataTime, String userName) {
        this.cargoName = cargoName;
        this.cargoQuan = cargoQuan;
        this.dataTime = dataTime;
        this.userName = userName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Date getDataTime() {
        return dataTime;
    }

    public void setDataTime(Date dataTime) {
        this.dataTime = dataTime;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCargoName() {
        return cargoName;
    }

    public void setCargoName(String cargoName) {
        this.cargoName = cargoName;
    }

    public Integer getCargoQuan() {
        return cargoQuan;
    }

    public void setCargoQuan(Integer cargoQuan) {
        this.cargoQuan = cargoQuan;
    }
}
