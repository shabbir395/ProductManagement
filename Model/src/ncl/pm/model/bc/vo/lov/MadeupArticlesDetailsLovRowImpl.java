package ncl.pm.model.bc.vo.lov;

import oracle.jbo.domain.Number;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.ViewRowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Mon Aug 22 19:31:51 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class MadeupArticlesDetailsLovRowImpl extends ViewRowImpl {
    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        ArticleId {
            public Object get(MadeupArticlesDetailsLovRowImpl obj) {
                return obj.getArticleId();
            }

            public void put(MadeupArticlesDetailsLovRowImpl obj,
                            Object value) {
                obj.setArticleId((Integer)value);
            }
        }
        ,
        ArticleName {
            public Object get(MadeupArticlesDetailsLovRowImpl obj) {
                return obj.getArticleName();
            }

            public void put(MadeupArticlesDetailsLovRowImpl obj,
                            Object value) {
                obj.setArticleName((String)value);
            }
        }
        ,
        BomGroup {
            public Object get(MadeupArticlesDetailsLovRowImpl obj) {
                return obj.getBomGroup();
            }

            public void put(MadeupArticlesDetailsLovRowImpl obj,
                            Object value) {
                obj.setBomGroup((String)value);
            }
        }
        ,
        ProgId {
            public Object get(MadeupArticlesDetailsLovRowImpl obj) {
                return obj.getProgId();
            }

            public void put(MadeupArticlesDetailsLovRowImpl obj,
                            Object value) {
                obj.setProgId((Integer)value);
            }
        }
        ;
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(MadeupArticlesDetailsLovRowImpl object);

        public abstract void put(MadeupArticlesDetailsLovRowImpl object,
                                 Object value);

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


    public static final int ARTICLEID = AttributesEnum.ArticleId.index();
    public static final int ARTICLENAME = AttributesEnum.ArticleName.index();
    public static final int BOMGROUP = AttributesEnum.BomGroup.index();
    public static final int PROGID = AttributesEnum.ProgId.index();

    /**
     * This is the default constructor (do not remove).
     */
    public MadeupArticlesDetailsLovRowImpl() {
    }

    /**
     * Gets the attribute value for the calculated attribute ArticleId.
     * @return the ArticleId
     */
    public Integer getArticleId() {
        return (Integer) getAttributeInternal(ARTICLEID);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ArticleId.
     * @param value value to set the  ArticleId
     */
    public void setArticleId(Integer value) {
        setAttributeInternal(ARTICLEID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute ArticleNameMaster.
     * @return the ArticleNameMaster
     */
    public String getArticleName() {
        return (String) getAttributeInternal(ARTICLENAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ArticleNameMaster.
     * @param value value to set the  ArticleNameMaster
     */
    public void setArticleName(String value) {
        setAttributeInternal(ARTICLENAME, value);
    }

    /**
     * Gets the attribute value for the calculated attribute BomGroup.
     * @return the BomGroup
     */
    public String getBomGroup() {
        return (String) getAttributeInternal(BOMGROUP);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute BomGroup.
     * @param value value to set the  BomGroup
     */
    public void setBomGroup(String value) {
        setAttributeInternal(BOMGROUP, value);
    }

    /**
     * Gets the attribute value for the calculated attribute ProgId.
     * @return the ProgId
     */
    public Integer getProgId() {
        return (Integer) getAttributeInternal(PROGID);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute ProgId.
     * @param value value to set the  ProgId
     */
    public void setProgId(Integer value) {
        setAttributeInternal(PROGID, value);
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
