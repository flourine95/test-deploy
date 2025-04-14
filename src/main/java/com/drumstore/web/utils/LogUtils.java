package com.drumstore.web.utils;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.core.statement.UnableToExecuteStatementException;

import java.sql.Timestamp;

public class LogUtils {
    private static final Jdbi jdbi = DBConnection.getJdbi();

    public static void logToDatabase(int userId, int level, String action, String oldData, String newData) {
        try {
            jdbi.useHandle(handle ->
                    handle.createUpdate("INSERT INTO logs (userId, level, action, oldData, newData, timestamp) " +
                                    "VALUES (:userId, :level, :action, :oldData, :newData, :timestamp)")
                            .bind("userId", userId)
                            .bind("level", level)
                            .bind("action", action)
                            .bind("oldData", oldData != null ? oldData : "{}")
                            .bind("newData", newData != null ? newData : "{}")
                            .bind("timestamp", new Timestamp(System.currentTimeMillis()))
                            .execute()
            );
        } catch (UnableToExecuteStatementException e) {
            System.err.println("Lỗi khi ghi log vào database: " + e.getMessage());
        }
    }
}
