package com.carx.repos.jpa;

import com.carx.domain.hbm.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface UserRepository extends JpaRepository<User,UUID> {

}
