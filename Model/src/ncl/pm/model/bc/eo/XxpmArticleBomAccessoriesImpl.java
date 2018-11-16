package ncl.pm.model.bc.eo;

import java.util.ArrayList;
import java.util.Calendar;

import java.util.List;

import ncl.pm.model.bc.view.xxpmJC.CustomMap;
import ncl.pm.model.bc.view.xxpmJC.ModelActions;

import oracle.adf.share.ADFContext;

import oracle.jbo.AttributeList;
import oracle.jbo.DMLConstraintException;
import oracle.jbo.DMLException;
import oracle.jbo.Key;
import oracle.jbo.RowInconsistentException;
import oracle.jbo.RowIterator;
import oracle.jbo.domain.DBSequence;
import oracle.jbo.domain.Date;
import oracle.jbo.domain.Number;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityDefImpl;
import oracle.jbo.server.EntityImpl;
import oracle.jbo.server.TransactionEvent;

// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Mon Aug 22 01:36:05 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmArticleBomAccessoriesImpl extends EntityImpl {
    private static EntityDefImpl mDefinitionObject;

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        ArtBomAccId {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getArtBomAccId();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setArtBomAccId((DBSequence)value);
            }
        },
        ArtBomId {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getArtBomId();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setArtBomId((Number)value);
            }
        },
        ImId {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getImId();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setImId((Integer)value);
            }
        },
        Segment2 {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getSegment2();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setSegment2((String)value);
            }
        },
        AccColor {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getAccColor();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setAccColor((String)value);
            }
        },
        AccSize {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getAccSize();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setAccSize((String)value);
            }
        },
        SubInv {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getSubInv();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setSubInv((String)value);
            }
        },
        Consumption {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getConsumption();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setConsumption((Number)value);
            }
        },
        MeterConeConversion {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getMeterConeConversion();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setMeterConeConversion((Number)value);
            }
        },
        Wastage {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getWastage();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setWastage((Number)value);
            }
        },
        Active {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getActive();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setActive((Integer)value);
            }
        },
        CreatedBy {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getCreatedBy();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setCreatedBy((String)value);
            }
        },
        CreationDate {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getCreationDate();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setCreationDate((Date)value);
            }
        },
        LastUpdatedBy {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getLastUpdatedBy();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setLastUpdatedBy((String)value);
            }
        },
        LastUpdateDate {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getLastUpdateDate();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setLastUpdateDate((Date)value);
            }
        },
        RespId {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getRespId();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setRespId((String)value);
            }
        },
        EbsStatus {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getEbsStatus();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setEbsStatus((Integer)value);
            }
        },
        ColorChkbox {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getColorChkbox();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setColorChkbox((Integer)value);
            }
        },
        SizeChkbox {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getSizeChkbox();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setSizeChkbox((Integer)value);
            }
        },
        XxpmAbAccessoriesColors {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getXxpmAbAccessoriesColors();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        },
        XxpmAbAccessoriesSizes {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getXxpmAbAccessoriesSizes();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        },
        XxpmArticleBom {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getXxpmArticleBom();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setXxpmArticleBom((XxpmArticleBomImpl)value);
            }
        },
        XxpmItemMaster {
            public Object get(XxpmArticleBomAccessoriesImpl obj) {
                return obj.getXxpmItemMaster();
            }

            public void put(XxpmArticleBomAccessoriesImpl obj, Object value) {
                obj.setXxpmItemMaster((XxpmItemMasterImpl)value);
            }
        };
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(XxpmArticleBomAccessoriesImpl object);

        public abstract void put(XxpmArticleBomAccessoriesImpl object,
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


    public static final int ARTBOMACCID = AttributesEnum.ArtBomAccId.index();
    public static final int ARTBOMID = AttributesEnum.ArtBomId.index();
    public static final int IMID = AttributesEnum.ImId.index();
    public static final int SEGMENT2 = AttributesEnum.Segment2.index();
    public static final int ACCCOLOR = AttributesEnum.AccColor.index();
    public static final int ACCSIZE = AttributesEnum.AccSize.index();
    public static final int SUBINV = AttributesEnum.SubInv.index();
    public static final int CONSUMPTION = AttributesEnum.Consumption.index();
    public static final int METERCONECONVERSION =
        AttributesEnum.MeterConeConversion.index();
    public static final int WASTAGE = AttributesEnum.Wastage.index();
    public static final int ACTIVE = AttributesEnum.Active.index();
    public static final int CREATEDBY = AttributesEnum.CreatedBy.index();
    public static final int CREATIONDATE = AttributesEnum.CreationDate.index();
    public static final int LASTUPDATEDBY =
        AttributesEnum.LastUpdatedBy.index();
    public static final int LASTUPDATEDATE =
        AttributesEnum.LastUpdateDate.index();
    public static final int RESPID = AttributesEnum.RespId.index();
    public static final int EBSSTATUS = AttributesEnum.EbsStatus.index();
    public static final int COLORCHKBOX = AttributesEnum.ColorChkbox.index();
    public static final int SIZECHKBOX = AttributesEnum.SizeChkbox.index();
    public static final int XXPMABACCESSORIESCOLORS =
        AttributesEnum.XxpmAbAccessoriesColors.index();
    public static final int XXPMABACCESSORIESSIZES =
        AttributesEnum.XxpmAbAccessoriesSizes.index();
    public static final int XXPMARTICLEBOM =
        AttributesEnum.XxpmArticleBom.index();
    public static final int XXPMITEMMASTER =
        AttributesEnum.XxpmItemMaster.index();

    /**
     * This is the default constructor (do not remove).
     */
    public XxpmArticleBomAccessoriesImpl() {
    }


    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        if (mDefinitionObject == null) {
            mDefinitionObject =
                    EntityDefImpl.findDefObject("ncl.pm.model.bc.eo.XxpmArticleBomAccessories");
        }
        return mDefinitionObject;
    }

    /**
     * Gets the attribute value for ArtBomAccId, using the alias name ArtBomAccId.
     * @return the ArtBomAccId
     */
    public DBSequence getArtBomAccId() {
        return (DBSequence)getAttributeInternal(ARTBOMACCID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ArtBomAccId.
     * @param value value to set the ArtBomAccId
     */
    public void setArtBomAccId(DBSequence value) {
        setAttributeInternal(ARTBOMACCID, value);
    }

    /**
     * Gets the attribute value for ArtBomId, using the alias name ArtBomId.
     * @return the ArtBomId
     */
    public Number getArtBomId() {
        return (Number)getAttributeInternal(ARTBOMID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ArtBomId.
     * @param value value to set the ArtBomId
     */
    public void setArtBomId(Number value) {
        setAttributeInternal(ARTBOMID, value);
    }

    /**
     * Gets the attribute value for ImId, using the alias name ImId.
     * @return the ImId
     */
    public Integer getImId() {
        return (Integer)getAttributeInternal(IMID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ImId.
     * @param value value to set the ImId
     */
    public void setImId(Integer value) {
        setAttributeInternal(IMID, value);
    }

    /**
     * Gets the attribute value for Segment2, using the alias name Segment2.
     * @return the Segment2
     */
    public String getSegment2() {
        return (String)getAttributeInternal(SEGMENT2);
    }

    /**
     * Sets <code>value</code> as the attribute value for Segment2.
     * @param value value to set the Segment2
     */
    public void setSegment2(String value) {
        setAttributeInternal(SEGMENT2, value);
    }

    /**
     * Gets the attribute value for AccColor, using the alias name AccColor.
     * @return the AccColor
     */
    public String getAccColor() {
        return (String)getAttributeInternal(ACCCOLOR);
    }

    /**
     * Sets <code>value</code> as the attribute value for AccColor.
     * @param value value to set the AccColor
     */
    public void setAccColor(String value) {
        setAttributeInternal(ACCCOLOR, value);
    }

    /**
     * Gets the attribute value for SubInv, using the alias name SubInv.
     * @return the SubInv
     */
    public String getSubInv() {
        return (String)getAttributeInternal(SUBINV);
    }

    /**
     * Sets <code>value</code> as the attribute value for SubInv.
     * @param value value to set the SubInv
     */
    public void setSubInv(String value) {
        setAttributeInternal(SUBINV, value);
    }

    /**
     * Gets the attribute value for Consumption, using the alias name Consumption.
     * @return the Consumption
     */
    public Number getConsumption() {
        return (Number)getAttributeInternal(CONSUMPTION);
    }

    /**
     * Sets <code>value</code> as the attribute value for Consumption.
     * @param value value to set the Consumption
     */
    public void setConsumption(Number value) {
        setAttributeInternal(CONSUMPTION, value);
    }

    /**
     * Gets the attribute value for Wastage, using the alias name Wastage.
     * @return the Wastage
     */
    public Number getWastage() {
        return (Number)getAttributeInternal(WASTAGE);
    }

    /**
     * Sets <code>value</code> as the attribute value for Wastage.
     * @param value value to set the Wastage
     */
    public void setWastage(Number value) {
        setAttributeInternal(WASTAGE, value);
    }

    /**
     * Gets the attribute value for Active, using the alias name Active.
     * @return the Active
     */
    public Integer getActive() {
        return (Integer)getAttributeInternal(ACTIVE);
    }

    /**
     * Sets <code>value</code> as the attribute value for Active.
     * @param value value to set the Active
     */
    public void setActive(Integer value) {
        setAttributeInternal(ACTIVE, value);
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
     * Gets the attribute value for ColorChkbox, using the alias name ColorChkbox.
     * @return the ColorChkbox
     */
    public Integer getColorChkbox() {
        return (Integer)getAttributeInternal(COLORCHKBOX);
    }

    /**
     * Sets <code>value</code> as the attribute value for ColorChkbox.
     * @param value value to set the ColorChkbox
     */
    public void setColorChkbox(Integer value) {
        setAttributeInternal(COLORCHKBOX, value);
    }

    /**
     * Gets the attribute value for SizeChkbox, using the alias name SizeChkbox.
     * @return the SizeChkbox
     */
    public Integer getSizeChkbox() {
        return (Integer)getAttributeInternal(SIZECHKBOX);
    }

    /**
     * Sets <code>value</code> as the attribute value for SizeChkbox.
     * @param value value to set the SizeChkbox
     */
    public void setSizeChkbox(Integer value) {
        setAttributeInternal(SIZECHKBOX, value);
    }

    /**
     * Gets the attribute value for AccSize, using the alias name AccSize.
     * @return the AccSize
     */
    public String getAccSize() {
        return (String)getAttributeInternal(ACCSIZE);
    }

    /**
     * Sets <code>value</code> as the attribute value for AccSize.
     * @param value value to set the AccSize
     */
    public void setAccSize(String value) {
        setAttributeInternal(ACCSIZE, value);
    }

    /**
     * Gets the attribute value for MeterConeConversion, using the alias name MeterConeConversion.
     * @return the MeterConeConversion
     */
    public Number getMeterConeConversion() {
        return (Number)getAttributeInternal(METERCONECONVERSION);
    }

    /**
     * Sets <code>value</code> as the attribute value for MeterConeConversion.
     * @param value value to set the MeterConeConversion
     */
    public void setMeterConeConversion(Number value) {
        setAttributeInternal(METERCONECONVERSION, value);
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
        if ((index >= AttributesEnum.firstIndex()) &&
            (index < AttributesEnum.count())) {
            return AttributesEnum.staticValues()[index -
                AttributesEnum.firstIndex()].get(this);
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
        if ((index >= AttributesEnum.firstIndex()) &&
            (index < AttributesEnum.count())) {
            AttributesEnum.staticValues()[index -
                AttributesEnum.firstIndex()].put(this, value);
            return;
        }
        super.setAttrInvokeAccessor(index, value, attrDef);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getXxpmAbAccessoriesColors() {
        return (RowIterator)getAttributeInternal(XXPMABACCESSORIESCOLORS);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getXxpmAbAccessoriesSizes() {
        return (RowIterator)getAttributeInternal(XXPMABACCESSORIESSIZES);
    }

    /**
     * @return the associated entity XxpmArticleBomImpl.
     */
    public XxpmArticleBomImpl getXxpmArticleBom() {
        return (XxpmArticleBomImpl)getAttributeInternal(XXPMARTICLEBOM);
    }

    /**
     * Sets <code>value</code> as the associated entity XxpmArticleBomImpl.
     */
    public void setXxpmArticleBom(XxpmArticleBomImpl value) {
        setAttributeInternal(XXPMARTICLEBOM, value);
    }


    /**
     * @return the associated entity XxpmItemMasterImpl.
     */
    public XxpmItemMasterImpl getXxpmItemMaster() {
        return (XxpmItemMasterImpl)getAttributeInternal(XXPMITEMMASTER);
    }

    /**
     * Sets <code>value</code> as the associated entity XxpmItemMasterImpl.
     */
    public void setXxpmItemMaster(XxpmItemMasterImpl value) {
        setAttributeInternal(XXPMITEMMASTER, value);
    }


    /**
     * @param artBomAccId key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(DBSequence artBomAccId) {
        return new Key(new Object[] { artBomAccId });
    }

    /**
     * Validation method for XxpmArticleBomAccessories.
     */
    public boolean validateXxpmArticleBomAccessories() {
        boolean result = false;
        if (getSegment2() == null || getSubInv() == null ||
            getConsumption() == null)
            result = false;
        else
            result = true;
        return result;
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
        if (operation != DML_DELETE) {
            if (operation == DML_INSERT) {
                this.setCreatedBy((String)ADFContext.getCurrent().getSessionScope().get("userID"));
                this.setCreationDate(new oracle.jbo.domain.Date(new java.sql.Timestamp(Calendar.getInstance().getTimeInMillis())));
            }
            this.setLastUpdatedBy((String)ADFContext.getCurrent().getSessionScope().get("userID"));
            this.setLastUpdateDate(new oracle.jbo.domain.Date(new java.sql.Timestamp(Calendar.getInstance().getTimeInMillis())));
            this.setRespId((String)ADFContext.getCurrent().getSessionScope().get("respID"));
        }
        try {
            List<CustomMap<Object, Object>> values =
                new ArrayList<CustomMap<Object, Object>>();
            values.add(new CustomMap(this.getPostedAttribute(this.getAttributeIndexOf("Consumption")),
                                     this.getConsumption()));
            values.add(new CustomMap(this.getPostedAttribute(this.getAttributeIndexOf("Wastage")),
                                     this.getWastage()));
            ma.changeBomApprovalStatus(values, this.getXxpmArticleBom());
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
                         "There is an error in doDML method of XxpmArticleBomAccessoriesImpl. Class: " + e1.getClass());
            return;
        }
    }
    ModelActions ma = new ModelActions();
}
