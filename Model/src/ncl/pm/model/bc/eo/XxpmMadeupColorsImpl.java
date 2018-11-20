package ncl.pm.model.bc.eo;

import ncl.pm.model.bc.view.xxpmJC.ModelActions;

import oracle.jbo.AttributeList;
import oracle.jbo.DMLConstraintException;
import oracle.jbo.DMLException;
import oracle.jbo.Key;
import oracle.jbo.RowInconsistentException;
import oracle.jbo.domain.DBSequence;
import oracle.jbo.domain.Number;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityDefImpl;
import oracle.jbo.server.EntityImpl;
import oracle.jbo.server.TransactionEvent;


// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Jul 29 18:33:05 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmMadeupColorsImpl extends EntityImpl {
    private static EntityDefImpl mDefinitionObject;

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        ColorId {
            public Object get(XxpmMadeupColorsImpl obj) {
                return obj.getColorId();
            }

            public void put(XxpmMadeupColorsImpl obj, Object value) {
                obj.setColorId((DBSequence)value);
            }
        },
        ProgId {
            public Object get(XxpmMadeupColorsImpl obj) {
                return obj.getProgId();
            }

            public void put(XxpmMadeupColorsImpl obj, Object value) {
                obj.setProgId((Number)value);
            }
        },
        ColorCategory {
            public Object get(XxpmMadeupColorsImpl obj) {
                return obj.getColorCategory();
            }

            public void put(XxpmMadeupColorsImpl obj, Object value) {
                obj.setColorCategory((String)value);
            }
        },
        ColorCode {
            public Object get(XxpmMadeupColorsImpl obj) {
                return obj.getColorCode();
            }

            public void put(XxpmMadeupColorsImpl obj, Object value) {
                obj.setColorCode((String)value);
            }
        },
        EbsStatus {
            public Object get(XxpmMadeupColorsImpl obj) {
                return obj.getEbsStatus();
            }

            public void put(XxpmMadeupColorsImpl obj, Object value) {
                obj.setEbsStatus((Integer)value);
            }
        },
        ColorCode2 {
            public Object get(XxpmMadeupColorsImpl obj) {
                return obj.getColorCode2();
            }

            public void put(XxpmMadeupColorsImpl obj, Object value) {
                obj.setColorCode2((String)value);
            }
        },
        ColorCode3 {
            public Object get(XxpmMadeupColorsImpl obj) {
                return obj.getColorCode3();
            }

            public void put(XxpmMadeupColorsImpl obj, Object value) {
                obj.setColorCode3((String)value);
            }
        },
        ColorCode4 {
            public Object get(XxpmMadeupColorsImpl obj) {
                return obj.getColorCode4();
            }

            public void put(XxpmMadeupColorsImpl obj, Object value) {
                obj.setColorCode4((String)value);
            }
        },
        ColorCode5 {
            public Object get(XxpmMadeupColorsImpl obj) {
                return obj.getColorCode5();
            }

            public void put(XxpmMadeupColorsImpl obj, Object value) {
                obj.setColorCode5((String)value);
            }
        },
        ColorCode6 {
            public Object get(XxpmMadeupColorsImpl obj) {
                return obj.getColorCode6();
            }

            public void put(XxpmMadeupColorsImpl obj, Object value) {
                obj.setColorCode6((String)value);
            }
        },
        ColorCode7 {
            public Object get(XxpmMadeupColorsImpl obj) {
                return obj.getColorCode7();
            }

            public void put(XxpmMadeupColorsImpl obj, Object value) {
                obj.setColorCode7((String)value);
            }
        },
        ColorCode8 {
            public Object get(XxpmMadeupColorsImpl obj) {
                return obj.getColorCode8();
            }

            public void put(XxpmMadeupColorsImpl obj, Object value) {
                obj.setColorCode8((String)value);
            }
        },
        XxpmMadeupPrograms {
            public Object get(XxpmMadeupColorsImpl obj) {
                return obj.getXxpmMadeupPrograms();
            }

            public void put(XxpmMadeupColorsImpl obj, Object value) {
                obj.setXxpmMadeupPrograms((XxpmMadeupProgramsImpl)value);
            }
        };
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(XxpmMadeupColorsImpl object);

        public abstract void put(XxpmMadeupColorsImpl object, Object value);

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

    public static final int COLORID = AttributesEnum.ColorId.index();
    public static final int PROGID = AttributesEnum.ProgId.index();
    public static final int COLORCATEGORY =
        AttributesEnum.ColorCategory.index();
    public static final int COLORCODE = AttributesEnum.ColorCode.index();
    public static final int EBSSTATUS = AttributesEnum.EbsStatus.index();
    public static final int COLORCODE2 = AttributesEnum.ColorCode2.index();
    public static final int COLORCODE3 = AttributesEnum.ColorCode3.index();
    public static final int COLORCODE4 = AttributesEnum.ColorCode4.index();
    public static final int COLORCODE5 = AttributesEnum.ColorCode5.index();
    public static final int COLORCODE6 = AttributesEnum.ColorCode6.index();
    public static final int COLORCODE7 = AttributesEnum.ColorCode7.index();
    public static final int COLORCODE8 = AttributesEnum.ColorCode8.index();
    public static final int XXPMMADEUPPROGRAMS =
        AttributesEnum.XxpmMadeupPrograms.index();

    /**
     * This is the default constructor (do not remove).
     */
    public XxpmMadeupColorsImpl() {
    }

    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        if (mDefinitionObject == null) {
            mDefinitionObject =
                    EntityDefImpl.findDefObject("ncl.pm.model.bc.eo.XxpmMadeupColors");
        }
        return mDefinitionObject;
    }

    /**
     * Gets the attribute value for ColorId, using the alias name ColorId.
     * @return the ColorId
     */
    public DBSequence getColorId() {
        return (DBSequence)getAttributeInternal(COLORID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ColorId.
     * @param value value to set the ColorId
     */
    public void setColorId(DBSequence value) {
        setAttributeInternal(COLORID, value);
    }

    /**
     * Gets the attribute value for ProgId, using the alias name ProgId.
     * @return the ProgId
     */
    public Number getProgId() {
        return (Number)getAttributeInternal(PROGID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ProgId.
     * @param value value to set the ProgId
     */
    public void setProgId(Number value) {
        setAttributeInternal(PROGID, value);
    }

    /**
     * Gets the attribute value for ColorCategory, using the alias name ColorCategory.
     * @return the ColorCategory
     */
    public String getColorCategory() {
        return (String)getAttributeInternal(COLORCATEGORY);
    }

    /**
     * Sets <code>value</code> as the attribute value for ColorCategory.
     * @param value value to set the ColorCategory
     */
    public void setColorCategory(String value) {
        setAttributeInternal(COLORCATEGORY, value);
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
     * Gets the attribute value for ColorCode2, using the alias name ColorCode2.
     * @return the ColorCode2
     */
    public String getColorCode2() {
        return (String)getAttributeInternal(COLORCODE2);
    }

    /**
     * Sets <code>value</code> as the attribute value for ColorCode2.
     * @param value value to set the ColorCode2
     */
    public void setColorCode2(String value) {
        setAttributeInternal(COLORCODE2, value);
    }

    /**
     * Gets the attribute value for ColorCode3, using the alias name ColorCode3.
     * @return the ColorCode3
     */
    public String getColorCode3() {
        return (String)getAttributeInternal(COLORCODE3);
    }

    /**
     * Sets <code>value</code> as the attribute value for ColorCode3.
     * @param value value to set the ColorCode3
     */
    public void setColorCode3(String value) {
        setAttributeInternal(COLORCODE3, value);
    }

    /**
     * Gets the attribute value for ColorCode4, using the alias name ColorCode4.
     * @return the ColorCode4
     */
    public String getColorCode4() {
        return (String)getAttributeInternal(COLORCODE4);
    }

    /**
     * Sets <code>value</code> as the attribute value for ColorCode4.
     * @param value value to set the ColorCode4
     */
    public void setColorCode4(String value) {
        setAttributeInternal(COLORCODE4, value);
    }

    /**
     * Gets the attribute value for ColorCode5, using the alias name ColorCode5.
     * @return the ColorCode5
     */
    public String getColorCode5() {
        return (String)getAttributeInternal(COLORCODE5);
    }

    /**
     * Sets <code>value</code> as the attribute value for ColorCode5.
     * @param value value to set the ColorCode5
     */
    public void setColorCode5(String value) {
        setAttributeInternal(COLORCODE5, value);
    }

    /**
     * Gets the attribute value for ColorCode6, using the alias name ColorCode6.
     * @return the ColorCode6
     */
    public String getColorCode6() {
        return (String)getAttributeInternal(COLORCODE6);
    }

    /**
     * Sets <code>value</code> as the attribute value for ColorCode6.
     * @param value value to set the ColorCode6
     */
    public void setColorCode6(String value) {
        setAttributeInternal(COLORCODE6, value);
    }

    /**
     * Gets the attribute value for ColorCode7, using the alias name ColorCode7.
     * @return the ColorCode7
     */
    public String getColorCode7() {
        return (String)getAttributeInternal(COLORCODE7);
    }

    /**
     * Sets <code>value</code> as the attribute value for ColorCode7.
     * @param value value to set the ColorCode7
     */
    public void setColorCode7(String value) {
        setAttributeInternal(COLORCODE7, value);
    }

    /**
     * Gets the attribute value for ColorCode8, using the alias name ColorCode8.
     * @return the ColorCode8
     */
    public String getColorCode8() {
        return (String)getAttributeInternal(COLORCODE8);
    }

    /**
     * Sets <code>value</code> as the attribute value for ColorCode8.
     * @param value value to set the ColorCode8
     */
    public void setColorCode8(String value) {
        setAttributeInternal(COLORCODE8, value);
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
     * @param colorId key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(DBSequence colorId) {
        return new Key(new Object[] { colorId });
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

    @Override
    public void postChanges(TransactionEvent e) {
        if (this.getPostState() == STATUS_NEW ||
            this.getPostState() == STATUS_MODIFIED) {
            XxpmMadeupProgramsImpl program = this.getXxpmMadeupPrograms();
            if (program != null) {
                program.postChanges(e);
            }
        }
        super.postChanges(e);
    }

    /**
     * Custom DML update/insert/delete logic here.
     * @param operation the operation type
     * @param e the transaction event
     */
    protected void doDML(int operation, TransactionEvent e) {
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
                         "There is an error in doDML method of XxpmMadeupColorsImpl. Class: " + e1.getClass());
            return;
        }
    }
    ModelActions ma = new ModelActions();
}