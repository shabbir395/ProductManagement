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
// ---    Tue Jan 19 19:25:40 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmYarnBlendImpl extends EntityImpl {
    private static EntityDefImpl mDefinitionObject;

    /**
     * Add attribute defaulting logic in this method.
     * @param attributeList list of attribute names/values to initialize the row
     */
    protected void create(AttributeList attributeList) {
        super.create(attributeList);
    }

    @Override
    public void postChanges(TransactionEvent e) {
        if (this.getPostState() == STATUS_NEW ||
            this.getPostState() == STATUS_MODIFIED) {
            XxpmItemMasterImpl item =
                (XxpmItemMasterImpl)this.getXxpmItemMaster();
            if (item != null) {
                item.postChanges(e);
            }
        }
        super.postChanges(e);
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
                         "There is an error in doDML method of XxpmYarnBlendImpl. Class: " + e1.getClass());
            return;
        }
    }

    ModelActions ma = new ModelActions();


    /**
     * Validation method for Fiber.
     */

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        YbId {
            public Object get(XxpmYarnBlendImpl obj) {
                return obj.getYbId();
            }

            public void put(XxpmYarnBlendImpl obj, Object value) {
                obj.setYbId((DBSequence)value);
            }
        },
        Cotton {
            public Object get(XxpmYarnBlendImpl obj) {
                return obj.getCotton();
            }

            public void put(XxpmYarnBlendImpl obj, Object value) {
                obj.setCotton((String)value);
            }
        },
        CottonRatio {
            public Object get(XxpmYarnBlendImpl obj) {
                return obj.getCottonRatio();
            }

            public void put(XxpmYarnBlendImpl obj, Object value) {
                obj.setCottonRatio((Number)value);
            }
        },
        Fiber {
            public Object get(XxpmYarnBlendImpl obj) {
                return obj.getFiber();
            }

            public void put(XxpmYarnBlendImpl obj, Object value) {
                obj.setFiber((String)value);
            }
        },
        FiberRatio {
            public Object get(XxpmYarnBlendImpl obj) {
                return obj.getFiberRatio();
            }

            public void put(XxpmYarnBlendImpl obj, Object value) {
                obj.setFiberRatio((Number)value);
            }
        },
        ImId {
            public Object get(XxpmYarnBlendImpl obj) {
                return obj.getImId();
            }

            public void put(XxpmYarnBlendImpl obj, Object value) {
                obj.setImId((Number)value);
            }
        },
        XxpmItemMaster {
            public Object get(XxpmYarnBlendImpl obj) {
                return obj.getXxpmItemMaster();
            }

            public void put(XxpmYarnBlendImpl obj, Object value) {
                obj.setXxpmItemMaster((XxpmItemMasterImpl)value);
            }
        },
        XxpmItemMaster1 {
            public Object get(XxpmYarnBlendImpl obj) {
                return obj.getXxpmItemMaster1();
            }

            public void put(XxpmYarnBlendImpl obj, Object value) {
                obj.setXxpmItemMaster1((XxpmItemMasterImpl)value);
            }
        };
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(XxpmYarnBlendImpl object);

        public abstract void put(XxpmYarnBlendImpl object, Object value);

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


    public static final int YBID = AttributesEnum.YbId.index();
    public static final int COTTON = AttributesEnum.Cotton.index();
    public static final int COTTONRATIO = AttributesEnum.CottonRatio.index();
    public static final int FIBER = AttributesEnum.Fiber.index();
    public static final int FIBERRATIO = AttributesEnum.FiberRatio.index();
    public static final int IMID = AttributesEnum.ImId.index();
    public static final int XXPMITEMMASTER =
        AttributesEnum.XxpmItemMaster.index();
    public static final int XXPMITEMMASTER1 =
        AttributesEnum.XxpmItemMaster1.index();

    /**
     * This is the default constructor (do not remove).
     */
    public XxpmYarnBlendImpl() {
    }


    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        if (mDefinitionObject == null) {
            mDefinitionObject =
                    EntityDefImpl.findDefObject("ncl.pm.model.bc.eo.XxpmYarnBlend");
        }
        return mDefinitionObject;
    }

    /**
     * Gets the attribute value for YbId, using the alias name YbId.
     * @return the YbId
     */
    public DBSequence getYbId() {
        return (DBSequence)getAttributeInternal(YBID);
    }

    /**
     * Sets <code>value</code> as the attribute value for YbId.
     * @param value value to set the YbId
     */
    public void setYbId(DBSequence value) {
        setAttributeInternal(YBID, value);
    }

    /**
     * Gets the attribute value for Cotton, using the alias name Cotton.
     * @return the Cotton
     */
    public String getCotton() {
        return (String)getAttributeInternal(COTTON);
    }

    /**
     * Sets <code>value</code> as the attribute value for Cotton.
     * @param value value to set the Cotton
     */
    public void setCotton(String value) {
        setAttributeInternal(COTTON, value);
    }

    /**
     * Gets the attribute value for CottonRatio, using the alias name CottonRatio.
     * @return the CottonRatio
     */
    public Number getCottonRatio() {
        return (Number)getAttributeInternal(COTTONRATIO);
    }

    /**
     * Sets <code>value</code> as the attribute value for CottonRatio.
     * @param value value to set the CottonRatio
     */
    public void setCottonRatio(Number value) {
        setAttributeInternal(COTTONRATIO, value);
    }

    /**
     * Gets the attribute value for Fiber, using the alias name Fiber.
     * @return the Fiber
     */
    public String getFiber() {
        return (String)getAttributeInternal(FIBER);
    }

    /**
     * Sets <code>value</code> as the attribute value for Fiber.
     * @param value value to set the Fiber
     */
    public void setFiber(String value) {
        setAttributeInternal(FIBER, value);
    }

    /**
     * Gets the attribute value for FiberRatio, using the alias name FiberRatio.
     * @return the FiberRatio
     */
    public Number getFiberRatio() {
        return (Number)getAttributeInternal(FIBERRATIO);
    }

    /**
     * Sets <code>value</code> as the attribute value for FiberRatio.
     * @param value value to set the FiberRatio
     */
    public void setFiberRatio(Number value) {
        setAttributeInternal(FIBERRATIO, value);
    }

    /**
     * Gets the attribute value for ImId, using the alias name ImId.
     * @return the ImId
     */
    public Number getImId() {
        return (Number)getAttributeInternal(IMID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ImId.
     * @param value value to set the ImId
     */
    public void setImId(Number value) {
        setAttributeInternal(IMID, value);
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
     * @return the associated entity XxpmItemMasterImpl.
     */
    public XxpmItemMasterImpl getXxpmItemMaster1() {
        return (XxpmItemMasterImpl)getAttributeInternal(XXPMITEMMASTER1);
    }

    /**
     * Sets <code>value</code> as the associated entity XxpmItemMasterImpl.
     */
    public void setXxpmItemMaster1(XxpmItemMasterImpl value) {
        setAttributeInternal(XXPMITEMMASTER1, value);
    }

    /**
     * @param ybId key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(DBSequence ybId) {
        return new Key(new Object[] { ybId });
    }


}
