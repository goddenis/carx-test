package com.carx.domain.hbm;

import javax.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "user_data")
@IdClass(DataPk.class)
public class UserData {

    @Id
    @Column(name = "user_id")
    private UUID id;
    @Id
    private String key;
    private String value;

    @ManyToOne
    @JoinColumn(name = "user_id",insertable = false, updatable = false)
    private User user;

    public UserData() {}

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public UserData(UUID id) {
        this.id= id;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
