package ncl.pm.model.bc.vo;

import java.math.BigDecimal;

import ncl.pm.model.bc.eo.XxpmPoLinesImpl;

import ncl.pm.model.bc.vo.common.XxpmPoLinesViewRow;

import oracle.jbo.Row;
import oracle.jbo.RowSet;
import oracle.jbo.RowSetIterator;
import oracle.jbo.domain.DBSequence;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.ViewRowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Mon Nov 14 17:38:29 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmPoLinesViewRowImpl extends ViewRowImpl implements XxpmPoLinesViewRow {
    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        PoLineId {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getPoLineId();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setPoLineId((DBSequence)value);
            }
        }
        ,
        PoHeaderId {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getPoHeaderId();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setPoHeaderId((Integer)value);
            }
        }
        ,
        InventoryItemId {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getInventoryItemId();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setInventoryItemId((Integer)value);
            }
        }
        ,
        Segment2 {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getSegment2();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setSegment2((String)value);
            }
        }
        ,
        Description {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getDescription();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setDescription((String)value);
            }
        }
        ,
        Uom {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getUom();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setUom((String)value);
            }
        }
        ,
        CurrencyCode {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getCurrencyCode();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setCurrencyCode((String)value);
            }
        }
        ,
        ItemType {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getItemType();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setItemType((Integer)value);
            }
        }
        ,
        Consumption {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getConsumption();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setConsumption((BigDecimal)value);
            }
        }
        ,
        SoLineQty {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getSoLineQty();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setSoLineQty((Integer)value);
            }
        }
        ,
        PoQnty {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getPoQnty();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setPoQnty((BigDecimal)value);
            }
        }
        ,
        ItmStock {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getItmStock();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setItmStock((BigDecimal)value);
            }
        }
        ,
        ActOrderedQty {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getActOrderedQty();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setActOrderedQty((Double)value);
            }
        }
        ,
        SoLineRate {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getSoLineRate();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setSoLineRate((BigDecimal)value);
            }
        }
        ,
        Moq {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getMoq();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setMoq((Integer)value);
            }
        }
        ,
        VendorId {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getVendorId();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setVendorId((Integer)value);
            }
        }
        ,
        VendorName {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getVendorName();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setVendorName((String)value);
            }
        }
        ,
        VendorSiteId {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getVendorSiteId();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setVendorSiteId((Integer)value);
            }
        }
        ,
        EbsStatus {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getEbsStatus();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setEbsStatus((Integer)value);
            }
        }
        ,
        PoNum {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getPoNum();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setPoNum((String)value);
            }
        }
        ,
        AccCat {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getAccCat();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setAccCat((String)value);
            }
        }
        ,
        VendorsLov {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getVendorsLov();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        VendorSitesLov {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getVendorSitesLov();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        CurrenciesLov {
            public Object get(XxpmPoLinesViewRowImpl obj) {
                return obj.getCurrenciesLov();
            }

            public void put(XxpmPoLinesViewRowImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ;
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(XxpmPoLinesViewRowImpl object);

        public abstract void put(XxpmPoLinesViewRowImpl object, Object value);

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


    public static final int POLINEID = AttributesEnum.PoLineId.index();
    public static final int POHEADERID = AttributesEnum.PoHeaderId.index();
    public static final int INVENTORYITEMID = AttributesEnum.InventoryItemId.index();
    public static final int SEGMENT2 = AttributesEnum.Segment2.index();
    public static final int DESCRIPTION = AttributesEnum.Description.index();
    public static final int UOM = AttributesEnum.Uom.index();
    public static final int CURRENCYCODE = AttributesEnum.CurrencyCode.index();
    public static final int ITEMTYPE = AttributesEnum.ItemType.index();
    public static final int CONSUMPTION = AttributesEnum.Consumption.index();
    public static final int SOLINEQTY = AttributesEnum.SoLineQty.index();
    public static final int POQNTY = AttributesEnum.PoQnty.index();
    public static final int ITMSTOCK = AttributesEnum.ItmStock.index();
    public static final int ACTORDEREDQTY = AttributesEnum.ActOrderedQty.index();
    public static final int SOLINERATE = AttributesEnum.SoLineRate.index();
    public static final int MOQ = AttributesEnum.Moq.index();
    public static final int VENDORID = AttributesEnum.VendorId.index();
    public static final int VENDORNAME = AttributesEnum.VendorName.index();
    public static final int VENDORSITEID = AttributesEnum.VendorSiteId.index();
    public static final int EBSSTATUS = AttributesEnum.EbsStatus.index();
    public static final int PONUM = AttributesEnum.PoNum.index();
    public static final int ACCCAT = AttributesEnum.AccCat.index();
    public static final int VENDORSLOV = AttributesEnum.VendorsLov.index();
    public static final int VENDORSITESLOV = AttributesEnum.VendorSitesLov.index();
    public static final int CURRENCIESLOV = AttributesEnum.CurrenciesLov.index();

    /**
     * This is the default constructor (do not remove).
     */
    public XxpmPoLinesViewRowImpl() {
    }

    /**
     * Gets XxpmPoLines entity object.
     * @return the XxpmPoLines
     */
    public XxpmPoLinesImpl getXxpmPoLines() {
        return (XxpmPoLinesImpl)getEntity(0);
    }

    /**
     * Gets the attribute value for PO_LINE_ID using the alias name PoLineId.
     * @return the PO_LINE_ID
     */
    public DBSequence getPoLineId() {
        return (DBSequence)getAttributeInternal(POLINEID);
    }

    /**
     * Sets <code>value</code> as attribute value for PO_LINE_ID using the alias name PoLineId.
     * @param value value to set the PO_LINE_ID
     */
    public void setPoLineId(DBSequence value) {
        setAttributeInternal(POLINEID, value);
    }

    /**
     * Gets the attribute value for PO_HEADER_ID using the alias name PoHeaderId.
     * @return the PO_HEADER_ID
     */
    public Integer getPoHeaderId() {
        return (Integer)getAttributeInternal(POHEADERID);
    }

    /**
     * Sets <code>value</code> as attribute value for PO_HEADER_ID using the alias name PoHeaderId.
     * @param value value to set the PO_HEADER_ID
     */
    public void setPoHeaderId(Integer value) {
        setAttributeInternal(POHEADERID, value);
    }

    /**
     * Gets the attribute value for INVENTORY_ITEM_ID using the alias name InventoryItemId.
     * @return the INVENTORY_ITEM_ID
     */
    public Integer getInventoryItemId() {
        return (Integer)getAttributeInternal(INVENTORYITEMID);
    }

    /**
     * Sets <code>value</code> as attribute value for INVENTORY_ITEM_ID using the alias name InventoryItemId.
     * @param value value to set the INVENTORY_ITEM_ID
     */
    public void setInventoryItemId(Integer value) {
        setAttributeInternal(INVENTORYITEMID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute Segment2.
     * @return the Segment2
     */
    public String getSegment2() {
        return (String)getAttributeInternal(SEGMENT2);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Segment2.
     * @param value value to set the  Segment2
     */
    public void setSegment2(String value) {
        setAttributeInternal(SEGMENT2, value);
    }

    /**
     * Gets the attribute value for the calculated attribute Description.
     * @return the Description
     */
    public String getDescription() {
        return (String)getAttributeInternal(DESCRIPTION);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Description.
     * @param value value to set the  Description
     */
    public void setDescription(String value) {
        setAttributeInternal(DESCRIPTION, value);
    }

    /**
     * Gets the attribute value for the calculated attribute Uom.
     * @return the Uom
     */
    public String getUom() {
        return (String)getAttributeInternal(UOM);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Uom.
     * @param value value to set the  Uom
     */
    public void setUom(String value) {
        setAttributeInternal(UOM, value);
    }

    /**
     * Gets the attribute value for CURRENCY_CODE using the alias name CurrencyCode.
     * @return the CURRENCY_CODE
     */
    public String getCurrencyCode() {
        return (String) getAttributeInternal(CURRENCYCODE);
    }

    /**
     * Sets <code>value</code> as attribute value for CURRENCY_CODE using the alias name CurrencyCode.
     * @param value value to set the CURRENCY_CODE
     */
    public void setCurrencyCode(String value) {
        setAttributeInternal(CURRENCYCODE, value);
    }

    /**
     * Gets the attribute value for ITEM_TYPE using the alias name ItemType.
     * @return the ITEM_TYPE
     */
    public Integer getItemType() {
        return (Integer)getAttributeInternal(ITEMTYPE);
    }

    /**
     * Sets <code>value</code> as attribute value for ITEM_TYPE using the alias name ItemType.
     * @param value value to set the ITEM_TYPE
     */
    public void setItemType(Integer value) {
        setAttributeInternal(ITEMTYPE, value);
    }

    /**
     * Gets the attribute value for CONSUMPTION using the alias name Consumption.
     * @return the CONSUMPTION
     */
    public BigDecimal getConsumption() {
        return (BigDecimal)getAttributeInternal(CONSUMPTION);
    }

    /**
     * Sets <code>value</code> as attribute value for CONSUMPTION using the alias name Consumption.
     * @param value value to set the CONSUMPTION
     */
    public void setConsumption(BigDecimal value) {
        setAttributeInternal(CONSUMPTION, value);
    }

    /**
     * Gets the attribute value for SO_LINE_QTY using the alias name SoLineQty.
     * @return the SO_LINE_QTY
     */
    public Integer getSoLineQty() {
        return (Integer)getAttributeInternal(SOLINEQTY);
    }

    /**
     * Sets <code>value</code> as attribute value for SO_LINE_QTY using the alias name SoLineQty.
     * @param value value to set the SO_LINE_QTY
     */
    public void setSoLineQty(Integer value) {
        setAttributeInternal(SOLINEQTY, value);
    }

    /**
     * Gets the attribute value for the calculated attribute PoQnty.
     * @return the PoQnty
     */
    public BigDecimal getPoQnty() {
        return (BigDecimal)getAttributeInternal(POQNTY);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute PoQnty.
     * @param value value to set the  PoQnty
     */
    public void setPoQnty(BigDecimal value) {
        setAttributeInternal(POQNTY, value);
    }

    /**
     * Gets the attribute value for ITM_STOCK using the alias name ItmStock.
     * @return the ITM_STOCK
     */
    public BigDecimal getItmStock() {
        return (BigDecimal)getAttributeInternal(ITMSTOCK);
    }

    /**
     * Sets <code>value</code> as attribute value for ITM_STOCK using the alias name ItmStock.
     * @param value value to set the ITM_STOCK
     */
    public void setItmStock(BigDecimal value) {
        setAttributeInternal(ITMSTOCK, value);
    }

    /**
     * Gets the attribute value for ACT_ORDERED_QTY using the alias name ActOrderedQty.
     * @return the ACT_ORDERED_QTY
     */
    public Double getActOrderedQty() {
        return (Double)getAttributeInternal(ACTORDEREDQTY);
    }

    /**
     * Sets <code>value</code> as attribute value for ACT_ORDERED_QTY using the alias name ActOrderedQty.
     * @param value value to set the ACT_ORDERED_QTY
     */
    public void setActOrderedQty(Double value) {
        setAttributeInternal(ACTORDEREDQTY, value);
    }

    /**
     * Gets the attribute value for SO_LINE_RATE using the alias name SoLineRate.
     * @return the SO_LINE_RATE
     */
    public BigDecimal getSoLineRate() {
        return (BigDecimal)getAttributeInternal(SOLINERATE);
    }

    /**
     * Sets <code>value</code> as attribute value for SO_LINE_RATE using the alias name SoLineRate.
     * @param value value to set the SO_LINE_RATE
     */
    public void setSoLineRate(BigDecimal value) {
        setAttributeInternal(SOLINERATE, value);
    }

    /**
     * Gets the attribute value for MOQ using the alias name Moq.
     * @return the MOQ
     */
    public Integer getMoq() {
        return (Integer)getAttributeInternal(MOQ);
    }

    /**
     * Sets <code>value</code> as attribute value for MOQ using the alias name Moq.
     * @param value value to set the MOQ
     */
    public void setMoq(Integer value) {
        setAttributeInternal(MOQ, value);
    }

    /**
     * Gets the attribute value for VENDOR_ID using the alias name VendorId.
     * @return the VENDOR_ID
     */
    public Integer getVendorId() {
        return (Integer)getAttributeInternal(VENDORID);
    }

    /**
     * Sets <code>value</code> as attribute value for VENDOR_ID using the alias name VendorId.
     * @param value value to set the VENDOR_ID
     */
    public void setVendorId(Integer value) {
        setAttributeInternal(VENDORID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute VendorName.
     * @return the VendorName
     */
    public String getVendorName() {
        return (String)getAttributeInternal(VENDORNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute VendorName.
     * @param value value to set the  VendorName
     */
    public void setVendorName(String value) {
        setAttributeInternal(VENDORNAME, value);
    }

    /**
     * Gets the attribute value for VENDOR_SITE_ID using the alias name VendorSiteId.
     * @return the VENDOR_SITE_ID
     */
    public Integer getVendorSiteId() {
        return (Integer)getAttributeInternal(VENDORSITEID);
    }

    /**
     * Sets <code>value</code> as attribute value for VENDOR_SITE_ID using the alias name VendorSiteId.
     * @param value value to set the VENDOR_SITE_ID
     */
    public void setVendorSiteId(Integer value) {
        setAttributeInternal(VENDORSITEID, value);
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
     * Gets the attribute value for the calculated attribute PoNum.
     * @return the PoNum
     */
    public String getPoNum() {
        return (String)getAttributeInternal(PONUM);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute PoNum.
     * @param value value to set the  PoNum
     */
    public void setPoNum(String value) {
        setAttributeInternal(PONUM, value);
    }

    /**
     * Gets the attribute value for ACC_CAT using the alias name AccCat.
     * @return the ACC_CAT
     */
    public String getAccCat() {
        return (String) getAttributeInternal(ACCCAT);
    }

    /**
     * Sets <code>value</code> as attribute value for ACC_CAT using the alias name AccCat.
     * @param value value to set the ACC_CAT
     */
    public void setAccCat(String value) {
        setAttributeInternal(ACCCAT, value);
    }

    /**
     * Gets the view accessor <code>RowSet</code> VendorsLov.
     */
    public RowSet getVendorsLov() {
        return (RowSet)getAttributeInternal(VENDORSLOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> VendorSitesLov.
     */
    public RowSet getVendorSitesLov() {
        return (RowSet)getAttributeInternal(VENDORSITESLOV);
    }

    /**
     * Gets the view accessor <code>RowSet</code> CurrenciesLov.
     */
    public RowSet getCurrenciesLov() {
        return (RowSet)getAttributeInternal(CURRENCIESLOV);
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

    public Integer getDefaultValForVendorSiteId() {
        Integer result = null;
        if (getVendorId() != null) {
            Row[] vendorSiteRows =
                this.getVendorSitesLov().getFilteredRows("VendorId",
                                                         getVendorId());
            for (int i = 0; i < vendorSiteRows.length; i++) {
                Row firstRow = vendorSiteRows[i];
                if (firstRow.getAttribute("VendorSiteId") != null) {
                    result = (Integer)firstRow.getAttribute("VendorSiteId");
                    break;
                }
            }
        }
        return result;
    }
}
