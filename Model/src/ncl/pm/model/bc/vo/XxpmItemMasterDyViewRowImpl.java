package ncl.pm.model.bc.vo;

import ncl.pm.model.bc.eo.XxpmItemMasterImpl;

import ncl.pm.model.bc.vo.common.XxpmItemMasterDyViewRow;

import oracle.jbo.RowSet;
import oracle.jbo.domain.DBSequence;
import oracle.jbo.domain.Number;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.ViewRowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue May 03 15:53:57 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmItemMasterDyViewRowImpl extends ViewRowImpl implements XxpmItemMasterDyViewRow {
    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        ImId {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getImId();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setImId((DBSequence)value);
            }
        }
        ,
        Description {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getDescription();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setDescription((String)value);
            }
        }
        ,
        EbsItemId {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getEbsItemId();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setEbsItemId((Number)value);
            }
        }
        ,
        BaseImId {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getBaseImId();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setBaseImId((Number)value);
            }
        }
        ,
        Segment1 {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getSegment1();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setSegment1((String)value);
            }
        }
        ,
        Segment2 {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getSegment2();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setSegment2((String)value);
            }
        }
        ,
        Segment3 {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getSegment3();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setSegment3((String)value);
            }
        }
        ,
        Segment4 {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getSegment4();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setSegment4((String)value);
            }
        }
        ,
        Category {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getCategory();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setCategory((String)value);
            }
        }
        ,
        Segment5 {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getSegment5();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setSegment5((String)value);
            }
        }
        ,
        Segment6 {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getSegment6();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setSegment6((String)value);
            }
        }
        ,
        Segment7 {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getSegment7();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setSegment7((String)value);
            }
        }
        ,
        FinishType {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getFinishType();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setFinishType((String)value);
            }
        }
        ,
        WeavingDescription {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getWeavingDescription();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setWeavingDescription((String)value);
            }
        }
        ,
        WeavingImId {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getWeavingImId();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setWeavingImId((DBSequence)value);
            }
        }
        ,
        WvDescription {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getWvDescription();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setWvDescription((String)value);
            }
        }
        ,
        DyeingResultant {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getDyeingResultant();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setDyeingResultant((String)value);
            }
        }
        ,
        DyColor {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getDyColor();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setDyColor((String)value);
            }
        }
        ,
        DyFinishWidthDesc {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getDyFinishWidthDesc();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setDyFinishWidthDesc((String)value);
            }
        }
        ,
        ItemStatusFlag {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getItemStatusFlag();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setItemStatusFlag((Integer)value);
            }
        }
        ,
        RowStatus {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getRowStatus();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setRowStatus((Integer)value);
            }
        }
        ,
        Segment3Value {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getSegment3Value();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setSegment3Value((String)value);
            }
        }
        ,
        DyeStandard {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getDyeStandard();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setDyeStandard((String)value);
            }
        }
        ,
        DyeCode {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getDyeCode();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setDyeCode((String)value);
            }
        }
        ,
        DyeResultant {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getColorResultant();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setColorResultant((String)value);
            }
        }
        ,
        ItemColorsLov {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getItemColorsLov();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        DyeingFinishTypesLov {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getDyeingFinishTypesLov();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        WeavingItemDescLov {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getWeavingItemDescLov();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        ItemSizeLov {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getItemSizeLov();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        DyCategoryLov {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getDyCategoryLov();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        ItemStatusLov {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getItemStatusLov();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        DyeingStandardLov {
            public Object get(XxpmItemMasterDyViewRowImpl obj) {
                return obj.getDyeingStandardLov();
            }

            public void put(XxpmItemMasterDyViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ;
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(XxpmItemMasterDyViewRowImpl object);

        public abstract void put(XxpmItemMasterDyViewRowImpl object,
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


    public static final int IMID = AttributesEnum.ImId.index();
    public static final int DESCRIPTION = AttributesEnum.Description.index();
    public static final int EBSITEMID = AttributesEnum.EbsItemId.index();
    public static final int BASEIMID = AttributesEnum.BaseImId.index();
    public static final int SEGMENT1 = AttributesEnum.Segment1.index();
    public static final int SEGMENT2 = AttributesEnum.Segment2.index();
    public static final int SEGMENT3 = AttributesEnum.Segment3.index();
    public static final int SEGMENT4 = AttributesEnum.Segment4.index();
    public static final int CATEGORY = AttributesEnum.Category.index();
    public static final int SEGMENT5 = AttributesEnum.Segment5.index();
    public static final int SEGMENT6 = AttributesEnum.Segment6.index();
    public static final int SEGMENT7 = AttributesEnum.Segment7.index();
    public static final int FINISHTYPE = AttributesEnum.FinishType.index();
    public static final int WEAVINGDESCRIPTION = AttributesEnum.WeavingDescription.index();
    public static final int WEAVINGIMID = AttributesEnum.WeavingImId.index();
    public static final int WVDESCRIPTION = AttributesEnum.WvDescription.index();
    public static final int DYEINGRESULTANT = AttributesEnum.DyeingResultant.index();
    public static final int DYCOLOR = AttributesEnum.DyColor.index();
    public static final int DYFINISHWIDTHDESC = AttributesEnum.DyFinishWidthDesc.index();
    public static final int ITEMSTATUSFLAG = AttributesEnum.ItemStatusFlag.index();
    public static final int ROWSTATUS = AttributesEnum.RowStatus.index();
    public static final int SEGMENT3VALUE = AttributesEnum.Segment3Value.index();
    public static final int DYESTANDARD = AttributesEnum.DyeStandard.index();
    public static final int DYECODE = AttributesEnum.DyeCode.index();
    public static final int COLORRESULTANT = AttributesEnum.DyeResultant.index();
    public static final int ITEMCOLORSLOV = AttributesEnum.ItemColorsLov.index();
    public static final int DYEINGFINISHTYPESLOV = AttributesEnum.DyeingFinishTypesLov.index();
    public static final int WEAVINGITEMDESCLOV = AttributesEnum.WeavingItemDescLov.index();
    public static final int ITEMSIZELOV = AttributesEnum.ItemSizeLov.index();
    public static final int DYCATEGORYLOV = AttributesEnum.DyCategoryLov.index();
    public static final int ITEMSTATUSLOV = AttributesEnum.ItemStatusLov.index();
    public static final int DYEINGSTANDARDLOV = AttributesEnum.DyeingStandardLov.index();

    /**
     * This is the default constructor (do not remove).
     */
    public XxpmItemMasterDyViewRowImpl() {
    }

    /**
     * Gets XxpmItemMaster entity object.
     * @return the XxpmItemMaster
     */
    public XxpmItemMasterImpl getXxpmItemMaster() {
        return (XxpmItemMasterImpl)getEntity(0);
    }

    /**
     * Gets XxpmWeavingItemMaster entity object.
     * @return the XxpmWeavingItemMaster
     */
    public XxpmItemMasterImpl getXxpmWeavingItemMaster() {
        return (XxpmItemMasterImpl)getEntity(1);
    }

    /**
     * Gets the attribute value for IM_ID using the alias name ImId.
     * @return the IM_ID
     */
    public DBSequence getImId() {
        return (DBSequence)getAttributeInternal(IMID);
    }

    /**
     * Sets <code>value</code> as attribute value for IM_ID using the alias name ImId.
     * @param value value to set the IM_ID
     */
    public void setImId(DBSequence value) {
        setAttributeInternal(IMID, value);
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
     * Gets the attribute value for EBS_ITEM_ID using the alias name EbsItemId.
     * @return the EBS_ITEM_ID
     */
    public Number getEbsItemId() {
        return (Number)getAttributeInternal(EBSITEMID);
    }

    /**
     * Sets <code>value</code> as attribute value for EBS_ITEM_ID using the alias name EbsItemId.
     * @param value value to set the EBS_ITEM_ID
     */
    public void setEbsItemId(Number value) {
        setAttributeInternal(EBSITEMID, value);
    }

    /**
     * Gets the attribute value for BASE_IM_ID using the alias name BaseImId.
     * @return the BASE_IM_ID
     */
    public Number getBaseImId() {
        return (Number)getAttributeInternal(BASEIMID);
    }

    /**
     * Sets <code>value</code> as attribute value for BASE_IM_ID using the alias name BaseImId.
     * @param value value to set the BASE_IM_ID
     */
    public void setBaseImId(Number value) {
        setAttributeInternal(BASEIMID, value);
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
     * Gets the attribute value for CATEGORY using the alias name Category.
     * @return the CATEGORY
     */
    public String getCategory() {
        return (String) getAttributeInternal(CATEGORY);
    }

    /**
     * Sets <code>value</code> as attribute value for CATEGORY using the alias name Category.
     * @param value value to set the CATEGORY
     */
    public void setCategory(String value) {
        setAttributeInternal(CATEGORY, value);
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
     * Gets the attribute value for FINISH_TYPE using the alias name FinishType.
     * @return the FINISH_TYPE
     */
    public String getFinishType() {
        return (String)getAttributeInternal(FINISHTYPE);
    }

    /**
     * Sets <code>value</code> as attribute value for FINISH_TYPE using the alias name FinishType.
     * @param value value to set the FINISH_TYPE
     */
    public void setFinishType(String value) {
        setAttributeInternal(FINISHTYPE, value);
    }

    /**
     * Gets the attribute value for DESCRIPTION using the alias name WeavingDescription.
     * @return the DESCRIPTION
     */
    public String getWeavingDescription() {
        return (String)getAttributeInternal(WEAVINGDESCRIPTION);
    }

    /**
     * Sets <code>value</code> as attribute value for DESCRIPTION using the alias name WeavingDescription.
     * @param value value to set the DESCRIPTION
     */
    public void setWeavingDescription(String value) {
        setAttributeInternal(WEAVINGDESCRIPTION, value);
    }

    /**
     * Gets the attribute value for IM_ID using the alias name WeavingImId.
     * @return the IM_ID
     */
    public DBSequence getWeavingImId() {
        return (DBSequence)getAttributeInternal(WEAVINGIMID);
    }

    /**
     * Sets <code>value</code> as attribute value for IM_ID using the alias name WeavingImId.
     * @param value value to set the IM_ID
     */
    public void setWeavingImId(DBSequence value) {
        setAttributeInternal(WEAVINGIMID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute WvDescription.
     * @return the WvDescription
     */
    public String getWvDescription() {
        return (String)getAttributeInternal(WVDESCRIPTION);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute WvDescription.
     * @param value value to set the  WvDescription
     */
    public void setWvDescription(String value) {
        setAttributeInternal(WVDESCRIPTION, value);
    }

    /**
     * Gets the attribute value for the calculated attribute DyeingResultant.
     * @return the DyeingResultant
     */
    public String getDyeingResultant() {
        return (String)getAttributeInternal(DYEINGRESULTANT);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute DyeingResultant.
     * @param value value to set the  DyeingResultant
     */
    public void setDyeingResultant(String value) {
        setAttributeInternal(DYEINGRESULTANT, value);
    }

    /**
     * Gets the attribute value for the calculated attribute DyColor.
     * @return the DyColor
     */
    public String getDyColor() {
        return (String)getAttributeInternal(DYCOLOR);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute DyColor.
     * @param value value to set the  DyColor
     */
    public void setDyColor(String value) {
        setAttributeInternal(DYCOLOR, value);
    }


    /**
     * Gets the attribute value for the calculated attribute DyFinishWidthDesc.
     * @return the DyFinishWidthDesc
     */
    public String getDyFinishWidthDesc() {
        return (String)getAttributeInternal(DYFINISHWIDTHDESC);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute DyFinishWidthDesc.
     * @param value value to set the  DyFinishWidthDesc
     */
    public void setDyFinishWidthDesc(String value) {
        setAttributeInternal(DYFINISHWIDTHDESC, value);
    }

    /**
     * Gets the attribute value for ITEM_STATUS_FLAG using the alias name ItemStatusFlag.
     * @return the ITEM_STATUS_FLAG
     */
    public Integer getItemStatusFlag() {
        return (Integer)getAttributeInternal(ITEMSTATUSFLAG);
    }

    /**
     * Sets <code>value</code> as attribute value for ITEM_STATUS_FLAG using the alias name ItemStatusFlag.
     * @param value value to set the ITEM_STATUS_FLAG
     */
    public void setItemStatusFlag(Integer value) {
        setAttributeInternal(ITEMSTATUSFLAG, value);
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
     * Gets the attribute value for SEGMENT3VALUE using the alias name Segment3Value.
     * @return the SEGMENT3VALUE
     */
    public String getSegment3Value() {
        return (String) getAttributeInternal(SEGMENT3VALUE);
    }

    /**
     * Sets <code>value</code> as attribute value for SEGMENT3VALUE using the alias name Segment3Value.
     * @param value value to set the SEGMENT3VALUE
     */
    public void setSegment3Value(String value) {
        setAttributeInternal(SEGMENT3VALUE, value);
    }


    /**
     * Gets the attribute value for DYE_STANDARD using the alias name DyeStandard.
     * @return the DYE_STANDARD
     */
    public String getDyeStandard() {
        return (String) getAttributeInternal(DYESTANDARD);
    }

    /**
     * Sets <code>value</code> as attribute value for DYE_STANDARD using the alias name DyeStandard.
     * @param value value to set the DYE_STANDARD
     */
    public void setDyeStandard(String value) {
        setAttributeInternal(DYESTANDARD, value);
    }

    /**
     * Gets the attribute value for DYE_CODE using the alias name DyeCode.
     * @return the DYE_CODE
     */
    public String getDyeCode() {
        return (String) getAttributeInternal(DYECODE);
    }

    /**
     * Sets <code>value</code> as attribute value for DYE_CODE using the alias name DyeCode.
     * @param value value to set the DYE_CODE
     */
    public void setDyeCode(String value) {
        setAttributeInternal(DYECODE, value);
    }

    /**
     * Gets the attribute value for the calculated attribute ColorResultant.
     * @return the ColorResultant
     */
    public String getColorResultant() {
        return (String) getAttributeInternal(XxpmItemMasterDyViewRowImpl.COLORRESULTANT);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ColorResultant.
     * @param value value to set the  ColorResultant
     */
    public void setColorResultant(String value) {
        setAttributeInternal(XxpmItemMasterDyViewRowImpl.COLORRESULTANT,
                             value);
    }

    /**
     * Gets the view accessor <code>RowSet</code> ItemColorsLov.
     */
    public RowSet getItemColorsLov() {
        return (RowSet)getAttributeInternal(ITEMCOLORSLOV);
    }


    /**
     * Gets the view accessor <code>RowSet</code> DyeingFinishTypesLov.
     */
    public RowSet getDyeingFinishTypesLov() {
        return (RowSet)getAttributeInternal(DYEINGFINISHTYPESLOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> WeavingItemDescLov.
     */
    public RowSet getWeavingItemDescLov() {
        return (RowSet)getAttributeInternal(WEAVINGITEMDESCLOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> ItemSizeLov.
     */
    public RowSet getItemSizeLov() {
        return (RowSet)getAttributeInternal(ITEMSIZELOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> DyCategoryLov.
     */
    public RowSet getDyCategoryLov() {
        return (RowSet)getAttributeInternal(DYCATEGORYLOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> ItemStatusLov.
     */
    public RowSet getItemStatusLov() {
        return (RowSet)getAttributeInternal(ITEMSTATUSLOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> DyeingStandardLov.
     */
    public RowSet getDyeingStandardLov() {
        return (RowSet)getAttributeInternal(DYEINGSTANDARDLOV);
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
    
    public void updateDyLovsAccessor(){
        getItemColorsLov().executeQuery();
        getDyCategoryLov().executeQuery();
        getItemSizeLov().executeQuery();
        getDyeingFinishTypesLov().executeQuery();
        getDyeingStandardLov().executeQuery();
    }
}
