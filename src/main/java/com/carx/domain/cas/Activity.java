package com.carx.domain.cas;

import org.springframework.cassandra.core.PrimaryKeyType;
import org.springframework.data.cassandra.mapping.PrimaryKeyColumn;
import org.springframework.data.cassandra.mapping.Table;

import java.sql.Timestamp;
import java.util.Date;
import java.util.UUID;

@Table(value = "activities")
public class Activity {
    @PrimaryKeyColumn(name = "user_id", ordinal = 0 ,type = PrimaryKeyType.PARTITIONED)
    private UUID userId;
    @PrimaryKeyColumn(name = "date", ordinal = 1 ,type = PrimaryKeyType.CLUSTERED)
    private Date date;
    private Long activity;


    public UUID getUserId() {
        return userId;
    }

    public void setUserId(UUID userId) {
        this.userId = userId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public Long getActivity() {
        return activity;
    }

    public void setActivity(Long activity) {
        this.activity = activity;
    }
}
