package com.carx.domain.hbm;

import java.io.Serializable;
import java.util.UUID;

public class DataPk implements Serializable {
    private UUID id;
    private String key;

    public DataPk() {
    }

    public DataPk(UUID userId, String key) {

        id = userId;
        this.key = key;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DataPk dataPk = (DataPk) o;

        if (!id.equals(dataPk.id)) return false;
        return key.equals(dataPk.key);

    }

    @Override
    public int hashCode() {
        int result = id.hashCode();
        result = 31 * result + key.hashCode();
        return result;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }
}
