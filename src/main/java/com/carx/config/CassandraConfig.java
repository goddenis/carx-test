package com.carx.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.data.cassandra.repository.config.EnableCassandraRepositories;

@Configuration
@EnableCassandraRepositories(basePackages = {"com.carx.repos.cassandra"})
public class CassandraConfig {

    @Autowired
    private Environment env;

//    @Bean
//    public CassandraClusterFactoryBean clusterFactoryBean(){
//        C
//    }

}
