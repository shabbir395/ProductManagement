package ncl.pm.model.bc.vo;

import ncl.pm.model.bc.eo.XxpmMadeupProgramsImpl;
import ncl.pm.model.bc.eo.XxpmPoHeaderImpl;

import ncl.pm.model.bc.vo.common.XxpmPoHeaderViewRow;

import oracle.jbo.RowIterator;
import oracle.jbo.RowSet;
import oracle.jbo.domain.DBSequence;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.ViewRowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue Oct 25 19:57:41 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmPoHeaderViewRowImpl extends ViewRowImpl implements XxpmPoHeaderViewRow {
    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        PoHeaderId {
            public Object get(XxpmPoHeaderViewRowImpl obj) {
                return obj.getPoHeaderId();
            }

            public void put(XxpmPoHeaderViewRowImpl obj, Object value) {
                obj.setPoHeaderId((DBSequence)value);
            }
        }
        ,
        ProgId {
            public Object get(XxpmPoHeaderViewRowImpl obj) {
                return obj.getProgId();
            }

            public void put(XxpmPoHeaderViewRowImpl obj, Object value) {
                obj.setProgId((Integer)value);
            }
        }
        ,
        ProgName {
            public Object get(XxpmPoHeaderViewRowImpl obj) {
                return obj.getProgName();
            }

            public void put(XxpmPoHeaderViewRowImpl obj, Object value) {
                obj.setProgName((String)value);
            }
        }
        ,
        CustomerName {
            public Object get(XxpmPoHeaderViewRowImpl obj) {
                return obj.getCustomerName();
            }

            public void put(XxpmPoHeaderViewRowImpl obj, Object value) {
                obj.setCustomerName((String)value);
            }
        }
        ,
        SoHeaderId {
            public Object get(XxpmPoHeaderViewRowImpl obj) {
                return obj.getSoHeaderId();
            }

            public void put(XxpmPoHeaderViewRowImpl obj, Object value) {
                obj.setSoHeaderId((Integer)value);
            }
        }
        ,
        ProgNameMP {
            public Object get(XxpmPoHeaderViewRowImpl obj) {
                return obj.getProgNameMP();
            }

            public void put(XxpmPoHeaderViewRowImpl obj, Object value) {
                obj.setProgNameMP((String)value);
            }
        }
        ,
        ProgIdMP {
            public Object get(XxpmPoHeaderViewRowImpl obj) {
                return obj.getProgIdMP();
            }

            public void put(XxpmPoHeaderViewRowImpl obj, Object value) {
                obj.setProgIdMP((DBSequence)value);
            }
        }
        ,
        EbsStatus {
            public Object get(XxpmPoHeaderViewRowImpl obj) {
                return obj.getEbsStatus();
            }

            public void put(XxpmPoHeaderViewRowImpl obj, Object value) {
                obj.setEbsStatus((Integer)value);
            }
        }
        ,
        XxpmPoLinesView {
            public Object get(XxpmPoHeaderViewRowImpl obj) {
                return obj.getXxpmPoLinesView();
            }

            public void put(XxpmPoHeaderViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        PoMadeupProgramsLov {
            public Object get(XxpmPoHeaderViewRowImpl obj) {
                return obj.getPoMadeupProgramsLov();
            }

            public void put(XxpmPoHeaderViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        poSoHeaderLov {
            public Object get(XxpmPoHeaderViewRowImpl obj) {
                return obj.getpoSoHeaderLov();
            }

            public void put(XxpmPoHeaderViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ;
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(XxpmPoHeaderViewRowImpl object);

        public abstract void put(XxpmPoHeaderViewRowImpl object, Object value);

        public int index() {
            return AttributesEnum.firstIndex() + ordinal();
        }

        public static final int firstIndex() {
            return firstIndex;
        }

        public static int count() {
            return AttributesEnum.firstIndex() + AttributesEnum.staticValues().length;
        }

        public static final AttributesEnum[] staticValues() {
            if (vals == null) {
                vals = AttributesEnum.values();
            }
            return vals;
        }
    }

    public static final int POHEADERID = AttributesEnum.PoHeaderId.index();
    public static final int PROGID = AttributesEnum.ProgId.index();
    public static final int PROGNAME = AttributesEnum.ProgName.index();
    public static final int CUSTOMERNAME = AttributesEnum.CustomerName.index();
    public static final int SOHEADERID = AttributesEnum.SoHeaderId.index();
    public static final int PROGNAMEMP = AttributesEnum.ProgNameMP.index();
    public static final int PROGIDMP = AttributesEnum.ProgIdMP.index();
    public static final int EBSSTATUS = AttributesEnum.EbsStatus.index();
    public static final int XXPMPOLINESVIEW = AttributesEnum.XxpmPoLinesView.index();
    public static final int POMADEUPPROGRAMSLOV = AttributesEnum.PoMadeupProgramsLov.index();
    public static final int POSOHEADERLOV = AttributesEnum.poSoHeaderLov.index();

    /**
     * This is the default constructor (do not remove).
     */
    public XxpmPoHeaderViewRowImpl() {
    }

    /**
     * Gets XxpmPoHeader entity object.
     * @return the XxpmPoHeader
     */
    public XxpmPoHeaderImpl getXxpmPoHeader() {
        return (XxpmPoHeaderImpl)getEntity(0);
    }

    /**
     * Gets XxpmMadeupPrograms entity object.
     * @return the XxpmMadeupPrograms
     */
    public XxpmMadeupProgramsImpl getXxpmMadeupPrograms() {
        return (XxpmMadeupProgramsImpl)getEntity(1);
    }

    /**
     * Gets the attribute value for PO_HEADER_ID using the alias name PoHeaderId.
     * @return the PO_HEADER_ID
     */
    public DBSequence getPoHeaderId() {
        return (DBSequence)getAttributeInternal(POHEADERID);
    }

    /**
     * Sets <code>value</code> as attribute value for PO_HEADER_ID using the alias name PoHeaderId.
     * @param value value to set the PO_HEADER_ID
     */
    public void setPoHeaderId(DBSequence value) {
        setAttributeInternal(POHEADERID, value);
    }

    /**
     * Gets the attribute value for PROG_ID using the alias name ProgId.
     * @return the PROG_ID
     */
    public Integer getProgId() {
        return (Integer) getAttributeInternal(PROGID);
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
        return (String) getAttributeInternal(PROGNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ProgName.
     * @param value value to set the  ProgName
     */
    public void setProgName(String value) {
        setAttributeInternal(PROGNAME, value);
    }

    /**
     * Gets the attribute value for the calculated attribute CustomerName.
     * @return the CustomerName
     */
    public String getCustomerName() {
        return (String) getAttributeInternal(CUSTOMERNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute CustomerName.
     * @param value value to set the  CustomerName
     */
    public void setCustomerName(String value) {
        setAttributeInternal(CUSTOMERNAME, value);
    }

    /**
     * Gets the attribute value for SO_HEADER_ID using the alias name SoHeaderId.
     * @return the SO_HEADER_ID
     */
    public Integer getSoHeaderId() {
        return (Integer) getAttributeInternal(SOHEADERID);
    }

    /**
     * Sets <code>value</code> as attribute value for SO_HEADER_ID using the alias name SoHeaderId.
     * @param value value to set the SO_HEADER_ID
     */
    public void setSoHeaderId(Integer value) {
        setAttributeInternal(SOHEADERID, value);
    }

    /**
     * Gets the attribute value for PROG_NAME using the alias name ProgNameMP.
     * @return the PROG_NAME
     */
    public String getProgNameMP() {
        return (String) getAttributeInternal(PROGNAMEMP);
    }

    /**
     * Sets <code>value</code> as attribute value for PROG_NAME using the alias name ProgNameMP.
     * @param value value to set the PROG_NAME
     */
    public void setProgNameMP(String value) {
        setAttributeInternal(PROGNAMEMP, value);
    }

    /**
     * Gets the attribute value for PROG_ID using the alias name ProgIdMP.
     * @return the PROG_ID
     */
    public DBSequence getProgIdMP() {
        return (DBSequence)getAttributeInternal(PROGIDMP);
    }

    /**
     * Sets <code>value</code> as attribute value for PROG_ID using the alias name ProgIdMP.
     * @param value value to set the PROG_ID
     */
    public void setProgIdMP(DBSequence value) {
        setAttributeInternal(PROGIDMP, value);
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
     * Gets the associated <code>RowIterator</code> using master-detail link XxpmPoLinesView.
     */
    public RowIterator getXxpmPoLinesView() {
        return (RowIterator)getAttributeInternal(XXPMPOLINESVIEW);
    }

    /**
     * Gets the view accessor <code>RowSet</code> PoMadeupProgramsLov.
     */
    public RowSet getPoMadeupProgramsLov() {
        return (RowSet)getAttributeInternal(POMADEUPPROGRAMSLOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> poSoHeaderLov.
     */
    public RowSet getpoSoHeaderLov() {
        return (RowSet)getAttributeInternal(POSOHEADERLOV);
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
    
    public void updatePoHeaderLovsAccessor(){
        this.getpoSoHeaderLov().executeQuery();
    }
}