package ncl.pm.view.beans;

import java.sql.Connection;

import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.Map;

import javax.faces.context.FacesContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.logging.Logger;

import oracle.adf.controller.v2.lifecycle.Lifecycle;
import oracle.adf.controller.v2.lifecycle.PagePhaseEvent;
import oracle.adf.controller.v2.lifecycle.PagePhaseListener;

import oracle.apps.fnd.ext.common.AppsRequestWrapper;
import oracle.apps.fnd.ext.common.CookieStatus;
import oracle.apps.fnd.ext.common.EBiz;
import oracle.apps.fnd.ext.common.ProfileDirectory;
import oracle.apps.fnd.ext.common.Session;

import org.apache.myfaces.trinidad.render.ExtendedRenderKitService;
import org.apache.myfaces.trinidad.util.Service;

import weblogic.nodemanager.server.UserInfo;


public class PageListener implements PagePhaseListener {
    Logger logger = Logger.getLogger(this.getClass().getName());
    public static String userName = null;
    public static String userID = null;
    public static String responsibiltyID = null;
    public static String responsibility = null;
    //private String profileName;
    //private String serverID = "6122";
    //private String Application_id = "20003";
    private String date;
    //private UserInfo ui;


    public PageListener() {
        logger.warning("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        logger.warning("@       PagePhaseListener Created              @");
        logger.warning("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
    }

    public void afterPhase(PagePhaseEvent pagePhaseEvent) {

        //       int id = pagePhaseEvent.getPhaseId();
        //       if (id == Lifecycle.PREPARE_RENDER_ID) {
        //           logger.warning("Prepare render id");
        //       }
        //        if (id ==Lifecycle.PREPARE_MODEL_ID) {
        //            logger.warning("Prepare model id");
        //        }
        //
        //
        //        if (id == Lifecycle.APPLY_INPUT_VALUES_ID) {
        //            logger.warning("apply input values id");
        //        }
        //        if (id == Lifecycle.VALIDATE_MODEL_UPDATES_ID) {
        //            logger.warning("validate model updates id");
        //        }
        //        if (id == Lifecycle.PROCESS_COMPONENT_EVENTS_ID) {
        //            logger.warning("Process component event id");
        //        }
        //        if (id == Lifecycle.VALIDATE_INPUT_VALUES_ID) {
        //            logger.warning("validate input values id");
        //        }
        //        if (id == Lifecycle.INIT_CONTEXT_ID) {
        //            logger.warning("init context");
        //        }
        //        if (id == Lifecycle.PROCESS_UPDATE_MODEL_ID) {
        //            logger.warning("process update model id");
        //        }


        if (pagePhaseEvent.getPhaseId() == Lifecycle.PREPARE_RENDER_ID) {

            //                if (wrappedRequest != null &&
            //                    wrappedRequest.getConnection() != null) {
            //                    try {
            //                        if (!wrappedRequest.getConnection().isClosed()){
            //                            wrappedRequest.getConnection().close();
            //                            if (wrappedRequest.getConnection().isClosed()) {
            //                                logger.warning("PageListener.java: Connection Closed in afterPhase()");
            //                            }else{
            //                                logger.warning("PageListener.java: Unable to Close the connectin in afterPhase()");
            //                            }
            //                        }else{
            //                            logger.warning("PageListener.java: Connection is already closed in afterPhase()");
            //                        }
            //                    } catch (SQLException e) {
            //                        //try {
            //                            //response.sendRedirect("errorPage.jsp");
            //                            runJavaScriptCode("alert(\"Error Occured,Please Contact M.I.S Department\"+);");
            //                        logger.warning("PageListener.java: "+e.getMessage());
            //                        //} catch (IOException f) {
            //                        //}
            //                    }
            //                }


        }
    }

    public void print(String message) {
        logger.warning("PageListener: " + message);
    }

    public void beforePhase(PagePhaseEvent pagePhaseEvent) {

        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy hh:mm a");

        if (pagePhaseEvent.getPhaseId() == Lifecycle.INIT_CONTEXT_ID) {
            AppsRequestWrapper wrappedRequest = null;
            HttpServletRequest request = null;
            HttpServletResponse response = null;
            Session session;
            String agent = null;
            FacesContext fctx = FacesContext.getCurrentInstance();
            request =
                    (HttpServletRequest)fctx.getExternalContext().getRequest();
            response =
                    (HttpServletResponse)fctx.getExternalContext().getResponse();
            CookieStatus icxCookieStatus = null;
            Connection EBSconn = null;

            try {

                EBSconn = ConnectionProvider.getConnection();

                EBiz instance = EbizUtil.getEBizInstance();

                wrappedRequest =
                        new AppsRequestWrapper(request, response, EBSconn,
                                               instance);

                session = wrappedRequest.getAppsSession();

                agent = wrappedRequest.getEbizInstance().getAppsServletAgent();

                if (session != null) {
                    icxCookieStatus =
                            session.getCurrentState().getIcxCookieStatus();


                    /* HttpSession httpSession = wrappedRequest.getSession(true);
                        String currentUser = (String)httpSession.getAttribute("currentUser");
                        logger.warning("Current user ===== " + currentUser);
                        setUserName(currentUser); */

                    if (!icxCookieStatus.equals(CookieStatus.VALID)) {
                        response.sendRedirect(agent + "AppsLocalLogin.jsp");
                        //fctx.renderResponse();
                        fctx.responseComplete();
                        return;
                    }

                    setUserName(session.getUserName());
                    session.validate();
                    setUserID(session.getUserId());
                    Map columns = session.getInfo();
                    String rId = (String)columns.get("RESPONSIBILITY_ID");

                    /* if (rId.equals("52071") || rId.equals("52070") ||
                        rId.equals("52050")) {
                        setResponsibiltyID("1");
                    } else {
                        setResponsibiltyID("0");
                    }


                    ProfileDirectory pd = new ProfileDirectory();
                    profileName =
                            pd.getSpecificProfile("XX_HTD_SALES_PLANNING_ACCESS_LEVEL",
                                                  null, Application_id, rId,
                                                  "", serverID,
                                                  wrappedRequest.getConnection()); */


                    HttpSession sess = request.getSession();


                    //if (sess.getAttribute("userID") == null) {
                    sess.setAttribute("userID", session.getUserId());
                    sess.setAttribute("userName", session.getUserName());
                    //sess.setAttribute("profile", profileName);
                    sess.setAttribute("respID", rId); //"1");

                    /* String rID = (String)columns.get("RESPONSIBILITY_ID");

                        if (rId.equals("52071") || rId.equals("52070") ||
                            rId.equals("52050")) {
                            setResponsibiltyID("1");
                            sess.setAttribute("respID", "1");
                        } else {
                            setResponsibiltyID("0");
                            sess.setAttribute("respID", "0");
                        } */

                    //}
                    /* logger.warning("Username = " +
                                       sess.getAttribute("userName") +
                                       " , UserID = " +
                                       sess.getAttribute("userID") +
                                       " , RespID: " +
                                       sess.getAttribute("respID")); */
                    logger.info("Username = " + sess.getAttribute("userName") +
                                " , UserID = " + sess.getAttribute("userID") +
                                " , RespID: " + sess.getAttribute("respID"));
                    //Logger logger = new Logger();
                    //logger.logDebugStmt("PageListener.java: "+" Connection Established",sess.getAttribute("userName").toString());

                    String formattedDate = sdf.format(new Date());
                    logger.warning("PageListener.java: " +
                                   " Connection Established " +
                                   sess.getAttribute("userName").toString() +
                                   " : " +
                                   sess.getAttribute("userID").toString() +
                                   " - " + sess.getAttribute("respID") + " " +
                                   formattedDate);

                    // writing user logs on to a file
                    /* Logger infoLogger = new Logger();
                        infoLogger.logInfo(sess); */

                } else {
                    /* Logger stmtLogger = new Logger();
                        stmtLogger.logDebugStmt("PageListener.java: "+" EBS Session is null",request.getSession().getAttribute("userName").toString()); */
                    //                    logger.warning(("PageListener.java: "+" EBS Session is null " + request.getSession().getAttribute("userName").toString()));
                    //session.invalidate();
                    logger.warning("PageListener.java: EBS Session is null");
                    //response.sendRedirect("http://prodapp.nishat.net:8001");
                    //response.sendRedirect("http://erpclone1.nishat.net:8006");
                    response.sendRedirect(agent + "AppsLocalLogin.jsp");
                    //fctx.renderResponse();
                    fctx.responseComplete();

                }
            } catch (Exception ob) {
                logger.warning("**************************************************************************");
                logger.warning("PageListener.java: " + ob.getMessage());
                logger.warning("**************************************************************************");
                ob.printStackTrace();
                //                try {
                //                    Logger logger = new Logger();
                //                    logger.logError(ob,request.getSession().getAttribute("userName").toString());
                //                } catch (Exception e) {
                //                    e.printStackTrace();
                //                }
            } finally {
                try {
                    EBSconn.close();
                    wrappedRequest.getConnection().close();
                    if (wrappedRequest.getConnection().isClosed()) {
                        /* Logger logger = new Logger();
                            logger.logDebugStmt("PageListener.java: "+" Connection Closed",request.getSession().getAttribute("userName").toString());
                            logger.logDebugStmt("\n", request.getSession().getAttribute("userName").toString()); */

                        String formattedDate = sdf.format(new Date());
                        logger.warning("PageListener.java: " +
                                       " Connection Closed for user " +
                                       request.getSession().getAttribute("userName").toString() +
                                       " : " +
                                       request.getSession().getAttribute("userID").toString() +
                                       " - " +
                                       request.getSession().getAttribute("respID") +
                                       " " + formattedDate);
                    }
                } catch (Exception e) {
                    logger.warning("**************************************************************************");
                    logger.warning("PageListener.java: " + e.getMessage());
                    logger.warning("**************************************************************************");
                    e.printStackTrace();
                    //                    Logger logger = new Logger();
                    //                    try{
                    //                        logger.logError(e,request.getSession().getAttribute("userName").toString());
                    //                    }catch(Exception ee){
                    //                        ee.printStackTrace();
                    //                    }

                }
            }
        }
    }


    public static void runJavaScriptCode(String javascriptCode) {
        FacesContext facesCtx = FacesContext.getCurrentInstance();

        ExtendedRenderKitService service =
            Service.getRenderKitService(facesCtx,
                                        ExtendedRenderKitService.class);
        service.addScript(facesCtx, javascriptCode);
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUserID() {
        return userID;
    }

    public void setResponsibiltyID(String responsibiltyID) {
        this.responsibiltyID = responsibiltyID;
    }

    public String getResponsibiltyID() {
        return responsibiltyID;
    }

    /*     public void setProfileName(String profileName) {
        this.profileName = profileName;
    }

    public String getProfileName() {
        return profileName;
    } */

    public void setDate(String date) {
        this.date = date;
    }

    public String getDate() {
        return new Date().toString();
    }
}
