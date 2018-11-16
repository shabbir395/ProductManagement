package ncl.pm.model.bc.vo;

import ncl.pm.model.bc.eo.XxpmArticleBomImpl;

import ncl.pm.model.bc.eo.XxpmMadeupArticlesImpl;
import ncl.pm.model.bc.eo.XxpmMadeupProgramsImpl;
import ncl.pm.model.bc.view.xxpmJC.ModelActions;

import oracle.jbo.RowIterator;
import oracle.jbo.RowSet;
import oracle.jbo.domain.ClobDomain;
import oracle.jbo.domain.DBSequence;
import oracle.jbo.domain.Date;
import oracle.jbo.domain.Number;
import oracle.jbo.domain.RowID;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityImpl;
import oracle.jbo.server.ViewRowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Sep 09 15:06:09 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmArticleBomViewRowImpl extends ViewRowImpl {
    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        ArtBomId {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getArtBomId();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setArtBomId((DBSequence)value);
            }
        }
        ,
        ArtBomNum {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getArtBomNum();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setArtBomNum((String)value);
            }
        }
        ,
        ProgId {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getProgId();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setProgId((Integer)value);
            }
        }
        ,
        ProgName {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getProgName();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setProgName((String)value);
            }
        }
        ,
        ProgNameMaster {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getProgNameMaster();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setProgNameMaster((String)value);
            }
        }
        ,
        CustomerName {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getCustomerName();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setCustomerName((String)value);
            }
        }
        ,
        CustomerNameTrans {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getCustomerNameTrans();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setCustomerNameTrans((String)value);
            }
        }
        ,
        ProgManager {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getProgManager();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setProgManager((String)value);
            }
        }
        ,
        ProgManagerTrans {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getProgManagerTrans();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setProgManagerTrans((String)value);
            }
        }
        ,
        ArticleId {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getArticleId();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setArticleId((Integer)value);
            }
        }
        ,
        ArticleNameMaster {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getArticleNameMaster();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setArticleNameMaster((String)value);
            }
        }
        ,
        ArticleName {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getArticleName();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setArticleName((String)value);
            }
        }
        ,
        BomGroup {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getBomGroup();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setBomGroup((String)value);
            }
        }
        ,
        BomGroupTrans {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getBomGroupTrans();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setBomGroupTrans((String)value);
            }
        }
        ,
        CreatedBy {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getCreatedBy();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setCreatedBy((String)value);
            }
        }
        ,
        CreatorName {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getCreatorName();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setCreatorName((String)value);
            }
        }
        ,
        CreationDate {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getCreationDate();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setCreationDate((Date)value);
            }
        }
        ,
        LastUpdatedBy {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getLastUpdatedBy();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setLastUpdatedBy((String)value);
            }
        }
        ,
        LastUpdateDate {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getLastUpdateDate();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setLastUpdateDate((Date)value);
            }
        }
        ,
        RespId {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getRespId();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setRespId((String)value);
            }
        }
        ,
        ApprovalDate {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getApprovalDate();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setApprovalDate((Date)value);
            }
        }
        ,
        ApprovalStatus {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getApprovalStatus();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setApprovalStatus((String)value);
            }
        }
        ,
        ReqApprDate {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getReqApprDate();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setReqApprDate((Date)value);
            }
        }
        ,
        RejectReason {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getRejectReason();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setRejectReason((String)value);
            }
        }
        ,
        ApprovalFlag {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getApprovalFlag();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setApprovalFlag((Integer)value);
            }
        }
        ,
        RowStatus {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getRowStatus();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setRowStatus((Integer)value);
            }
        }
        ,
        BomLog {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getBomLog();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setBomLog((ClobDomain)value);
            }
        }
        ,
        EbsStatus {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getEbsStatus();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setEbsStatus((Integer)value);
            }
        }
        ,
        ProgIdMaster {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getProgIdMaster();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setProgIdMaster((DBSequence)value);
            }
        }
        ,
        ArticleIdMaster {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getArticleIdMaster();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setArticleIdMaster((DBSequence)value);
            }
        }
        ,
        CustomerId {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getCustomerId();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setCustomerId((Integer)value);
            }
        }
        ,
        RowID {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getRowID();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setRowID((RowID)value);
            }
        }
        ,
        CustomerIdMP {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getCustomerIdMP();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setCustomerIdMP((Number)value);
            }
        }
        ,
        UserIdFND {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getUserIdFND();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setUserIdFND((Number)value);
            }
        }
        ,
        UserIdMP {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getUserIdMP();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setUserIdMP((Number)value);
            }
        }
        ,
        XxpmArticleBomAccessoriesView {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getXxpmArticleBomAccessoriesView();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        XxpmArticleBomFabricView {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getXxpmArticleBomFabricView();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        MadeupCombDetailsLov {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getMadeupCombDetailsLov();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        MadeupProgDetailsLov {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getMadeupProgDetailsLov();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        MadeupArticlesDetailsLov {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getMadeupArticlesDetailsLov();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        FndUserView {
            public Object get(XxpmArticleBomViewRowImpl obj) {
                return obj.getFndUserView();
            }

            public void put(XxpmArticleBomViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ;
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(XxpmArticleBomViewRowImpl object);

        public abstract void put(XxpmArticleBomViewRowImpl object,
                                 Object value);

        public int index() {
            return AttributesEnum.firstIndex() + ordinal();
        }

        public static final int firstIndex() {
            return firstIndex;
        }

        public static int count() {
            return AttributesEnum.firstIndex() +
                AttributesEnum.staticValues().length;
        }

        public static final AttributesEnum[] staticValues() {
            if (vals == null) {
                vals = AttributesEnum.values();
            }
            return vals;
        }
    }


    public static final int ARTBOMID = AttributesEnum.ArtBomId.index();
    public static final int ARTBOMNUM = AttributesEnum.ArtBomNum.index();
    public static final int PROGID = AttributesEnum.ProgId.index();
    public static final int PROGNAME = AttributesEnum.ProgName.index();
    public static final int PROGNAMEMASTER = AttributesEnum.ProgNameMaster.index();
    public static final int CUSTOMERNAME = AttributesEnum.CustomerName.index();
    public static final int CUSTOMERNAMETRANS = AttributesEnum.CustomerNameTrans.index();
    public static final int PROGMANAGER = AttributesEnum.ProgManager.index();
    public static final int PROGMANAGERTRANS = AttributesEnum.ProgManagerTrans.index();
    public static final int ARTICLEID = AttributesEnum.ArticleId.index();
    public static final int ARTICLENAMEMASTER = AttributesEnum.ArticleNameMaster.index();
    public static final int ARTICLENAME = AttributesEnum.ArticleName.index();
    public static final int BOMGROUP = AttributesEnum.BomGroup.index();
    public static final int BOMGROUPTRANS = AttributesEnum.BomGroupTrans.index();
    public static final int CREATEDBY = AttributesEnum.CreatedBy.index();
    public static final int CREATORNAME = AttributesEnum.CreatorName.index();
    public static final int CREATIONDATE = AttributesEnum.CreationDate.index();
    public static final int LASTUPDATEDBY = AttributesEnum.LastUpdatedBy.index();
    public static final int LASTUPDATEDATE = AttributesEnum.LastUpdateDate.index();
    public static final int RESPID = AttributesEnum.RespId.index();
    public static final int APPROVALDATE = AttributesEnum.ApprovalDate.index();
    public static final int APPROVALSTATUS = AttributesEnum.ApprovalStatus.index();
    public static final int REQAPPRDATE = AttributesEnum.ReqApprDate.index();
    public static final int REJECTREASON = AttributesEnum.RejectReason.index();
    public static final int APPROVALFLAG = AttributesEnum.ApprovalFlag.index();
    public static final int ROWSTATUS = AttributesEnum.RowStatus.index();
    public static final int BOMLOG = AttributesEnum.BomLog.index();
    public static final int EBSSTATUS = AttributesEnum.EbsStatus.index();
    public static final int PROGIDMASTER = AttributesEnum.ProgIdMaster.index();
    public static final int ARTICLEIDMASTER = AttributesEnum.ArticleIdMaster.index();
    public static final int CUSTOMERID = AttributesEnum.CustomerId.index();
    public static final int ROWID = AttributesEnum.RowID.index();
    public static final int CUSTOMERIDMP = AttributesEnum.CustomerIdMP.index();
    public static final int USERIDFND = AttributesEnum.UserIdFND.index();
    public static final int USERIDMP = AttributesEnum.UserIdMP.index();
    public static final int XXPMARTICLEBOMACCESSORIESVIEW = AttributesEnum.XxpmArticleBomAccessoriesView.index();
    public static final int XXPMARTICLEBOMFABRICVIEW = AttributesEnum.XxpmArticleBomFabricView.index();
    public static final int MADEUPCOMBDETAILSLOV = AttributesEnum.MadeupCombDetailsLov.index();
    public static final int MADEUPPROGDETAILSLOV = AttributesEnum.MadeupProgDetailsLov.index();
    public static final int MADEUPARTICLESDETAILSLOV = AttributesEnum.MadeupArticlesDetailsLov.index();
    public static final int FNDUSERVIEW = AttributesEnum.FndUserView.index();

    /**
     * This is the default constructor (do not remove).
     */
    public XxpmArticleBomViewRowImpl() {
    }

    /**
     * Gets XxpmArticleBom entity object.
     * @return the XxpmArticleBom
     */
    public XxpmArticleBomImpl getXxpmArticleBom() {
        return (XxpmArticleBomImpl)getEntity(0);
    }


    /**
     * Gets XxpmMadeupPrograms entity object.
     * @return the XxpmMadeupPrograms
     */
    public XxpmMadeupProgramsImpl getXxpmMadeupPrograms() {
        return (XxpmMadeupProgramsImpl)getEntity(1);
    }

    /**
     * Gets XxpmMadeupArticles entity object.
     * @return the XxpmMadeupArticles
     */
    public XxpmMadeupArticlesImpl getXxpmMadeupArticles() {
        return (XxpmMadeupArticlesImpl)getEntity(2);
    }

    /**
     * Gets XxpmCustomersV entity object.
     * @return the XxpmCustomersV
     */
    public EntityImpl getXxpmCustomersV() {
        return (EntityImpl)getEntity(3);
    }

    /**
     * Gets FndUser entity object.
     * @return the FndUser
     */
    public EntityImpl getFndUser() {
        return (EntityImpl)getEntity(4);
    }

    /**
     * Gets the attribute value for ART_BOM_ID using the alias name ArtBomId.
     * @return the ART_BOM_ID
     */
    public DBSequence getArtBomId() {
        return (DBSequence)getAttributeInternal(ARTBOMID);
    }

    /**
     * Sets <code>value</code> as attribute value for ART_BOM_ID using the alias name ArtBomId.
     * @param value value to set the ART_BOM_ID
     */
    public void setArtBomId(DBSequence value) {
        setAttributeInternal(ARTBOMID, value);
    }

    /**
     * Gets the attribute value for ART_BOM_NUM using the alias name ArtBomNum.
     * @return the ART_BOM_NUM
     */
    public String getArtBomNum() {
        return (String)getAttributeInternal(ARTBOMNUM);
    }

    /**
     * Sets <code>value</code> as attribute value for ART_BOM_NUM using the alias name ArtBomNum.
     * @param value value to set the ART_BOM_NUM
     */
    public void setArtBomNum(String value) {
        setAttributeInternal(ARTBOMNUM, value);
    }

    /**
     * Gets the attribute value for PROG_ID using the alias name ProgId.
     * @return the PROG_ID
     */
    public Integer getProgId() {
        return (Integer)getAttributeInternal(PROGID);
    }

    /**
     * Sets <code>value</code> as attribute value for PROG_ID using the alias name ProgId.
     * @param value value to set the PROG_ID
     */
    public void setProgId(Integer value) {
        setAttributeInternal(PROGID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute ProgName.
     * @return the ProgName
     */
    public String getProgName() {
        return (String)getAttributeInternal(PROGNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ProgName.
     * @param value value to set the  ProgName
     */
    public void setProgName(String value) {
        setAttributeInternal(PROGNAME, value);
    }


    /**
     * Gets the attribute value for USER_NAME using the alias name ProgManager.
     * @return the USER_NAME
     */
    public String getProgManager() {
        return (String) getAttributeInternal(XxpmArticleBomViewRowImpl.PROGMANAGER);
    }

    /**
     * Sets <code>value</code> as attribute value for USER_NAME using the alias name ProgManager.
     * @param value value to set the USER_NAME
     */
    public void setProgManager(String value) {
        setAttributeInternal(XxpmArticleBomViewRowImpl.PROGMANAGER, value);
    }

    /**
     * Gets the attribute value for ARTICLE_ID using the alias name ArticleId.
     * @return the ARTICLE_ID
     */
    public Integer getArticleId() {
        return (Integer)getAttributeInternal(ARTICLEID);
    }

    /**
     * Sets <code>value</code> as attribute value for ARTICLE_ID using the alias name ArticleId.
     * @param value value to set the ARTICLE_ID
     */
    public void setArticleId(Integer value) {
        setAttributeInternal(ARTICLEID, value);
    }


    /**
     * Gets the attribute value for ARTICLE_NAME using the alias name ArticleNameMaster.
     * @return the ARTICLE_NAME
     */
    public String getArticleNameMaster() {
        return (String) getAttributeInternal(XxpmArticleBomViewRowImpl.ARTICLENAMEMASTER);
    }

    /**
     * Sets <code>value</code> as attribute value for ARTICLE_NAME using the alias name ArticleNameMaster.
     * @param value value to set the ARTICLE_NAME
     */
    public void setArticleNameMaster(String value) {
        setAttributeInternal(XxpmArticleBomViewRowImpl.ARTICLENAMEMASTER, value);
    }


    /**
     * Gets the attribute value for CREATED_BY using the alias name CreatedBy.
     * @return the CREATED_BY
     */
    public String getCreatedBy() {
        return (String)getAttributeInternal(CREATEDBY);
    }

    /**
     * Sets <code>value</code> as attribute value for CREATED_BY using the alias name CreatedBy.
     * @param value value to set the CREATED_BY
     */
    public void setCreatedBy(String value) {
        setAttributeInternal(CREATEDBY, value);
    }

    /**
     * Gets the attribute value for CREATION_DATE using the alias name CreationDate.
     * @return the CREATION_DATE
     */
    public Date getCreationDate() {
        return (Date)getAttributeInternal(CREATIONDATE);
    }

    /**
     * Sets <code>value</code> as attribute value for CREATION_DATE using the alias name CreationDate.
     * @param value value to set the CREATION_DATE
     */
    public void setCreationDate(Date value) {
        setAttributeInternal(CREATIONDATE, value);
    }

    /**
     * Gets the attribute value for LAST_UPDATED_BY using the alias name LastUpdatedBy.
     * @return the LAST_UPDATED_BY
     */
    public String getLastUpdatedBy() {
        return (String)getAttributeInternal(LASTUPDATEDBY);
    }

    /**
     * Sets <code>value</code> as attribute value for LAST_UPDATED_BY using the alias name LastUpdatedBy.
     * @param value value to set the LAST_UPDATED_BY
     */
    public void setLastUpdatedBy(String value) {
        setAttributeInternal(LASTUPDATEDBY, value);
    }

    /**
     * Gets the attribute value for LAST_UPDATE_DATE using the alias name LastUpdateDate.
     * @return the LAST_UPDATE_DATE
     */
    public Date getLastUpdateDate() {
        return (Date)getAttributeInternal(LASTUPDATEDATE);
    }

    /**
     * Sets <code>value</code> as attribute value for LAST_UPDATE_DATE using the alias name LastUpdateDate.
     * @param value value to set the LAST_UPDATE_DATE
     */
    public void setLastUpdateDate(Date value) {
        setAttributeInternal(LASTUPDATEDATE, value);
    }

    /**
     * Gets the attribute value for RESP_ID using the alias name RespId.
     * @return the RESP_ID
     */
    public String getRespId() {
        return (String)getAttributeInternal(RESPID);
    }

    /**
     * Sets <code>value</code> as attribute value for RESP_ID using the alias name RespId.
     * @param value value to set the RESP_ID
     */
    public void setRespId(String value) {
        setAttributeInternal(RESPID, value);
    }


    /**
     * Gets the attribute value for APPROVAL_DATE using the alias name ApprovalDate.
     * @return the APPROVAL_DATE
     */
    public Date getApprovalDate() {
        return (Date)getAttributeInternal(APPROVALDATE);
    }

    /**
     * Sets <code>value</code> as attribute value for APPROVAL_DATE using the alias name ApprovalDate.
     * @param value value to set the APPROVAL_DATE
     */
    public void setApprovalDate(Date value) {
        setAttributeInternal(APPROVALDATE, value);
    }

    /**
     * Gets the attribute value for APPROVAL_STATUS using the alias name ApprovalStatus.
     * @return the APPROVAL_STATUS
     */
    public String getApprovalStatus() {
        return (String)getAttributeInternal(APPROVALSTATUS);
    }

    /**
     * Sets <code>value</code> as attribute value for APPROVAL_STATUS using the alias name ApprovalStatus.
     * @param value value to set the APPROVAL_STATUS
     */
    public void setApprovalStatus(String value) {
        setAttributeInternal(APPROVALSTATUS, value);
    }

    /**
     * Gets the attribute value for REQ_APPR_DATE using the alias name ReqApprDate.
     * @return the REQ_APPR_DATE
     */
    public Date getReqApprDate() {
        return (Date)getAttributeInternal(REQAPPRDATE);
    }

    /**
     * Sets <code>value</code> as attribute value for REQ_APPR_DATE using the alias name ReqApprDate.
     * @param value value to set the REQ_APPR_DATE
     */
    public void setReqApprDate(Date value) {
        setAttributeInternal(REQAPPRDATE, value);
    }

    /**
     * Gets the attribute value for REJECT_REASON using the alias name RejectReason.
     * @return the REJECT_REASON
     */
    public String getRejectReason() {
        return (String)getAttributeInternal(REJECTREASON);
    }

    /**
     * Sets <code>value</code> as attribute value for REJECT_REASON using the alias name RejectReason.
     * @param value value to set the REJECT_REASON
     */
    public void setRejectReason(String value) {
        setAttributeInternal(REJECTREASON, value);
    }

    /**
     * Gets the attribute value for APPROVAL_FLAG using the alias name ApprovalFlag.
     * @return the APPROVAL_FLAG
     */
    public Integer getApprovalFlag() {
        return (Integer)getAttributeInternal(APPROVALFLAG);
    }

    /**
     * Sets <code>value</code> as attribute value for APPROVAL_FLAG using the alias name ApprovalFlag.
     * @param value value to set the APPROVAL_FLAG
     */
    public void setApprovalFlag(Integer value) {
        setAttributeInternal(APPROVALFLAG, value);
    }

    /**
     * Gets the attribute value for the calculated attribute RowStatus.
     * @return the RowStatus
     */
    public Integer getRowStatus() {
        //return (Integer) getAttributeInternal(ROWSTATUS);
        byte entityState = this.getEntity(0).getEntityState();
        return new Integer(entityState);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute RowStatus.
     * @param value value to set the  RowStatus
     */
    public void setRowStatus(Integer value) {
        setAttributeInternal(ROWSTATUS, value);
    }


    /**
     * Gets the attribute value for BOM_LOG using the alias name BomLog.
     * @return the BOM_LOG
     */
    public ClobDomain getBomLog() {
        return (ClobDomain) getAttributeInternal(BOMLOG);
    }

    /**
     * Sets <code>value</code> as attribute value for BOM_LOG using the alias name BomLog.
     * @param value value to set the BOM_LOG
     */
    public void setBomLog(ClobDomain value) {
        setAttributeInternal(BOMLOG, value);
    }

    /**
     * Gets the attribute value for EBS_STATUS using the alias name EbsStatus.
     * @return the EBS_STATUS
     */
    public Integer getEbsStatus() {
        return (Integer) getAttributeInternal(EBSSTATUS);
    }

    /**
     * Sets <code>value</code> as attribute value for EBS_STATUS using the alias name EbsStatus.
     * @param value value to set the EBS_STATUS
     */
    public void setEbsStatus(Integer value) {
        setAttributeInternal(EBSSTATUS, value);
    }

    /**
     * Gets the attribute value for PROG_NAME using the alias name ProgNameMaster.
     * @return the PROG_NAME
     */
    public String getProgNameMaster() {
        return (String) getAttributeInternal(PROGNAMEMASTER);
    }

    /**
     * Sets <code>value</code> as attribute value for PROG_NAME using the alias name ProgNameMaster.
     * @param value value to set the PROG_NAME
     */
    public void setProgNameMaster(String value) {
        setAttributeInternal(PROGNAMEMASTER, value);
    }

    /**
     * Gets the attribute value for PROG_ID using the alias name ProgIdMaster.
     * @return the PROG_ID
     */
    public DBSequence getProgIdMaster() {
        return (DBSequence)getAttributeInternal(PROGIDMASTER);
    }

    /**
     * Sets <code>value</code> as attribute value for PROG_ID using the alias name ProgIdMaster.
     * @param value value to set the PROG_ID
     */
    public void setProgIdMaster(DBSequence value) {
        setAttributeInternal(PROGIDMASTER, value);
    }

    /**
     * Gets the attribute value for ARTICLE_ID using the alias name ArticleIdMaster.
     * @return the ARTICLE_ID
     */
    public DBSequence getArticleIdMaster() {
        return (DBSequence)getAttributeInternal(ARTICLEIDMASTER);
    }

    /**
     * Sets <code>value</code> as attribute value for ARTICLE_ID using the alias name ArticleIdMaster.
     * @param value value to set the ARTICLE_ID
     */
    public void setArticleIdMaster(DBSequence value) {
        setAttributeInternal(ARTICLEIDMASTER, value);
    }

    /**
     * Gets the attribute value for CUSTOMER_ID using the alias name CustomerId.
     * @return the CUSTOMER_ID
     */
    public Integer getCustomerId() {
        return (Integer) getAttributeInternal(CUSTOMERID);
    }

    /**
     * Sets <code>value</code> as attribute value for CUSTOMER_ID using the alias name CustomerId.
     * @param value value to set the CUSTOMER_ID
     */
    public void setCustomerId(Integer value) {
        setAttributeInternal(CUSTOMERID, value);
    }

    /**
     * Gets the attribute value for ROWID using the alias name RowID.
     * @return the ROWID
     */
    public RowID getRowID() {
        return (RowID) getAttributeInternal(ROWID);
    }

    /**
     * Sets <code>value</code> as attribute value for ROWID using the alias name RowID.
     * @param value value to set the ROWID
     */
    public void setRowID(RowID value) {
        setAttributeInternal(ROWID, value);
    }

    /**
     * Gets the attribute value for CUSTOMER_ID using the alias name CustomerIdMP.
     * @return the CUSTOMER_ID
     */
    public Number getCustomerIdMP() {
        return (Number) getAttributeInternal(CUSTOMERIDMP);
    }

    /**
     * Sets <code>value</code> as attribute value for CUSTOMER_ID using the alias name CustomerIdMP.
     * @param value value to set the CUSTOMER_ID
     */
    public void setCustomerIdMP(Number value) {
        setAttributeInternal(CUSTOMERIDMP, value);
    }

    /**
     * Gets the attribute value for USER_ID using the alias name UserIdFND.
     * @return the USER_ID
     */
    public Number getUserIdFND() {
        return (Number) getAttributeInternal(USERIDFND);
    }

    /**
     * Sets <code>value</code> as attribute value for USER_ID using the alias name UserIdFND.
     * @param value value to set the USER_ID
     */
    public void setUserIdFND(Number value) {
        setAttributeInternal(USERIDFND, value);
    }

    /**
     * Gets the attribute value for USER_ID using the alias name UserIdMP.
     * @return the USER_ID
     */
    public Number getUserIdMP() {
        return (Number) getAttributeInternal(USERIDMP);
    }

    /**
     * Sets <code>value</code> as attribute value for USER_ID using the alias name UserIdMP.
     * @param value value to set the USER_ID
     */
    public void setUserIdMP(Number value) {
        setAttributeInternal(USERIDMP, value);
    }

    /**
     * Gets the attribute value for the calculated attribute ArticleName.
     * @return the ArticleName
     */
    public String getArticleName() {
        return (String) getAttributeInternal(ARTICLENAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ArticleName.
     * @param value value to set the  ArticleName
     */
    public void setArticleName(String value) {
        setAttributeInternal(ARTICLENAME, value);
    }

    /**
     * Gets the attribute value for the calculated attribute CustomerNameTrans.
     * @return the CustomerNameTrans
     */
    public String getCustomerNameTrans() {
        return (String) getAttributeInternal(CUSTOMERNAMETRANS);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute CustomerNameTrans.
     * @param value value to set the  CustomerNameTrans
     */
    public void setCustomerNameTrans(String value) {
        setAttributeInternal(CUSTOMERNAMETRANS, value);
    }

    /**
     * Gets the attribute value for the calculated attribute ProgManagerTrans.
     * @return the ProgManagerTrans
     */
    public String getProgManagerTrans() {
        return (String) getAttributeInternal(PROGMANAGERTRANS);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ProgManagerTrans.
     * @param value value to set the  ProgManagerTrans
     */
    public void setProgManagerTrans(String value) {
        setAttributeInternal(PROGMANAGERTRANS, value);
    }

    /**
     * Gets the attribute value for the calculated attribute BomGroupTrans.
     * @return the BomGroupTrans
     */
    public String getBomGroupTrans() {
        return (String) getAttributeInternal(BOMGROUPTRANS);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute BomGroupTrans.
     * @param value value to set the  BomGroupTrans
     */
    public void setBomGroupTrans(String value) {
        setAttributeInternal(BOMGROUPTRANS, value);
    }

    /**
     * Gets the attribute value for BOM_GROUP using the alias name BomGroup.
     * @return the BOM_GROUP
     */
    public String getBomGroup() {
        return (String) getAttributeInternal(XxpmArticleBomViewRowImpl.BOMGROUP);
    }

    /**
     * Sets <code>value</code> as attribute value for BOM_GROUP using the alias name BomGroup.
     * @param value value to set the BOM_GROUP
     */
    public void setBomGroup(String value) {
        setAttributeInternal(XxpmArticleBomViewRowImpl.BOMGROUP, value);
    }

    /**
     * Gets the object of class ModelActions.
     * @return the object of class ModelActions
     */
    ModelActions ma = new ModelActions();

    /**
     * Gets the attribute value for the calculated attribute CreatorName.
     * @return the CreatorName
     */
    public String getCreatorName() {
        //return (String) getAttributeInternal(CREATORNAME);
        return ma.getUserName(getDBTransaction(), getCreatedBy());

    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute CreatorName.
     * @param value value to set the  CreatorName
     */
    public void setCreatorName(String value) {
        setAttributeInternal(CREATORNAME, value);
    }

    /**
     * Gets the attribute value for CUSTOMER_NAME using the alias name CustomerName.
     * @return the CUSTOMER_NAME
     */
    public String getCustomerName() {
        return (String) getAttributeInternal(XxpmArticleBomViewRowImpl.CUSTOMERNAME);
    }

    /**
     * Sets <code>value</code> as attribute value for CUSTOMER_NAME using the alias name CustomerName.
     * @param value value to set the CUSTOMER_NAME
     */
    public void setCustomerName(String value) {
        setAttributeInternal(XxpmArticleBomViewRowImpl.CUSTOMERNAME, value);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link XxpmArticleBomAccessoriesView.
     */
    public RowIterator getXxpmArticleBomAccessoriesView() {
        return (RowIterator)getAttributeInternal(XXPMARTICLEBOMACCESSORIESVIEW);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link XxpmArticleBomFabricView.
     */
    public RowIterator getXxpmArticleBomFabricView() {
        return (RowIterator)getAttributeInternal(XXPMARTICLEBOMFABRICVIEW);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link MadeupCombDetailsLov.
     */
    public RowIterator getMadeupCombDetailsLov() {
        return (RowIterator)getAttributeInternal(MADEUPCOMBDETAILSLOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> MadeupProgDetailsLov.
     */
    public RowSet getMadeupProgDetailsLov() {
        return (RowSet)getAttributeInternal(MADEUPPROGDETAILSLOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> MadeupArticlesDetailsLov.
     */
    public RowSet getMadeupArticlesDetailsLov() {
        return (RowSet)getAttributeInternal(MADEUPARTICLESDETAILSLOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> FndUserView.
     */
    public RowSet getFndUserView() {
        return (RowSet)getAttributeInternal(FNDUSERVIEW);
    }

    /**
     * getAttrInvokeAccessor: generated method. Do not modify.
     * @param index the index identifying the attribute
     * @param attrDef the attribute

     * @return the attribute value
     * @throws Exception
     */
    protected Object getAttrInvokeAccessor(int index,
                                           AttributeDefImpl attrDef) throws Exception {
        if ((index >= AttributesEnum.firstIndex()) && (index < AttributesEnum.count())) {
            return AttributesEnum.staticValues()[index - AttributesEnum.firstIndex()].get(this);
        }
        return super.getAttrInvokeAccessor(index, attrDef);
    }

    /**
     * setAttrInvokeAccessor: generated method. Do not modify.
     * @param index the index identifying the attribute
     * @param value the value to assign to the attribute
     * @param attrDef the attribute

     * @throws Exception
     */
    protected void setAttrInvokeAccessor(int index, Object value,
                                         AttributeDefImpl attrDef) throws Exception {
        if ((index >= AttributesEnum.firstIndex()) && (index < AttributesEnum.count())) {
            AttributesEnum.staticValues()[index - AttributesEnum.firstIndex()].put(this, value);
            return;
        }
        super.setAttrInvokeAccessor(index, value, attrDef);
    }
}
