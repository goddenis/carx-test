package com.carx.repos.jpa;

import com.carx.domain.hbm.DataPk;
import com.carx.domain.hbm.UserData;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.UUID;

public interface UserDataRepo extends JpaRepository<UserData,DataPk> {


    @Query(value = "select * from user_data WHERE user_id = ?1", nativeQuery = true)
    List<UserData> findAllByUserId(UUID uuid1);
}
