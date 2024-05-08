package com.example.demo.service;

public final class DbMetadata {

    private static final String USERNAME = "sa";
    private static final String PASSWORD = "123";
    private static final String SERVER = "localhost";
    private static final String PORT = "1433";
    private static final String DATABASE_NAME = "PTPM_FINALLY_JAVA_SOF3011";
    private static final boolean USING_SSL = false;

    private static String CONNECT_STRING;

    static {
        StringBuilder connectStringBuilder = new StringBuilder();
        connectStringBuilder.append("jdbc:sqlserver://")
               .append(SERVER).append(":").append(PORT).append(";")
               .append("databaseName=").append(DATABASE_NAME).append(";")
               .append("user=").append(USERNAME).append(";")
               .append("password=").append(PASSWORD).append(";")
        ;
        if (USING_SSL) {
            connectStringBuilder.append("encrypt=true;trustServerCertificate=true;");
        }
        CONNECT_STRING = connectStringBuilder.toString();
    }

    public static String getConnectString() {
        return CONNECT_STRING;
    }
}
