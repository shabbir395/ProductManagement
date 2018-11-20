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
// ---    Fri Jul 29 18:36:07 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmMadeupDimensionsImpl extends EntityImpl {
    private static EntityDefImpl mDefinitionObject;

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        DimensionId {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionId();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionId((DBSequence)value);
            }
        },
        ArticleId {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getArticleId();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setArticleId((Number)value);
            }
        },
        Parameter {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getParameter();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setParameter((String)value);
            }
        },
        Uom {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getUom();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setUom((String)value);
            }
        },
        DimensionSize1 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize1();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize1((String)value);
            }
        },
        DimensionSize2 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize2();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize2((String)value);
            }
        },
        DimensionSize3 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize3();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize3((String)value);
            }
        },
        DimensionSize4 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize4();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize4((String)value);
            }
        },
        DimensionSize5 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize5();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize5((String)value);
            }
        },
        DimensionSize6 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize6();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize6((String)value);
            }
        },
        DimensionSize7 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize7();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize7((String)value);
            }
        },
        DimensionSize8 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize8();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize8((String)value);
            }
        },
        DimensionSize9 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize9();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize9((String)value);
            }
        },
        DimensionSize10 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize10();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize10((String)value);
            }
        },
        DimensionSize11 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize11();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize11((String)value);
            }
        },
        DimensionSize12 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize12();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize12((String)value);
            }
        },
        DimensionSize13 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize13();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize13((String)value);
            }
        },
        DimensionSize14 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize14();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize14((String)value);
            }
        },
        DimensionSize15 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize15();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize15((String)value);
            }
        },
        DimensionSize16 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize16();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize16((String)value);
            }
        },
        DimensionSize17 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize17();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize17((String)value);
            }
        },
        DimensionSize18 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize18();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize18((String)value);
            }
        },
        DimensionSize19 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize19();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize19((String)value);
            }
        },
        DimensionSize20 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize20();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize20((String)value);
            }
        },
        DimensionSize21 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize21();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize21((String)value);
            }
        },
        DimensionSize22 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize22();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize22((String)value);
            }
        },
        DimensionSize23 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize23();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize23((String)value);
            }
        },
        DimensionSize24 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize24();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize24((String)value);
            }
        },
        DimensionSize25 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize25();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize25((String)value);
            }
        },
        DimensionSize26 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize26();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize26((String)value);
            }
        },
        DimensionSize27 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize27();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize27((String)value);
            }
        },
        DimensionSize28 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize28();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize28((String)value);
            }
        },
        DimensionSize29 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize29();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize29((String)value);
            }
        },
        DimensionSize30 {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getDimensionSize30();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setDimensionSize30((String)value);
            }
        },
        Instructions {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getInstructions();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setInstructions((String)value);
            }
        },
        EbsStatus {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getEbsStatus();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setEbsStatus((Integer)value);
            }
        },
        XxpmMadeupArticles {
            public Object get(XxpmMadeupDimensionsImpl obj) {
                return obj.getXxpmMadeupArticles();
            }

            public void put(XxpmMadeupDimensionsImpl obj, Object value) {
                obj.setXxpmMadeupArticles((XxpmMadeupArticlesImpl)value);
            }
        };
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(XxpmMadeupDimensionsImpl object);

        public abstract void put(XxpmMadeupDimensionsImpl object,
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
    public static final int DIMENSIONID = AttributesEnum.DimensionId.index();
    public static final int ARTICLEID = AttributesEnum.ArticleId.index();
    public static final int PARAMETER = AttributesEnum.Parameter.index();
    public static final int UOM = AttributesEnum.Uom.index();
    public static final int DIMENSIONSIZE1 =
        AttributesEnum.DimensionSize1.index();
    public static final int DIMENSIONSIZE2 =
        AttributesEnum.DimensionSize2.index();
    public static final int DIMENSIONSIZE3 =
        AttributesEnum.DimensionSize3.index();
    public static final int DIMENSIONSIZE4 =
        AttributesEnum.DimensionSize4.index();
    public static final int DIMENSIONSIZE5 =
        AttributesEnum.DimensionSize5.index();
    public static final int DIMENSIONSIZE6 =
        AttributesEnum.DimensionSize6.index();
    public static final int DIMENSIONSIZE7 =
        AttributesEnum.DimensionSize7.index();
    public static final int DIMENSIONSIZE8 =
        AttributesEnum.DimensionSize8.index();
    public static final int DIMENSIONSIZE9 =
        AttributesEnum.DimensionSize9.index();
    public static final int DIMENSIONSIZE10 =
        AttributesEnum.DimensionSize10.index();
    public static final int DIMENSIONSIZE11 =
        AttributesEnum.DimensionSize11.index();
    public static final int DIMENSIONSIZE12 =
        AttributesEnum.DimensionSize12.index();
    public static final int DIMENSIONSIZE13 =
        AttributesEnum.DimensionSize13.index();
    public static final int DIMENSIONSIZE14 =
        AttributesEnum.DimensionSize14.index();
    public static final int DIMENSIONSIZE15 =
        AttributesEnum.DimensionSize15.index();
    public static final int DIMENSIONSIZE16 =
        AttributesEnum.DimensionSize16.index();
    public static final int DIMENSIONSIZE17 =
        AttributesEnum.DimensionSize17.index();
    public static final int DIMENSIONSIZE18 =
        AttributesEnum.DimensionSize18.index();
    public static final int DIMENSIONSIZE19 =
        AttributesEnum.DimensionSize19.index();
    public static final int DIMENSIONSIZE20 =
        AttributesEnum.DimensionSize20.index();
    public static final int DIMENSIONSIZE21 =
        AttributesEnum.DimensionSize21.index();
    public static final int DIMENSIONSIZE22 =
        AttributesEnum.DimensionSize22.index();
    public static final int DIMENSIONSIZE23 =
        AttributesEnum.DimensionSize23.index();
    public static final int DIMENSIONSIZE24 =
        AttributesEnum.DimensionSize24.index();
    public static final int DIMENSIONSIZE25 =
        AttributesEnum.DimensionSize25.index();
    public static final int DIMENSIONSIZE26 =
        AttributesEnum.DimensionSize26.index();
    public static final int DIMENSIONSIZE27 =
        AttributesEnum.DimensionSize27.index();
    public static final int DIMENSIONSIZE28 =
        AttributesEnum.DimensionSize28.index();
    public static final int DIMENSIONSIZE29 =
        AttributesEnum.DimensionSize29.index();
    public static final int DIMENSIONSIZE30 =
        AttributesEnum.DimensionSize30.index();
    public static final int INSTRUCTIONS = AttributesEnum.Instructions.index();
    public static final int EBSSTATUS = AttributesEnum.EbsStatus.index();
    public static final int XXPMMADEUPARTICLES =
        AttributesEnum.XxpmMadeupArticles.index();

    /**
     * This is the default constructor (do not remove).
     */
    public XxpmMadeupDimensionsImpl() {
    }

    /**
     * Gets the attribute value for DimensionId, using the alias name DimensionId.
     * @return the DimensionId
     */
    public DBSequence getDimensionId() {
        return (DBSequence)getAttributeInternal(DIMENSIONID);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionId.
     * @param value value to set the DimensionId
     */
    public void setDimensionId(DBSequence value) {
        setAttributeInternal(DIMENSIONID, value);
    }

    /**
     * Gets the attribute value for ArticleId, using the alias name ArticleId.
     * @return the ArticleId
     */
    public Number getArticleId() {
        return (Number)getAttributeInternal(ARTICLEID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ArticleId.
     * @param value value to set the ArticleId
     */
    public void setArticleId(Number value) {
        setAttributeInternal(ARTICLEID, value);
    }

    /**
     * Gets the attribute value for Parameter, using the alias name Parameter.
     * @return the Parameter
     */
    public String getParameter() {
        return (String)getAttributeInternal(PARAMETER);
    }

    /**
     * Sets <code>value</code> as the attribute value for Parameter.
     * @param value value to set the Parameter
     */
    public void setParameter(String value) {
        setAttributeInternal(PARAMETER, value);
    }

    /**
     * Gets the attribute value for Uom, using the alias name Uom.
     * @return the Uom
     */
    public String getUom() {
        return (String)getAttributeInternal(UOM);
    }

    /**
     * Sets <code>value</code> as the attribute value for Uom.
     * @param value value to set the Uom
     */
    public void setUom(String value) {
        setAttributeInternal(UOM, value);
    }

    /**
     * Gets the attribute value for DimensionSize1, using the alias name DimensionSize1.
     * @return the DimensionSize1
     */
    public String getDimensionSize1() {
        return (String)getAttributeInternal(DIMENSIONSIZE1);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize1.
     * @param value value to set the DimensionSize1
     */
    public void setDimensionSize1(String value) {
        setAttributeInternal(DIMENSIONSIZE1, value);
    }

    /**
     * Gets the attribute value for DimensionSize2, using the alias name DimensionSize2.
     * @return the DimensionSize2
     */
    public String getDimensionSize2() {
        return (String)getAttributeInternal(DIMENSIONSIZE2);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize2.
     * @param value value to set the DimensionSize2
     */
    public void setDimensionSize2(String value) {
        setAttributeInternal(DIMENSIONSIZE2, value);
    }

    /**
     * Gets the attribute value for DimensionSize3, using the alias name DimensionSize3.
     * @return the DimensionSize3
     */
    public String getDimensionSize3() {
        return (String)getAttributeInternal(DIMENSIONSIZE3);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize3.
     * @param value value to set the DimensionSize3
     */
    public void setDimensionSize3(String value) {
        setAttributeInternal(DIMENSIONSIZE3, value);
    }

    /**
     * Gets the attribute value for DimensionSize4, using the alias name DimensionSize4.
     * @return the DimensionSize4
     */
    public String getDimensionSize4() {
        return (String)getAttributeInternal(DIMENSIONSIZE4);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize4.
     * @param value value to set the DimensionSize4
     */
    public void setDimensionSize4(String value) {
        setAttributeInternal(DIMENSIONSIZE4, value);
    }

    /**
     * Gets the attribute value for DimensionSize5, using the alias name DimensionSize5.
     * @return the DimensionSize5
     */
    public String getDimensionSize5() {
        return (String)getAttributeInternal(DIMENSIONSIZE5);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize5.
     * @param value value to set the DimensionSize5
     */
    public void setDimensionSize5(String value) {
        setAttributeInternal(DIMENSIONSIZE5, value);
    }

    /**
     * Gets the attribute value for DimensionSize6, using the alias name DimensionSize6.
     * @return the DimensionSize6
     */
    public String getDimensionSize6() {
        return (String)getAttributeInternal(DIMENSIONSIZE6);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize6.
     * @param value value to set the DimensionSize6
     */
    public void setDimensionSize6(String value) {
        setAttributeInternal(DIMENSIONSIZE6, value);
    }

    /**
     * Gets the attribute value for DimensionSize7, using the alias name DimensionSize7.
     * @return the DimensionSize7
     */
    public String getDimensionSize7() {
        return (String)getAttributeInternal(DIMENSIONSIZE7);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize7.
     * @param value value to set the DimensionSize7
     */
    public void setDimensionSize7(String value) {
        setAttributeInternal(DIMENSIONSIZE7, value);
    }

    /**
     * Gets the attribute value for DimensionSize8, using the alias name DimensionSize8.
     * @return the DimensionSize8
     */
    public String getDimensionSize8() {
        return (String)getAttributeInternal(DIMENSIONSIZE8);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize8.
     * @param value value to set the DimensionSize8
     */
    public void setDimensionSize8(String value) {
        setAttributeInternal(DIMENSIONSIZE8, value);
    }

    /**
     * Gets the attribute value for DimensionSize9, using the alias name DimensionSize9.
     * @return the DimensionSize9
     */
    public String getDimensionSize9() {
        return (String)getAttributeInternal(DIMENSIONSIZE9);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize9.
     * @param value value to set the DimensionSize9
     */
    public void setDimensionSize9(String value) {
        setAttributeInternal(DIMENSIONSIZE9, value);
    }

    /**
     * Gets the attribute value for DimensionSize10, using the alias name DimensionSize10.
     * @return the DimensionSize10
     */
    public String getDimensionSize10() {
        return (String)getAttributeInternal(DIMENSIONSIZE10);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize10.
     * @param value value to set the DimensionSize10
     */
    public void setDimensionSize10(String value) {
        setAttributeInternal(DIMENSIONSIZE10, value);
    }

    /**
     * Gets the attribute value for DimensionSize11, using the alias name DimensionSize11.
     * @return the DimensionSize11
     */
    public String getDimensionSize11() {
        return (String)getAttributeInternal(DIMENSIONSIZE11);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize11.
     * @param value value to set the DimensionSize11
     */
    public void setDimensionSize11(String value) {
        setAttributeInternal(DIMENSIONSIZE11, value);
    }

    /**
     * Gets the attribute value for DimensionSize12, using the alias name DimensionSize12.
     * @return the DimensionSize12
     */
    public String getDimensionSize12() {
        return (String)getAttributeInternal(DIMENSIONSIZE12);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize12.
     * @param value value to set the DimensionSize12
     */
    public void setDimensionSize12(String value) {
        setAttributeInternal(DIMENSIONSIZE12, value);
    }

    /**
     * Gets the attribute value for DimensionSize13, using the alias name DimensionSize13.
     * @return the DimensionSize13
     */
    public String getDimensionSize13() {
        return (String)getAttributeInternal(DIMENSIONSIZE13);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize13.
     * @param value value to set the DimensionSize13
     */
    public void setDimensionSize13(String value) {
        setAttributeInternal(DIMENSIONSIZE13, value);
    }

    /**
     * Gets the attribute value for DimensionSize14, using the alias name DimensionSize14.
     * @return the DimensionSize14
     */
    public String getDimensionSize14() {
        return (String)getAttributeInternal(DIMENSIONSIZE14);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize14.
     * @param value value to set the DimensionSize14
     */
    public void setDimensionSize14(String value) {
        setAttributeInternal(DIMENSIONSIZE14, value);
    }

    /**
     * Gets the attribute value for DimensionSize15, using the alias name DimensionSize15.
     * @return the DimensionSize15
     */
    public String getDimensionSize15() {
        return (String)getAttributeInternal(DIMENSIONSIZE15);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize15.
     * @param value value to set the DimensionSize15
     */
    public void setDimensionSize15(String value) {
        setAttributeInternal(DIMENSIONSIZE15, value);
    }

    /**
     * Gets the attribute value for DimensionSize16, using the alias name DimensionSize16.
     * @return the DimensionSize16
     */
    public String getDimensionSize16() {
        return (String)getAttributeInternal(DIMENSIONSIZE16);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize16.
     * @param value value to set the DimensionSize16
     */
    public void setDimensionSize16(String value) {
        setAttributeInternal(DIMENSIONSIZE16, value);
    }

    /**
     * Gets the attribute value for DimensionSize17, using the alias name DimensionSize17.
     * @return the DimensionSize17
     */
    public String getDimensionSize17() {
        return (String)getAttributeInternal(DIMENSIONSIZE17);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize17.
     * @param value value to set the DimensionSize17
     */
    public void setDimensionSize17(String value) {
        setAttributeInternal(DIMENSIONSIZE17, value);
    }

    /**
     * Gets the attribute value for DimensionSize18, using the alias name DimensionSize18.
     * @return the DimensionSize18
     */
    public String getDimensionSize18() {
        return (String)getAttributeInternal(DIMENSIONSIZE18);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize18.
     * @param value value to set the DimensionSize18
     */
    public void setDimensionSize18(String value) {
        setAttributeInternal(DIMENSIONSIZE18, value);
    }

    /**
     * Gets the attribute value for DimensionSize19, using the alias name DimensionSize19.
     * @return the DimensionSize19
     */
    public String getDimensionSize19() {
        return (String)getAttributeInternal(DIMENSIONSIZE19);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize19.
     * @param value value to set the DimensionSize19
     */
    public void setDimensionSize19(String value) {
        setAttributeInternal(DIMENSIONSIZE19, value);
    }

    /**
     * Gets the attribute value for DimensionSize20, using the alias name DimensionSize20.
     * @return the DimensionSize20
     */
    public String getDimensionSize20() {
        return (String)getAttributeInternal(DIMENSIONSIZE20);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize20.
     * @param value value to set the DimensionSize20
     */
    public void setDimensionSize20(String value) {
        setAttributeInternal(DIMENSIONSIZE20, value);
    }

    /**
     * Gets the attribute value for DimensionSize21, using the alias name DimensionSize21.
     * @return the DimensionSize21
     */
    public String getDimensionSize21() {
        return (String)getAttributeInternal(DIMENSIONSIZE21);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize21.
     * @param value value to set the DimensionSize21
     */
    public void setDimensionSize21(String value) {
        setAttributeInternal(DIMENSIONSIZE21, value);
    }

    /**
     * Gets the attribute value for DimensionSize22, using the alias name DimensionSize22.
     * @return the DimensionSize22
     */
    public String getDimensionSize22() {
        return (String)getAttributeInternal(DIMENSIONSIZE22);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize22.
     * @param value value to set the DimensionSize22
     */
    public void setDimensionSize22(String value) {
        setAttributeInternal(DIMENSIONSIZE22, value);
    }

    /**
     * Gets the attribute value for DimensionSize23, using the alias name DimensionSize23.
     * @return the DimensionSize23
     */
    public String getDimensionSize23() {
        return (String)getAttributeInternal(DIMENSIONSIZE23);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize23.
     * @param value value to set the DimensionSize23
     */
    public void setDimensionSize23(String value) {
        setAttributeInternal(DIMENSIONSIZE23, value);
    }

    /**
     * Gets the attribute value for DimensionSize24, using the alias name DimensionSize24.
     * @return the DimensionSize24
     */
    public String getDimensionSize24() {
        return (String)getAttributeInternal(DIMENSIONSIZE24);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize24.
     * @param value value to set the DimensionSize24
     */
    public void setDimensionSize24(String value) {
        setAttributeInternal(DIMENSIONSIZE24, value);
    }

    /**
     * Gets the attribute value for DimensionSize25, using the alias name DimensionSize25.
     * @return the DimensionSize25
     */
    public String getDimensionSize25() {
        return (String)getAttributeInternal(DIMENSIONSIZE25);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize25.
     * @param value value to set the DimensionSize25
     */
    public void setDimensionSize25(String value) {
        setAttributeInternal(DIMENSIONSIZE25, value);
    }

    /**
     * Gets the attribute value for DimensionSize26, using the alias name DimensionSize26.
     * @return the DimensionSize26
     */
    public String getDimensionSize26() {
        return (String)getAttributeInternal(DIMENSIONSIZE26);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize26.
     * @param value value to set the DimensionSize26
     */
    public void setDimensionSize26(String value) {
        setAttributeInternal(DIMENSIONSIZE26, value);
    }

    /**
     * Gets the attribute value for DimensionSize27, using the alias name DimensionSize27.
     * @return the DimensionSize27
     */
    public String getDimensionSize27() {
        return (String)getAttributeInternal(DIMENSIONSIZE27);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize27.
     * @param value value to set the DimensionSize27
     */
    public void setDimensionSize27(String value) {
        setAttributeInternal(DIMENSIONSIZE27, value);
    }

    /**
     * Gets the attribute value for DimensionSize28, using the alias name DimensionSize28.
     * @return the DimensionSize28
     */
    public String getDimensionSize28() {
        return (String)getAttributeInternal(DIMENSIONSIZE28);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize28.
     * @param value value to set the DimensionSize28
     */
    public void setDimensionSize28(String value) {
        setAttributeInternal(DIMENSIONSIZE28, value);
    }

    /**
     * Gets the attribute value for DimensionSize29, using the alias name DimensionSize29.
     * @return the DimensionSize29
     */
    public String getDimensionSize29() {
        return (String)getAttributeInternal(DIMENSIONSIZE29);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize29.
     * @param value value to set the DimensionSize29
     */
    public void setDimensionSize29(String value) {
        setAttributeInternal(DIMENSIONSIZE29, value);
    }

    /**
     * Gets the attribute value for DimensionSize30, using the alias name DimensionSize30.
     * @return the DimensionSize30
     */
    public String getDimensionSize30() {
        return (String)getAttributeInternal(DIMENSIONSIZE30);
    }

    /**
     * Sets <code>value</code> as the attribute value for DimensionSize30.
     * @param value value to set the DimensionSize30
     */
    public void setDimensionSize30(String value) {
        setAttributeInternal(DIMENSIONSIZE30, value);
    }

    /**
     * Gets the attribute value for Instructions, using the alias name Instructions.
     * @return the Instructions
     */
    public String getInstructions() {
        return (String)getAttributeInternal(INSTRUCTIONS);
    }

    /**
     * Sets <code>value</code> as the attribute value for Instructions.
     * @param value value to set the Instructions
     */
    public void setInstructions(String value) {
        setAttributeInternal(INSTRUCTIONS, value);
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
     * @return the associated entity XxpmMadeupArticlesImpl.
     */
    public XxpmMadeupArticlesImpl getXxpmMadeupArticles() {
        return (XxpmMadeupArticlesImpl)getAttributeInternal(XXPMMADEUPARTICLES);
    }

    /**
     * Sets <code>value</code> as the associated entity XxpmMadeupArticlesImpl.
     */
    public void setXxpmMadeupArticles(XxpmMadeupArticlesImpl value) {
        setAttributeInternal(XXPMMADEUPARTICLES, value);
    }

    /**
     * @param dimensionId key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(DBSequence dimensionId) {
        return new Key(new Object[] { dimensionId });
    }

    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        if (mDefinitionObject == null) {
            mDefinitionObject =
                    EntityDefImpl.findDefObject("ncl.pm.model.bc.eo.XxpmMadeupDimensions");
        }
        return mDefinitionObject;
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
                         "There is an error in doDML method of XxpmMadeupDimensionsImpl. Class: " + e1.getClass());
            return;
        }
    }
    ModelActions ma = new ModelActions();
}