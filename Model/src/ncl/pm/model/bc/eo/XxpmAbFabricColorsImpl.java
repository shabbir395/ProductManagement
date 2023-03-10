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
import oracle.jbo.domain.DBSequence;
import oracle.jbo.domain.Date;
import oracle.jbo.domain.Number;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityDefImpl;
import oracle.jbo.server.EntityImpl;
import oracle.jbo.server.TransactionEvent;

// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Mon Aug 22 01:35:00 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmAbFabricColorsImpl extends EntityImpl {
    private static EntityDefImpl mDefinitionObject;

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        AbFabColorId {
            public Object get(XxpmAbFabricColorsImpl obj) {
                return obj.getAbFabColorId();
            }

            public void put(XxpmAbFabricColorsImpl obj, Object value) {
                obj.setAbFabColorId((DBSequence)value);
            }
        },
        ArtBomFabId {
            public Object get(XxpmAbFabricColorsImpl obj) {
                return obj.getArtBomFabId();
            }

            public void put(XxpmAbFabricColorsImpl obj, Object value) {
                obj.setArtBomFabId((Number)value);
            }
        },
        ColorCode {
            public Object get(XxpmAbFabricColorsImpl obj) {
                return obj.getColorCode();
            }

            public void put(XxpmAbFabricColorsImpl obj, Object value) {
                obj.setColorCode((String)value);
            }
        },
        Selected {
            public Object get(XxpmAbFabricColorsImpl obj) {
                return obj.getSelected();
            }

            public void put(XxpmAbFabricColorsImpl obj, Object value) {
                obj.setSelected((Integer)value);
            }
        },
        CreatedBy {
            public Object get(XxpmAbFabricColorsImpl obj) {
                return obj.getCreatedBy();
            }

            public void put(XxpmAbFabricColorsImpl obj, Object value) {
                obj.setCreatedBy((String)value);
            }
        },
        CreationDate {
            public Object get(XxpmAbFabricColorsImpl obj) {
                return obj.getCreationDate();
            }

            public void put(XxpmAbFabricColorsImpl obj, Object value) {
                obj.setCreationDate((Date)value);
            }
        },
        LastUpdatedBy {
            public Object get(XxpmAbFabricColorsImpl obj) {
                return obj.getLastUpdatedBy();
            }

            public void put(XxpmAbFabricColorsImpl obj, Object value) {
                obj.setLastUpdatedBy((String)value);
            }
        },
        LastUpdateDate {
            public Object get(XxpmAbFabricColorsImpl obj) {
                return obj.getLastUpdateDate();
            }

            public void put(XxpmAbFabricColorsImpl obj, Object value) {
                obj.setLastUpdateDate((Date)value);
            }
        },
        RespId {
            public Object get(XxpmAbFabricColorsImpl obj) {
                return obj.getRespId();
            }

            public void put(XxpmAbFabricColorsImpl obj, Object value) {
                obj.setRespId((String)value);
            }
        },
        XxpmArticleBomFabric {
            public Object get(XxpmAbFabricColorsImpl obj) {
                return obj.getXxpmArticleBomFabric();
            }

            public void put(XxpmAbFabricColorsImpl obj, Object value) {
                obj.setXxpmArticleBomFabric((XxpmArticleBomFabricImpl)value);
            }
        };
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(XxpmAbFabricColorsImpl object);

        public abstract void put(XxpmAbFabricColorsImpl object, Object value);

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


    public static final int ABFABCOLORID = AttributesEnum.AbFabColorId.index();
    public static final int ARTBOMFABID = AttributesEnum.ArtBomFabId.index();
    public static final int COLORCODE = AttributesEnum.ColorCode.index();
    public static final int SELECTED = AttributesEnum.Selected.index();
    public static final int CREATEDBY = AttributesEnum.CreatedBy.index();
    public static final int CREATIONDATE = AttributesEnum.CreationDate.index();
    public static final int LASTUPDATEDBY =
        AttributesEnum.LastUpdatedBy.index();
    public static final int LASTUPDATEDATE =
        AttributesEnum.LastUpdateDate.index();
    public static final int RESPID = AttributesEnum.RespId.index();
    public static final int XXPMARTICLEBOMFABRIC =
        AttributesEnum.XxpmArticleBomFabric.index();

    /**
     * This is the default constructor (do not remove).
     */
    public XxpmAbFabricColorsImpl() {
    }


    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        if (mDefinitionObject == null) {
            mDefinitionObject =
                    EntityDefImpl.findDefObject("ncl.pm.model.bc.eo.XxpmAbFabricColors");
        }
        return mDefinitionObject;
    }

    /**
     * Gets the attribute value for AbFabColorId, using the alias name AbFabColorId.
     * @return the AbFabColorId
     */
    public DBSequence getAbFabColorId() {
        return (DBSequence)getAttributeInternal(ABFABCOLORID);
    }

    /**
     * Sets <code>value</code> as the attribute value for AbFabColorId.
     * @param value value to set the AbFabColorId
     */
    public void setAbFabColorId(DBSequence value) {
        setAttributeInternal(ABFABCOLORID, value);
    }

    /**
     * Gets the attribute value for ArtBomFabId, using the alias name ArtBomFabId.
     * @return the ArtBomFabId
     */
    public Number getArtBomFabId() {
        return (Number)getAttributeInternal(ARTBOMFABID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ArtBomFabId.
     * @param value value to set the ArtBomFabId
     */
    public void setArtBomFabId(Number value) {
        setAttributeInternal(ARTBOMFABID, value);
    }


    /**
     * Gets the attribute value for Selected, using the alias name Selected.
     * @return the Selected
     */
    public Integer getSelected() {
        return (Integer)getAttributeInternal(SELECTED);
    }

    /**
     * Sets <code>value</code> as the attribute value for Selected.
     * @param value value to set the Selected
     */
    public void setSelected(Integer value) {
        setAttributeInternal(SELECTED, value);
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
     * Gets the attribute value for ColorCode, using the alias name ColorCode.
     * @return the ColorCode
     */
    public String getColorCode() {
        return (String)getAttributeInternal(COLORCODE);
    }

    /**
     * Sets <code>value</code> as the attribute value for ColorCode.
     * @param value value to set the ColorCode
     */
    public void setColorCode(String value) {
        setAttributeInternal(COLORCODE, value);
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
     * @return the associated entity oracle.jbo.server.EntityImpl.
     */
    public XxpmArticleBomFabricImpl getXxpmArticleBomFabric() {
        return (XxpmArticleBomFabricImpl)getAttributeInternal(XXPMARTICLEBOMFABRIC);
    }

    /**
     * Sets <code>value</code> as the associated entity oracle.jbo.server.EntityImpl.
     */
    public void setXxpmArticleBomFabric(XxpmArticleBomFabricImpl value) {
        setAttributeInternal(XXPMARTICLEBOMFABRIC, value);
    }


    /**
     * @param abFabColorId key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(DBSequence abFabColorId) {
        return new Key(new Object[] { abFabColorId });
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
            values.add(new CustomMap(this.getPostedAttribute(this.getAttributeIndexOf("Selected")),
                                     this.getSelected()));
            ma.changeBomApprovalStatus(values,
                                       this.getXxpmArticleBomFabric().getXxpmArticleBom());
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
                         "There is an error in doDML method of XxpmAbFabricColorsImpl. Class: " + e1.getClass());
            return;
        }
    }
    ModelActions ma = new ModelActions();
}
