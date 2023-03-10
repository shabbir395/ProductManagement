package ncl.pm.model.bc.vo;

import ncl.pm.model.bc.eo.XxpmSetBomArticlesImpl;

import ncl.pm.model.bc.eo.XxpmSetBomImpl;

import oracle.jbo.Row;
import oracle.jbo.RowSet;
import oracle.jbo.domain.DBSequence;
import oracle.jbo.domain.Number;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.ViewRowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Wed Jul 05 16:28:56 PKT 2017
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmSetBomArticlesViewRowImpl extends ViewRowImpl {
    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        BomArticleId {
            public Object get(XxpmSetBomArticlesViewRowImpl obj) {
                return obj.getBomArticleId();
            }

            public void put(XxpmSetBomArticlesViewRowImpl obj, Object value) {
                obj.setBomArticleId((DBSequence)value);
            }
        }
        ,
        SetBomId {
            public Object get(XxpmSetBomArticlesViewRowImpl obj) {
                return obj.getSetBomId();
            }

            public void put(XxpmSetBomArticlesViewRowImpl obj, Object value) {
                obj.setSetBomId((Number)value);
            }
        }
        ,
        SubInventory {
            public Object get(XxpmSetBomArticlesViewRowImpl obj) {
                return obj.getSubInventory();
            }

            public void put(XxpmSetBomArticlesViewRowImpl obj, Object value) {
                obj.setSubInventory((String)value);
            }
        }
        ,
        CombId {
            public Object get(XxpmSetBomArticlesViewRowImpl obj) {
                return obj.getCombId();
            }

            public void put(XxpmSetBomArticlesViewRowImpl obj, Object value) {
                obj.setCombId((Integer)value);
            }
        }
        ,
        ItemCodeTrans {
            public Object get(XxpmSetBomArticlesViewRowImpl obj) {
                return obj.getItemCodeTrans();
            }

            public void put(XxpmSetBomArticlesViewRowImpl obj, Object value) {
                obj.setItemCodeTrans((String)value);
            }
        }
        ,
        DescriptionTrans {
            public Object get(XxpmSetBomArticlesViewRowImpl obj) {
                return obj.getDescriptionTrans();
            }

            public void put(XxpmSetBomArticlesViewRowImpl obj, Object value) {
                obj.setDescriptionTrans((String)value);
            }
        }
        ,
        UomTrans {
            public Object get(XxpmSetBomArticlesViewRowImpl obj) {
                return obj.getUomTrans();
            }

            public void put(XxpmSetBomArticlesViewRowImpl obj, Object value) {
                obj.setUomTrans((String)value);
            }
        }
        ,
        ConsumptionTrans {
            public Object get(XxpmSetBomArticlesViewRowImpl obj) {
                return obj.getConsumptionTrans();
            }

            public void put(XxpmSetBomArticlesViewRowImpl obj, Object value) {
                obj.setConsumptionTrans((Number)value);
            }
        }
        ,
        Active {
            public Object get(XxpmSetBomArticlesViewRowImpl obj) {
                return obj.getActive();
            }

            public void put(XxpmSetBomArticlesViewRowImpl obj, Object value) {
                obj.setActive((Integer)value);
            }
        }
        ,
        EbsStatus {
            public Object get(XxpmSetBomArticlesViewRowImpl obj) {
                return obj.getEbsStatus();
            }

            public void put(XxpmSetBomArticlesViewRowImpl obj, Object value) {
                obj.setEbsStatus((Integer)value);
            }
        }
        ,
        SetId {
            public Object get(XxpmSetBomArticlesViewRowImpl obj) {
                return obj.getSetId();
            }

            public void put(XxpmSetBomArticlesViewRowImpl obj, Object value) {
                obj.setSetId((Integer)value);
            }
        }
        ,
        SetBomId1 {
            public Object get(XxpmSetBomArticlesViewRowImpl obj) {
                return obj.getSetBomIdMaster();
            }

            public void put(XxpmSetBomArticlesViewRowImpl obj, Object value) {
                obj.setSetBomIdMaster((DBSequence)value);
            }
        }
        ,
        BomArticleSubInvLov {
            public Object get(XxpmSetBomArticlesViewRowImpl obj) {
                return obj.getBomArticleSubInvLov();
            }

            public void put(XxpmSetBomArticlesViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        YesNoIntlov {
            public Object get(XxpmSetBomArticlesViewRowImpl obj) {
                return obj.getYesNoIntlov();
            }

            public void put(XxpmSetBomArticlesViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ;
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(XxpmSetBomArticlesViewRowImpl object);

        public abstract void put(XxpmSetBomArticlesViewRowImpl object,
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


    public static final int BOMARTICLEID = AttributesEnum.BomArticleId.index();
    public static final int SETBOMID = AttributesEnum.SetBomId.index();
    public static final int SUBINVENTORY = AttributesEnum.SubInventory.index();
    public static final int COMBID = AttributesEnum.CombId.index();
    public static final int ITEMCODETRANS = AttributesEnum.ItemCodeTrans.index();
    public static final int DESCRIPTIONTRANS = AttributesEnum.DescriptionTrans.index();
    public static final int UOMTRANS = AttributesEnum.UomTrans.index();
    public static final int CONSUMPTIONTRANS = AttributesEnum.ConsumptionTrans.index();
    public static final int ACTIVE = AttributesEnum.Active.index();
    public static final int EBSSTATUS = AttributesEnum.EbsStatus.index();
    public static final int SETID = AttributesEnum.SetId.index();
    public static final int SETBOMIDMASTER = AttributesEnum.SetBomId1.index();
    public static final int BOMARTICLESUBINVLOV = AttributesEnum.BomArticleSubInvLov.index();
    public static final int YESNOINTLOV = AttributesEnum.YesNoIntlov.index();

    /**
     * This is the default constructor (do not remove).
     */
    public XxpmSetBomArticlesViewRowImpl() {
    }

    /**
     * Gets XxpmSetBomArticles entity object.
     * @return the XxpmSetBomArticles
     */
    public XxpmSetBomArticlesImpl getXxpmSetBomArticles() {
        return (XxpmSetBomArticlesImpl)getEntity(0);
    }

    /**
     * Gets XxpmSetBom entity object.
     * @return the XxpmSetBom
     */
    public XxpmSetBomImpl getXxpmSetBom() {
        return (XxpmSetBomImpl)getEntity(1);
    }

    /**
     * Gets the attribute value for BOM_ARTICLE_ID using the alias name BomArticleId.
     * @return the BOM_ARTICLE_ID
     */
    public DBSequence getBomArticleId() {
        return (DBSequence)getAttributeInternal(BOMARTICLEID);
    }

    /**
     * Sets <code>value</code> as attribute value for BOM_ARTICLE_ID using the alias name BomArticleId.
     * @param value value to set the BOM_ARTICLE_ID
     */
    public void setBomArticleId(DBSequence value) {
        setAttributeInternal(BOMARTICLEID, value);
    }

    /**
     * Gets the attribute value for SET_BOM_ID using the alias name SetBomId.
     * @return the SET_BOM_ID
     */
    public Number getSetBomId() {
        return (Number)getAttributeInternal(SETBOMID);
    }

    /**
     * Sets <code>value</code> as attribute value for SET_BOM_ID using the alias name SetBomId.
     * @param value value to set the SET_BOM_ID
     */
    public void setSetBomId(Number value) {
        setAttributeInternal(SETBOMID, value);
    }

    /**
     * Gets the attribute value for SUB_INVENTORY using the alias name SubInventory.
     * @return the SUB_INVENTORY
     */
    public String getSubInventory() {
        return (String)getAttributeInternal(SUBINVENTORY);
    }

    /**
     * Sets <code>value</code> as attribute value for SUB_INVENTORY using the alias name SubInventory.
     * @param value value to set the SUB_INVENTORY
     */
    public void setSubInventory(String value) {
        setAttributeInternal(SUBINVENTORY, value);
    }

    /**
     * Gets the attribute value for COMB_ID using the alias name CombId.
     * @return the COMB_ID
     */
    public Integer getCombId() {
        return (Integer)getAttributeInternal(COMBID);
    }

    /**
     * Sets <code>value</code> as attribute value for COMB_ID using the alias name CombId.
     * @param value value to set the COMB_ID
     */
    public void setCombId(Integer value) {
        setAttributeInternal(COMBID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute ItemCodeTrans.
     * @return the ItemCodeTrans
     */
    public String getItemCodeTrans() {
        return (String)getAttributeInternal(ITEMCODETRANS);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ItemCodeTrans.
     * @param value value to set the  ItemCodeTrans
     */
    public void setItemCodeTrans(String value) {
        setAttributeInternal(ITEMCODETRANS, value);
    }

    /**
     * Gets the attribute value for the calculated attribute DescriptionTrans.
     * @return the DescriptionTrans
     */
    public String getDescriptionTrans() {
        return (String)getAttributeInternal(DESCRIPTIONTRANS);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute DescriptionTrans.
     * @param value value to set the  DescriptionTrans
     */
    public void setDescriptionTrans(String value) {
        setAttributeInternal(DESCRIPTIONTRANS, value);
    }

    /**
     * Gets the attribute value for the calculated attribute UomTrans.
     * @return the UomTrans
     */
    public String getUomTrans() {
        return (String)getAttributeInternal(UOMTRANS);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute UomTrans.
     * @param value value to set the  UomTrans
     */
    public void setUomTrans(String value) {
        setAttributeInternal(UOMTRANS, value);
    }

    /**
     * Gets the attribute value for the calculated attribute ConsumptionTrans.
     * @return the ConsumptionTrans
     */
    public Number getConsumptionTrans() {
        return (Number)getAttributeInternal(CONSUMPTIONTRANS);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ConsumptionTrans.
     * @param value value to set the  ConsumptionTrans
     */
    public void setConsumptionTrans(Number value) {
        setAttributeInternal(CONSUMPTIONTRANS, value);
    }

    /**
     * Gets the attribute value for ACTIVE using the alias name Active.
     * @return the ACTIVE
     */
    public Integer getActive() {
        return (Integer)getAttributeInternal(ACTIVE);
    }

    /**
     * Sets <code>value</code> as attribute value for ACTIVE using the alias name Active.
     * @param value value to set the ACTIVE
     */
    public void setActive(Integer value) {
        setAttributeInternal(ACTIVE, value);
    }

    /**
     * Gets the attribute value for EBS_STATUS using the alias name EbsStatus.
     * @return the EBS_STATUS
     */
    public Integer getEbsStatus() {
        return (Integer)getAttributeInternal(EBSSTATUS);
    }

    /**
     * Sets <code>value</code> as attribute value for EBS_STATUS using the alias name EbsStatus.
     * @param value value to set the EBS_STATUS
     */
    public void setEbsStatus(Integer value) {
        setAttributeInternal(EBSSTATUS, value);
    }

    /**
     * Gets the attribute value for SET_ID using the alias name SetId.
     * @return the SET_ID
     */
    public Integer getSetId() {
        return (Integer) getAttributeInternal(SETID);
    }

    /**
     * Sets <code>value</code> as attribute value for SET_ID using the alias name SetId.
     * @param value value to set the SET_ID
     */
    public void setSetId(Integer value) {
        setAttributeInternal(SETID, value);
    }

    /**
     * Gets the attribute value for SET_BOM_ID using the alias name SetBomIdMaster.
     * @return the SET_BOM_ID
     */
    public DBSequence getSetBomIdMaster() {
        return (DBSequence)getAttributeInternal(XxpmSetBomArticlesViewRowImpl.SETBOMIDMASTER);
    }

    /**
     * Sets <code>value</code> as attribute value for SET_BOM_ID using the alias name SetBomIdMaster.
     * @param value value to set the SET_BOM_ID
     */
    public void setSetBomIdMaster(DBSequence value) {
        setAttributeInternal(XxpmSetBomArticlesViewRowImpl.SETBOMIDMASTER,
                             value);
    }

    /**
     * Gets the view accessor <code>RowSet</code> BomArticleSubInvLov.
     */
    public RowSet getBomArticleSubInvLov() {
        return (RowSet)getAttributeInternal(BOMARTICLESUBINVLOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> YesNoIntlov.
     */
    public RowSet getYesNoIntlov() {
        return (RowSet)getAttributeInternal(YESNOINTLOV);
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

//    public String getDefaultValForSubInvArticle() {
//        String result = null;
//        if (getCombId() != null) {
//            Row[] subInvFabRows =
//                this.getBomArticleSubInvLov().getFilteredRows("CombId",
//                                                              getCombId());
//            for (int i = 0; i < subInvFabRows.length; i++) {
//                Row firstRow = subInvFabRows[i];
//                if (firstRow.getAttribute("SubInv") != null) {
//                    result = String.valueOf(firstRow.getAttribute("SubInv"));
//                    break;
//                }
//            }
//        }
//        Logger.adfLogger.warning("Fab Sub Inv: " + result);
//        return result;
//    }
}
