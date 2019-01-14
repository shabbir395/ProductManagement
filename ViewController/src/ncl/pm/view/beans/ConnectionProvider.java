package ncl.pm.view.beans;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import javax.sql.DataSource;

import java.util.logging.Logger;

public class ConnectionProvider {
    private static Logger logger =
        Logger.getLogger(ConnectionProvider.class.getName());
    private static DataSource myDS = null;
    static {
        try {
            Context ctx = new InitialContext();
            //myDS = (DataSource)ctx.lookup("java:jdbc/prodDS");
            myDS = (DataSource)ctx.lookup("jdbc/ebsDS");
            // your datasource jndi name as defined during configuration
            if (ctx != null)
                ctx.close();
        } catch (NamingException ne) {
            logger.warning("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
            logger.warning("ConnectionProvider.java: " + ne.getMessage());
            logger.warning("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
            //ne.printStackTrace();//ideally you should log it
            //throw new RuntimeException(ne);
        }
    }

    private ConnectionProvider() {
    }

    public static Connection getConnection() throws SQLException {
        Connection conn = null;
        if (myDS == null) {
            throw new IllegalStateException("AppsDatasource is not properly initialized or available");
        }
        return myDS.getConnection();
    }

    public static String connectionState() {
        String state = "";
        try {
            state = (myDS.getConnection() == null ? "is null" : "is not null");
        } catch (SQLException e) {
            logger.warning("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
            logger.warning("ConnectionProvider.java: " + e.getMessage());
            logger.warning("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
        }
        return state;
    }
}
