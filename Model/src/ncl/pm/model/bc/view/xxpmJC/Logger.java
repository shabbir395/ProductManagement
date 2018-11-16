package ncl.pm.model.bc.view.xxpmJC;

import java.io.BufferedWriter;
import java.io.File;

import java.io.FileWriter;

import java.io.IOException;

import java.text.SimpleDateFormat;

import java.util.Calendar;
import java.util.Date;
import java.util.logging.FileHandler;

import java.util.logging.Level;
import java.util.logging.SimpleFormatter;

import ncl.pm.model.bc.vo.lov.SpinningItemDescLovImpl;

import oracle.adf.share.ADFContext;
import oracle.adf.share.logging.ADFLogger;

public class Logger {

    public static final ADFLogger adfLogger =
        ADFLogger.createADFLogger(Logger.class);

    public void doLogging(String msg) {
        SimpleDateFormat sdf = new SimpleDateFormat("dd_MM_yyyy");
        Date date = new Date();
        File file =
            new File("\\\\192.168.110.150\\ADFLogging\\user_" + (ADFContext.getCurrent().getSessionScope().get("userName") !=
                                                                 null ?
                                                                 ADFContext.getCurrent().getSessionScope().get("userName") :
                                                                 "Anonymous") +
                     "_" + sdf.format(date) + ".log");
        BufferedWriter writer = null;
        try {
            writer = new BufferedWriter(new FileWriter(file, true));
            writer.append("-------------------- ");
            writer.append(date.toString());
            writer.append(" --------------------");
            writer.newLine();
            writer.append(msg);
            writer.newLine();
            writer.append("======================================================================");
            writer.newLine();
        } catch (IOException ex) {
            java.util.logging.Logger.getLogger(Logger.class.getName()).log(Level.SEVERE,
                                                                           null,
                                                                           ex);
            Logger.adfLogger.warning("Logger Error");
        } finally {
            try {
                writer.flush();
                writer.close();
            } catch (Exception e) {
            }
        }
    }
}
