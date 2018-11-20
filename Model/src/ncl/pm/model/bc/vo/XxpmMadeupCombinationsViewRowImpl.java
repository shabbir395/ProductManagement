package ncl.pm.model.bc.vo;

import ncl.pm.model.bc.eo.XxpmMadeupCombinationsImpl;

import oracle.jbo.RowSet;
import oracle.jbo.domain.DBSequence;
import oracle.jbo.domain.Number;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityImpl;
import oracle.jbo.server.ViewRowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Jul 29 12:32:21 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmMadeupCombinationsViewRowImpl extends ViewRowImpl {
    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        CombId {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getCombId();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setCombId((DBSequence)value);
            }
        }
        ,
        ArticleId {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getArticleId();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setArticleId((Number)value);
            }
        }
        ,
        Segment1 {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getSegment1();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setSegment1((String)value);
            }
        }
        ,
        Segment2 {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getSegment2();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setSegment2((String)value);
            }
        }
        ,
        Segment3 {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getSegment3();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setSegment3((String)value);
            }
        }
        ,
        Segment4 {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getSegment4();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setSegment4((String)value);
            }
        }
        ,
        Segment5 {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getSegment5();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setSegment5((String)value);
            }
        }
        ,
        Segment6 {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getSegment6();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setSegment6((String)value);
            }
        }
        ,
        Segment7 {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getSegment7();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setSegment7((String)value);
            }
        }
        ,
        Description {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getDescription();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setDescription((String)value);
            }
        }
        ,
        Sku {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getSku();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setSku((String)value);
            }
        }
        ,
        CustomerDesc {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getCustomerDesc();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setCustomerDesc((String)value);
            }
        }
        ,
        RowStatus {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getRowStatus();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setRowStatus((Integer)value);
            }
        }
        ,
        EbsStatus {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getEbsStatus();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setEbsStatus((Integer)value);
            }
        }
        ,
        ConcateSegments {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getConcateSegments();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setConcateSegments((String)value);
            }
        }
        ,
        Deleted {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getDeleted();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setDeleted((Integer)value);
            }
        }
        ,
        YesNoIntlov {
            public Object get(XxpmMadeupCombinationsViewRowImpl obj) {
                return obj.getYesNoIntlov();
            }

            public void put(XxpmMadeupCombinationsViewRowImpl obj,
                            Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ;
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(XxpmMadeupCombinationsViewRowImpl object);

        public abstract void put(XxpmMadeupCombinationsViewRowImpl object,
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


    public static final int COMBID = AttributesEnum.CombId.index();
    public static final int ARTICLEID = AttributesEnum.ArticleId.index();
    public static final int SEGMENT1 = AttributesEnum.Segment1.index();
    public static final int SEGMENT2 = AttributesEnum.Segment2.index();
    public static final int SEGMENT3 = AttributesEnum.Segment3.index();
    public static final int SEGMENT4 = AttributesEnum.Segment4.index();
    public static final int SEGMENT5 = AttributesEnum.Segment5.index();
    public static final int SEGMENT6 = AttributesEnum.Segment6.index();
    public static final int SEGMENT7 = AttributesEnum.Segment7.index();
    public static final int DESCRIPTION = AttributesEnum.Description.index();
    public static final int SKU = AttributesEnum.Sku.index();
    public static final int CUSTOMERDESC = AttributesEnum.CustomerDesc.index();
    public static final int ROWSTATUS = AttributesEnum.RowStatus.index();
    public static final int EBSSTATUS = AttributesEnum.EbsStatus.index();
    public static final int CONCATESEGMENTS = AttributesEnum.ConcateSegments.index();
    public static final int DELETED = AttributesEnum.Deleted.index();
    public static final int YESNOINTLOV = AttributesEnum.YesNoIntlov.index();

    /**
     * This is the default constructor (do not remove).
     */
    public XxpmMadeupCombinationsViewRowImpl() {
    }

    /**
     * Gets XxpmMadeupCombinations entity object.
     * @return the XxpmMadeupCombinations
     */
    public XxpmMadeupCombinationsImpl getXxpmMadeupCombinations() {
        return (XxpmMadeupCombinationsImpl)getEntity(0);
    }

    /**
     * Gets the attribute value for COMB_ID using the alias name CombId.
     * @return the COMB_ID
     */
    public DBSequence getCombId() {
        return (DBSequence)getAttributeInternal(COMBID);
    }

    /**
     * Sets <code>value</code> as attribute value for COMB_ID using the alias name CombId.
     * @param value value to set the COMB_ID
     */
    public void setCombId(DBSequence value) {
        setAttributeInternal(COMBID, value);
    }

    /**
     * Gets the attribute value for ARTICLE_ID using the alias name ArticleId.
     * @return the ARTICLE_ID
     */
    public Number getArticleId() {
        return (Number)getAttributeInternal(ARTICLEID);
    }

    /**
     * Sets <code>value</code> as attribute value for ARTICLE_ID using the alias name ArticleId.
     * @param value value to set the ARTICLE_ID
     */
    public void setArticleId(Number value) {
        setAttributeInternal(ARTICLEID, value);
    }

    /**
     * Gets the attribute value for SEGMENT1 using the alias name Segment1.
     * @return the SEGMENT1
     */
    public String getSegment1() {
        return (String)getAttributeInternal(SEGMENT1);
    }

    /**
     * Sets <code>value</code> as attribute value for SEGMENT1 using the alias name Segment1.
     * @param value value to set the SEGMENT1
     */
    public void setSegment1(String value) {
        setAttributeInternal(SEGMENT1, value);
    }

    /**
     * Gets the attribute value for SEGMENT2 using the alias name Segment2.
     * @return the SEGMENT2
     */
    public String getSegment2() {
        return (String)getAttributeInternal(SEGMENT2);
    }

    /**
     * Sets <code>value</code> as attribute value for SEGMENT2 using the alias name Segment2.
     * @param value value to set the SEGMENT2
     */
    public void setSegment2(String value) {
        setAttributeInternal(SEGMENT2, value);
    }

    /**
     * Gets the attribute value for SEGMENT3 using the alias name Segment3.
     * @return the SEGMENT3
     */
    public String getSegment3() {
        return (String)getAttributeInternal(SEGMENT3);
    }

    /**
     * Sets <code>value</code> as attribute value for SEGMENT3 using the alias name Segment3.
     * @param value value to set the SEGMENT3
     */
    public void setSegment3(String value) {
        setAttributeInternal(SEGMENT3, value);
    }

    /**
     * Gets the attribute value for SEGMENT4 using the alias name Segment4.
     * @return the SEGMENT4
     */
    public String getSegment4() {
        return (String)getAttributeInternal(SEGMENT4);
    }

    /**
     * Sets <code>value</code> as attribute value for SEGMENT4 using the alias name Segment4.
     * @param value value to set the SEGMENT4
     */
    public void setSegment4(String value) {
        setAttributeInternal(SEGMENT4, value);
    }

    /**
     * Gets the attribute value for SEGMENT5 using the alias name Segment5.
     * @return the SEGMENT5
     */
    public String getSegment5() {
        return (String)getAttributeInternal(SEGMENT5);
    }

    /**
     * Sets <code>value</code> as attribute value for SEGMENT5 using the alias name Segment5.
     * @param value value to set the SEGMENT5
     */
    public void setSegment5(String value) {
        setAttributeInternal(SEGMENT5, value);
    }

    /**
     * Gets the attribute value for SEGMENT6 using the alias name Segment6.
     * @return the SEGMENT6
     */
    public String getSegment6() {
        return (String)getAttributeInternal(SEGMENT6);
    }

    /**
     * Sets <code>value</code> as attribute value for SEGMENT6 using the alias name Segment6.
     * @param value value to set the SEGMENT6
     */
    public void setSegment6(String value) {
        setAttributeInternal(SEGMENT6, value);
    }

    /**
     * Gets the attribute value for SEGMENT7 using the alias name Segment7.
     * @return the SEGMENT7
     */
    public String getSegment7() {
        return (String)getAttributeInternal(SEGMENT7);
    }

    /**
     * Sets <code>value</code> as attribute value for SEGMENT7 using the alias name Segment7.
     * @param value value to set the SEGMENT7
     */
    public void setSegment7(String value) {
        setAttributeInternal(SEGMENT7, value);
    }

    /**
     * Gets the attribute value for DESCRIPTION using the alias name Description.
     * @return the DESCRIPTION
     */
    public String getDescription() {
        return (String)getAttributeInternal(DESCRIPTION);
    }

    /**
     * Sets <code>value</code> as attribute value for DESCRIPTION using the alias name Description.
     * @param value value to set the DESCRIPTION
     */
    public void setDescription(String value) {
        setAttributeInternal(DESCRIPTION, value);
    }

    /**
     * Gets the attribute value for SKU using the alias name Sku.
     * @return the SKU
     */
    public String getSku() {
        return (String)getAttributeInternal(SKU);
    }

    /**
     * Sets <code>value</code> as attribute value for SKU using the alias name Sku.
     * @param value value to set the SKU
     */
    public void setSku(String value) {
        setAttributeInternal(SKU, value);
    }

    /**
     * Gets the attribute value for CUSTOMER_DESC using the alias name CustomerDesc.
     * @return the CUSTOMER_DESC
     */
    public String getCustomerDesc() {
        return (String)getAttributeInternal(CUSTOMERDESC);
    }

    /**
     * Sets <code>value</code> as attribute value for CUSTOMER_DESC using the alias name CustomerDesc.
     * @param value value to set the CUSTOMER_DESC
     */
    public void setCustomerDesc(String value) {
        setAttributeInternal(CUSTOMERDESC, value);
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
     * Gets the attribute value for the calculated attribute ConcateSegments.
     * @return the ConcateSegments
     */
    public String getConcateSegments() {
        return (String) getAttributeInternal(CONCATESEGMENTS);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ConcateSegments.
     * @param value value to set the  ConcateSegments
     */
    public void setConcateSegments(String value) {
        setAttributeInternal(CONCATESEGMENTS, value);
    }

    /**
     * Gets the attribute value for DELETED using the alias name Deleted.
     * @return the DELETED
     */
    public Integer getDeleted() {
        return (Integer) getAttributeInternal(DELETED);
    }

    /**
     * Sets <code>value</code> as attribute value for DELETED using the alias name Deleted.
     * @param value value to set the DELETED
     */
    public void setDeleted(Integer value) {
        setAttributeInternal(DELETED, value);
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
}