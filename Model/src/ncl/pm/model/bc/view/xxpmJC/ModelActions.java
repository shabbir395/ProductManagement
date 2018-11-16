package ncl.pm.model.bc.view.xxpmJC;

import java.sql.CallableStatement;
import java.sql.SQLException;
import java.sql.Types;

import java.util.ArrayList;

import java.util.Collections;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ncl.pm.model.bc.eo.XxpmArticleBomImpl;

import oracle.adf.share.ADFContext;

import oracle.jbo.JboException;
import oracle.jbo.ViewObject;
import oracle.jbo.domain.Number;
import oracle.jbo.server.DBTransaction;
import oracle.jbo.server.EntityImpl;

public class ModelActions {
    public ModelActions() {
        //super();
    }

    Logger logger = new Logger();

    public String dupItmChk(DBTransaction conn, String desc, String s1,
                            String s2, String s3, String s4, String s5,
                            String s6, String s7, int custId) {
        String result = null;
        String sql =
            "BEGIN :RESULT := XXPM_DUP_ITEM_CHECK_FUNC ( :ITM, :S1,:S2,:S3,:S4,:S5,:S6,:S7,:CUST_ID ); END;";
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        Logger.adfLogger.warning("ITM ===== " + desc);
        Logger.adfLogger.warning("S1 ===== " + s1);
        Logger.adfLogger.warning("S2 ===== " + s2);
        Logger.adfLogger.warning("S3 ===== " + s3);
        Logger.adfLogger.warning("S4 ===== " + s4);
        Logger.adfLogger.warning("S5 ===== " + s5);
        Logger.adfLogger.warning("S6 ===== " + s6);
        Logger.adfLogger.warning("S7 ===== " + s7);
        Logger.adfLogger.warning("CUST_ID ===== " + custId);
        try {
            stmt.registerOutParameter("RESULT", Types.VARCHAR);
            stmt.setString("ITM", desc);
            stmt.setString("S1", s1);
            stmt.setString("S2", s2);
            stmt.setString("S3", s3);
            stmt.setString("S4", s4);
            stmt.setString("S5", s5);
            stmt.setString("S6", s6);
            stmt.setString("S7", s7);
            stmt.setInt("CUST_ID", custId);
            stmt.execute();
            result = stmt.getString("RESULT");
            Logger.adfLogger.warning("Dup item chk result ===== " + result);
        } catch (SQLException e) {
            result = "ADF ERROR";
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        return result;
    }

    public String getMaxSegCode(DBTransaction conn, String sg1, String type) {
        String result = "";
        String sql =
            //"BEGIN :MAX_CODE := APPS.XXPM_MAX_ITEM_CODE_FUNC (:S1, :S3, :ACC_TYPE); END;";
            "BEGIN :MAX_CODE := APPS.XXPM_MAX_ITEM_CODE_FUNC ('" + sg1 +
            "', '" + type + "'); END;";
        Logger.adfLogger.warning("sql === " + sql);
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        try {
            stmt.registerOutParameter("MAX_CODE", Types.VARCHAR);
            stmt.execute();
            result = stmt.getString("MAX_CODE");
        } catch (SQLException e) {
            e.printStackTrace();
            Logger.adfLogger.warning("Segment1 value -----> Null");
            result = "000000001";
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        Logger.adfLogger.warning("Segment2 value -----> " + result);
        return result;
    }

    public String getMaxArticleBomNum(DBTransaction conn, String prog) {
        String result = "";
        String sql =
            "BEGIN :VAL := XXPM_ARTICLE_BOM_PKG.GET_MAX_BOM_NUM_FUNC ( :PROG); END;";
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        try {
            stmt.registerOutParameter("VAL", Types.VARCHAR);
            stmt.setString("PROG", prog);
            stmt.execute();
            result = stmt.getString("VAL");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        Logger.adfLogger.warning("Article Bom# value -----> " + result);
        return result;
    }

    public String getMaxSetBomNum(DBTransaction conn, String prog) {
        String result = "";
        String sql =
            "BEGIN :VAL := XXPM_SET_BOM_PKG.GET_MAX_BOM_NUM_FUNC ( :PROG); END;";
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        try {
            stmt.registerOutParameter("VAL", Types.VARCHAR);
            stmt.setString("PROG", prog);
            stmt.execute();
            result = stmt.getString("VAL");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        Logger.adfLogger.warning("Article Bom# value -----> " + result);
        return result;
    }

    public String getProgramName(DBTransaction conn, Integer prog) {
        String result = "";
        String sql = "BEGIN :VAL := XXPM_GET_PROG_NAME_FUNC(:PROG); END;";
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        try {
            stmt.registerOutParameter("VAL", Types.VARCHAR);
            stmt.setInt("PROG", prog);
            stmt.execute();
            result = stmt.getString("VAL");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
//        Logger.adfLogger.warning("Program name -----> " + result);
        return result;
    }

    public String getProgramCustomerName(DBTransaction conn, Integer prog) {
        String result = "";
        String sql = "BEGIN :VAL := XXPM_GET_PROG_CUSTOMER_FUNC(:PROG); END;";
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        try {
            stmt.registerOutParameter("VAL", Types.VARCHAR);
            stmt.setInt("PROG", prog);
            stmt.execute();
            result = stmt.getString("VAL");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        Logger.adfLogger.warning("Program customer name -----> " + result);
        return result;
    }

    public String getProgramManagerName(DBTransaction conn, Integer prog) {
        String result = "";
        String sql = "BEGIN :VAL := XXPM_GET_PROG_MANAGER_FUNC(:PROG); END;";
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        try {
            stmt.registerOutParameter("VAL", Types.VARCHAR);
            stmt.setInt("PROG", prog);
            stmt.execute();
            result = stmt.getString("VAL");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        Logger.adfLogger.warning("Program manager name -----> " + result);
        return result;
    }

    public String getArticleName(DBTransaction conn, Integer art) {
        String result = "";
        String sql = "BEGIN :VAL := XXPM_GET_ARTICLE_NAME_FUNC(:ART); END;";
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        try {
            stmt.registerOutParameter("VAL", Types.VARCHAR);
            stmt.setInt("ART", art);
            stmt.execute();
            result = stmt.getString("VAL");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        Logger.adfLogger.warning("Article name -----> " + result);
        return result;
    }

    public String getArticleBomGroup(DBTransaction conn, Integer art) {
        String result = "";
        String sql = "BEGIN :VAL := XXPM_GET_ARTCL_BOM_GROUP_FUNC(:ART); END;";
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        try {
            stmt.registerOutParameter("VAL", Types.VARCHAR);
            stmt.setInt("ART", art);
            stmt.execute();
            result = stmt.getString("VAL");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        Logger.adfLogger.warning("Article bom group -----> " + result);
        return result;
    }

    public String getUserName(DBTransaction conn, String usr) {
        String result = "";
        String sql = "BEGIN :VAL := XXPM_GET_USER_NAME_FUNC(:USR); END;";
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        try {
            stmt.registerOutParameter("VAL", Types.VARCHAR);
            stmt.setString("USR", usr);
            stmt.execute();
            result = stmt.getString("VAL");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        Logger.adfLogger.warning("User name -----> " + result);
        return result;
    }

    public String getVendorName(DBTransaction conn, Integer vid) {
        String result = "";
        String sql =
            "BEGIN :RESULT := XXPM_GET_VENDOR_NAME_FUNC ( :VID); END;";
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        try {
            stmt.registerOutParameter("RESULT", Types.VARCHAR);
            stmt.setInt("VID", vid);
            stmt.execute();
            result = stmt.getString("RESULT");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        Logger.adfLogger.warning("Vendor name -----> " + result);
        return result;
    }

    public String getEbsItemDesc(DBTransaction conn, Integer itm) {
        String result = "";
        String sql =
            "BEGIN :RESULT := XXPM_GET_EBS_ITEM_DESC_FUNC ( :ITM); END;";
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        try {
            stmt.registerOutParameter("RESULT", Types.VARCHAR);
            stmt.setInt("ITM", itm);
            stmt.execute();
            result = stmt.getString("RESULT");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        Logger.adfLogger.warning("EBS Item desc -----> " + result);
        return result;
    }

    public String getEbsItemSeg2(DBTransaction conn, Integer itm) {
        String result = "";
        String sql =
            "BEGIN :RESULT := XXPM_GET_EBS_ITEM_SEG2_FUNC ( :ITM); END;";
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        try {
            stmt.registerOutParameter("RESULT", Types.VARCHAR);
            stmt.setInt("ITM", itm);
            stmt.execute();
            result = stmt.getString("RESULT");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        Logger.adfLogger.warning("EBS Item Segment2 -----> " + result);
        return result;
    }

    public String getEbsItemUom(DBTransaction conn, Integer itm) {
        String result = "";
        String sql =
            "BEGIN :RESULT := XXPM_GET_EBS_ITEM_UOM_FUNC ( :ITM); END;";
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        try {
            stmt.registerOutParameter("RESULT", Types.VARCHAR);
            stmt.setInt("ITM", itm);
            stmt.execute();
            result = stmt.getString("RESULT");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        Logger.adfLogger.warning("EBS Item UOM -----> " + result);
        return result;
    }

    public String getItemConcateSegments(DBTransaction conn, Integer vid,
                                         String s1, String s3) {
        String result = "";
        String sql =
            "BEGIN :RESULT := XXPM_GET_ITEM_CONCAT_SEG_FUNC ( :VID, :S1, :S3); END;";
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        try {
            stmt.registerOutParameter("RESULT", Types.VARCHAR);
            stmt.setInt("VID", vid);
            stmt.setString("S1", s1);
            stmt.setString("S3", s3);
            stmt.execute();
            result = stmt.getString("RESULT");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        return result;
    }

    public int createFlexValue(DBTransaction conn, String fvSetName,
                               String sg1, String sg2, String sg7, String type,
                               String desc) {
        int result = -1;
        String query =
            "BEGIN XXPM_FLX_VAL_CREATE_PROC(:FV_SET_NAME, :S1, :S2, :S7, :TYPE, :DSC, :MSG); END;";
        CallableStatement stmt = conn.createCallableStatement(query, 0);
        try {
            stmt.setString("FV_SET_NAME", fvSetName);
            stmt.setString("S1", sg1);
            stmt.setString("S2", sg2);
            stmt.setString("S7", sg7);
            stmt.setString("TYPE", type);
            stmt.setString("DSC", desc);
            stmt.registerOutParameter("MSG", Types.NUMERIC);
            stmt.executeUpdate();
            result = stmt.getInt("MSG");
        } catch (SQLException e) {
            result = 0;
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        return result;
    }

    public Number createEBSItem(DBTransaction conn, int id) {
        Number successMsg = null;
        String query =
            "BEGIN   XXPM_EBS_ITM_CREATE_PROC(:CUST_ID, :MSG, :SUCCESS_MSG);  END;";
        CallableStatement stmt = conn.createCallableStatement(query, 0);
        try {
            stmt.setInt("CUST_ID", id);
            stmt.registerOutParameter("MSG", Types.VARCHAR);
            stmt.registerOutParameter("SUCCESS_MSG", Types.NUMERIC);
            stmt.executeUpdate();
            Logger.adfLogger.warning("msg == " + stmt.getString("MSG"));
            Logger.adfLogger.warning("SUCCESS MSG == " +
                               stmt.getString("SUCCESS_MSG"));
            successMsg = new Number(stmt.getInt("SUCCESS_MSG"));
        } catch (Exception e1) {
            // TODO: Add catch code
            Logger.adfLogger.warning("msg == ADF Error");
            successMsg = null;
            e1.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        return successMsg;
    }

    public String updateEBSItem(DBTransaction conn, int custImId) {
        String msg = "";
        String query =
            "BEGIN   APPS.XXPM_EBS_ITM_UPDATE_PROC(:CUST_IMID, :MSG);  END;";
        CallableStatement stmt = conn.createCallableStatement(query, 0);
        try {
            stmt.setInt("CUST_IMID", custImId);
            stmt.registerOutParameter("MSG", Types.VARCHAR);
            stmt.executeUpdate();
            Logger.adfLogger.warning("msg == " + stmt.getString("MSG"));
        } catch (Exception e1) {
            // TODO: Add catch code:S1,
            Logger.adfLogger.warning("msg == ADF Error in updateEBSItem method.");
            e1.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        return msg;
    }

    public String updateSKUInEBSItem(DBTransaction conn, String custId) {
        String msg = "";
        String query =
            "BEGIN   XXPM_EBS_SKU_UPDATE_PROC(:CUST_ID, :MSG);  END;";
        CallableStatement stmt = conn.createCallableStatement(query, 0);
        try {
            stmt.setString("CUST_ID", custId);
            stmt.registerOutParameter("MSG", Types.VARCHAR);
            stmt.executeUpdate();
            Logger.adfLogger.warning("msg == " + stmt.getString("MSG"));
        } catch (Exception e1) {
            // TODO: Add catch code:S1,
            Logger.adfLogger.warning("msg == ADF Error in updateSKUInEBSItem method.");
            e1.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        return msg;
    }

    public int totViewRows(ViewObject vo) {
        int rows = (int)vo.getEstimatedRowCount();
        return rows;
    }

    public void orgSubinvLocAssignment(DBTransaction conn, int custImId,
                                       String prefix) {
        String usr =
            (String)ADFContext.getCurrent().getSessionScope().get("userID");
        String resp =
            (String)ADFContext.getCurrent().getSessionScope().get("respID");
        String query =
            "BEGIN XXPM_ORG_SUBINV_LOC_ASSIGNMENT(:CUST_IMID, :PREFIX, :USR, :RESP); END;";
        CallableStatement stmt = conn.createCallableStatement(query, 0);
        try {
            stmt.setInt("CUST_IMID", custImId);
            stmt.setString("PREFIX", prefix);
            stmt.setString("USR", usr);
            stmt.setString("RESP", resp);
            stmt.executeUpdate();
        } catch (SQLException e) {
            Logger.adfLogger.warning("SQL error in orgSubinvLocAssignment method.");
        } catch (Exception e) {
            Logger.adfLogger.warning("There is an error in orgSubinvLocAssignment method.");
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
    }

    public int itemCategoryAssignment(DBTransaction conn, int custImId) {
        int result = 2;
        String usr =
            (String)ADFContext.getCurrent().getSessionScope().get("userID");
        String resp =
            (String)ADFContext.getCurrent().getSessionScope().get("respID");
        String query =
            "BEGIN XXPM_ITEM_CAT_ASIGN_PROC(:CUST_IMID, :USR, :RESP, :MSG); END;";
        CallableStatement stmt = conn.createCallableStatement(query, 0);
        try {
            stmt.setInt("CUST_IMID", custImId);
            stmt.setString("USR", usr);
            stmt.setString("RESP", resp);
            stmt.registerOutParameter("MSG", Types.INTEGER);
            stmt.executeUpdate();
            result = stmt.getInt("MSG");
        } catch (SQLException e) {
            Logger.adfLogger.warning("SQL error in itemCategoryAssignment method.");
            result = 2;
        } catch (Exception e) {
            Logger.adfLogger.warning("There is an error in itemCategoryAssignment method.");
            result = 3;
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        Logger.adfLogger.warning("itemCategoryAssignment result ===== " + result);
        return result;
    }

    public int itemDefaultCategoryUpdate(DBTransaction conn, int custImId) {
        int result = 2;
        String usr =
            (String)ADFContext.getCurrent().getSessionScope().get("userID");
        String resp =
            (String)ADFContext.getCurrent().getSessionScope().get("respID");
        String query =
            "BEGIN XXPM_ITEM_DEFAULT_CAT_UPD_PROC(:CUST_IMID, :USR, :RESP, :MSG); END;";
        CallableStatement stmt = conn.createCallableStatement(query, 0);
        try {
            stmt.setInt("CUST_IMID", custImId);
            stmt.setString("USR", usr);
            stmt.setString("RESP", resp);
            stmt.registerOutParameter("MSG", Types.INTEGER);
            stmt.executeUpdate();
            result = stmt.getInt("MSG");
        } catch (SQLException e) {
            Logger.adfLogger.warning("SQL error in itemDefaultCategoryUpdate method.");
            result = 2;
        } catch (Exception e) {
            Logger.adfLogger.warning("There is an error in itemDefaultCategoryUpdate method.");
            result = 3;
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        Logger.adfLogger.warning("itemDefaultCategoryUpdate result ===== " + result);
        return result;
    }

    public String getSizeDesc(DBTransaction conn, String size) {
        String result = "";
        String query =
            "BEGIN :SIZE_DESC := XXPM_GET_SIZE_DESC ( '" + size + "'); END;";
        CallableStatement stmt = conn.createCallableStatement(query, 0);
        try {
            //stmt.setString("SIZE_ID", size);
            //Logger.adfLogger.warning("SIZE_ID ===== " + size);
            stmt.registerOutParameter("SIZE_DESC", Types.VARCHAR);
            stmt.execute();
            result = stmt.getString("SIZE_DESC");
            //Logger.adfLogger.warning("getSizeDesc result ===== " + result);
            //logger.doLogging("getSizeDesc result ===== " + result);
        } catch (Exception e) {
            result = "";
            logger.doLogging("getSizeDesc result ===== " + e.getMessage());
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        return result;
    }

    public String getColorDesc(DBTransaction conn, String color) {
        String result = "";
        String query =
            "BEGIN :COLOR_DESC := XXPM_GET_COLOR_DESC ( '" + color + "'); END;";
        CallableStatement stmt = conn.createCallableStatement(query, 0);
        try {
            stmt.registerOutParameter("COLOR_DESC", Types.VARCHAR);
            stmt.execute();
            result = stmt.getString("COLOR_DESC");
        } catch (Exception e) {
            result = "";
            logger.doLogging("getColorDesc result ===== " + e.getMessage());
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        return result;
    }

    public void showError(DBTransaction conn, String err) {
        JboException jboException = new JboException(err);
        jboException.setSeverity(JboException.SEVERITY_ERROR);
        conn.addWarning(jboException);
    }

    public String getEbsPoNum(DBTransaction conn, String lineId) {
        String result = "";
        String sql =
            "BEGIN :RESULT := XXPM_GET_EBS_PO_NUM_FUNC(:P_LINE_ID); END;";
        CallableStatement stmt = conn.createCallableStatement(sql, 0);
        try {
            stmt.registerOutParameter("RESULT", Types.VARCHAR);
            stmt.setString("P_LINE_ID", lineId);
            stmt.execute();
            result = stmt.getString("RESULT");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            }
        }
        Logger.adfLogger.warning("PO Number -----> " + result);
        return result;
    }

    public void changeBomApprovalStatus(List<CustomMap<Object, Object>> values,
                                        EntityImpl ei) {
        for (CustomMap<Object, Object> entry : values) {
            if (entry.key != entry.value &&
                "Approved".equalsIgnoreCase(String.valueOf(ei.getAttribute("ApprovalStatus")))) {
                ei.setAttribute("ApprovalStatus", "Requires Re-Approval");
            }
        }
    }
}
