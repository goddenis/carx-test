package com.carx.rest.requesthandlers;

import com.carx.domain.hbm.User;
import com.carx.domain.hbm.UserData;
import com.carx.repos.jpa.UserDataRepo;
import com.carx.repos.jpa.UserRepository;
import com.github.wnameless.json.unflattener.JsonUnflattener;
import spark.Request;
import spark.Response;
import spark.Route;

import java.util.List;
import java.util.StringJoiner;
import java.util.UUID;

import static spark.Spark.halt;

public class SyncGetRequestHAndler implements Route {
    private final UserRepository userRepository;
    private final UserDataRepo userDataRepository;

    public SyncGetRequestHAndler(UserRepository userRepository, UserDataRepo userDataRepository) {
        this.userRepository = userRepository;
        this.userDataRepository = userDataRepository;
    }

    @Override
    public Object handle(Request request, Response response) throws Exception {

        String uuid = request.params("uuid");
        UUID uuid1 = UUID.fromString(uuid);
        User one = userRepository.findOne(uuid1);
        if (one == null)
            halt(404, "Not found ");
        try {
            List<UserData> allByUserId = userDataRepository.findAllByUserId(uuid1);


            StringJoiner jsonStringBuilder = new StringJoiner(",", "{", "}");


            allByUserId.forEach(userData -> {
                jsonStringBuilder.add("\"" + userData.getKey() + "\":" + userData.getValue());
            });

            jsonStringBuilder.add("\"money.country\":\"" + one.getCountry() + "\"");
            jsonStringBuilder.add("\"money.value\":" + one.getMoney());

            return JsonUnflattener.unflatten(jsonStringBuilder.toString());
        } catch (Exception e) {
            halt(500, "Internal server error");
            return "";
        }
    }
}
