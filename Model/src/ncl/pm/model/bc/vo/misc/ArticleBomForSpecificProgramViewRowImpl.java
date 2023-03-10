package ncl.pm.model.bc.vo.misc;

import oracle.jbo.Row;
import oracle.jbo.RowSet;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.ViewRowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sun Dec 16 01:28:55 PKT 2018
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class ArticleBomForSpecificProgramViewRowImpl extends ViewRowImpl {
    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        ProgId {
            public Object get(ArticleBomForSpecificProgramViewRowImpl obj) {
                return obj.getProgId();
            }

            public void put(ArticleBomForSpecificProgramViewRowImpl obj,
                            Object value) {
                obj.setProgId((Integer)value);
            }
        },
        ArticleId {
            public Object get(ArticleBomForSpecificProgramViewRowImpl obj) {
                return obj.getArticleId();
            }

            public void put(ArticleBomForSpecificProgramViewRowImpl obj,
                            Object value) {
                obj.setArticleId((Integer)value);
            }
        },
        ArticleName {
            public Object get(ArticleBomForSpecificProgramViewRowImpl obj) {
                return obj.getArticleName();
            }

            public void put(ArticleBomForSpecificProgramViewRowImpl obj,
                            Object value) {
                obj.setArticleName((String)value);
            }
        },
        ArticleBomVersion {
            public Object get(ArticleBomForSpecificProgramViewRowImpl obj) {
                return obj.getArticleBomVersion();
            }

            public void put(ArticleBomForSpecificProgramViewRowImpl obj,
                            Object value) {
                obj.setArticleBomVersion((Integer)value);
            }
        },
        ArticleBomVersionTrans {
            public Object get(ArticleBomForSpecificProgramViewRowImpl obj) {
                return obj.getArticleBomVersionTrans();
            }

            public void put(ArticleBomForSpecificProgramViewRowImpl obj,
                            Object value) {
                obj.setArticleBomVersionTrans((Integer)value);
            }
        },
        ArticleBomVersionsLov {
            public Object get(ArticleBomForSpecificProgramViewRowImpl obj) {
                return obj.getArticleBomVersionsLov();
            }

            public void put(ArticleBomForSpecificProgramViewRowImpl obj,
                            Object value) {
                obj.setAttributeInternal(index(), value);
            }
        };
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(ArticleBomForSpecificProgramViewRowImpl object);

        public abstract void put(ArticleBomForSpecificProgramViewRowImpl object,
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


    public static final int PROGID = AttributesEnum.ProgId.index();
    public static final int ARTICLEID = AttributesEnum.ArticleId.index();
    public static final int ARTICLENAME = AttributesEnum.ArticleName.index();
    public static final int ARTICLEBOMVERSION =
        AttributesEnum.ArticleBomVersion.index();
    public static final int ARTICLEBOMVERSIONTRANS =
        AttributesEnum.ArticleBomVersionTrans.index();
    public static final int ARTICLEBOMVERSIONSLOV =
        AttributesEnum.ArticleBomVersionsLov.index();

    /**
     * This is the default constructor (do not remove).
     */
    public ArticleBomForSpecificProgramViewRowImpl() {
    }

    /**
     * Gets the attribute value for the calculated attribute ProgId.
     * @return the ProgId
     */
    public Integer getProgId() {
        return (Integer)getAttributeInternal(PROGID);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ProgId.
     * @param value value to set the  ProgId
     */
    public void setProgId(Integer value) {
        setAttributeInternal(PROGID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute ArticleId.
     * @return the ArticleId
     */
    public Integer getArticleId() {
        return (Integer)getAttributeInternal(ARTICLEID);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ArticleId.
     * @param value value to set the  ArticleId
     */
    public void setArticleId(Integer value) {
        setAttributeInternal(ARTICLEID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute ArticleName.
     * @return the ArticleName
     */
    public String getArticleName() {
        return (String)getAttributeInternal(ARTICLENAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ArticleName.
     * @param value value to set the  ArticleName
     */
    public void setArticleName(String value) {
        setAttributeInternal(ARTICLENAME, value);
    }

    /**
     * Gets the attribute value for the calculated attribute ArticleBomVersion.
     * @return the ArticleBomVersion
     */
    public Integer getArticleBomVersion() {
        return (Integer)getAttributeInternal(ARTICLEBOMVERSION);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ArticleBomVersion.
     * @param value value to set the  ArticleBomVersion
     */
    public void setArticleBomVersion(Integer value) {
        setAttributeInternal(ARTICLEBOMVERSION, value);
    }


    /**
     * Gets the attribute value for the calculated attribute ArticleBomVersionTrans.
     * @return the ArticleBomVersionTrans
     */
    public Integer getArticleBomVersionTrans() {
        return (Integer)getAttributeInternal(ARTICLEBOMVERSIONTRANS);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ArticleBomVersionTrans.
     * @param value value to set the  ArticleBomVersionTrans
     */
    public void setArticleBomVersionTrans(Integer value) {
        setAttributeInternal(ARTICLEBOMVERSIONTRANS, value);
    }

    /**
     * Gets the view accessor <code>RowSet</code> ArticleBomVersionsLov.
     */
    public RowSet getArticleBomVersionsLov() {
        return (RowSet)getAttributeInternal(ARTICLEBOMVERSIONSLOV);
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

    public Integer defaultVersion() {
        Row row = this.getArticleBomVersionsLov().last();
        if (row != null) {
            return Integer.valueOf(row.getAttribute("ArtBomVersion").toString());
        }
        return null;
    }
}
