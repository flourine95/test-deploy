package com.drumstore.web.controllers;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.google.gson.JsonObject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.Instant;
import java.util.Date;

@WebServlet("/ckbox/token")
public class CKBoxController extends HttpServlet {
    private static final String ENVIRONMENT_ID = "3URjiCAxaUky6BQZpssE";
    private static final String ACCESS_KEY = "vEw5bjCqOXgO21pImV4aKqeAgMfalsWhRa4O3MBvDHH00MRsiefS6MQtAw1Ux0YdygnGpIDN1HBsHt-VVIWZoII4gXYkNu-xWNIK0JapWrdkY5FylwWQjthG";

    @Override
    protected void doOptions(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "GET, OPTIONS");
        response.setHeader("Access-Control-Allow-Headers", "Content-Type");
        response.setStatus(HttpServletResponse.SC_OK);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // CORS headers
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "GET");
        response.setHeader("Access-Control-Allow-Headers", "Content-Type");

        String token = generateToken();

        JsonObject jsonResponse = new JsonObject();
        jsonResponse.addProperty("token", token);

        response.setContentType("application/json");
        response.getWriter().write(jsonResponse.toString());
    }

    private String generateToken() {
        Algorithm algorithm = Algorithm.HMAC256(ACCESS_KEY);

        return JWT.create()
                .withIssuer("drumstore")
                .withAudience(ENVIRONMENT_ID)
                .withIssuedAt(Date.from(Instant.now()))
                .withExpiresAt(Date.from(Instant.now().plusSeconds(3600)))
                .sign(algorithm);
    }
}
