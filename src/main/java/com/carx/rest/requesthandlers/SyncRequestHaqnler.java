package com.carx.rest.requesthandlers;

import com.carx.domain.hbm.DataPk;
import com.carx.domain.hbm.User;
import com.carx.domain.hbm.UserData;
import com.carx.repos.jpa.UserDataRepo;
import com.carx.repos.jpa.UserRepository;
import com.github.wnameless.json.flattener.JsonFlattener;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;
import org.apache.commons.lang3.math.NumberUtils;
import spark.Request;
import spark.Response;
import spark.Route;

import java.time.Instant;
import java.util.Optional;
import java.util.UUID;

import static spark.Spark.halt;

public class SyncRequestHaqnler implements Route {
    private static final String MONEY_KEY = "money";
    private static final String COUNTRY_KEY = "country";
    private static final String VALUE_KEY = "value";
    JsonParser parser = new JsonParser();
    private UserDataRepo dataRepo;
    private UserRepository userRepository;

    public SyncRequestHaqnler(UserRepository userRepository, UserDataRepo userDataRepository) {

        this.userRepository = userRepository;
        dataRepo = userDataRepository;
    }

    @Override
    public Object handle(Request request, Response response) throws Exception {

        try {

            String[] split = request.body().split("\\|");
            if (split.length != 2)
                halt(406, "Not valid data");

            UUID userId = UUID.fromString(split[1]);
            JsonElement element = parser.parse(split[0]);

            if (element.isJsonObject()) {
                JsonObject asJsonObject = element.getAsJsonObject();
                if (!asJsonObject.has("money")) {
                    halt(406, "Json object not valid");
                }
                updateUser(userId, asJsonObject);
                updateData(userId, split[0]);
            }
        } catch (JsonSyntaxException e){
            halt(406, "Not valid exception");
            return "Error";
        } catch (Exception e){
            halt(500, "Unknown Server Error");
            return "Error";
        }
        return "Body";
    }


    private void updateData(UUID userId, String jsonString) {
        JsonFlattener.flattenAsMap(jsonString)
                .forEach((s, o) -> {
                    if (!s.startsWith(MONEY_KEY)) {
                        UserData one = dataRepo.findOne(new DataPk(userId, s));
                        if (one == null) {
                            one = new UserData(userId);
                            one.setKey(s);
                        }
                        if (o == null){
                            one.setValue("null");
                        } else if (NumberUtils.isParsable(o.toString())) {
                            one.setValue(s);
                        } else {
                            one.setValue("\""+o+"\"");
                        }
                        dataRepo.save(one);
                    }
                });
    }


    private void updateUser(UUID userId, JsonObject asJsonObject) {
        JsonObject element = asJsonObject.getAsJsonObject(MONEY_KEY);
        String countryKey = element.get(COUNTRY_KEY).getAsString();
        long money = element.get(VALUE_KEY).getAsLong();

        User user = Optional.ofNullable(userRepository.findOne(userId))
                .orElse(new User(userId, new java.sql.Date(Instant.now().toEpochMilli())));

        user.setCountry(countryKey);
        user.setMoney(money);

        userRepository.save(user);

    }
}
