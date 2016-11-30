package com.carx.rest;

import com.carx.repos.cassandra.ActiviryRepo;
import com.carx.repos.jpa.UserDataRepo;
import com.carx.repos.jpa.UserRepository;
import com.carx.rest.requesthandlers.ActivitPostHandler;
import com.carx.rest.requesthandlers.IndexRequestHandler;
import com.carx.rest.requesthandlers.SyncGetRequestHAndler;
import com.carx.rest.requesthandlers.SyncRequestHaqnler;
import com.carx.sparkintegration.Spark;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import static spark.Spark.get;
import static spark.Spark.post;


@Component
@Order(value = 1)
public class RestRouter implements Spark {

	@Autowired
	private UserRepository userRepository;
	@Autowired
	private UserDataRepo userDataRepository;
	@Autowired
	private ActiviryRepo activiryRepo;

	@Override
	public void register() {

		get("/",new IndexRequestHandler());
		get("/sync/:uuid", new SyncGetRequestHAndler(userRepository, userDataRepository) );
		post("/sync", new SyncRequestHaqnler(userRepository,userDataRepository));
		post("/activity", new ActivitPostHandler(activiryRepo));

	}

}
