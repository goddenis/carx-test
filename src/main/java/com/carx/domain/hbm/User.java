package com.carx.domain.hbm;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "users")
public class User  implements Serializable{

    @Id
    private UUID id;

    public User() {
    }

    public User(UUID id,java.sql.Date creationDate) {

        this.id = id;
        this.creationDate = creationDate;
    }


    public User(UUID id, String country, Long money) {
        this.id = id;
        this.country = country;
        this.money = money;
    }

    private String country;
    private Long money;

    @Column(name = "creation_date")
    private Date creationDate;

    @OneToMany(mappedBy = "user")
    private List<UserData> userDatas;


    public List<UserData> getUserDatas() {
        return userDatas;
    }

    public void setUserDatas(List<UserData> userDatas) {
        this.userDatas = userDatas;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Long getMoney() {
        return money;
    }

    public void setMoney(Long money) {
        this.money = money;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }
}
