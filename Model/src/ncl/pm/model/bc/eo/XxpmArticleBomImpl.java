package ncl.pm.model.bc.eo;

import java.util.Calendar;

import ncl.pm.model.bc.view.xxpmJC.ModelActions;

import oracle.adf.share.ADFContext;

import oracle.jbo.AttributeList;
import oracle.jbo.DMLConstraintException;
import oracle.jbo.DMLException;
import oracle.jbo.Key;
import oracle.jbo.RowInconsistentException;
import oracle.jbo.RowIterator;
import oracle.jbo.domain.ClobDomain;
import oracle.jbo.domain.DBSequence;
import oracle.jbo.domain.Date;
import oracle.jbo.domain.Number;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityDefImpl;
import oracle.jbo.server.EntityImpl;
import oracle.jbo.server.TransactionEvent;


// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Mon Aug 22 01:35:45 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmArticleBomImpl extends EntityImpl {
    private static EntityDefImpl mDefinitionObject;

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        ArtBomId {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getArtBomId();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setArtBomId((DBSequence)value);
            }
        }
        ,
        ArtBomNum {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getArtBomNum();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setArtBomNum((String)value);
            }
        }
        ,
        ProgId {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getProgId();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setProgId((Integer)value);
            }
        }
        ,
        ArticleId {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getArticleId();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setArticleId((Integer)value);
            }
        }
        ,
        ArtBomVersion {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getArtBomVersion();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setArtBomVersion((Integer)value);
            }
        }
        ,
        ArtBomVersionDesc {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getArtBomVersionDesc();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setArtBomVersionDesc((String)value);
            }
        }
        ,
        CreatedBy {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getCreatedBy();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setCreatedBy((String)value);
            }
        }
        ,
        CreationDate {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getCreationDate();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setCreationDate((Date)value);
            }
        }
        ,
        LastUpdatedBy {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getLastUpdatedBy();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setLastUpdatedBy((String)value);
            }
        }
        ,
        LastUpdateDate {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getLastUpdateDate();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setLastUpdateDate((Date)value);
            }
        }
        ,
        RespId {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getRespId();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setRespId((String)value);
            }
        }
        ,
        ReqApprDate {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getReqApprDate();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setReqApprDate((Date)value);
            }
        }
        ,
        ApprovalStatus {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getApprovalStatus();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setApprovalStatus((String)value);
            }
        }
        ,
        ApprovalDate {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getApprovalDate();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setApprovalDate((Date)value);
            }
        }
        ,
        RejectReason {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getRejectReason();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setRejectReason((String)value);
            }
        }
        ,
        ApprovalFlag {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getApprovalFlag();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setApprovalFlag((Integer)value);
            }
        }
        ,
        BomLog {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getBomLog();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setBomLog((ClobDomain)value);
            }
        }
        ,
        EbsStatus {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getEbsStatus();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setEbsStatus((Integer)value);
            }
        }
        ,
        XxpmArticleBomAccessories {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getXxpmArticleBomAccessories();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        XxpmArticleBomFabric {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getXxpmArticleBomFabric();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        XxpmMadeupPrograms {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getXxpmMadeupPrograms();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        XxpmMadeupArticles {
            public Object get(XxpmArticleBomImpl obj) {
                return obj.getXxpmMadeupArticles();
            }

            public void put(XxpmArticleBomImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ;
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(XxpmArticleBomImpl object);

        public abstract void put(XxpmArticleBomImpl object, Object value);

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
    public static final int ARTICLEID = AttributesEnum.ArticleId.index();
    public static final int ARTBOMVERSION = AttributesEnum.ArtBomVersion.index();
    public static final int ARTBOMVERSIONDESC = AttributesEnum.ArtBomVersionDesc.index();
    public static final int CREATEDBY = AttributesEnum.CreatedBy.index();
    public static final int CREATIONDATE = AttributesEnum.CreationDate.index();
    public static final int LASTUPDATEDBY = AttributesEnum.LastUpdatedBy.index();
    public static final int LASTUPDATEDATE = AttributesEnum.LastUpdateDate.index();
    public static final int RESPID = AttributesEnum.RespId.index();
    public static final int REQAPPRDATE = AttributesEnum.ReqApprDate.index();
    public static final int APPROVALSTATUS = AttributesEnum.ApprovalStatus.index();
    public static final int APPROVALDATE = AttributesEnum.ApprovalDate.index();
    public static final int REJECTREASON = AttributesEnum.RejectReason.index();
    public static final int APPROVALFLAG = AttributesEnum.ApprovalFlag.index();
    public static final int BOMLOG = AttributesEnum.BomLog.index();
    public static final int EBSSTATUS = AttributesEnum.EbsStatus.index();
    public static final int XXPMARTICLEBOMACCESSORIES = AttributesEnum.XxpmArticleBomAccessories.index();
    public static final int XXPMARTICLEBOMFABRIC = AttributesEnum.XxpmArticleBomFabric.index();
    public static final int XXPMMADEUPPROGRAMS = AttributesEnum.XxpmMadeupPrograms.index();
    public static final int XXPMMADEUPARTICLES = AttributesEnum.XxpmMadeupArticles.index();

    /**
     * This is the default constructor (do not remove).
     */
    public XxpmArticleBomImpl() {
    }


    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        if (mDefinitionObject == null) {
            mDefinitionObject = EntityDefImpl.findDefObject("ncl.pm.model.bc.eo.XxpmArticleBom");
        }
        return mDefinitionObject;
    }

    /**
     * Gets the attribute value for ArtBomId, using the alias name ArtBomId.
     * @return the ArtBomId
     */
    public DBSequence getArtBomId() {
        return (DBSequence)getAttributeInternal(ARTBOMID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ArtBomId.
     * @param value value to set the ArtBomId
     */
    public void setArtBomId(DBSequence value) {
        setAttributeInternal(ARTBOMID, value);
    }

    /**
     * Gets the attribute value for ArtBomNum, using the alias name ArtBomNum.
     * @return the ArtBomNum
     */
    public String getArtBomNum() {
        return (String)getAttributeInternal(ARTBOMNUM);
    }

    /**
     * Sets <code>value</code> as the attribute value for ArtBomNum.
     * @param value value to set the ArtBomNum
     */
    public void setArtBomNum(String value) {
        setAttributeInternal(ARTBOMNUM, value);
    }

    /**
     * Gets the attribute value for ProgId, using the alias name ProgId.
     * @return the ProgId
     */
    public Integer getProgId() {
        return (Integer)getAttributeInternal(PROGID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ProgId.
     * @param value value to set the ProgId
     */
    public void setProgId(Integer value) {
        setAttributeInternal(PROGID, value);
    }

    /**
     * Gets the attribute value for ArticleId, using the alias name ArticleId.
     * @return the ArticleId
     */
    public Integer getArticleId() {
        return (Integer)getAttributeInternal(ARTICLEID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ArticleId.
     * @param value value to set the ArticleId
     */
    public void setArticleId(Integer value) {
        setAttributeInternal(ARTICLEID, value);
    }

    /**
     * Gets the attribute value for CreatedBy, using the alias name CreatedBy.
     * @return the CreatedBy
     */
    public String getCreatedBy() {
        return (String)getAttributeInternal(CREATEDBY);
    }

    /**
     * Sets <code>value</code> as the attribute value for CreatedBy.
     * @param value value to set the CreatedBy
     */
    public void setCreatedBy(String value) {
        setAttributeInternal(CREATEDBY, value);
    }

    /**
     * Gets the attribute value for CreationDate, using the alias name CreationDate.
     * @return the CreationDate
     */
    public Date getCreationDate() {
        return (Date)getAttributeInternal(CREATIONDATE);
    }

    /**
     * Sets <code>value</code> as the attribute value for CreationDate.
     * @param value value to set the CreationDate
     */
    public void setCreationDate(Date value) {
        setAttributeInternal(CREATIONDATE, value);
    }


    /**
     * Gets the attribute value for LastUpdateDate, using the alias name LastUpdateDate.
     * @return the LastUpdateDate
     */
    public Date getLastUpdateDate() {
        return (Date)getAttributeInternal(LASTUPDATEDATE);
    }

    /**
     * Sets <code>value</code> as the attribute value for LastUpdateDate.
     * @param value value to set the LastUpdateDate
     */
    public void setLastUpdateDate(Date value) {
        setAttributeInternal(LASTUPDATEDATE, value);
    }

    /**
     * Gets the attribute value for RespId, using the alias name RespId.
     * @return the RespId
     */
    public String getRespId() {
        return (String)getAttributeInternal(RESPID);
    }

    /**
     * Sets <code>value</code> as the attribute value for RespId.
     * @param value value to set the RespId
     */
    public void setRespId(String value) {
        setAttributeInternal(RESPID, value);
    }

    /**
     * Gets the attribute value for ReqApprDate, using the alias name ReqApprDate.
     * @return the ReqApprDate
     */
    public Date getReqApprDate() {
        return (Date)getAttributeInternal(REQAPPRDATE);
    }

    /**
     * Sets <code>value</code> as the attribute value for ReqApprDate.
     * @param value value to set the ReqApprDate
     */
    public void setReqApprDate(Date value) {
        setAttributeInternal(REQAPPRDATE, value);
    }

    /**
     * Gets the attribute value for ApprovalStatus, using the alias name ApprovalStatus.
     * @return the ApprovalStatus
     */
    public String getApprovalStatus() {
        return (String)getAttributeInternal(APPROVALSTATUS);
    }

    /**
     * Sets <code>value</code> as the attribute value for ApprovalStatus.
     * @param value value to set the ApprovalStatus
     */
    public void setApprovalStatus(String value) {
        setAttributeInternal(APPROVALSTATUS, value);
    }

    /**
     * Gets the attribute value for ApprovalDate, using the alias name ApprovalDate.
     * @return the ApprovalDate
     */
    public Date getApprovalDate() {
        return (Date)getAttributeInternal(APPROVALDATE);
    }

    /**
     * Sets <code>value</code> as the attribute value for ApprovalDate.
     * @param value value to set the ApprovalDate
     */
    public void setApprovalDate(Date value) {
        setAttributeInternal(APPROVALDATE, value);
    }

    /**
     * Gets the attribute value for RejectReason, using the alias name RejectReason.
     * @return the RejectReason
     */
    public String getRejectReason() {
        return (String)getAttributeInternal(REJECTREASON);
    }

    /**
     * Sets <code>value</code> as the attribute value for RejectReason.
     * @param value value to set the RejectReason
     */
    public void setRejectReason(String value) {
        setAttributeInternal(REJECTREASON, value);
    }

    /**
     * Gets the attribute value for ApprovalFlag, using the alias name ApprovalFlag.
     * @return the ApprovalFlag
     */
    public Integer getApprovalFlag() {
        return (Integer)getAttributeInternal(APPROVALFLAG);
    }

    /**
     * Sets <code>value</code> as the attribute value for ApprovalFlag.
     * @param value value to set the ApprovalFlag
     */
    public void setApprovalFlag(Integer value) {
        setAttributeInternal(APPROVALFLAG, value);
    }


    /**
     * Gets the attribute value for BomLog, using the alias name BomLog.
     * @return the BomLog
     */
    public ClobDomain getBomLog() {
        return (ClobDomain)getAttributeInternal(BOMLOG);
    }

    /**
     * Sets <code>value</code> as the attribute value for BomLog.
     * @param value value to set the BomLog
     */
    public void setBomLog(ClobDomain value) {
        setAttributeInternal(BOMLOG, value);
    }

    /**
     * Gets the attribute value for EbsStatus, using the alias name EbsStatus.
     * @return the EbsStatus
     */
    public Integer getEbsStatus() {
        return (Integer)getAttributeInternal(EBSSTATUS);
    }

    /**
     * Sets <code>value</code> as the attribute value for EbsStatus.
     * @param value value to set the EbsStatus
     */
    public void setEbsStatus(Integer value) {
        setAttributeInternal(EBSSTATUS, value);
    }

    /**
     * Gets the attribute value for ArtBomVersion, using the alias name ArtBomVersion.
     * @return the ArtBomVersion
     */
    public Integer getArtBomVersion() {
        return (Integer)getAttributeInternal(ARTBOMVERSION);
    }

    /**
     * Sets <code>value</code> as the attribute value for ArtBomVersion.
     * @param value value to set the ArtBomVersion
     */
    public void setArtBomVersion(Integer value) {
        setAttributeInternal(ARTBOMVERSION, value);
    }

    /**
     * Gets the attribute value for ArtBomVersionDesc, using the alias name ArtBomVersionDesc.
     * @return the ArtBomVersionDesc
     */
    public String getArtBomVersionDesc() {
        return (String)getAttributeInternal(ARTBOMVERSIONDESC);
    }

    /**
     * Sets <code>value</code> as the attribute value for ArtBomVersionDesc.
     * @param value value to set the ArtBomVersionDesc
     */
    public void setArtBomVersionDesc(String value) {
        setAttributeInternal(ARTBOMVERSIONDESC, value);
    }

    /**
     * Gets the attribute value for LastUpdatedBy, using the alias name LastUpdatedBy.
     * @return the LastUpdatedBy
     */
    public String getLastUpdatedBy() {
        return (String)getAttributeInternal(LASTUPDATEDBY);
    }

    /**
     * Sets <code>value</code> as the attribute value for LastUpdatedBy.
     * @param value value to set the LastUpdatedBy
     */
    public void setLastUpdatedBy(String value) {
        setAttributeInternal(LASTUPDATEDBY, value);
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

    /**
     * @param artBomId key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(DBSequence artBomId) {
        return new Key(new Object[]{artBomId});
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getXxpmArticleBomAccessories() {
        return (RowIterator)getAttributeInternal(XXPMARTICLEBOMACCESSORIES);
    }


    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getXxpmArticleBomFabric() {
        return (RowIterator)getAttributeInternal(XXPMARTICLEBOMFABRIC);
    }


    /**
     * @return the associated entity XxpmMadeupProgramsImpl.
     */
    public XxpmMadeupProgramsImpl getXxpmMadeupPrograms() {
        return (XxpmMadeupProgramsImpl)getAttributeInternal(XXPMMADEUPPROGRAMS);
    }

    /**
     * Sets <code>value</code> as the associated entity XxpmMadeupProgramsImpl.
     */
    public void setXxpmMadeupPrograms(XxpmMadeupProgramsImpl value) {
        setAttributeInternal(XXPMMADEUPPROGRAMS, value);
    }


    /**
     * @return the associated entity XxpmMadeupArticlesImpl.
     */
    public XxpmMadeupArticlesImpl getXxpmMadeupArticles() {
        return (XxpmMadeupArticlesImpl)getAttributeInternal(XXPMMADEUPARTICLES);
    }

    /**
     * Sets <code>value</code> as the associated entity XxpmMadeupArticlesImpl.
     */
    public void setXxpmMadeupArticles(XxpmMadeupArticlesImpl value) {
        setAttributeInternal(XXPMMADEUPARTICLES, value);
    }


    /**
     * Add attribute defaulting logic in this method.
     * @param attributeList list of attribute names/values to initialize the row
     */
    protected void create(AttributeList attributeList) {
        super.create(attributeList);
    }

    /**
     * Add entity remove logic in this method.
     */
    public void remove() {
        super.remove();
    }

    /**
     * Add locking logic here.
     */
    public void lock() {
        try {
            super.lock();
        } catch (RowInconsistentException e) {
            refresh(REFRESH_WITH_DB_ONLY_IF_UNCHANGED | REFRESH_CONTAINEES);

            super.lock();
        }
    }

    /**
     * Custom DML update/insert/delete logic here.
     * @param operation the operation type
     * @param e the transaction event
     */
    protected void doDML(int operation, TransactionEvent e) {
        if (operation == DML_UPDATE) {
            this.setLastUpdatedBy((String)ADFContext.getCurrent().getSessionScope().get("userID"));
            this.setRespId((String)ADFContext.getCurrent().getSessionScope().get("respID"));
            this.setLastUpdateDate(new oracle.jbo.domain.Date(new java.sql.Timestamp(Calendar.getInstance().getTimeInMillis())));
        }

        if (operation == DML_INSERT) {
            setArtBomNum(ma.getMaxArticleBomNum(getDBTransaction(),
                                                String.valueOf(getProgId())));
        }

        try {
            super.doDML(operation, e);
        } catch (DMLConstraintException dce) {
            ma.showError(this.getDBTransaction(),
                         "Constraint: " + dce.getConstraintName() +
                         " voilated.");
            return;

        } catch (DMLException de) {
            String exception = de.getCause().toString();
            String msg =
                exception.substring(exception.indexOf(":", exception.indexOf("ORA")) +
                                    2);
            ma.showError(this.getDBTransaction(),
                         msg.substring(0, msg.indexOf("ORA") > 1 ?
                                          msg.indexOf("ORA") - 1 :
                                          msg.length()));
            return;

        } catch (Exception e1) {
            e1.printStackTrace();
            ma.showError(this.getDBTransaction(),
                         "There is an error in doDML method of XxpmArticleBomImpl. Class: " + e1.getClass());
            return;
        }
    }
    ModelActions ma = new ModelActions();
}
