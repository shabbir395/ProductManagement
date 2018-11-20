package ncl.pm.model.bc.vo;

import ncl.pm.model.bc.eo.XxpmYarnTypeImpl;
import ncl.pm.model.bc.vo.common.XxpmYarnTypeViewRow;

import oracle.jbo.RowSet;
import oracle.jbo.domain.DBSequence;
import oracle.jbo.domain.Number;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityImpl;
import oracle.jbo.server.ViewRowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Apr 01 17:57:26 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmYarnTypeViewRowImpl extends ViewRowImpl implements XxpmYarnTypeViewRow {
    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        YtId {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getYtId();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setYtId((DBSequence)value);
            }
        }
        ,
        FancyYarnType {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getFancyYarnType();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setFancyYarnType((String)value);
            }
        }
        ,
        FytRatio {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getFytRatio();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setFytRatio((Number)value);
            }
        }
        ,
        SlubCode {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getSlubCode();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setSlubCode((String)value);
            }
        }
        ,
        Denier1 {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getDenier1();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setDenier1((Number)value);
            }
        }
        ,
        Denier2 {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getDenier2();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setDenier2((Number)value);
            }
        }
        ,
        ImId {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getImId();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setImId((Number)value);
            }
        }
        ,
        YTResultant {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getYTResultant();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setYTResultant((String)value);
            }
        }
        ,
        Draft1 {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getDraft1();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setDraft1((Number)value);
            }
        }
        ,
        Draft2 {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getDraft2();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setDraft2((Number)value);
            }
        }
        ,
        DualCore {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getDualCore();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setDualCore((String)value);
            }
        }
        ,
        FancyYarnType2 {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getFancyYarnType2();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setFancyYarnType2((String)value);
            }
        }
        ,
        FytRatio2 {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getFytRatio2();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setFytRatio2((Number)value);
            }
        }
        ,
        TotYtRatio {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getTotYtRatio();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setTotYtRatio((Number)value);
            }
        }
        ,
        NewRow {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getNewRow();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setNewRow((Number)value);
            }
        }
        ,
        Multicount {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getMulticount();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setMulticount((String)value);
            }
        }
        ,
        Dtex1 {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getDtex1();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setDtex1((String)value);
            }
        }
        ,
        Dtex2 {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getDtex2();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setDtex2((String)value);
            }
        }
        ,
        XxpmItemMasterSpnView {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getXxpmItemMasterSpnView();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        FancyYarnTypeLOV {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getFancyYarnTypeLOV();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        YesNoBooleanLov {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getYesNoBooleanLov();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        DenierLOV {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getDenierLOV();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        SlubLov {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getSlubLov();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        DualCoreLov {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getDualCoreLov();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        YarnTypeDtexLov {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getYarnTypeDtexLov();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        YarnTypeMulticountLov {
            public Object get(XxpmYarnTypeViewRowImpl obj) {
                return obj.getYarnTypeMulticountLov();
            }

            public void put(XxpmYarnTypeViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ;
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(XxpmYarnTypeViewRowImpl object);

        public abstract void put(XxpmYarnTypeViewRowImpl object, Object value);

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


    public static final int YTID = AttributesEnum.YtId.index();
    public static final int FANCYYARNTYPE = AttributesEnum.FancyYarnType.index();
    public static final int FYTRATIO = AttributesEnum.FytRatio.index();
    public static final int SLUBCODE = AttributesEnum.SlubCode.index();
    public static final int DENIER1 = AttributesEnum.Denier1.index();
    public static final int DENIER2 = AttributesEnum.Denier2.index();
    public static final int IMID = AttributesEnum.ImId.index();
    public static final int YTRESULTANT = AttributesEnum.YTResultant.index();
    public static final int DRAFT1 = AttributesEnum.Draft1.index();
    public static final int DRAFT2 = AttributesEnum.Draft2.index();
    public static final int DUALCORE = AttributesEnum.DualCore.index();
    public static final int FANCYYARNTYPE2 = AttributesEnum.FancyYarnType2.index();
    public static final int FYTRATIO2 = AttributesEnum.FytRatio2.index();
    public static final int TOTYTRATIO = AttributesEnum.TotYtRatio.index();
    public static final int NEWROW = AttributesEnum.NewRow.index();
    public static final int MULTICOUNT = AttributesEnum.Multicount.index();
    public static final int DTEX1 = AttributesEnum.Dtex1.index();
    public static final int DTEX2 = AttributesEnum.Dtex2.index();
    public static final int XXPMITEMMASTERSPNVIEW = AttributesEnum.XxpmItemMasterSpnView.index();
    public static final int FANCYYARNTYPELOV = AttributesEnum.FancyYarnTypeLOV.index();
    public static final int YESNOBOOLEANLOV = AttributesEnum.YesNoBooleanLov.index();
    public static final int DENIERLOV = AttributesEnum.DenierLOV.index();
    public static final int SLUBLOV = AttributesEnum.SlubLov.index();
    public static final int DUALCORELOV = AttributesEnum.DualCoreLov.index();
    public static final int YARNTYPEDTEXLOV = AttributesEnum.YarnTypeDtexLov.index();
    public static final int YARNTYPEMULTICOUNTLOV = AttributesEnum.YarnTypeMulticountLov.index();

    /**
     * This is the default constructor (do not remove).
     */
    public XxpmYarnTypeViewRowImpl() {
    }

    /**
     * Gets XxpmYarnType entity object.
     * @return the XxpmYarnType
     */
    public XxpmYarnTypeImpl getXxpmYarnType() {
        return (XxpmYarnTypeImpl)getEntity(0);
    }

    /**
     * Gets the attribute value for YT_ID using the alias name YtId.
     * @return the YT_ID
     */
    public DBSequence getYtId() {
        return (DBSequence)getAttributeInternal(YTID);
    }

    /**
     * Sets <code>value</code> as attribute value for YT_ID using the alias name YtId.
     * @param value value to set the YT_ID
     */
    public void setYtId(DBSequence value) {
        setAttributeInternal(YTID, value);
    }

    /**
     * Gets the attribute value for FANCY_YARN_TYPE using the alias name FancyYarnType.
     * @return the FANCY_YARN_TYPE
     */
    public String getFancyYarnType() {
        return (String) getAttributeInternal(FANCYYARNTYPE);
    }

    /**
     * Sets <code>value</code> as attribute value for FANCY_YARN_TYPE using the alias name FancyYarnType.
     * @param value value to set the FANCY_YARN_TYPE
     */
    public void setFancyYarnType(String value) {
        setAttributeInternal(FANCYYARNTYPE, value);
    }

    /**
     * Gets the attribute value for FYT_RATIO using the alias name FytRatio.
     * @return the FYT_RATIO
     */
    public Number getFytRatio() {
        return (Number) getAttributeInternal(FYTRATIO);
    }

    /**
     * Sets <code>value</code> as attribute value for FYT_RATIO using the alias name FytRatio.
     * @param value value to set the FYT_RATIO
     */
    public void setFytRatio(Number value) {
        setAttributeInternal(FYTRATIO, value);
    }

    /**
     * Gets the attribute value for SLUB_CODE using the alias name SlubCode.
     * @return the SLUB_CODE
     */
    public String getSlubCode() {
        return (String) getAttributeInternal(SLUBCODE);
    }

    /**
     * Sets <code>value</code> as attribute value for SLUB_CODE using the alias name SlubCode.
     * @param value value to set the SLUB_CODE
     */
    public void setSlubCode(String value) {
        setAttributeInternal(SLUBCODE, value);
    }

    /**
     * Gets the attribute value for DENIER1 using the alias name Denier1.
     * @return the DENIER1
     */
    public Number getDenier1() {
        return (Number) getAttributeInternal(DENIER1);
    }

    /**
     * Sets <code>value</code> as attribute value for DENIER1 using the alias name Denier1.
     * @param value value to set the DENIER1
     */
    public void setDenier1(Number value) {
        setAttributeInternal(DENIER1, value);
    }

    /**
     * Gets the attribute value for DENIER2 using the alias name Denier2.
     * @return the DENIER2
     */
    public Number getDenier2() {
        return (Number) getAttributeInternal(DENIER2);
    }

    /**
     * Sets <code>value</code> as attribute value for DENIER2 using the alias name Denier2.
     * @param value value to set the DENIER2
     */
    public void setDenier2(Number value) {
        setAttributeInternal(DENIER2, value);
    }

    /**
     * Gets the attribute value for IM_ID using the alias name ImId.
     * @return the IM_ID
     */
    public Number getImId() {
        return (Number) getAttributeInternal(IMID);
    }

    /**
     * Sets <code>value</code> as attribute value for IM_ID using the alias name ImId.
     * @param value value to set the IM_ID
     */
    public void setImId(Number value) {
        setAttributeInternal(IMID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute YTResultant.
     * @return the YTResultant
     */
    public String getYTResultant() {
        return (String) getAttributeInternal(YTRESULTANT);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute YTResultant.
     * @param value value to set the  YTResultant
     */
    public void setYTResultant(String value) {
        setAttributeInternal(YTRESULTANT, value);
    }

    /**
     * Gets the attribute value for DRAFT1 using the alias name Draft1.
     * @return the DRAFT1
     */
    public Number getDraft1() {
        return (Number) getAttributeInternal(DRAFT1);
    }

    /**
     * Sets <code>value</code> as attribute value for DRAFT1 using the alias name Draft1.
     * @param value value to set the DRAFT1
     */
    public void setDraft1(Number value) {
        setAttributeInternal(DRAFT1, value);
    }

    /**
     * Gets the attribute value for DRAFT2 using the alias name Draft2.
     * @return the DRAFT2
     */
    public Number getDraft2() {
        return (Number) getAttributeInternal(DRAFT2);
    }

    /**
     * Sets <code>value</code> as attribute value for DRAFT2 using the alias name Draft2.
     * @param value value to set the DRAFT2
     */
    public void setDraft2(Number value) {
        setAttributeInternal(DRAFT2, value);
    }

    /**
     * Gets the attribute value for DUAL_CORE using the alias name DualCore.
     * @return the DUAL_CORE
     */
    public String getDualCore() {
        return (String) getAttributeInternal(DUALCORE);
    }

    /**
     * Sets <code>value</code> as attribute value for DUAL_CORE using the alias name DualCore.
     * @param value value to set the DUAL_CORE
     */
    public void setDualCore(String value) {
        setAttributeInternal(DUALCORE, value);
    }

    /**
     * Gets the attribute value for FANCY_YARN_TYPE2 using the alias name FancyYarnType2.
     * @return the FANCY_YARN_TYPE2
     */
    public String getFancyYarnType2() {
        return (String) getAttributeInternal(FANCYYARNTYPE2);
    }

    /**
     * Sets <code>value</code> as attribute value for FANCY_YARN_TYPE2 using the alias name FancyYarnType2.
     * @param value value to set the FANCY_YARN_TYPE2
     */
    public void setFancyYarnType2(String value) {
        setAttributeInternal(FANCYYARNTYPE2, value);
    }

    /**
     * Gets the attribute value for FYT_RATIO2 using the alias name FytRatio2.
     * @return the FYT_RATIO2
     */
    public Number getFytRatio2() {
        return (Number) getAttributeInternal(FYTRATIO2);
    }

    /**
     * Sets <code>value</code> as attribute value for FYT_RATIO2 using the alias name FytRatio2.
     * @param value value to set the FYT_RATIO2
     */
    public void setFytRatio2(Number value) {
        setAttributeInternal(FYTRATIO2, value);
    }

    /**
     * Gets the attribute value for the calculated attribute TotYtRatio.
     * @return the TotYtRatio
     */
    public Number getTotYtRatio() {
        return (Number) getAttributeInternal(TOTYTRATIO);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute TotYtRatio.
     * @param value value to set the  TotYtRatio
     */
    public void setTotYtRatio(Number value) {
        setAttributeInternal(TOTYTRATIO, value);
    }

    /**
     * Gets the attribute value for NEW_ROW using the alias name NewRow.
     * @return the NEW_ROW
     */
    public Number getNewRow() {
        return (Number) getAttributeInternal(NEWROW);
    }

    /**
     * Sets <code>value</code> as attribute value for NEW_ROW using the alias name NewRow.
     * @param value value to set the NEW_ROW
     */
    public void setNewRow(Number value) {
        setAttributeInternal(NEWROW, value);
    }


    /**
     * Gets the attribute value for MULTICOUNT using the alias name Multicount.
     * @return the MULTICOUNT
     */
    public String getMulticount() {
        return (String) getAttributeInternal(MULTICOUNT);
    }

    /**
     * Sets <code>value</code> as attribute value for MULTICOUNT using the alias name Multicount.
     * @param value value to set the MULTICOUNT
     */
    public void setMulticount(String value) {
        setAttributeInternal(MULTICOUNT, value);
    }

    /**
     * Gets the attribute value for DTEX1 using the alias name Dtex1.
     * @return the DTEX1
     */
    public String getDtex1() {
        return (String) getAttributeInternal(DTEX1);
    }

    /**
     * Sets <code>value</code> as attribute value for DTEX1 using the alias name Dtex1.
     * @param value value to set the DTEX1
     */
    public void setDtex1(String value) {
        setAttributeInternal(DTEX1, value);
    }

    /**
     * Gets the attribute value for DTEX2 using the alias name Dtex2.
     * @return the DTEX2
     */
    public String getDtex2() {
        return (String) getAttributeInternal(DTEX2);
    }

    /**
     * Sets <code>value</code> as attribute value for DTEX2 using the alias name Dtex2.
     * @param value value to set the DTEX2
     */
    public void setDtex2(String value) {
        setAttributeInternal(DTEX2, value);
    }

    /**
     * Gets the associated <code>Row</code> using master-detail link XxpmItemMasterSpnView.
     */
    public oracle.jbo.Row getXxpmItemMasterSpnView() {
        return (oracle.jbo.Row) getAttributeInternal(XXPMITEMMASTERSPNVIEW);
    }

    /**
     * Sets the master-detail link XxpmItemMasterSpnView between this object and <code>value</code>.
     */
    public void setXxpmItemMasterSpnView(oracle.jbo.Row value) {
        setAttributeInternal(XXPMITEMMASTERSPNVIEW, value);
    }

    /**
     * Gets the view accessor <code>RowSet</code> FancyYarnTypeLOV.
     */
    public RowSet getFancyYarnTypeLOV() {
        return (RowSet)getAttributeInternal(FANCYYARNTYPELOV);
    }


    /**
     * Gets the view accessor <code>RowSet</code> YesNoBooleanLov.
     */
    public RowSet getYesNoBooleanLov() {
        return (RowSet)getAttributeInternal(YESNOBOOLEANLOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> DenierLOV.
     */
    public RowSet getDenierLOV() {
        return (RowSet)getAttributeInternal(DENIERLOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> SlubLov.
     */
    public RowSet getSlubLov() {
        return (RowSet)getAttributeInternal(SLUBLOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> DualCoreLov.
     */
    public RowSet getDualCoreLov() {
        return (RowSet)getAttributeInternal(DUALCORELOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> YarnTypeDtexLov.
     */
    public RowSet getYarnTypeDtexLov() {
        return (RowSet)getAttributeInternal(YARNTYPEDTEXLOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> YarnTypeMulticountLov.
     */
    public RowSet getYarnTypeMulticountLov() {
        return (RowSet)getAttributeInternal(YARNTYPEMULTICOUNTLOV);
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
    
    public void updateYtLovsAccessor(){
        getFancyYarnTypeLOV().executeQuery();
        getSlubLov().executeQuery();
        getDenierLOV().executeQuery();
    }
}