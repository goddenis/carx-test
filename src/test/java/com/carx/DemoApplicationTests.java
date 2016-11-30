package com.carx;

import com.carx.domain.hbm.DataPk;
import com.carx.domain.hbm.UserData;
import com.carx.repos.cassandra.ActiviryRepo;
import com.carx.repos.jpa.UserDataRepo;
import com.carx.repos.jpa.UserRepository;
import com.carx.rest.requesthandlers.ActivitPostHandler;
import com.carx.rest.requesthandlers.IndexRequestHandler;
import com.carx.rest.requesthandlers.SyncGetRequestHAndler;
import com.carx.rest.requesthandlers.SyncRequestHaqnler;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import spark.HaltException;
import spark.Request;

import java.util.UUID;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatExceptionThrownBy;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = DemoApplication.class)
public class DemoApplicationTests {

    private static final String NEW_UUID_CONSTANT = "550e8400-e29b-41d4-a716-446655440000";
    private static final String CREATE_UUID_CONSTANT = "550e8400-e29b-41d4-a716-446655440001";

    private static final String DATA_KEY = "data.field1";
    @Autowired
    UserDataRepo userDataRepo;
    @Autowired
    UserRepository userRepository;

    @Autowired
    ActiviryRepo activiryRepo;

    @Test
    public void indexTest() throws Exception {
        Request requestMock = mock(Request.class);
        IndexRequestHandler indexRequestHandler = new IndexRequestHandler();

        assertThat(indexRequestHandler.handle(requestMock, null))
                .isExactlyInstanceOf(String.class)
                .isEqualTo("Hello");

    }

    @Test
    public void invalidDataTest() throws Exception {
        Request mock = mock(Request.class);
        when(mock.body())
                .thenReturn("");
        SyncRequestHaqnler syncRequestHaqnler = new SyncRequestHaqnler(userRepository, userDataRepo);

        assertThatExceptionThrownBy(() -> syncRequestHaqnler.handle(mock, null))
                .isInstanceOf(HaltException.class)
                .as("HttpStatus").matches(throwable -> ((HaltException) throwable).getStatusCode() == 406)
                .as("Response body").matches(throwable -> ((HaltException) throwable).getBody().equals("Not valid data"));

    }

    @Test
    public void syncPostTest() throws Exception {

        Request mock = mock(Request.class);
        when(mock.body())
                .thenReturn("{\"money\":{\"value\":100,\"country\":\"ru\"},\"data\":{\"field1\":\"val1\"}}|" + NEW_UUID_CONSTANT);
        SyncRequestHaqnler syncRequestHaqnler = new SyncRequestHaqnler(userRepository, userDataRepo);

        syncRequestHaqnler.handle(mock, null);
        UUID uuid = UUID.fromString(NEW_UUID_CONSTANT);
        assertThat(userRepository.findOne(uuid)).isNotNull();
        UserData one = userDataRepo.findOne(new DataPk(uuid, DATA_KEY));
        assertThat(one)
                .isNotNull()
                .as("User id").matches(userData -> userData.getId().equals(uuid))
                .as("Key").matches(userData -> userData.getKey().equals(DATA_KEY))
                .as("Value").matches(userData -> userData.getValue().equals("val1"));

    }

    @Test
    public void syncGetTest() throws Exception {
        JsonParser parser = new JsonParser();
        Request mock = mock(Request.class);

        when(mock.params("uuid")).thenReturn(CREATE_UUID_CONSTANT);

        SyncGetRequestHAndler syncGetRequestHAndler = new SyncGetRequestHAndler(userRepository, userDataRepo);

        Object handle = syncGetRequestHAndler.handle(mock, null);
        JsonElement parse = parser.parse(handle.toString());
        assertThat(parse.getAsJsonObject().get("money")).isNotNull();

    }

    @Test
    public void activityPostTest() throws Exception {
        Request mock = mock(Request.class);
        when(mock.body()).thenReturn(CREATE_UUID_CONSTANT+"|1");
        ActivitPostHandler postHandler = new ActivitPostHandler(activiryRepo);

        postHandler.handle(mock,null);

    }
}