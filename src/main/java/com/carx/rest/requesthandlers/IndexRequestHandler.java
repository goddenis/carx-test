package com.carx.rest.requesthandlers;

import spark.Request;
import spark.Response;
import spark.Route;

public class IndexRequestHandler implements Route {
    @Override
    public Object handle(Request request, Response response) throws Exception {

        return "Hello";
    }
}
