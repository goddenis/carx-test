package com.carx.rest.requesthandlers;

import com.carx.domain.cas.Activity;
import com.carx.repos.cassandra.ActiviryRepo;
import spark.Request;
import spark.Response;
import spark.Route;

import java.sql.Timestamp;
import java.time.Instant;
import java.util.UUID;

import static spark.Spark.halt;

public class ActivitPostHandler implements Route {
    private ActiviryRepo activiryRepo;

    public ActivitPostHandler(ActiviryRepo activiryRepo) {
        this.activiryRepo = activiryRepo;
    }

    @Override
    public Object handle(Request request, Response response) throws Exception {
        try {
            String[] split = request.body().split("\\|");

            UUID uuid = UUID.fromString(split[0]);
            Instant now = Instant.now();

            Activity activity = new Activity();
            activity.setUserId(uuid);
            activity.setDate(Timestamp.from(now));
            activiryRepo.save(activity);
        } catch (Exception e){
            halt(500, "Internal server error");
        }
        return "ok";
    }
}
