package ncl.pm.view.beans;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import java.text.SimpleDateFormat;

import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;

import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.el.ValueExpression;

import javax.faces.application.Application;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.component.UIViewRoot;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import javax.faces.event.ValueChangeEvent;
import javax.faces.validator.ValidatorException;

import java.util.logging.Logger;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCIteratorBinding;
import oracle.adf.share.ADFContext;
import oracle.adf.view.rich.component.rich.data.RichTable;
import oracle.adf.view.rich.component.rich.input.RichInputListOfValues;
import oracle.adf.view.rich.component.rich.input.RichInputText;
import oracle.adf.view.rich.component.rich.input.RichSelectOneChoice;
import oracle.adf.view.rich.component.rich.layout.RichGridCell;
import oracle.adf.view.rich.component.rich.layout.RichPanelFormLayout;
import oracle.adf.view.rich.component.rich.layout.RichPanelTabbed;
import oracle.adf.view.rich.component.rich.layout.RichShowDetailItem;
import oracle.adf.view.rich.component.rich.nav.RichCommandToolbarButton;
import oracle.adf.view.rich.component.rich.output.RichOutputText;
import oracle.adf.view.rich.context.AdfFacesContext;
import oracle.adf.view.rich.event.DialogEvent;
import oracle.adf.view.rich.event.PopupFetchEvent;
import oracle.adf.view.rich.util.ResetUtils;

import oracle.binding.AttributeBinding;
import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

import oracle.jbo.JboException;
import oracle.jbo.Row;
import oracle.jbo.RowSet;
import oracle.jbo.RowSetIterator;
import oracle.jbo.ValidationException;
import oracle.jbo.ViewObject;
import oracle.jbo.server.RowQualifier;
import oracle.jbo.server.ViewObjectImpl;
import oracle.jbo.uicli.binding.JUCtrlHierNodeBinding;
import oracle.jbo.uicli.binding.JUCtrlListBinding;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.myfaces.trinidad.event.DisclosureEvent;
import org.apache.myfaces.trinidad.model.CollectionModel;
import org.apache.myfaces.trinidad.model.RowKeySet;
import org.apache.myfaces.trinidad.model.RowKeySetImpl;
import org.apache.myfaces.trinidad.model.UploadedFile;
import org.apache.myfaces.trinidad.render.ExtendedRenderKitService;
import org.apache.myfaces.trinidad.util.Service;


public class ViewActions {
    Logger logger = Logger.getLogger(this.getClass().getName());
    private RichSelectOneChoice denier1;
    private RichSelectOneChoice denier2;
    private RichCommandToolbarButton spnAddButtonProp;
    private RichTable ybTable;
    private RichTable ytTable;
    private RichSelectOneChoice yarnPlies;
    private RichSelectOneChoice yarnType;
    private RichSelectOneChoice measuringSystem;
    private RichSelectOneChoice yarnStatus;
    private RichSelectOneChoice yarnOutput;
    private RichSelectOneChoice cotton;
    private RichSelectOneChoice fiber;
    private RichSelectOneChoice fancyYarnType;
    private RichSelectOneChoice slubCode;
    private RichInputText draft1;
    private RichInputText draft2;
    private RichSelectOneChoice fancyYarnType2;
    private RichInputText fytRatio2;
    private RichOutputText ytResultant;
    private RichInputText fabricBlendResultant;
    private RichInputText warpResultantSum;
    private RichInputText weftResultantSum;
    private RichSelectOneChoice wvWeave;
    private RichSelectOneChoice wvDirection;
    private RichSelectOneChoice wvDesign;
    private RichSelectOneChoice wvSize;
    private RichSelectOneChoice wvInsertion;
    private RichSelectOneChoice wvSelvedgeType;
    private RichInputText fytRatio;
    private RichOutputText ybResultant;
    private RichInputText cottonRatio;
    private RichInputText fiberRatio;
    private RichInputListOfValues searchLovSpn;
    private RichInputListOfValues searchLovWv;
    private RichInputListOfValues searchLovDy;
    private RichInputListOfValues searchLovPrn;
    private RichInputListOfValues searchLovAcc;
    private RichInputListOfValues searchLovProg;
    private RichShowDetailItem dimensionsTab;
    private RichPanelTabbed programPanelTabbed;
    private RichSelectOneChoice dyFinish;
    private RichSelectOneChoice dyCategory;
    private RichInputListOfValues dyFinishWidth;
    private RichInputListOfValues dyColor;
    private RichInputListOfValues prnFinishWidth;
    private RichInputListOfValues prnColor;
    private RichSelectOneChoice prnFinishType;
    private RichSelectOneChoice prnCategory;
    private RichInputText yarnCount;
    private RichPanelFormLayout spnMainPanelFormLayout;
    private RichTable madeupCombTable;
    private RichSelectOneChoice accBgBtnMaterial;
    private RichSelectOneChoice accBgBtnColor;
    private RichSelectOneChoice accBgZipColor;
    private RichSelectOneChoice accBgZipMaterial;
    private RichSelectOneChoice accBgBagMaterial;
    private RichSelectOneChoice accBgPrintType;
    private RichSelectOneChoice accBgBagType;
    private RichSelectOneChoice accInsInsertType;
    private RichSelectOneChoice accInsMaterialGsm;
    private RichSelectOneChoice accInsPaperType;
    private RichSelectOneChoice accInsLamination;
    private RichSelectOneChoice accInsVarnish;
    private RichSelectOneChoice accInsFixType;
    private RichSelectOneChoice accStfStifnerType;
    private RichSelectOneChoice accStfPly;
    private RichSelectOneChoice accStfMaterial;
    private RichSelectOneChoice accCrtCartonType;
    private RichSelectOneChoice accCrtPrintedType;
    private RichSelectOneChoice accCrtOutUom;
    private RichSelectOneChoice accCrtInnUom;
    private RichSelectOneChoice accCrtPly;
    private RichSelectOneChoice accCrtMaterial;
    private RichSelectOneChoice accCrtPrintType;
    private RichSelectOneChoice accLblLableType;
    private RichSelectOneChoice accLblFoldingType;
    private RichSelectOneChoice accLblMaterial;
    private RichSelectOneChoice accZipMaterialType;
    private RichSelectOneChoice accZipTeethType;
    private RichSelectOneChoice accZipUom;
    private RichSelectOneChoice accThrThreadUsage;
    private RichSelectOneChoice accThrThreadType;
    private RichSelectOneChoice accThrMaterial;
    private RichSelectOneChoice accLengthUom;
    private RichSelectOneChoice accElsElasticType;
    private RichSelectOneChoice accCtcItemType;
    private RichSelectOneChoice accCtcMaterial;
    private RichSelectOneChoice accFusMaterial;
    private RichSelectOneChoice accNwvMateria;
    private RichSelectOneChoice accWdMaterial;
    private RichSelectOneChoice accBfMaterial;
    private RichSelectOneChoice accBfMaterialType;
    private RichSelectOneChoice accBtnButtonType;
    private RichSelectOneChoice accBtnButtonMaterial;
    private RichSelectOneChoice accBtnButtonColor;
    private RichSelectOneChoice accPprPaperColor;
    private RichSelectOneChoice accPprPaperMaterial;
    private RichSelectOneChoice accStkStickerType;
    private RichSelectOneChoice accStkMaterial;
    private RichSelectOneChoice accStkPeelableType;
    private RichSelectOneChoice accStkPerforatedType;
    private RichSelectOneChoice accDiameterUom;
    private RichSelectOneChoice accStkColor;
    private RichSelectOneChoice accSgItem;
    private RichSelectOneChoice accTpColor;
    private RichSelectOneChoice accTpMaterialType;
    private RichSelectOneChoice accLacType;
    private RichSelectOneChoice accLacMaterial;
    private RichSelectOneChoice accLacUom;
    private RichSelectOneChoice accLacColor;
    private RichSelectOneChoice accEyColor;
    private RichSelectOneChoice accEyMaterial;
    private RichSelectOneChoice accEyFinish;
    private RichSelectOneChoice accHeightUom;
    private RichSelectOneChoice accHngThicknessUom;
    private RichSelectOneChoice accHngHookType;
    private RichSelectOneChoice accTapMaterial;
    private RichSelectOneChoice accTapPrintText;
    private RichSelectOneChoice accWidthUom;
    private String dimSize1Title = null;
    private String dimSize2Title = null;
    private String dimSize3Title = null;
    private String dimSize4Title = null;
    private String dimSize5Title = null;
    private String dimSize6Title = null;
    private String dimSize7Title = null;
    private String dimSize8Title = null;
    private String dimSize9Title = null;
    private String dimSize10Title = null;
    private String dimSize11Title = null;
    private String dimSize12Title = null;
    private String dimSize13Title = null;
    private String dimSize14Title = null;
    private String dimSize15Title = null;
    private String dimSize16Title = null;
    private String dimSize17Title = null;
    private String dimSize18Title = null;
    private String dimSize19Title = null;
    private String dimSize20Title = null;
    private String dimSize21Title = null;
    private String dimSize22Title = null;
    private String dimSize23Title = null;
    private String dimSize24Title = null;
    private String dimSize25Title = null;
    private String dimSize26Title = null;
    private String dimSize27Title = null;
    private String dimSize28Title = null;
    private String dimSize29Title = null;
    private String dimSize30Title = null;
    private RichSelectOneChoice madeupThreadCount;
    private RichSelectOneChoice madeupBrandName;
    private RichGridCell wvSegment3Cell;
    private RichPanelFormLayout wvMainPanelFormLayout;
    private RichSelectOneChoice articleBomArticleId;
    private RichCommandToolbarButton articleBomApprBackBtn;
    private RichTable articleBomAccessoriesTable;
    private RichTable articleBomFabricTable;
    private RichInputListOfValues searchLovArtBom;
    private RichSelectOneChoice madeupArticleBomGroup;
    private RichSelectOneChoice accDiameterUomStrcker;
    private RichInputListOfValues searchLovPo;
    private RichSelectOneChoice poSoHeaderId;
    private RichInputListOfValues searchLovSetBom;
    private RichSelectOneChoice dyStandard;
    private String activeBuyer;
    private RichPanelFormLayout dyMainPanelFormLayout;
    private RichPanelFormLayout prnMainPanelFormLayout;
    private String combExpToExcelFileName = null;
    private String expAllCombsToExcelFileName = null;
    private String expAccessoriesToExcelFileName = null;
    private RichCommandToolbarButton programAddButtonProp;
    private RichCommandToolbarButton articleBomAddButtonProp;
    private RichCommandToolbarButton poAddButtonProp;
    private RichTable poLinesViewAccTable;
    private RichSelectOneChoice accWidthUomEls;
    private RichSelectOneChoice accLengthUomIns;
    private RichSelectOneChoice accLengthUomStf;
    private RichSelectOneChoice accLengthUomSg;
    private RichSelectOneChoice accWidthUomPpr;
    private RichSelectOneChoice accWidthUomLbl;
    private RichSelectOneChoice accWidthUomBag;
    private String expPOFabToExcelFileName;
    private String expPOAccToExcelFileName;
    private String expPORcvStatusReportFileName;
    private RichSelectOneChoice articleBomVersionBinding;

    public ViewActions() {
        //        super();
    }

    BindingContainer bc =
        BindingContext.getCurrent().getCurrentBindingsEntry();

    public void delRec(DialogEvent de, String oper) {
        if (de.getOutcome().equals(DialogEvent.Outcome.yes)) {
            execOper(oper);
            execOper("Commit");
        }
    }

    public void showError(String err) {
        JboException ex = new JboException(err);
        ((DCBindingContainer)bc).reportException(ex);
    }

    public int NVL(Integer inp, Integer out) {
        if (inp != null)
            return inp;
        else
            return out;
    }

    public String NVL(String inp, String out) {
        if (inp != null)
            return inp;
        else
            return out;
    }

    public void showMessage(String msg) {
        FacesMessage fm = new FacesMessage(msg);
        fm.setSeverity(fm.SEVERITY_INFO);
        FacesContext.getCurrentInstance().addMessage(null, fm);
    }

    public ViewObject getVO(String iter) {
        DCIteratorBinding dci = (DCIteratorBinding)bc.get(iter);
        return dci.getViewObject();
    }

    public void execOper(String oper) {
        OperationBinding op = bc.getOperationBinding(oper);
        op.execute();
    }

    public void insertRowAtLast(String dcIter) {
        DCIteratorBinding dcib = (DCIteratorBinding)bc.get(dcIter);
        RowSetIterator iter = dcib.getRowSetIterator();
        Row lastRow = iter.last();
        Row newRow = iter.createRow();
        //iter.insertRowAtRangeIndex(iter.getRangeSize() - 1, newRow);
        iter.insertRowAtRangeIndex(iter.getRangeIndexOf(lastRow) + 1, newRow);
        iter.closeRowSetIterator();
    }

    public String getAllRowsData(RichTable table, String column) {
        String result = null;
        RichTable rt = table;
        RowKeySet rks = new RowKeySetImpl();
        CollectionModel model = (CollectionModel)rt.getValue();
        int rowcount = model.getRowCount();
        for (int i = 0; i < rowcount; i++) {
            model.setRowIndex(i);
            Object key = model.getRowKey();
            rks.add(key);
        }

        rt.setSelectedRowKeys(rks);
        rks = rt.getSelectedRowKeys();
        Iterator selection = rt.getSelectedRowKeys().iterator();
        while (selection.hasNext()) {
            Object key = selection.next();
            rt.setRowKey(key);
            Object o = rt.getRowData();
            JUCtrlHierNodeBinding rowData = (JUCtrlHierNodeBinding)o;
            Row curRow = rowData.getRow();
            result +=
                    ((curRow.getAttribute(column) != null ? String.valueOf(curRow.getAttribute(column)) :
                      "") + (curRow.getAttribute(column) == null ? "" : " "));
        }
        return result;
    }

    public void showSaveMessage(String msg) {
        if (ADFContext.getCurrent().getSessionScope().get(msg) != null) {
            showMessage((String)ADFContext.getCurrent().getSessionScope().get(msg));
            ADFContext.getCurrent().getSessionScope().put(msg, null);
        }
    }

    public Object resolveExpression(String el) {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        ELContext elContext = facesContext.getELContext();
        ExpressionFactory expressionFactory =
            facesContext.getApplication().getExpressionFactory();
        ValueExpression valueExp =
            expressionFactory.createValueExpression(elContext, el,
                                                    Object.class);
        return valueExp.getValue(elContext);
    }

    public void setValueToExpression(String el, Object val) {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        ELContext elContext = facesContext.getELContext();
        ExpressionFactory expressionFactory =
            facesContext.getApplication().getExpressionFactory();
        ValueExpression exp =
            expressionFactory.createValueExpression(elContext, el,
                                                    Object.class);
        exp.setValue(elContext, val);
    }

    public String getValueFrmExpression(String data) {
        FacesContext fc = FacesContext.getCurrentInstance();
        Application app = fc.getApplication();
        ExpressionFactory elFactory = app.getExpressionFactory();
        ELContext elContext = fc.getELContext();
        ValueExpression valueExp =
            elFactory.createValueExpression(elContext, data, Object.class);
        String Message = null;
        Object obj = valueExp.getValue(elContext);
        if (obj != null) {
            Message = obj.toString();
        }
        return Message;
    }

    public void execQuerySetCurRow(String iter) {
        DCIteratorBinding dcib = (DCIteratorBinding)bc.get(iter);
        Row curRow = dcib.getCurrentRow();
        if (curRow != null) {
            dcib.executeQuery();
            dcib.setCurrentRowWithKey(curRow.getKey().toStringFormat(true));
        }
    }

    public void execWithParamsSetCurRow(String iter) {
        DCIteratorBinding dcib = (DCIteratorBinding)bc.get(iter);
        Row curRow = dcib.getCurrentRow();
        if (curRow != null) {
            execOper("ExecuteWithParams");
            dcib.setCurrentRowWithKey(curRow.getKey().toStringFormat(true));
        }
    }

    public int restrictSpnUpdate() {
        int result = -1;
        String id = "0";
        ViewObject vo = getVO("XxpmItemMasterSpnViewIterator");
        try {
            id = String.valueOf(vo.getCurrentRow().getAttribute("ImId"));
        } catch (Exception e) {
            id = "0";
        }

        logger.warning("Spinning item ID ===== " + id);
        OperationBinding op = bc.getOperationBinding("chkSpnItmUsage");
        op.getParamsMap().put("vId", id);
        result = (Integer)op.execute();
        return result;
    }

    public void insertMasterSpnItem(ActionEvent actionEvent) {
        //insertRowAtLast("XxpmItemMasterSpnViewIterator");
        execOper("CreateInsertItemMasterSpn");
        execOper("CreateInsertYB");
        execOper("CreateInsertYT");
        getVO("XxpmYarnTypeViewChildIterator").getCurrentRow().setAttribute("NewRow",
                                                                            1);
        logger.warning("Insert master button pressed.");
        this.spnAddButtonProp.setDisabled(true);
    }

    public void commitActionSpn() {
        if (restrictSpnUpdate() == -1) {
            showMessage("There is an error in \"CHK_SPN_ITM_USAGE_FUNC\" function.");
            return;
        } else if (restrictSpnUpdate() > 0) {
            showMessage("You cannot update this item, because it has been used in weaving.");
            return;
        }
        int error = 0;
        ViewObject itm = getVO("XxpmItemMasterSpnViewIterator");
        //        logger.warning("itm EstimatedRowCount " +
        //                           itm.getEstimatedRowCount());
        Row curMRow = itm.getCurrentRow();

        try {
            if (((oracle.jbo.domain.Number)curMRow.getAttribute("SumYBTotRatio")).intValue() !=
                100) {
                error = 1;
                showError("Yarn blend must be equal to 100%.");
            } /* else {
                            ViewObject vo = getVO("XxpmItemMasterSpnViewIterator");
                            curMRow = vo.getCurrentRow();
                            curMRow.setAttribute("Segment1", "17");
                        } */
        } catch (NullPointerException e) {

        }

        ////////////
        /* String result = "";
        String dualCore = "";
        Row ytRow = getVO("XxpmYarnTypeViewChildIterator").getCurrentRow();

        if (ytRow != null) {
            dualCore =
                    (ytRow.getAttribute("DualCore") != null ? String.valueOf(ytRow.getAttribute("DualCore")) :
                     "");
        }

        //result = getAllRowsData(this.ybTable, "YBResultant");
        if(curMRow != null){
            result = (String)curMRow.getAttribute("YbResultantSum");
        }
        result += getAllRowsData(this.ytTable, "YTResultant");
        result =
                (curMRow.getAttribute("MasterResultant") != null ? curMRow.getAttribute("MasterResultant") :
                 "") + " " + dualCore + " " + result + " " +
                (curMRow.getAttribute("YarnStatus") != null ?
                 curMRow.getAttribute("YarnStatus") : "") + " " +
                (curMRow.getAttribute("YarnOutput") != null ?
                 curMRow.getAttribute("YarnOutput") : "");
        result = result.replaceAll("\\s+", " ").trim(); */
        String result = "";
        if (curMRow != null) {
            result = (String)curMRow.getAttribute("SpnResultant");
        }
        ////////////
        //String msg = null;
        //FacesMessage fm = new FacesMessage(msg);
        //fm.setSeverity(fm.SEVERITY_INFO);
        if (result != null && result.length() > 1) {
            if (result.length() > 240) {
                showError("Description is too long.");
            }

            else if (!(result).equals(String.valueOf(curMRow.getAttribute("Description")) !=
                                      null ?
                                      String.valueOf(curMRow.getAttribute("Description")) :
                                      "")) {
                curMRow.setAttribute("Description", result);
            }
            /* Integer rowStatus = (Integer)curMRow.getAttribute("RowStatus"); */
            OperationBinding op = bc.getOperationBinding("Commit");
            op.execute();
            if (op.getErrors().isEmpty()) {
                if (error == 1) {

                } else {
                    logger.warning("Save button error -----> " +
                                   op.getErrors());
                    /* logger.warning("Row status -----> " + rowStatus);
                    if (NVL(rowStatus, 5) == 0 || NVL(rowStatus, 5) == -1) {
                        showMessage("Item has been created successfully.");
                    } else if (NVL(rowStatus, 5) == 2) {
                        showMessage("Item has been updated successfully.");
                    } else if (NVL(rowStatus, 5) == 1) {
                        showMessage("No changes to save.");
                    } */
                    showSaveMessage("itemCreationMsg");
                }
            }
        }

        this.spnAddButtonProp.setDisabled(false);
        logger.warning("Save button pressed.");
    }

    public void commitSpn(ActionEvent actionEvent) {
        commitActionSpn();
        logger.warning("Save button pressed.");
    }

    public void rollbackSpn(ActionEvent actionEvent) {
        execOper("blankSpnPage");
        this.spnAddButtonProp.setDisabled(false);
        logger.warning("Rollback button pressed.");
    }

    public void insertYarnBlend(ActionEvent actionEvent) {
        if (restrictSpnUpdate() == -1) {
            showMessage("There is an error in \"CHK_SPN_ITM_USAGE_FUNC\" function.");
            return;
        } else if (restrictSpnUpdate() > 0) {
            showMessage("You cannot update this item, because it has been used in weaving.");
            return;
        }
        execOper("CreateInsertYB");
        logger.warning("Insert yarn blend button pressed.");
    }

    public void insertYarnType(ActionEvent actionEvent) {
        long rows =
            getVO("XxpmYarnTypeViewChildIterator").getEstimatedRowCount();
        if (rows >= 1) {
            showMessage("You cannot add more than one row.");
        } else {
            //insertRowAtLast("XxpmYarnTypeViewChildIterator");
            execOper("CreateInsertYT");
        }
        logger.warning("Insert yarn type button pressed.");
    }

    public void setDenier1(RichSelectOneChoice denier1) {
        this.denier1 = denier1;
    }

    public RichSelectOneChoice getDenier1() {
        return denier1;
    }

    public void setDenier2(RichSelectOneChoice denier2) {
        this.denier2 = denier2;
    }

    public RichSelectOneChoice getDenier2() {
        return denier2;
    }

    public void fancyYarnTypeVCL(ValueChangeEvent vce) {
        ViewObject vo = getVO("XxpmYarnTypeViewChildIterator");
        Row curRow = vo.getCurrentRow();
        if (vce.getNewValue().equals(0)) {
            logger.warning("FYT Value is null.");
            curRow.setAttribute("FytRatio", null);
            curRow.setAttribute("Denier1", null);
            curRow.setAttribute("Draft1", null);
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.fytRatio);
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.denier1);
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.draft1);
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.ytResultant);
        }
    }

    public void setSpnAddButtonProp(RichCommandToolbarButton spnAddButtonProp) {
        this.spnAddButtonProp = spnAddButtonProp;
    }

    public RichCommandToolbarButton getSpnAddButtonProp() {
        return spnAddButtonProp;
    }

    public void deleteYBDialog(DialogEvent de) {
        if (restrictSpnUpdate() == -1) {
            showMessage("There is an error in \"CHK_SPN_ITM_USAGE_FUNC\" function.");
            return;
        } else if (restrictSpnUpdate() > 0) {
            showMessage("You cannot update this item, because it has been used in weaving.");
            return;
        }
        delRec(de, "DeleteYB");
    }

    public void deleteYTDialog(DialogEvent de) {
        if (restrictSpnUpdate() == -1) {
            showMessage("There is an error in \"CHK_SPN_ITM_USAGE_FUNC\" function.");
            return;
        } else if (restrictSpnUpdate() > 0) {
            showMessage("You cannot update this item, because it has been used in weaving.");
            return;
        }
        if (de.getOutcome().equals(DialogEvent.Outcome.yes)) {
            execOper("DeleteYT");
        }
    }

    public void searchAction(String var, String val,
                             RichInputListOfValues lov) {
        logger.warning("Search item value -----> " + val);
        this.execOper("Rollback");
        OperationBinding executeWithParams =
            bc.getOperationBinding("ExecuteWithParams");
        executeWithParams.getParamsMap().put(var, val);
        executeWithParams.execute();
        if (executeWithParams.getErrors().isEmpty())
            ResetUtils.reset(lov);
    }

    public void searchItemSpnVCL(ValueChangeEvent vce) {
        searchAction("BindDescSpn", (String)vce.getNewValue(),
                     this.searchLovSpn);
        this.spnAddButtonProp.setDisabled(false);
    }

    public void searchItemSpnButton(ActionEvent ae) {
        searchAction("BindDescSpn", null, this.searchLovSpn);
        this.spnAddButtonProp.setDisabled(false);
    }

    public void searchItemWvVCL(ValueChangeEvent vce) {
        searchAction("BindDescWv", (String)vce.getNewValue(),
                     this.searchLovWv);
    }

    public void searchItemWvButton(ActionEvent ae) {
        searchAction("BindDescWv", "", this.searchLovWv);
    }

    public void searchItemDyVCL(ValueChangeEvent vce) {
        searchAction("BindDescDy", (String)vce.getNewValue(),
                     this.searchLovDy);
    }

    public void searchItemDyButton(ActionEvent ae) {
        searchAction("BindDescDy", "", this.searchLovDy);
    }

    public void searchItemPrnVCL(ValueChangeEvent vce) {
        searchAction("BindDescPrn", (String)vce.getNewValue(),
                     this.searchLovPrn);
    }

    public void searchItemPrnButton(ActionEvent ae) {
        searchAction("BindDescPrn", "", this.searchLovPrn);
    }

    public void searchItemAccVCL(ValueChangeEvent vce) {
        searchAction("BindDescAcc", (String)vce.getNewValue(),
                     this.searchLovAcc);
    }

    public void searchItemAccButton(ActionEvent ae) {
        searchAction("BindDescAcc", "", this.searchLovAcc);
    }

    public void searchItemProgVCL(ValueChangeEvent vce) {
        searchAction("BindDescProg", (String)vce.getNewValue(),
                     this.searchLovProg);
    }

    public void searchItemProgButton(ActionEvent ae) {
        logger.warning("Selected user ===== " +
                       ADFContext.getCurrent().getSessionScope().get("userID"));
        searchAction("BindDescProg", "", this.searchLovProg);
    }

    public void searchItemArtBomVCL(ValueChangeEvent vce) {
        searchAction("BindArtBomNum", (String)vce.getNewValue(),
                     this.searchLovArtBom);
        this.articleBomAddButtonProp.setDisabled(false);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.articleBomAddButtonProp);
    }

    public void searchItemArtBomButton(ActionEvent ae) {
        searchAction("BindArtBomNum", "", this.searchLovArtBom);
        this.articleBomAddButtonProp.setDisabled(false);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.articleBomAddButtonProp);
    }

    public void searchPoVCL(ValueChangeEvent vce) {
        searchAction("BindPoId", String.valueOf(vce.getNewValue()),
                     this.searchLovPo);
        this.poAddButtonProp.setDisabled(false);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.poAddButtonProp);
    }

    public void searchPoButton(ActionEvent ae) {
        searchAction("BindPoId", null, this.searchLovPo);
        this.poAddButtonProp.setDisabled(false);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.poAddButtonProp);
    }

    public void setYbTable(RichTable ybTable) {
        this.ybTable = ybTable;
    }

    public RichTable getYbTable() {
        return ybTable;
    }

    public void setYtTable(RichTable ytTable) {
        this.ytTable = ytTable;
    }

    public RichTable getYtTable() {
        return ytTable;
    }

    /*     public void cottonPct(ValueChangeEvent vce) {
        ViewObject vo = this.getVO("XxpmItemMasterSpnViewIterator");
        Row curRow = vo.getCurrentRow();
        if (((oracle.jbo.domain.Number)curRow.getAttribute("SumYBTotRatio")).intValue() >
            100) {
            showError("2- Yarn blend must be equal to 100%.");
        }
    }

    public void fiberPct(ValueChangeEvent vce) {
        cottonPct(vce);
    } */

    public void insertWarp(ActionEvent ae) {
        execOper("CreateInsertWarp");
        logger.warning("Insert warp button pressed.");
    }

    public void insertMasterWvItem(ActionEvent ae) {
        execOper("CreateInsertItemMasterWv");
        execOper("CreateInsertWarp");
        execOper("CreateInsertWeft");
        logger.warning("Insert weaving item button pressed.");
    }

    public void commitWv(ActionEvent ae) {
        int error = 0;

        try {
            if (getVO("XxpmWarpViewChildIterator").first().getAttribute("Segment2").equals(null)) {
                error = 1;
                showError("Warp item is required.");
            }
        } catch (NullPointerException e) {
            error = 1;
            showError("Warp item is required.");
        }
        try {
            if (getVO("XxpmWeftViewChildIterator").first().getAttribute("Segment2").equals(null)) {
                error = 1;
                showError("Weft item is required.");
            }
        } catch (NullPointerException e) {
            error = 1;
            showError("Weft item is required.");
        }

        String result = "";
        ViewObject vo = getVO("XxpmItemMasterWvViewIterator");
        Row curRow = vo.getCurrentRow();
        result =
                curRow.getAttribute("WarpResultantSum") + (curRow.getAttribute("WarpResultantSum") !=
                                                           null &&
                                                           curRow.getAttribute("WeftResultantSum") !=
                                                           null ? " x " : "") +
                curRow.getAttribute("WeftResultantSum") + " " +
                curRow.getAttribute("EPWResultant") + " " +
                curRow.getAttribute("WeaveResultant") + " " +
                curRow.getAttribute("FabricBlendResultant");
        result = result.replaceAll("\\s+", " ").trim();
        curRow.setAttribute("WvFabricBlend",
                            curRow.getAttribute("FabricBlendResultant"));
        curRow.setAttribute("Description", result);
        //Integer rowStatus = (Integer)curRow.getAttribute("RowStatus");
        OperationBinding op = bc.getOperationBinding("Commit");
        op.execute();
        if (op.getErrors().isEmpty()) {
            logger.warning("Save button error -----> " + op.getErrors());
            if (error == 1) {

            } else {
                /* logger.warning("Row status -----> " + rowStatus);
                if (NVL(rowStatus, 5) == 0 || NVL(rowStatus, 5) == -1) {
                    showMessage("Item has been created successfully.");
                } else if (NVL(rowStatus, 5) == 2) {
                    showMessage("Item has been updated successfully.");
                } else if (NVL(rowStatus, 5) == 1) {
                    showMessage("No changes to save.");
                } */
                showSaveMessage("itemCreationMsg");
            }
        }
        logger.warning("commit weaving item button pressed.");
    }

    public void rollbackWv(ActionEvent ae) {
        execOper("blankWvPage");
        logger.warning("Rollback weaving button pressed.");
    }

    public void insertWeft(ActionEvent ae) {
        execOper("CreateInsertWeft");
        logger.warning("Insert weft button pressed.");
    }

    public void addWarpAttrsPartialTrigger() {
        AdfFacesContext.getCurrentInstance().addPartialTarget(fabricBlendResultant);
    }

    public void addWeftAttrsPartialTrigger() {
        AdfFacesContext.getCurrentInstance().addPartialTarget(fabricBlendResultant);
    }

    public void deleteWarpDialog(DialogEvent de) {
        delRec(de, "DeleteWarp");
        addWarpAttrsPartialTrigger();
    }

    public void deleteWeftDialog(DialogEvent de) {
        delRec(de, "DeleteWeft");
        addWeftAttrsPartialTrigger();
    }

    public void deleteMadeupSetDialog(DialogEvent de) {
        //delRec(de, "DeleteMadeupSets");
        if (de.getOutcome().equals(DialogEvent.Outcome.yes)) {
            DCIteratorBinding dcib =
                (DCIteratorBinding)bc.get("XxpmMadeupSetArticlesViewSetsChildIterator");
            Row[] saRows = dcib.getAllRowsInRange();
            logger.warning("XxpmMadeupSetArticlesViewSetsChildIterator rows are: " +
                           saRows.length);
            for (int i = 0; i < saRows.length; i++) {
                saRows[i].remove();
            }
            execOper("DeleteMadeupSets");
            //delRec(de, "DeleteMadeupSets");
            //dcib.executeQuery();
        }
    }

    public void deleteMadeupSetArticleDialog(DialogEvent de) {
        delRec(de, "deleteMadeupSetArticle");
    }

    public void deleteMadeupArticleDialog(DialogEvent de) {
        if (de.getOutcome().equals(DialogEvent.Outcome.yes)) {
            OperationBinding op =
                bc.getOperationBinding("delMadeupSetArticle");
            op.getParamsMap().put("articleId",
                                  getVO("XxpmMadeupArticlesViewProgChildIterator").getCurrentRow().getAttribute("ArticleId"));
            op.execute();
        }
        delRec(de, "DeleteMadeupArticle");
    }

    public void deleteMadeupColorsDialog(DialogEvent de) {
        delRec(de, "DeleteMadeupColor");
    }

    public void deleteMadeupSizesDialog(DialogEvent de) {
        delRec(de, "DeleteMadeupSize");
    }

    public void deleteMadeupDimensionsDialog(DialogEvent de) {
        delRec(de, "DeleteMadeupDimension");
    }

    public void deleteMadeupCombDialog(DialogEvent de) {
        if (de.getOutcome().equals(DialogEvent.Outcome.yes)) {
            execOper("deleteMadeupCombs");
        }
    }

    public void insertMasterDyItem(ActionEvent ae) {
        execOper("CreateInsertItemMasterDy");
        logger.warning("Insert dyeing item button pressed.");
    }

    public void commitDy(ActionEvent ae) {
        ViewObject vo = getVO("XxpmItemMasterDyViewIterator");
        Row curRow = vo.getCurrentRow();
        curRow.setAttribute("Description",
                            curRow.getAttribute("DyeingResultant"));
        //Integer rowStatus = (Integer)curRow.getAttribute("RowStatus");
        OperationBinding op = bc.getOperationBinding("Commit");
        op.execute();
        if (op.getErrors().isEmpty()) {
            /* logger.warning("Row status -----> " + rowStatus);
            if (NVL(rowStatus, 5) == 0 || NVL(rowStatus, 5) == -1) {
                showMessage("Item has been created successfully.");
            } else if (NVL(rowStatus, 5) == 2) {
                showMessage("Item has been updated successfully.");
            } else if (NVL(rowStatus, 5) == 1) {
                showMessage("No changes to save.");
            } */
            showSaveMessage("itemCreationMsg");
        }
    }

    public void warpSegment2VCL(ValueChangeEvent valueChangeEvent) {
        addWarpAttrsPartialTrigger();
    }

    public void weftSegment2VCL(ValueChangeEvent valueChangeEvent) {
        addWeftAttrsPartialTrigger();
    }


    private static final String getExtension(final String filename) {
        if (filename == null)
            return null;
        final String afterLastSlash =
            filename.substring(filename.lastIndexOf('/') + 1);
        final int afterLastBackslash = afterLastSlash.lastIndexOf('\\') + 1;
        final int dotIndex = afterLastSlash.indexOf('.', afterLastBackslash);
        return (dotIndex == -1) ? "" : afterLastSlash.substring(dotIndex);
    }

    Integer folderCode = null;
    Integer fileCode = null;

    private String uploadFileFTP(UploadedFile file, String iter) {
        String server = "192.168.0.39";
        int port = 21;
        String user = "oracle";
        String pass = "nishat";
        FTPClient ftpClient = new FTPClient();
        String path = null;


        try {
            ftpClient.connect(server, port);
            ftpClient.login(user, pass);
            ftpClient.enterLocalPassiveMode();

            ftpClient.setFileType(FTP.BINARY_FILE_TYPE);
            UploadedFile myfile = file;
            ViewObject vo = getVO(iter);
            if (vo != null) {
                Row curRow = vo.getCurrentRow();
                if (curRow != null) {
                    folderCode = (Integer)curRow.getAttribute("FolderCode");
                    logger.warning("Folder Code: " + folderCode);
                } else {
                    logger.warning("Current row is null");
                }
            } else {
                logger.warning("View Object is null");
            }

            fileCode =
                    (Integer)bc.getOperationBinding("getMaxAtchCode").execute();
            if (myfile == null) {

            } else {
                path = "/AttachedFiles";
                // create directory on the server
                boolean createdRoot = ftpClient.makeDirectory(path);
                if (createdRoot) {
                    logger.warning("CREATED the directory: " + path);
                } else {
                    logger.warning("COULD NOT create the directory: " + path);
                }

                // All uploaded files will be stored in below path
                path = "/AttachedFiles/" + folderCode;
                // create directory on the server
                boolean created = ftpClient.makeDirectory(path);
                if (created) {
                    logger.warning("CREATED the directory: " + path);
                } else {
                    logger.warning("COULD NOT create the directory: " + path);
                }
                path +=
                        "/" + fileCode + this.getExtension(myfile.getFilename());
                InputStream inputStream = null;
                try {
                    logger.warning("Start uploading file");
                    OutputStream out = ftpClient.storeFileStream(path);
                    inputStream = myfile.getInputStream();
                    byte[] buffer = new byte[8192];
                    int bytesRead = 0;
                    while ((bytesRead = inputStream.read(buffer, 0, 8192)) !=
                           -1) {
                        out.write(buffer, 0, bytesRead);
                    }
                    out.flush();
                    out.close();
                    boolean completed = ftpClient.completePendingCommand();
                    if (completed) {
                        logger.warning("The file is uploaded successfully.");
                    }
                } catch (Exception ex) {
                    // handle exception
                    ex.printStackTrace();
                } finally {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                    }
                }

            }
        } catch (IOException ex) {
            logger.warning("Error: " + ex.getMessage());
            ex.printStackTrace();
        } finally {
            try {
                if (ftpClient.isConnected()) {
                    ftpClient.logout();
                    ftpClient.disconnect();
                }
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        //Returns the path where file is stored
        return path;
    }

    private String uploadFileLocal(UploadedFile file, String iter) {
        UploadedFile myfile = file;
        String path = null;
        boolean dirFlag = false;
        int folderCode =
            (Integer)getVO(iter).getCurrentRow().getAttribute("FolderCode");
        String dir = "\\\\192.168.110.30\\C\\AttachedFiles\\" + folderCode;
        File uploadDir = new File(dir);
        try {
            dirFlag = uploadDir.mkdirs();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (dirFlag) {
            logger.warning("Directory " + uploadDir +
                           " created successfully.");
            ;
        } else
            logger.warning("Directory " + uploadDir + " already exists.");

        fileCode = (Integer)bc.getOperationBinding("getMaxAtchCode").execute();
        if (myfile == null) {

        } else {
            // All uploaded files will be stored in below path
            path =
uploadDir.getPath() + "\\" + fileCode + this.getExtension(myfile.getFilename());
            InputStream inputStream = null;
            try {
                FileOutputStream out = new FileOutputStream(path);
                inputStream = myfile.getInputStream();
                byte[] buffer = new byte[8192];
                int bytesRead = 0;
                while ((bytesRead = inputStream.read(buffer, 0, 8192)) != -1) {
                    out.write(buffer, 0, bytesRead);
                }
                out.flush();
                out.close();
            } catch (Exception ex) {
                // handle exception
                ex.printStackTrace();
            } finally {
                try {
                    inputStream.close();
                } catch (IOException e) {
                }
            }

        }
        //Returns the path where file is stored
        return path;
    }

    public void uploadFileVCL(ValueChangeEvent vce, String iter, String oper) {
        if (vce.getNewValue() != null) {
            //Get File Object from VC Event
            UploadedFile fileVal = (UploadedFile)vce.getNewValue();
            //Upload File to path- Return actual server path
            String path = uploadFileFTP(fileVal, iter);
            logger.warning(fileVal.getContentType());
            //Method to insert data in table to keep track of uploaded files
            OperationBinding ob = bc.getOperationBinding(oper);
            ob.getParamsMap().put("name", fileVal.getFilename());
            ob.getParamsMap().put("path", path);
            ob.getParamsMap().put("fileCode", fileCode);
            ob.getParamsMap().put("ext",
                                  this.getExtension(fileVal.getFilename()));
            ob.execute();
            // Reset inputFile component after upload
            ResetUtils.reset(vce.getComponent());
        }

        fileCode = null;
    }

    public void downloadFileListener(String iter,
                                     OutputStream outputStream) throws IOException {
        ViewObject vo = getVO(iter);
        Row curRow = vo.getCurrentRow();
        //Read file from particular path, path bind is binding of table field that contains path
        File filed = new File(String.valueOf(curRow.getAttribute("Path")));
        FileInputStream fis;
        byte[] b;
        try {
            fis = new FileInputStream(filed);

            int n;
            while ((n = fis.available()) > 0) {
                b = new byte[n];
                int result = fis.read(b);
                outputStream.write(b, 0, b.length);
                if (result == -1)
                    break;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        outputStream.flush();
    }

    public void showPopup(String popup) {
        logger.warning("actionEvent start.");
        String popupId = popup;
        FacesContext context = FacesContext.getCurrentInstance();
        StringBuilder script = new StringBuilder();
        ExtendedRenderKitService extRenderKitSrvc =
            Service.getRenderKitService(context,
                                        ExtendedRenderKitService.class);
        script.append("var popup = AdfPage.PAGE.findComponent('" + popupId +
                      "'); ").append("popup.show();");
        extRenderKitSrvc.addScript(context, String.valueOf(script));
        logger.warning("actionEvent end.");
    }

    public void addYarnPliesVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_INV_YARN_PLIES");
        logger.warning("Value set id ===== " +
                       ((AttributeBinding)bc.getControlBinding("BindValueSet")).getInputValue());
        showPopup("AddValPopup");
    }

    public void spnAddVsetVal(DialogEvent de) {
        if (de.getOutcome().equals(DialogEvent.Outcome.ok)) {
            OperationBinding op = bc.getOperationBinding("addVsetVal");
            int result = (Integer)op.execute();
            ((AttributeBinding)bc.getControlBinding("BindVsetVal")).setInputValue(null);
            if (result == 1) {
                showMessage("Value already exists.");
            } else if (result == 2 || result == 3) {
                showMessage("There is an error in procedure.");
            } else {
                execOper("updateSpnLovsAccessor");
                if (getVO("XxpmYarnBlendViewChildIterator").getEstimatedRowCount() >
                    0) {
                    execOper("updateYbLovsAccessor");
                }
                if (getVO("XxpmYarnTypeViewChildIterator").getEstimatedRowCount() >
                    0) {
                    execOper("updateYtLovsAccessor");
                }
                ResetUtils.reset(this.yarnPlies);
                ResetUtils.reset(this.yarnType);
                ResetUtils.reset(this.measuringSystem);
                ResetUtils.reset(this.yarnStatus);
                ResetUtils.reset(this.yarnOutput);
                ResetUtils.reset(this.cotton);
                ResetUtils.reset(this.fiber);
                ResetUtils.reset(this.fancyYarnType);
                ResetUtils.reset(this.slubCode);
                ResetUtils.reset(this.denier1);
                ResetUtils.reset(this.denier2);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.yarnPlies);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.yarnType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.measuringSystem);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.yarnStatus);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.yarnOutput);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.cotton);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.fiber);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.fancyYarnType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.slubCode);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.denier1);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.denier2);
            }
        }
    }

    public void dyAddVsetVal(DialogEvent de) {
        if (de.getOutcome().equals(DialogEvent.Outcome.ok)) {
            OperationBinding op = bc.getOperationBinding("addVsetVal");
            int result = (Integer)op.execute();
            ((AttributeBinding)bc.getControlBinding("BindVsetVal")).setInputValue(null);
            if (result == 1) {
                showMessage("Value already exists.");
            } else if (result == 2 || result == 3) {
                showMessage("There is an error in procedure.");
            } else {
                execOper("updateDyLovsAccessor");

                ResetUtils.reset(this.dyColor);
                ResetUtils.reset(this.dyFinish);
                ResetUtils.reset(this.dyCategory);
                ResetUtils.reset(this.dyFinishWidth);
                ResetUtils.reset(this.dyStandard);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.dyColor);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.dyFinish);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.dyCategory);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.dyFinishWidth);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.dyStandard);
            }
        }
    }

    public void addYarnTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_INV_YARN_TYPE");
        showPopup("AddValPopup");
    }

    public void insertMasterPrnItem(ActionEvent ae) {
        execOper("CreateInsertItemMasterPrn");
        logger.warning("Insert Printing item button pressed.");
    }

    public void commitPrn(ActionEvent ae) {
        ViewObject vo = getVO("XxpmItemMasterPrnViewIterator");
        Row curRow = vo.getCurrentRow();
        curRow.setAttribute("Description",
                            curRow.getAttribute("PrintingResultant"));
        //Integer rowStatus = (Integer)curRow.getAttribute("RowStatus");
        OperationBinding op = bc.getOperationBinding("Commit");
        op.execute();
        if (op.getErrors().isEmpty()) {
            /* logger.warning("Row status -----> " + rowStatus);
            if (NVL(rowStatus, 5) == 0 || NVL(rowStatus, 5) == -1) {
                showMessage("Item has been created successfully.");
            } else if (NVL(rowStatus, 5) == 2) {
                showMessage("Item has been updated successfully.");
            } else if (NVL(rowStatus, 5) == 1) {
                showMessage("No changes to save.");
            } */
            showSaveMessage("itemCreationMsg");
        }

    }

    public void rollbackDy(ActionEvent ae) {
        execOper("blankDyPage");
        logger.warning("Rollback printing button pressed.");
    }

    public void rollbackPrn(ActionEvent ae) {
        execOper("blankPrnPage");
        logger.warning("Rollback printing button pressed.");
    }

    public void rollbackAcc(ActionEvent ae) {
        execOper("blankAccPage");
        logger.warning("Rollback accessories button pressed.");
    }

    public void rollbackMadeup(ActionEvent ae) {
        /* execOper("Rollback");
        clearPage("XxpmItemMasterWvViewIterator"); */
        execOper("blankMadeupPage");
        logger.warning("Rollback weaving button pressed.");
    }

    public void setYarnPlies(RichSelectOneChoice yarnPlies) {
        this.yarnPlies = yarnPlies;
    }

    public RichSelectOneChoice getYarnPlies() {
        return yarnPlies;
    }

    public void setYarnType(RichSelectOneChoice yarnType) {
        this.yarnType = yarnType;
    }

    public RichSelectOneChoice getYarnType() {
        return yarnType;
    }

    public void setMeasuringSystem(RichSelectOneChoice measuringSystem) {
        this.measuringSystem = measuringSystem;
    }

    public RichSelectOneChoice getMeasuringSystem() {
        return measuringSystem;
    }

    public void setYarnStatus(RichSelectOneChoice yarnStatus) {
        this.yarnStatus = yarnStatus;
    }

    public RichSelectOneChoice getYarnStatus() {
        return yarnStatus;
    }

    public void setYarnOutput(RichSelectOneChoice yarnOutput) {
        this.yarnOutput = yarnOutput;
    }

    public RichSelectOneChoice getYarnOutput() {
        return yarnOutput;
    }

    public void addMeasuringSystemVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_INV_MEASURE_SYS");
        showPopup("AddValPopup");
    }

    public void addYarnStatusVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_INV_YARN_STATUS");
        showPopup("AddValPopup");
    }

    public void addYarnOutputVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_INV_YARN_OUTPUT");
        showPopup("AddValPopup");
    }

    public void setCotton(RichSelectOneChoice cotton) {
        this.cotton = cotton;
    }

    public RichSelectOneChoice getCotton() {
        return cotton;
    }

    public void setFiber(RichSelectOneChoice fiber) {
        this.fiber = fiber;
    }

    public RichSelectOneChoice getFiber() {
        return fiber;
    }

    public void setFancyYarnType(RichSelectOneChoice fancyYarnType) {
        this.fancyYarnType = fancyYarnType;
    }

    public RichSelectOneChoice getFancyYarnType() {
        return fancyYarnType;
    }

    public void setSlubCode(RichSelectOneChoice slubCode) {
        this.slubCode = slubCode;
    }

    public RichSelectOneChoice getSlubCode() {
        return slubCode;
    }

    public void addCottonTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_INV_COTTON_TYPE");
        showPopup("AddValPopup");
    }

    public void addFiberTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_INV_FIBER_TYPE");
        showPopup("AddValPopup");
    }

    public void addFancyYarnTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_INV_FANCY_YARN_TYPE");
        showPopup("AddValPopup");
    }

    public void addSlubCodeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_INV_SLUB_CODE");
        showPopup("AddValPopup");
    }

    public void addDenier1Vset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_INV_DENIER");
        showPopup("AddValPopup");
    }

    public void addDenier2Vset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_INV_DENIER");
        showPopup("AddValPopup");
    }

    public void addPrnColorVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("NC_INV_ITEM_COLOUR");
        showPopup("AddValPopup");
    }

    public void addPrnFinishWidthVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("NC_INV_ITEM_SIZE");
        showPopup("AddValPopup");
    }

    public void addPrnFinishVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_INV_PRINT_FINISH");
        showPopup("AddValPopup");
    }

    public void addPrnCategoryVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_INV_PRINT_CAT");
        showPopup("AddValPopup");
    }

    public void addAccBgBtnMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_BAG_BTN_MAT");
        showPopup("AddValPopup");
    }

    public void addAccBgBtnColorVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_COLOR");
        showPopup("AddValPopup");
    }

    public void addAccBgZipColorVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_COLOR");
        showPopup("AddValPopup");
    }

    public void addAccBgZipMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_BAG_ZIP_MAT");
        showPopup("AddValPopup");
    }

    public void addAccBgBagMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_BAG_MAT");
        showPopup("AddValPopup");
    }

    public void addAccBgPrintTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_BAG_PRINT_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccBgBagTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_BAG_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccInsInsertTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_INSERT_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccInsMaterialGsmVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_INS_MAT_GSM");
        showPopup("AddValPopup");
    }

    public void addAccInsPaperTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_INS_PAPER_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccInsLaminationVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_INS_LAMINATION");
        showPopup("AddValPopup");
    }

    public void addAccInsVarnishVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_INS_VARNISH");
        showPopup("AddValPopup");
    }

    public void addAccInsFixTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_INS_EMBOSE");
        showPopup("AddValPopup");
    }

    public void addAccStfStifnerTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_STF_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccStfPlyVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_STF_PLY");
        showPopup("AddValPopup");
    }

    public void addAccStfMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_STF_MAT");
        showPopup("AddValPopup");
    }

    public void addAccCrtCartonTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_CRT_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccCrtPrintedTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_CRT_PRINT_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccCrtOutUomVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_UOM");
        showPopup("AddValPopup");
    }

    public void addAccCrtInnUomVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_UOM");
        showPopup("AddValPopup");
    }

    public void addAccCrtPlyVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_CRT_PLY");
        showPopup("AddValPopup");
    }

    public void addAccCrtMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_CRT_MAT");
        showPopup("AddValPopup");
    }

    public void addAccCrtPrintTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_CRT_PRINT");
        showPopup("AddValPopup");
    }

    public void addAccLblLableTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_LBL_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccLblFoldingTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_LBL_FOLD");
        showPopup("AddValPopup");
    }

    public void addAccLblMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_LBL_MAT");
        showPopup("AddValPopup");
    }

    public void addAccZipMaterialTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_ZP_MAT_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccZipTeethTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_ZP_TEETH_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccZipUomVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_UOM");
        showPopup("AddValPopup");
    }

    public void addAccThrThreadUsageVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_THR_USAGE");
        showPopup("AddValPopup");
    }

    public void addAccThrThreadTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_THR_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccThrMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_THR_MAT");
        showPopup("AddValPopup");
    }

    public void addAccLengthUomVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_LEN_UOM");
        showPopup("AddValPopup");
    }

    public void addAccElsElasticTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_ELS_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccCtcItemTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_CTC_ITEM_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccCtcMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_CTC_MAT");
        showPopup("AddValPopup");
    }

    public void addAccFusMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_FUS_MAT");
        showPopup("AddValPopup");
    }

    public void addAccNwvMateriaVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_NWV_MAT");
        showPopup("AddValPopup");
    }

    public void addAccWdMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_WD_MAT");
        showPopup("AddValPopup");
    }

    public void addAccBfMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_BF_MAT");
        showPopup("AddValPopup");
    }


    public void addAccBfMaterialTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_BF_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccBtnButtonTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_BTN_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccBtnButtonMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_BTN_MAT");
        showPopup("AddValPopup");
    }

    public void addAccBtnButtonColorVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_COLOR");
        showPopup("AddValPopup");
    }

    public void addAccPprPaperColorVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_COLOR");
        showPopup("AddValPopup");
    }

    public void addAccPprPaperMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_PPR_MAT");
        showPopup("AddValPopup");
    }

    public void addAccStkStickerTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_STK_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccStkMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_STK_MAT");
        showPopup("AddValPopup");
    }

    public void addAccStkPeelableTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_STK_PEEL");
        showPopup("AddValPopup");
    }

    public void addAccStkPerforatedTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_STK_PEFORATE");
        showPopup("AddValPopup");
    }

    public void addAccDiameterUomVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_UOM");
        showPopup("AddValPopup");
    }

    public void addAccStkColorVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_COLOR");
        showPopup("AddValPopup");
    }

    public void addAccSgItemVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_SG_ITEM");
        showPopup("AddValPopup");
    }

    public void addAccTpColorVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_COLOR");
        showPopup("AddValPopup");
    }

    public void addAccTpMaterialTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_TP_MAT");
        showPopup("AddValPopup");
    }

    public void addAccLacTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_LAC_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccLacMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_LAC_MAT");
        showPopup("AddValPopup");
    }

    public void addAccLacUomVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_UOM");
        showPopup("AddValPopup");
    }

    public void addAccLacColorVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_COLOR");
        showPopup("AddValPopup");
    }

    public void addAccEyColorVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_COLOR");
        showPopup("AddValPopup");
    }

    public void addAccEyMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_EY_MAT");
        showPopup("AddValPopup");
    }

    public void addAccEyFinishVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_EY_FINISH");
        showPopup("AddValPopup");
    }

    public void addAccHeightUomVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_UOM");
        showPopup("AddValPopup");
    }

    public void addAccHngThicknessUomVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_UOM");
        showPopup("AddValPopup");
    }

    public void addAccHngHookTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_HNG_HOOK_TYPE");
        showPopup("AddValPopup");
    }

    public void addAccTapMaterialVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_TAP_MAT");
        showPopup("AddValPopup");
    }

    public void addAccTapPrintTextVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_TAP_PRINT");
        showPopup("AddValPopup");
    }

    public void addAccWidthUomVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ACC_GEN_UOM");
        showPopup("AddValPopup");
    }

    public void setDraft1(RichInputText draft1) {
        this.draft1 = draft1;
    }

    public RichInputText getDraft1() {
        return draft1;
    }

    public void setDraft2(RichInputText draft2) {
        this.draft2 = draft2;
    }

    public RichInputText getDraft2() {
        return draft2;
    }

    public void denier1VCL(ValueChangeEvent vce) {
        ViewObject vo = getVO("XxpmYarnTypeViewChildIterator");
        Row curRow = vo.getCurrentRow();
        logger.warning("Denier1 index value ===== " + vce.getNewValue());
        if (vce.getNewValue().equals(0)) {
            curRow.setAttribute("Draft1", "");
            //this.draft1.setValue("");
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.draft1);
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.ytResultant);
        }
    }

    public void denier2VCL(ValueChangeEvent vce) {
        ViewObject vo = getVO("XxpmYarnTypeViewChildIterator");
        Row curRow = vo.getCurrentRow();
        logger.warning("Denier2 index value ===== " + vce.getNewValue());
        if (vce.getNewValue().equals(0)) {
            curRow.setAttribute("Draft2", "");
            //this.draft2.setValue("");
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.draft2);
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.ytResultant);
        }
    }

    public void setFancyYarnType2(RichSelectOneChoice fancyYarnType2) {
        this.fancyYarnType2 = fancyYarnType2;
    }

    public RichSelectOneChoice getFancyYarnType2() {
        return fancyYarnType2;
    }

    public void setFytRatio2(RichInputText fytRatio2) {
        this.fytRatio2 = fytRatio2;
    }

    public RichInputText getFytRatio2() {
        return fytRatio2;
    }

    public void dualCoreVCL(ValueChangeEvent vce) {
        logger.warning("Dual core ===== " + vce.getNewValue());
        ViewObject vo = getVO("XxpmYarnTypeViewChildIterator");
        Row curRow = vo.getCurrentRow();
        if (vce.getNewValue().equals(false)) {
            curRow.setAttribute("FancyYarnType2", null);
            curRow.setAttribute("FytRatio2", null);
            curRow.setAttribute("Denier2", null);
            curRow.setAttribute("Draft2", null);
            /* this.fancyYarnType2.setValue("");
            this.fytRatio2.setValue("");
            this.denier2.setValue("");
            this.draft2.setValue(""); */
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.fancyYarnType2);
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.fytRatio2);
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.denier2);
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.draft2);
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.ytResultant);
        }
    }

    public void setYtResultant(RichOutputText ytResultant) {
        this.ytResultant = ytResultant;
    }

    public RichOutputText getYtResultant() {
        return ytResultant;
    }

    public void fancyYarnType2VCL(ValueChangeEvent vce) {
        ViewObject vo = getVO("XxpmYarnTypeViewChildIterator");
        Row curRow = vo.getCurrentRow();
        if (vce.getNewValue().equals(0)) {
            logger.warning("FYT2 Value is null.");
            curRow.setAttribute("FytRatio2", "");
            curRow.setAttribute("Denier2", "");
            curRow.setAttribute("Draft2", "");
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.fytRatio2);
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.denier2);
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.draft2);
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.ytResultant);
        }
    }

    /*     public void setYarnBlendResultant(RichInputText yarnBlendResultant) {
        this.yarnBlendResultant = yarnBlendResultant;
    }

    public RichInputText getYarnBlendResultant() {
        return yarnBlendResultant;
    } */

    public void setFabricBlendResultant(RichInputText fabricBlendResultant) {
        this.fabricBlendResultant = fabricBlendResultant;
    }

    public RichInputText getFabricBlendResultant() {
        return fabricBlendResultant;
    }

    public void setWarpResultantSum(RichInputText warpResultantSum) {
        this.warpResultantSum = warpResultantSum;
    }

    public RichInputText getWarpResultantSum() {
        return warpResultantSum;
    }

    public void setWeftResultantSum(RichInputText weftResultantSum) {
        this.weftResultantSum = weftResultantSum;
    }

    public RichInputText getWeftResultantSum() {
        return weftResultantSum;
    }

    public void uploadFileSpnVCL(ValueChangeEvent vce) {
        uploadFileVCL(vce, "XxpmItemMasterSpnViewIterator",
                      "setXxpmAttachmentsSpn");
    }

    public void uploadFileWvVCL(ValueChangeEvent vce) {
        uploadFileVCL(vce, "XxpmItemMasterWvViewIterator",
                      "setXxpmAttachmentsWv");
    }

    public void downloadFileSpnListener(FacesContext facesContext,
                                        OutputStream outputStream) throws IOException {
        downloadFileListener("XxpmAttachmentsViewChildIterator", outputStream);
    }

    public void downloadFileWvListener(FacesContext facesContext,
                                       OutputStream outputStream) throws IOException {
        downloadFileListener("XxpmAttachmentsViewChildWvIterator",
                             outputStream);
    }

    public void downloadFileProgListener(FacesContext facesContext,
                                         OutputStream outputStream) throws IOException {
        downloadFileListener("XxpmAttachmentsViewChildProgIterator",
                             outputStream);
    }

    public void wvAddVsetVal(DialogEvent de) {
        if (de.getOutcome().equals(DialogEvent.Outcome.ok)) {
            OperationBinding op = bc.getOperationBinding("addVsetVal");
            int result = (Integer)op.execute();
            ((AttributeBinding)bc.getControlBinding("BindVsetVal")).setInputValue(null);
            if (result == 1) {
                showMessage("Value already exists.");
            } else if (result == 2 || result == 3) {
                showMessage("There is an error in procedure.");
            } else {
                execOper("updateWvLovsAccessor");
                ResetUtils.reset(this.wvWeave);
                ResetUtils.reset(this.wvDirection);
                ResetUtils.reset(this.wvDesign);
                ResetUtils.reset(this.wvSize);
                ResetUtils.reset(this.wvInsertion);
                ResetUtils.reset(this.wvSelvedgeType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.wvWeave);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.wvDirection);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.wvDesign);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.wvSize);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.wvInsertion);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.wvSelvedgeType);
            }
        }
    }

    public void prnAddVsetVal(DialogEvent de) {
        if (de.getOutcome().equals(DialogEvent.Outcome.ok)) {
            OperationBinding op = bc.getOperationBinding("addVsetVal");
            int result = (Integer)op.execute();
            ((AttributeBinding)bc.getControlBinding("BindVsetVal")).setInputValue(null);
            if (result == 1) {
                showMessage("Value already exists.");
            } else if (result == 2 || result == 3) {
                showMessage("There is an error in procedure.");
            } else {
                execOper("updatePrnLovsAccessor");
                ResetUtils.reset(this.prnFinishWidth);
                ResetUtils.reset(this.prnColor);
                ResetUtils.reset(this.prnCategory);
                ResetUtils.reset(this.prnFinishType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.prnFinishWidth);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.prnColor);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.prnCategory);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.prnFinishType);
            }
        }
    }

    public void setWvWeave(RichSelectOneChoice wvWeave) {
        this.wvWeave = wvWeave;
    }

    public RichSelectOneChoice getWvWeave() {
        return wvWeave;
    }

    public void setWvDirection(RichSelectOneChoice wvDirection) {
        this.wvDirection = wvDirection;
    }

    public RichSelectOneChoice getWvDirection() {
        return wvDirection;
    }

    public void setWvDesign(RichSelectOneChoice wvDesign) {
        this.wvDesign = wvDesign;
    }

    public RichSelectOneChoice getWvDesign() {
        return wvDesign;
    }

    public void setWvSize(RichSelectOneChoice wvSize) {
        this.wvSize = wvSize;
    }

    public RichSelectOneChoice getWvSize() {
        return wvSize;
    }

    public void setWvInsertion(RichSelectOneChoice wvInsertion) {
        this.wvInsertion = wvInsertion;
    }

    public RichSelectOneChoice getWvInsertion() {
        return wvInsertion;
    }

    public void setWvSelvedgeType(RichSelectOneChoice wvSelvedgeType) {
        this.wvSelvedgeType = wvSelvedgeType;
    }

    public RichSelectOneChoice getWvSelvedgeType() {
        return wvSelvedgeType;
    }

    public void addWvWeaveVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_WVNG_WEAVE");
        showPopup("AddValPopup");
    }

    public void addWvDirectionVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_WVNG_DIRECTION");
        showPopup("AddValPopup");
    }

    public void addWvDesignVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_WVNG_DESIGN");
        showPopup("AddValPopup");
    }

    public void addWvSizeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_WVNG_SIZE");
        showPopup("AddValPopup");
    }

    public void addWvInsertionVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_WVNG_INSERTION");
        showPopup("AddValPopup");
    }

    public void addWvSelvedgeTypeVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_WVNG_SELVEDGE");
        showPopup("AddValPopup");
    }

    public void commitAcc(ActionEvent actionEvent) {
        String value = null;
        Row curRow = getVO("XxpmItemMasterAccViewIterator").getCurrentRow();
        if (curRow.getAttribute("AccAccessoryType").equals("Bags")) {
            value = String.valueOf(curRow.getAttribute("BagResultantTrans"));

        } else if (curRow.getAttribute("AccAccessoryType").equals("Inserts")) {
            value = String.valueOf(curRow.getAttribute("InsResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Stiffeners")) {
            value = String.valueOf(curRow.getAttribute("StfResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Cartons")) {
            value = String.valueOf(curRow.getAttribute("CrtResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Labels")) {
            value = String.valueOf(curRow.getAttribute("LblResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Zipper")) {
            value = String.valueOf(curRow.getAttribute("ZipResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Elastic")) {
            value = String.valueOf(curRow.getAttribute("ElsResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Cord, Twill Tape, Curtain Tape")) {
            value = String.valueOf(curRow.getAttribute("CtcResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Fusing")) {
            value = String.valueOf(curRow.getAttribute("FusResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Non-Wooven")) {
            value = String.valueOf(curRow.getAttribute("NwvResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Wadding")) {
            value = String.valueOf(curRow.getAttribute("WdResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Ball Fiber")) {
            value = String.valueOf(curRow.getAttribute("BfResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Buttons")) {
            value = String.valueOf(curRow.getAttribute("BtnResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Paper")) {
            value = String.valueOf(curRow.getAttribute("PprResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Stickers")) {
            value = String.valueOf(curRow.getAttribute("StkResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Silica Gel")) {
            value = String.valueOf(curRow.getAttribute("SgResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Tag Pins")) {
            value = String.valueOf(curRow.getAttribute("TpResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Tag Gun")) {
            value = String.valueOf(curRow.getAttribute("TgResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Laces")) {
            value = String.valueOf(curRow.getAttribute("LacResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Eyelets")) {
            value = String.valueOf(curRow.getAttribute("EyResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Hangers")) {
            value = String.valueOf(curRow.getAttribute("HngResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Pullers-Medellions")) {
            value = String.valueOf(curRow.getAttribute("PmResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Security Tags-RFID")) {
            value = String.valueOf(curRow.getAttribute("StrResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Tapes")) {
            value = String.valueOf(curRow.getAttribute("TapResultantTrans"));
        } else if (curRow.getAttribute("AccAccessoryType").equals("Threads")) {
            value = String.valueOf(curRow.getAttribute("ThrResultantTrans"));
        }
        if (value != null) {
            if ((curRow.getAttribute("Description") != null ?
                 curRow.getAttribute("Description") : "@") != value) {
                curRow.setAttribute("Description", value);
            }
        }


        //execOper("Commit");
        //Integer rowStatus = (Integer)curRow.getAttribute("RowStatus");
        OperationBinding op = bc.getOperationBinding("Commit");
        op.execute();
        if (op.getErrors().isEmpty()) {
            /* logger.warning("Row status -----> " + rowStatus);
            if (NVL(rowStatus, 5) == 0 || NVL(rowStatus, 5) == -1) {
                showMessage("Item has been created successfully.");
            } else if (NVL(rowStatus, 5) == 2) {
                showMessage("Item has been updated successfully.");
            } else if (NVL(rowStatus, 5) == 1) {
                showMessage("No changes to save.");
            } */
            showSaveMessage("itemCreationMsg");
        }

    }

    public void setFytRatio(RichInputText fytRatio) {
        this.fytRatio = fytRatio;
    }

    public RichInputText getFytRatio() {
        return fytRatio;
    }

    public void spnCottonVCL(ValueChangeEvent vce) {
        if (vce.getNewValue().equals(0)) {
            Row curRow =
                getVO("XxpmYarnBlendViewChildIterator").getCurrentRow();
            curRow.setAttribute("CottonRatio", "");
        }
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.cottonRatio);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.ybResultant);
    }

    public void setYbResultant(RichOutputText ybResultant) {
        this.ybResultant = ybResultant;
    }

    public RichOutputText getYbResultant() {
        return ybResultant;
    }

    public void spnFiberVCL(ValueChangeEvent vce) {
        if (vce.getNewValue().equals(0)) {
            Row curRow =
                getVO("XxpmYarnBlendViewChildIterator").getCurrentRow();
            curRow.setAttribute("FiberRatio", "");
        }
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.fiberRatio);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.ybResultant);
    }

    public void setCottonRatio(RichInputText cottonRatio) {
        this.cottonRatio = cottonRatio;
    }

    public RichInputText getCottonRatio() {
        return cottonRatio;
    }

    public void setFiberRatio(RichInputText fiberRatio) {
        this.fiberRatio = fiberRatio;
    }

    public RichInputText getFiberRatio() {
        return fiberRatio;
    }

    public void copySpnItem(ActionEvent actionEvent) {
        execOper("copySpnItem");
    }

    public void copyWvItem(ActionEvent actionEvent) {
        execOper("copyWvItem");
    }

    public void copyDyItem(ActionEvent actionEvent) {
        execOper("copyDyItem");
    }

    public void copyPrnItem(ActionEvent actionEvent) {
        execOper("copyPrnItem");
    }

    public void copyAccItem(ActionEvent actionEvent) {
        execOper("copyAccItem");
    }

    public void setSearchLovSpn(RichInputListOfValues searchLovSpn) {
        this.searchLovSpn = searchLovSpn;
    }

    public RichInputListOfValues getSearchLovSpn() {
        return searchLovSpn;
    }

    public void setSearchLovWv(RichInputListOfValues searchLovWv) {
        this.searchLovWv = searchLovWv;
    }

    public RichInputListOfValues getSearchLovWv() {
        return searchLovWv;
    }

    public void setSearchLovDy(RichInputListOfValues searchLovDy) {
        this.searchLovDy = searchLovDy;
    }

    public RichInputListOfValues getSearchLovDy() {
        return searchLovDy;
    }

    public void setSearchLovPrn(RichInputListOfValues searchLovPrn) {
        this.searchLovPrn = searchLovPrn;
    }

    public RichInputListOfValues getSearchLovPrn() {
        return searchLovPrn;
    }

    public void setSearchLovAcc(RichInputListOfValues searchLovAcc) {
        this.searchLovAcc = searchLovAcc;
    }

    public RichInputListOfValues getSearchLovAcc() {
        return searchLovAcc;
    }

    public void setSearchLovProg(RichInputListOfValues searchLovProg) {
        this.searchLovProg = searchLovProg;
    }

    public RichInputListOfValues getSearchLovProg() {
        return searchLovProg;
    }

    public void setDimensionsTab(RichShowDetailItem dimensionsTab) {
        this.dimensionsTab = dimensionsTab;
    }

    public RichShowDetailItem getDimensionsTab() {
        return dimensionsTab;
    }

    public void setProgramPanelTabbed(RichPanelTabbed programPanelTabbed) {
        this.programPanelTabbed = programPanelTabbed;
    }

    public RichPanelTabbed getProgramPanelTabbed() {
        return programPanelTabbed;
    }

    /**
     * @Method to disclose (open) specific tab
     * Pass the binding of af:showDetailItem that you want to open
     */
    FacesContext fc = FacesContext.getCurrentInstance();

    public void setDisclosedFirstTab(RichShowDetailItem tabBind) {
        RichPanelTabbed richPanelTabbed = getProgramPanelTabbed();
        for (UIComponent child : richPanelTabbed.getChildren()) {
            RichShowDetailItem sdi = (RichShowDetailItem)child;
            if (sdi.getClientId(fc).equals(tabBind.getClientId(fc))) {
                sdi.setDisclosed(true);
            } else {
                sdi.setDisclosed(false);
            }
        }
        AdfFacesContext.getCurrentInstance().addPartialTarget(programPanelTabbed);
    }

    public void callDimensionsTab(ActionEvent actionEvent) {
        dimensionsTab.setRendered(true);
        AdfFacesContext.getCurrentInstance().addPartialTarget(programPanelTabbed);
        setDisclosedFirstTab(this.dimensionsTab);
    }

    public void setDyFinish(RichSelectOneChoice dyFinish) {
        this.dyFinish = dyFinish;
    }

    public RichSelectOneChoice getDyFinish() {
        return dyFinish;
    }

    public void setDyCategory(RichSelectOneChoice dyCategory) {
        this.dyCategory = dyCategory;
    }

    public RichSelectOneChoice getDyCategory() {
        return dyCategory;
    }

    public void setDyFinishWidth(RichInputListOfValues dyFinishWidth) {
        this.dyFinishWidth = dyFinishWidth;
    }

    public RichInputListOfValues getDyFinishWidth() {
        return dyFinishWidth;
    }

    public void addDyColorVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("NC_INV_ITEM_COLOUR");
        showPopup("AddValPopup");
    }

    public void addDyStandardVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_WVNG_STND");
        showPopup("AddValPopup");
    }

    public void addDyFinishVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_INV_DYED_FINISH");
        showPopup("AddValPopup");
    }

    public void addDyCategoryVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_DYEING_CATEGORY");
        showPopup("AddValPopup");
    }

    public void addDyFinishWidthVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("NC_INV_ITEM_SIZE");
        showPopup("AddValPopup");
    }

    public void setDyColor(RichInputListOfValues dyColor) {
        this.dyColor = dyColor;
    }

    public RichInputListOfValues getDyColor() {
        return dyColor;
    }

    public void setPrnFinishWidth(RichInputListOfValues prnFinishWidth) {
        this.prnFinishWidth = prnFinishWidth;
    }

    public RichInputListOfValues getPrnFinishWidth() {
        return prnFinishWidth;
    }

    public void setPrnColor(RichInputListOfValues prnColor) {
        this.prnColor = prnColor;
    }

    public RichInputListOfValues getPrnColor() {
        return prnColor;
    }

    public void setPrnFinishType(RichSelectOneChoice prnFinishType) {
        this.prnFinishType = prnFinishType;
    }

    public RichSelectOneChoice getPrnFinishType() {
        return prnFinishType;
    }

    public void setPrnCategory(RichSelectOneChoice prnCategory) {
        this.prnCategory = prnCategory;
    }

    public RichSelectOneChoice getPrnCategory() {
        return prnCategory;
    }

    public void uploadFileAccVCL(ValueChangeEvent vce) {
        logger.warning("Attachment started.");
        uploadFileVCL(vce, "XxpmItemMasterAccViewIterator",
                      "setXxpmAttachmentsAcc");
    }

    public void downloadFileAccListener(FacesContext facesContext,
                                        OutputStream outputStream) throws IOException {
        downloadFileListener("XxpmAttachmentsViewChildAccIterator",
                             outputStream);
    }

    public void commitMadeup(ActionEvent actionEvent) {
        ViewObject progVo = getVO("XxpmMadeupProgramsViewIterator");
        ViewObject setVo = getVO("XxpmMadeupSetsViewChildIterator");
        Row[] setRows = setVo.getAllRowsInRange();
        int ebsStatus = 0;
        if (progVo != null) {
            Row curRow = progVo.getCurrentRow();
            if (curRow != null) {
                ebsStatus =
                        (curRow.getAttribute("EbsStatus") != null ? (Integer)curRow.getAttribute("EbsStatus") :
                         0);
            }
        }

        for (int i = 0; i < setRows.length; i++) {
            Row curRow = setRows[i];
            if (curRow != null) {
                if ((curRow.getAttribute("MadeupSetResultant") != null ?
                     curRow.getAttribute("MadeupSetResultant") : "@") !=
                    ((curRow.getAttribute("Description") != null ?
                      curRow.getAttribute("Description") : "@"))) {
                    curRow.setAttribute("Description",
                                        curRow.getAttribute("MadeupSetResultant"));
                }
            }
        }

        OperationBinding op = bc.getOperationBinding("Commit");
        op.execute();
        if (ADFContext.getCurrent().getSessionScope().get("progErrors") !=
            "Y" && op.getErrors().isEmpty()) {
            ///////////////////////////////////////
            if (ebsStatus != 1) {
                showMessage("Program has been created successfully.");
            } else {
                showMessage("Program has been updated successfully.");
            }
        }
    }

    public void genProgItemsInEBS(ActionEvent actionEvent) {
        OperationBinding op = bc.getOperationBinding("Commit");
        op.execute();
        if (ADFContext.getCurrent().getSessionScope().get("progErrors") !=
            "Y" && op.getErrors().isEmpty()) {
            ViewObject progVo = getVO("XxpmMadeupProgramsViewIterator");
            ViewObject articleVo =
                getVO("XxpmMadeupArticlesViewProgChildIterator");

            Row progRow = null;
            Row articleRow = null;

            if (progVo != null) {
                progRow = progVo.getCurrentRow();
            }
            if (articleVo != null) {
                articleRow = articleVo.getCurrentRow();
            }
            ////////////////////////////////
            OperationBinding createMadeupItemInEBS =
                bc.getOperationBinding("createMadeupItemInEBS");
            String result = (String)createMadeupItemInEBS.execute();
            if (result != null && result.length() > 0) {
                showMessage(result);
            } else {
                //execOper("ExecuteWithParams");
                progVo.executeQuery();
                if (progRow != null) {
                    //                    progVo.setCurrentRow(progRow);
                    OperationBinding setCurrentRowProgram =
                        bc.getOperationBinding("setCurrentRowWithKeyValueProgram");
                    setCurrentRowProgram.getParamsMap().put("rowKey",
                                                            String.valueOf(progRow.getAttribute("ProgId")));
                    setCurrentRowProgram.execute();
                }
                if (articleRow != null) {
                    //                    articleVo.setCurrentRow(articleRow);
                    OperationBinding setCurrentRowArticle =
                        bc.getOperationBinding("setCurrentRowWithKeyValueArticle");
                    setCurrentRowArticle.getParamsMap().put("rowKey",
                                                            String.valueOf(articleRow.getAttribute("ArticleId")));
                    setCurrentRowArticle.execute();
                }
            }
        }
        String user =
            String.valueOf(ADFContext.getCurrent().getSessionScope().get("userName"));
        showMessage("Dear " + user +
                    "! Items has been created in EBS successfully.");
    }

    public void setYarnCount(RichInputText yarnCount) {
        this.yarnCount = yarnCount;
    }

    public RichInputText getYarnCount() {
        return yarnCount;
    }

    public void copyItemUpdateStatus(String iter) {
        ViewObject vo = getVO(iter);
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                String s3 = (String)curRow.getAttribute("Segment3Value");
                logger.warning("Segment3Value ===== " + s3);
                if (s3 != null) {
                    if (s3.equals("4") || s3.equals("5")) {
                        showError("Item with all statuses already exists.");
                    } else {
                        String s1 = (String)curRow.getAttribute("Segment1");
                        logger.warning("Segment1 ===== " + s1);
                        if (s1 != null) {
                            String reqS3 = null;
                            if (s1.equals("17") || s1.equals("18")) {
                                logger.warning("testing reqS3 = " +
                                               (s3.equals("2") ? "1" : "2"));
                                reqS3 = (s3.equals("2") ? "1" : "2");
                                ;
                            } else if (s1.equals("19") || s1.equals("20")) {
                                logger.warning("testing reqS3 = " +
                                               (s3.equals("2") ? "3" : "2"));
                                reqS3 = (s3.equals("2") ? "3" : "2");
                                ;
                            }
                            logger.warning("ReqS3 ===== " + reqS3);
                            OperationBinding copyItemOper =
                                bc.getOperationBinding("copyEBSItemUpdateStatus");
                            copyItemOper.getParamsMap().put("imId",
                                                            curRow.getAttribute("ImId").toString());
                            copyItemOper.getParamsMap().put("s3", reqS3);
                            int result =
                                ((Integer)copyItemOper.execute()).intValue();
                            if (result == 1) {
                                curRow.setAttribute("Segment3",
                                                    (s1.equals("17") ||
                                                     s1.equals("18") ? "4" :
                                                     "5"));
                                OperationBinding op =
                                    bc.getOperationBinding("Commit");
                                op.execute();
                                showMessage("Item has been created in EBS with status: " +
                                            (reqS3.equals("1") ? "10, 20" :
                                             (reqS3.equals("2") ? "31, 32" :
                                              "40, 42")));
                            } else {
                                showError("There is an error in copy item procedure.");
                            }
                        }
                    }
                }
            }
        }
    }

    public void copySpnItemUpdateStatus(ActionEvent actionEvent) {
        copyItemUpdateStatus("XxpmItemMasterSpnViewIterator");
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.spnMainPanelFormLayout);
    }

    public void copyWvItemUpdateStatus(ActionEvent actionEvent) {
        copyItemUpdateStatus("XxpmItemMasterWvViewIterator");
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.wvMainPanelFormLayout);
    }

    public void setSpnMainPanelFormLayout(RichPanelFormLayout spnMainPanelFormLayout) {
        this.spnMainPanelFormLayout = spnMainPanelFormLayout;
    }

    public RichPanelFormLayout getSpnMainPanelFormLayout() {
        return spnMainPanelFormLayout;
    }

    public void genMadeupCombBtn(ActionEvent actionEvent) {
        OperationBinding op = bc.getOperationBinding("Commit");
        op.execute();
        execOper("genMadeupComb");
        getVO("XxpmMadeupCombinationsViewChildIterator").executeQuery();
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.madeupCombTable);
    }

    public void setMadeupCombTable(RichTable madeupCombTable) {
        this.madeupCombTable = madeupCombTable;
    }

    public RichTable getMadeupCombTable() {
        return madeupCombTable;
    }

    public String getDimSizeTitle(int indx) {
        String result = null;
        ViewObjectImpl vo =
            (ViewObjectImpl)getVO("XxpmMadeupSizesViewChildIterator");
        if (vo != null) {
            RowQualifier rq = new RowQualifier("1=1");
            Row[] rows = vo.getFilteredRows(rq);
            Row curRow = rows[indx];
            if (curRow != null) {
                result =
                        (curRow.getAttribute("SizeName") != null ? (String)curRow.getAttribute("SizeName") :
                         "");
            }
        }
        return result;
    }

    public String getDimSize1Title() {
        //return dimSize1Title;
        return getDimSizeTitle(0);
    }

    public String getDimSize2Title() {
        //return dimSize2Title;
        return getDimSizeTitle(1);
    }

    public String getDimSize3Title() {
        //return dimSize3Title;
        return getDimSizeTitle(2);
    }

    public String getDimSize4Title() {
        //return dimSize4Title;
        return getDimSizeTitle(3);
    }

    public String getDimSize5Title() {
        //return dimSize5Title;
        return getDimSizeTitle(4);
    }

    public String getDimSize6Title() {
        //return dimSize6Title;
        return getDimSizeTitle(5);
    }

    public String getDimSize7Title() {
        //return dimSize7Title;
        return getDimSizeTitle(6);
    }

    public String getDimSize8Title() {
        //return dimSize8Title;
        return getDimSizeTitle(7);
    }

    public String getDimSize9Title() {
        //return dimSize9Title;
        return getDimSizeTitle(8);
    }

    public String getDimSize10Title() {
        //return dimSize10Title;
        return getDimSizeTitle(9);
    }

    public String getDimSize11Title() {
        //return dimSize11Title;
        return getDimSizeTitle(10);
    }

    public String getDimSize12Title() {
        //return dimSize12Title;
        return getDimSizeTitle(11);
    }

    public String getDimSize13Title() {
        //return dimSize13Title;
        return getDimSizeTitle(12);
    }

    public String getDimSize14Title() {
        //return dimSize14Title;
        return getDimSizeTitle(13);
    }

    public String getDimSize15Title() {
        //return dimSize15Title;
        return getDimSizeTitle(14);
    }

    public String getDimSize16Title() {
        //return dimSize16Title;
        return getDimSizeTitle(15);
    }

    public String getDimSize17Title() {
        //return dimSize17Title;
        return getDimSizeTitle(16);
    }

    public String getDimSize18Title() {
        //return dimSize18Title;
        return getDimSizeTitle(17);
    }

    public String getDimSize19Title() {
        //return dimSize19Title;
        return getDimSizeTitle(18);
    }

    public String getDimSize20Title() {
        //return dimSize20Title;
        return getDimSizeTitle(19);
    }

    public String getDimSize21Title() {
        //return dimSize21Title;
        return getDimSizeTitle(20);
    }

    public String getDimSize22Title() {
        //return dimSize22Title;
        return getDimSizeTitle(21);
    }

    public String getDimSize23Title() {
        //return dimSize23Title;
        return getDimSizeTitle(22);
    }

    public String getDimSize24Title() {
        //return dimSize24Title;
        return getDimSizeTitle(23);
    }

    public String getDimSize25Title() {
        //return dimSize25Title;
        return getDimSizeTitle(24);
    }

    public String getDimSize26Title() {
        //return dimSize26Title;
        return getDimSizeTitle(25);
    }

    public String getDimSize27Title() {
        //return dimSize27Title;
        return getDimSizeTitle(26);
    }

    public String getDimSize28Title() {
        //return dimSize28Title;
        return getDimSizeTitle(27);
    }

    public String getDimSize29Title() {
        //return dimSize29Title;
        return getDimSizeTitle(28);
    }

    public String getDimSize30Title() {
        //return dimSize30Title;
        return getDimSizeTitle(29);
    }

    public void accAddVsetVal(DialogEvent de) {
        if (de.getOutcome().equals(DialogEvent.Outcome.ok)) {
            OperationBinding op = bc.getOperationBinding("addVsetVal");
            int result = (Integer)op.execute();
            ((AttributeBinding)bc.getControlBinding("BindVsetVal")).setInputValue(null);
            if (result == 1) {
                showMessage("Value already exists.");
            } else if (result == 2 || result == 3) {
                showMessage("There is an error in procedure.");
            } else {
                execOper("updateAccLovsAccessor");
                ResetUtils.reset(this.accBgBtnMaterial);
                ResetUtils.reset(this.accBgBtnColor);
                ResetUtils.reset(this.accBgZipColor);
                ResetUtils.reset(this.accBgZipMaterial);
                ResetUtils.reset(this.accBgBagMaterial);
                ResetUtils.reset(this.accBgPrintType);
                ResetUtils.reset(this.accBgBagType);
                ResetUtils.reset(this.accInsInsertType);
                ResetUtils.reset(this.accInsMaterialGsm);
                ResetUtils.reset(this.accInsPaperType);
                ResetUtils.reset(this.accInsLamination);
                ResetUtils.reset(this.accInsVarnish);
                ResetUtils.reset(this.accInsFixType);
                ResetUtils.reset(this.accStfStifnerType);
                ResetUtils.reset(this.accStfPly);
                ResetUtils.reset(this.accStfMaterial);
                ResetUtils.reset(this.accCrtCartonType);
                ResetUtils.reset(this.accCrtPrintedType);
                ResetUtils.reset(this.accCrtOutUom);
                ResetUtils.reset(this.accCrtInnUom);
                ResetUtils.reset(this.accCrtPly);
                ResetUtils.reset(this.accCrtMaterial);
                ResetUtils.reset(this.accCrtPrintType);
                ResetUtils.reset(this.accLblLableType);
                ResetUtils.reset(this.accLblFoldingType);
                ResetUtils.reset(this.accLblMaterial);
                ResetUtils.reset(this.accZipMaterialType);
                ResetUtils.reset(this.accZipTeethType);
                ResetUtils.reset(this.accZipUom);
                ResetUtils.reset(this.accThrThreadUsage);
                ResetUtils.reset(this.accThrThreadType);
                ResetUtils.reset(this.accThrMaterial);
                ResetUtils.reset(this.accLengthUom);
                ResetUtils.reset(this.accLengthUomIns);
                ResetUtils.reset(this.accLengthUomStf);
                ResetUtils.reset(this.accLengthUomSg);
                ResetUtils.reset(this.accElsElasticType);
                ResetUtils.reset(this.accCtcItemType);
                ResetUtils.reset(this.accCtcMaterial);
                ResetUtils.reset(this.accFusMaterial);
                ResetUtils.reset(this.accNwvMateria);
                ResetUtils.reset(this.accWdMaterial);
                ResetUtils.reset(this.accBfMaterial);
                ResetUtils.reset(this.accBfMaterialType);
                ResetUtils.reset(this.accBtnButtonType);
                ResetUtils.reset(this.accBtnButtonMaterial);
                ResetUtils.reset(this.accBtnButtonColor);
                ResetUtils.reset(this.accPprPaperColor);
                ResetUtils.reset(this.accPprPaperMaterial);
                ResetUtils.reset(this.accStkStickerType);
                ResetUtils.reset(this.accStkMaterial);
                ResetUtils.reset(this.accStkPeelableType);
                ResetUtils.reset(this.accStkPerforatedType);
                ResetUtils.reset(this.accDiameterUom);
                ResetUtils.reset(this.accDiameterUomStrcker);
                ResetUtils.reset(this.accStkColor);
                ResetUtils.reset(this.accSgItem);
                ResetUtils.reset(this.accTpColor);
                ResetUtils.reset(this.accTpMaterialType);
                ResetUtils.reset(this.accLacType);
                ResetUtils.reset(this.accLacMaterial);
                ResetUtils.reset(this.accLacUom);
                ResetUtils.reset(this.accLacColor);
                ResetUtils.reset(this.accEyColor);
                ResetUtils.reset(this.accEyMaterial);
                ResetUtils.reset(this.accEyFinish);
                ResetUtils.reset(this.accHeightUom);
                ResetUtils.reset(this.accHngThicknessUom);
                ResetUtils.reset(this.accHngHookType);
                ResetUtils.reset(this.accTapMaterial);
                ResetUtils.reset(this.accTapPrintText);
                ResetUtils.reset(this.accWidthUom);
                ResetUtils.reset(this.accWidthUomEls);
                ResetUtils.reset(this.accWidthUomPpr);
                ResetUtils.reset(this.accWidthUomLbl);
                ResetUtils.reset(this.accWidthUomBag);


                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accBgBtnMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accBgBtnColor);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accBgZipColor);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accBgZipMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accBgBagMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accBgPrintType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accBgBagType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accInsInsertType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accInsMaterialGsm);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accInsPaperType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accInsLamination);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accInsVarnish);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accInsFixType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accStfStifnerType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accStfPly);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accStfMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accCrtCartonType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accCrtPrintedType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accCrtOutUom);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accCrtInnUom);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accCrtPly);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accCrtMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accCrtPrintType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accLblLableType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accLblFoldingType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accLblMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accZipMaterialType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accZipTeethType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accZipUom);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accThrThreadUsage);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accThrThreadType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accThrMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accLengthUom);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accLengthUomIns);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accLengthUomStf);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accLengthUomSg);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accElsElasticType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accCtcItemType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accCtcMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accFusMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accNwvMateria);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accWdMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accBfMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accBfMaterialType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accBtnButtonType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accBtnButtonMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accBtnButtonColor);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accPprPaperColor);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accPprPaperMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accStkStickerType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accStkMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accStkPeelableType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accStkPerforatedType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accDiameterUom);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accDiameterUomStrcker);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accStkColor);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accSgItem);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accTpColor);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accTpMaterialType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accLacType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accLacMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accLacUom);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accLacColor);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accEyColor);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accEyMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accEyFinish);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accHeightUom);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accHngThicknessUom);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accHngHookType);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accTapMaterial);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accTapPrintText);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accWidthUom);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accWidthUomEls);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accWidthUomPpr);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accWidthUomLbl);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.accWidthUomBag);
            }
        }
    }

    public void madeupAddVsetVal(DialogEvent de) {
        if (de.getOutcome().equals(DialogEvent.Outcome.ok)) {
            ViewObject madeupArticlesVo =
                getVO("XxpmMadeupArticlesViewProgChildIterator");
            OperationBinding op = bc.getOperationBinding("addVsetVal");
            int result = (Integer)op.execute();
            ((AttributeBinding)bc.getControlBinding("BindVsetVal")).setInputValue(null);
            if (result == 1) {
                showMessage("Value already exists.");
            } else if (result == 2 || result == 3) {
                showMessage("There is an error in procedure.");
            } else {
                execOper("updateMadeupProgLovsAccessor");
                ResetUtils.reset(this.madeupThreadCount);
                ResetUtils.reset(this.madeupBrandName);
                if (madeupArticlesVo.getEstimatedRowCount() > 0) {
                    logger.warning("updateMadeupArticleLovsAccessor started.");
                    //                    logger.warning("madeupArticlesVo rows are: " +
                    //                                       madeupArticlesVo.getEstimatedRowCount());
                    execOper("updateMadeupArticleLovsAccessor");
                    ResetUtils.reset(this.madeupArticleBomGroup);
                }
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.madeupThreadCount);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.madeupBrandName);
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.madeupArticleBomGroup);
            }
        }
    }

    public void setMadeupThreadCount(RichSelectOneChoice madeupThreadCount) {
        this.madeupThreadCount = madeupThreadCount;
    }

    public RichSelectOneChoice getMadeupThreadCount() {
        return madeupThreadCount;
    }

    public void setMadeupBrandName(RichSelectOneChoice madeupBrandName) {
        this.madeupBrandName = madeupBrandName;
    }

    public RichSelectOneChoice getMadeupBrandName() {
        return madeupBrandName;
    }

    public void addMadeupThreadCountVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_MADEUP_THREAD_COUNT");
        logger.warning("Value set id ===== " +
                       ((AttributeBinding)bc.getControlBinding("BindValueSet")).getInputValue());
        showPopup("AddValPopup");
        ;
    }

    public void addMadeupBrandNameVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_MADEUP_BRAND_NAME");
        logger.warning("Value set id ===== " +
                       ((AttributeBinding)bc.getControlBinding("BindValueSet")).getInputValue());
        showPopup("AddValPopup");
        ;
    }

    public void dimensionsTabDL(DisclosureEvent de) {
        if (de.getComponent().getClientId(fc) !=
            dimensionsTab.getClientId(fc)) {
            dimensionsTab.setRendered(false);
        } else {
            dimensionsTab.setRendered(true);
        }
        AdfFacesContext.getCurrentInstance().addPartialTarget(programPanelTabbed);
    }

    public void uploadFileProgVCL(ValueChangeEvent vce) {
        uploadFileVCL(vce, "XxpmMadeupProgramsViewIterator",
                      "setXxpmAttachmentsProg");
    }

    public void madeupShowSetPopup(ActionEvent actionEvent) {
        execOper("Commit");
        showPopup("madeupSetsPopup");
    }

    public void setAccBgBtnMaterial(RichSelectOneChoice accBgBtnMaterial) {
        this.accBgBtnMaterial = accBgBtnMaterial;
    }

    public RichSelectOneChoice getAccBgBtnMaterial() {
        return accBgBtnMaterial;
    }

    public void setAccBgBtnColor(RichSelectOneChoice accBgBtnColor) {
        this.accBgBtnColor = accBgBtnColor;
    }

    public RichSelectOneChoice getAccBgBtnColor() {
        return accBgBtnColor;
    }

    public void setAccBgZipColor(RichSelectOneChoice accBgZipColor) {
        this.accBgZipColor = accBgZipColor;
    }

    public RichSelectOneChoice getAccBgZipColor() {
        return accBgZipColor;
    }

    public void setAccBgZipMaterial(RichSelectOneChoice accBgZipMaterial) {
        this.accBgZipMaterial = accBgZipMaterial;
    }

    public RichSelectOneChoice getAccBgZipMaterial() {
        return accBgZipMaterial;
    }

    public void setAccBgBagMaterial(RichSelectOneChoice accBgBagMaterial) {
        this.accBgBagMaterial = accBgBagMaterial;
    }

    public RichSelectOneChoice getAccBgBagMaterial() {
        return accBgBagMaterial;
    }

    public void setAccBgPrintType(RichSelectOneChoice accBgPrintType) {
        this.accBgPrintType = accBgPrintType;
    }

    public RichSelectOneChoice getAccBgPrintType() {
        return accBgPrintType;
    }

    public void setAccBgBagType(RichSelectOneChoice accBgBagType) {
        this.accBgBagType = accBgBagType;
    }

    public RichSelectOneChoice getAccBgBagType() {
        return accBgBagType;
    }

    public void setAccInsInsertType(RichSelectOneChoice accInsInsertType) {
        this.accInsInsertType = accInsInsertType;
    }

    public RichSelectOneChoice getAccInsInsertType() {
        return accInsInsertType;
    }

    public void setAccInsMaterialGsm(RichSelectOneChoice accInsMaterialGsm) {
        this.accInsMaterialGsm = accInsMaterialGsm;
    }

    public RichSelectOneChoice getAccInsMaterialGsm() {
        return accInsMaterialGsm;
    }

    public void setAccInsPaperType(RichSelectOneChoice accInsPaperType) {
        this.accInsPaperType = accInsPaperType;
    }

    public RichSelectOneChoice getAccInsPaperType() {
        return accInsPaperType;
    }

    public void setAccInsLamination(RichSelectOneChoice accInsLamination) {
        this.accInsLamination = accInsLamination;
    }

    public RichSelectOneChoice getAccInsLamination() {
        return accInsLamination;
    }

    public void setAccInsVarnish(RichSelectOneChoice accInsVarnish) {
        this.accInsVarnish = accInsVarnish;
    }

    public RichSelectOneChoice getAccInsVarnish() {
        return accInsVarnish;
    }

    public void setAccInsFixType(RichSelectOneChoice accInsFixType) {
        this.accInsFixType = accInsFixType;
    }

    public RichSelectOneChoice getAccInsFixType() {
        return accInsFixType;
    }

    public void setAccStfStifnerType(RichSelectOneChoice accStfStifnerType) {
        this.accStfStifnerType = accStfStifnerType;
    }

    public RichSelectOneChoice getAccStfStifnerType() {
        return accStfStifnerType;
    }

    public void setAccStfPly(RichSelectOneChoice accStfPly) {
        this.accStfPly = accStfPly;
    }

    public RichSelectOneChoice getAccStfPly() {
        return accStfPly;
    }

    public void setAccStfMaterial(RichSelectOneChoice accStfMaterial) {
        this.accStfMaterial = accStfMaterial;
    }

    public RichSelectOneChoice getAccStfMaterial() {
        return accStfMaterial;
    }

    public void setAccCrtCartonType(RichSelectOneChoice accCrtCartonType) {
        this.accCrtCartonType = accCrtCartonType;
    }

    public RichSelectOneChoice getAccCrtCartonType() {
        return accCrtCartonType;
    }

    public void setAccCrtPrintedType(RichSelectOneChoice accCrtPrintedType) {
        this.accCrtPrintedType = accCrtPrintedType;
    }

    public RichSelectOneChoice getAccCrtPrintedType() {
        return accCrtPrintedType;
    }

    public void setAccCrtOutUom(RichSelectOneChoice accCrtOutUom) {
        this.accCrtOutUom = accCrtOutUom;
    }

    public RichSelectOneChoice getAccCrtOutUom() {
        return accCrtOutUom;
    }

    public void setAccCrtInnUom(RichSelectOneChoice accCrtInnUom) {
        this.accCrtInnUom = accCrtInnUom;
    }

    public RichSelectOneChoice getAccCrtInnUom() {
        return accCrtInnUom;
    }

    public void setAccCrtPly(RichSelectOneChoice accCrtPly) {
        this.accCrtPly = accCrtPly;
    }

    public RichSelectOneChoice getAccCrtPly() {
        return accCrtPly;
    }

    public void setAccCrtMaterial(RichSelectOneChoice accCrtMaterial) {
        this.accCrtMaterial = accCrtMaterial;
    }

    public RichSelectOneChoice getAccCrtMaterial() {
        return accCrtMaterial;
    }

    public void setAccCrtPrintType(RichSelectOneChoice accCrtPrintType) {
        this.accCrtPrintType = accCrtPrintType;
    }

    public RichSelectOneChoice getAccCrtPrintType() {
        return accCrtPrintType;
    }

    public void setAccLblLableType(RichSelectOneChoice accLblLableType) {
        this.accLblLableType = accLblLableType;
    }

    public RichSelectOneChoice getAccLblLableType() {
        return accLblLableType;
    }

    public void setAccLblFoldingType(RichSelectOneChoice accLblFoldingType) {
        this.accLblFoldingType = accLblFoldingType;
    }

    public RichSelectOneChoice getAccLblFoldingType() {
        return accLblFoldingType;
    }

    public void setAccLblMaterial(RichSelectOneChoice accLblMaterial) {
        this.accLblMaterial = accLblMaterial;
    }

    public RichSelectOneChoice getAccLblMaterial() {
        return accLblMaterial;
    }

    public void setAccZipMaterialType(RichSelectOneChoice accZipMaterialType) {
        this.accZipMaterialType = accZipMaterialType;
    }

    public RichSelectOneChoice getAccZipMaterialType() {
        return accZipMaterialType;
    }

    public void setAccZipTeethType(RichSelectOneChoice accZipTeethType) {
        this.accZipTeethType = accZipTeethType;
    }

    public RichSelectOneChoice getAccZipTeethType() {
        return accZipTeethType;
    }

    public void setAccZipUom(RichSelectOneChoice accZipUom) {
        this.accZipUom = accZipUom;
    }

    public RichSelectOneChoice getAccZipUom() {
        return accZipUom;
    }

    public void setAccThrThreadUsage(RichSelectOneChoice accThrThreadUsage) {
        this.accThrThreadUsage = accThrThreadUsage;
    }

    public RichSelectOneChoice getAccThrThreadUsage() {
        return accThrThreadUsage;
    }

    public void setAccThrThreadType(RichSelectOneChoice accThrThreadType) {
        this.accThrThreadType = accThrThreadType;
    }

    public RichSelectOneChoice getAccThrThreadType() {
        return accThrThreadType;
    }

    public void setAccThrMaterial(RichSelectOneChoice accThrMaterial) {
        this.accThrMaterial = accThrMaterial;
    }

    public RichSelectOneChoice getAccThrMaterial() {
        return accThrMaterial;
    }

    public void setAccLengthUom(RichSelectOneChoice accLengthUom) {
        this.accLengthUom = accLengthUom;
    }

    public RichSelectOneChoice getAccLengthUom() {
        return accLengthUom;
    }

    public void setAccElsElasticType(RichSelectOneChoice accElsElasticType) {
        this.accElsElasticType = accElsElasticType;
    }

    public RichSelectOneChoice getAccElsElasticType() {
        return accElsElasticType;
    }

    public void setAccCtcItemType(RichSelectOneChoice accCtcItemType) {
        this.accCtcItemType = accCtcItemType;
    }

    public RichSelectOneChoice getAccCtcItemType() {
        return accCtcItemType;
    }

    public void setAccCtcMaterial(RichSelectOneChoice accCtcMaterial) {
        this.accCtcMaterial = accCtcMaterial;
    }

    public RichSelectOneChoice getAccCtcMaterial() {
        return accCtcMaterial;
    }

    public void setAccFusMaterial(RichSelectOneChoice accFusMaterial) {
        this.accFusMaterial = accFusMaterial;
    }

    public RichSelectOneChoice getAccFusMaterial() {
        return accFusMaterial;
    }

    public void setAccNwvMateria(RichSelectOneChoice accNwvMateria) {
        this.accNwvMateria = accNwvMateria;
    }

    public RichSelectOneChoice getAccNwvMateria() {
        return accNwvMateria;
    }

    public void setAccWdMaterial(RichSelectOneChoice accWdMaterial) {
        this.accWdMaterial = accWdMaterial;
    }

    public RichSelectOneChoice getAccWdMaterial() {
        return accWdMaterial;
    }

    public void setAccBfMaterial(RichSelectOneChoice accBfMaterial) {
        this.accBfMaterial = accBfMaterial;
    }

    public RichSelectOneChoice getAccBfMaterial() {
        return accBfMaterial;
    }

    public void setAccBfMaterialType(RichSelectOneChoice accBfMaterialType) {
        this.accBfMaterialType = accBfMaterialType;
    }

    public RichSelectOneChoice getAccBfMaterialType() {
        return accBfMaterialType;
    }

    public void setAccBtnButtonType(RichSelectOneChoice accBtnButtonType) {
        this.accBtnButtonType = accBtnButtonType;
    }

    public RichSelectOneChoice getAccBtnButtonType() {
        return accBtnButtonType;
    }

    public void setAccBtnButtonMaterial(RichSelectOneChoice accBtnButtonMaterial) {
        this.accBtnButtonMaterial = accBtnButtonMaterial;
    }

    public RichSelectOneChoice getAccBtnButtonMaterial() {
        return accBtnButtonMaterial;
    }

    public void setAccBtnButtonColor(RichSelectOneChoice accBtnButtonColor) {
        this.accBtnButtonColor = accBtnButtonColor;
    }

    public RichSelectOneChoice getAccBtnButtonColor() {
        return accBtnButtonColor;
    }

    public void setAccPprPaperColor(RichSelectOneChoice accPprPaperColor) {
        this.accPprPaperColor = accPprPaperColor;
    }

    public RichSelectOneChoice getAccPprPaperColor() {
        return accPprPaperColor;
    }

    public void setAccPprPaperMaterial(RichSelectOneChoice accPprPaperMaterial) {
        this.accPprPaperMaterial = accPprPaperMaterial;
    }

    public RichSelectOneChoice getAccPprPaperMaterial() {
        return accPprPaperMaterial;
    }

    public void setAccStkStickerType(RichSelectOneChoice accStkStickerType) {
        this.accStkStickerType = accStkStickerType;
    }

    public RichSelectOneChoice getAccStkStickerType() {
        return accStkStickerType;
    }

    public void setAccStkMaterial(RichSelectOneChoice accStkMaterial) {
        this.accStkMaterial = accStkMaterial;
    }

    public RichSelectOneChoice getAccStkMaterial() {
        return accStkMaterial;
    }

    public void setAccStkPeelableType(RichSelectOneChoice accStkPeelableType) {
        this.accStkPeelableType = accStkPeelableType;
    }

    public RichSelectOneChoice getAccStkPeelableType() {
        return accStkPeelableType;
    }

    public void setAccStkPerforatedType(RichSelectOneChoice accStkPerforatedType) {
        this.accStkPerforatedType = accStkPerforatedType;
    }

    public RichSelectOneChoice getAccStkPerforatedType() {
        return accStkPerforatedType;
    }

    public void setAccDiameterUom(RichSelectOneChoice accDiameterUom) {
        this.accDiameterUom = accDiameterUom;
    }

    public RichSelectOneChoice getAccDiameterUom() {
        return accDiameterUom;
    }

    public void setAccStkColor(RichSelectOneChoice accStkColor) {
        this.accStkColor = accStkColor;
    }

    public RichSelectOneChoice getAccStkColor() {
        return accStkColor;
    }

    public void setAccSgItem(RichSelectOneChoice accSgItem) {
        this.accSgItem = accSgItem;
    }

    public RichSelectOneChoice getAccSgItem() {
        return accSgItem;
    }

    public void setAccTpColor(RichSelectOneChoice accTpColor) {
        this.accTpColor = accTpColor;
    }

    public RichSelectOneChoice getAccTpColor() {
        return accTpColor;
    }

    public void setAccTpMaterialType(RichSelectOneChoice accTpMaterialType) {
        this.accTpMaterialType = accTpMaterialType;
    }

    public RichSelectOneChoice getAccTpMaterialType() {
        return accTpMaterialType;
    }

    public void setAccLacType(RichSelectOneChoice accLacType) {
        this.accLacType = accLacType;
    }

    public RichSelectOneChoice getAccLacType() {
        return accLacType;
    }

    public void setAccLacMaterial(RichSelectOneChoice accLacMaterial) {
        this.accLacMaterial = accLacMaterial;
    }

    public RichSelectOneChoice getAccLacMaterial() {
        return accLacMaterial;
    }

    public void setAccLacUom(RichSelectOneChoice accLacUom) {
        this.accLacUom = accLacUom;
    }

    public RichSelectOneChoice getAccLacUom() {
        return accLacUom;
    }

    public void setAccLacColor(RichSelectOneChoice accLacColor) {
        this.accLacColor = accLacColor;
    }

    public RichSelectOneChoice getAccLacColor() {
        return accLacColor;
    }

    public void setAccEyColor(RichSelectOneChoice accEyColor) {
        this.accEyColor = accEyColor;
    }

    public RichSelectOneChoice getAccEyColor() {
        return accEyColor;
    }

    public void setAccEyMaterial(RichSelectOneChoice accEyMaterial) {
        this.accEyMaterial = accEyMaterial;
    }

    public RichSelectOneChoice getAccEyMaterial() {
        return accEyMaterial;
    }

    public void setAccEyFinish(RichSelectOneChoice accEyFinish) {
        this.accEyFinish = accEyFinish;
    }

    public RichSelectOneChoice getAccEyFinish() {
        return accEyFinish;
    }

    public void setAccHeightUom(RichSelectOneChoice accHeightUom) {
        this.accHeightUom = accHeightUom;
    }

    public RichSelectOneChoice getAccHeightUom() {
        return accHeightUom;
    }

    public void setAccHngThicknessUom(RichSelectOneChoice accHngThicknessUom) {
        this.accHngThicknessUom = accHngThicknessUom;
    }

    public RichSelectOneChoice getAccHngThicknessUom() {
        return accHngThicknessUom;
    }

    public void setAccHngHookType(RichSelectOneChoice accHngHookType) {
        this.accHngHookType = accHngHookType;
    }

    public RichSelectOneChoice getAccHngHookType() {
        return accHngHookType;
    }

    public void setAccTapMaterial(RichSelectOneChoice accTapMaterial) {
        this.accTapMaterial = accTapMaterial;
    }

    public RichSelectOneChoice getAccTapMaterial() {
        return accTapMaterial;
    }

    public void setAccTapPrintText(RichSelectOneChoice accTapPrintText) {
        this.accTapPrintText = accTapPrintText;
    }

    public RichSelectOneChoice getAccTapPrintText() {
        return accTapPrintText;
    }

    public void setAccWidthUom(RichSelectOneChoice accWidthUom) {
        this.accWidthUom = accWidthUom;
    }

    public RichSelectOneChoice getAccWidthUom() {
        return accWidthUom;
    }

    public void insertAcc(ActionEvent actionEvent) {
        execOper("CreateInsert");
        logger.warning("Accessory insert button pressed.");
    }

    public void insertArticleBom(ActionEvent actionEvent) {
        execOper("CreateInsertArticleBom");
        logger.warning("CreateInsertArticleBom button pressed.");
        this.articleBomAddButtonProp.setDisabled(true);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.articleBomAddButtonProp);
    }

    public void commitArticleBom(ActionEvent actionEvent) {
        execOper("Commit");
        logger.warning("commitArticleBom button pressed.");
        this.articleBomAddButtonProp.setDisabled(false);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.articleBomAddButtonProp);
    }

    public void rollbackArticleBom(ActionEvent actionEvent) {
        execOper("blankArtBomPage");
        logger.warning("rollbackArticleBom button pressed.");
        this.articleBomAddButtonProp.setDisabled(false);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.articleBomAddButtonProp);
    }

    public void setWvSegment3Cell(RichGridCell wvSegment3Cell) {
        this.wvSegment3Cell = wvSegment3Cell;
    }

    public RichGridCell getWvSegment3Cell() {
        return wvSegment3Cell;
    }

    public void setWvMainPanelFormLayout(RichPanelFormLayout wvMainPanelFormLayout) {
        this.wvMainPanelFormLayout = wvMainPanelFormLayout;
    }

    public RichPanelFormLayout getWvMainPanelFormLayout() {
        return wvMainPanelFormLayout;
    }

    public void wvSegment2Validator(FacesContext facesContext,
                                    UIComponent uIComponent, Object object) {
        if (object != null) {
            int result = 0;
            OperationBinding op =
                bc.getOperationBinding("chkCustSeg2VAlidity");
            op.getParamsMap().put("seg2", object.toString());
            result = (Integer)op.execute();
            if (result <= 0) {
                throw new ValidatorException(new FacesMessage(FacesMessage.SEVERITY_ERROR,
                                                              "Invalid segment2",
                                                              null));
            }
        }
    }

    public void selectChkBoxVCL(ValueChangeEvent vce, String expr) {
        this.setValueToExpression(expr, vce.getNewValue().toString());
        execOper("Commit");
    }

    public void selectAllChkBoxVCL(ValueChangeEvent vce, String iter,
                                   String attr) {
        //vce.getComponent().processUpdates(FacesContext.getCurrentInstance());
        logger.warning("old value = " + vce.getOldValue() +
                       " and new value = " + vce.getNewValue());
        ;
        if (vce.getOldValue() != null || !vce.getNewValue().equals(false)) {
            boolean isSelected = ((Boolean)vce.getNewValue()).booleanValue();
            ViewObject vo = getVO(iter);
            if (vo != null) {
                Row row = null;
                for (int i = 0; i < vo.getEstimatedRowCount(); i++) {
                    row = vo.getRowAtRangeIndex(i);
                    if (row != null) {
                        row.setAttribute(attr, (isSelected ? 1 : 0));
                    }
                }
                execOper("Commit");
                AdfFacesContext.getCurrentInstance().addPartialTarget(vce.getComponent().getParent().getParent());
            }
        }
    }

    public void articleBomFabColorsSelectAllVCL(ValueChangeEvent vce) {
        selectAllChkBoxVCL(vce, "XxpmAbFabricColorsViewChildIterator",
                           "Selected");
    }

    public void articleBomFabSizesSelectAllVCL(ValueChangeEvent vce) {
        selectAllChkBoxVCL(vce, "XxpmAbFabricSizesViewChildIterator",
                           "Selected");
    }

    public void articleBomAccColorsSelectAllVCL(ValueChangeEvent vce) {
        selectAllChkBoxVCL(vce, "XxpmAbAccessoriesColorsViewChildIterator",
                           "Selected");
    }

    public void articleBomAccSizesSelectAllVCL(ValueChangeEvent vce) {
        selectAllChkBoxVCL(vce, "XxpmAbAccessoriesSizesViewChildIterator",
                           "Selected");
    }

    public void insertArticleBomColorSize(String insertOper, String colorIter,
                                          String sizeIter) {
        execOper(insertOper);
        ViewObjectImpl combColorVo =
            (ViewObjectImpl)getVO("ArticleBomCombColorsViewIterator");
        ViewObjectImpl combSizeVo =
            (ViewObjectImpl)getVO("ArticleBomCombSizesViewIterator");
        ViewObject bomColorVo = getVO(colorIter);
        ViewObject bomSizeVo = getVO(sizeIter);
        /////////////////////////////////
        RowQualifier rq =
            new RowQualifier("ArticleId = " + getVO("XxpmArticleBomViewIterator").getCurrentRow().getAttribute("ArticleId"));
        /////////////////////////////////
        Row[] combColorRows = combColorVo.getFilteredRows(rq);
        for (Row row : combColorRows) {
            Row newRow = bomColorVo.createRow();
            newRow.setAttribute("ColorCode", row.getAttribute("ColorCode"));
            newRow.setAttribute("ColorDesc", row.getAttribute("CombColor"));
            bomColorVo.insertRow(newRow);
        }
        /////////////////////////////////
        Row[] combSizeRows = combSizeVo.getFilteredRows(rq);
        for (Row row : combSizeRows) {
            Row newRow = bomSizeVo.createRow();
            newRow.setAttribute("SizeCode", row.getAttribute("SizeCode"));
            newRow.setAttribute("SizeDesc", row.getAttribute("CombSize"));
            bomSizeVo.insertRow(newRow);
        }
    }

    public void insertAbFabricAL(ActionEvent actionEvent) {
        //        execOper("Commit");
        //        execOper("insertArticleBomFabColorsSizes");
        //        AdfFacesContext.getCurrentInstance().addPartialTarget(this.articleBomFabricTable);
        insertArticleBomColorSize("CreateInsertArticleBomFab",
                                  "XxpmAbFabricColorsViewChildIterator",
                                  "XxpmAbFabricSizesViewChildIterator");
    }

    public void insertAbAccessoriesAL(ActionEvent actionEvent) {
        //        execOper("Commit");
        //        execOper("insertArticleBomAccColorsSizes");
        //        AdfFacesContext.getCurrentInstance().addPartialTarget(this.articleBomAccessoriesTable);
        insertArticleBomColorSize("CreateInsertArticleBomAcc",
                                  "XxpmAbAccessoriesColorsViewChildIterator",
                                  "XxpmAbAccessoriesSizesViewChildIterator");
    }

    public void saveOnValChange(String expr, ValueChangeEvent vce) {
        this.setValueToExpression(expr, vce.getNewValue());
        execOper("Commit");
    }

    public void articleBomFabAccActiveButtonAL(String iter) {
        ViewObject vo = getVO(iter);
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                Integer active =
                    Integer.parseInt(String.valueOf(curRow.getAttribute("Active")));
                curRow.setAttribute("Active", (active == 1 ? 0 : 1));
            }
        }
        execOper("Commit");
    }

    public void articleBomFabActiveButtonAL(ActionEvent ae) {
        this.articleBomFabAccActiveButtonAL("XxpmArticleBomFabricViewChildIterator");
    }

    public void articleBomAccActiveButtonAL(ActionEvent ae) {
        this.articleBomFabAccActiveButtonAL("XxpmArticleBomAccessoriesViewChildIterator");
    }

    public void articleBomFabAccDetailsSelectVCL(ValueChangeEvent vce) {
        saveOnValChange("#{row.bindings.Selected.inputValue}", vce);
    }

    public void articleBomArticleVCL(ValueChangeEvent vce) {
        //setValueToExpression("#{bindings.ArticleId.inputValue}", vce.getNewValue());
        ViewObject fabVo = getVO("XxpmArticleBomFabricViewChildIterator");
        ViewObject accVo = getVO("XxpmArticleBomAccessoriesViewChildIterator");
        //        logger.warning("Fab rows: " + fabVo.getEstimatedRowCount());
        //        logger.warning("Acc rows: " + accVo.getEstimatedRowCount());
        if (fabVo.getEstimatedRowCount() > 0 ||
            accVo.getEstimatedRowCount() > 0) {
            ADFContext.getCurrent().getSessionScope().put("articleOldVal",
                                                          getValueFrmExpression("#{bindings.ArticleId.attributeValue}"));
            showPopup("articleBomArticlePopup");
        }
    }

    public void articleBomArticleDL(DialogEvent de) {
        if (de.getOutcome().equals(DialogEvent.Outcome.yes)) {
            execOper("updateArticleBomDetails");
            logger.warning("Article Bom Article Outcome ===== Yes.");
        } else {
            getVO("XxpmArticleBomViewIterator").getCurrentRow().setAttribute("ArticleId",
                                                                             ADFContext.getCurrent().getSessionScope().get("articleOldVal"));
            logger.warning("Article ID ===== " +
                    //                               ADFContext.getCurrent().getSessionScope().get("articleOldVal"));
                    ADFContext.getCurrent().getSessionScope().put("articleOldVal",
                                                                  null));
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.articleBomArticleId);
            logger.warning("Article Bom Article Outcome ===== No.");
        }
    }

    public void setArticleBomArticleId(RichSelectOneChoice articleBomArticleId) {
        this.articleBomArticleId = articleBomArticleId;
    }

    public RichSelectOneChoice getArticleBomArticleId() {
        return articleBomArticleId;
    }

    public void deleteArticleBomFabricDialog(DialogEvent de) {
        delRec(de, "DeleteArticleBomFabric");
    }

    public void deleteArticleBomAccessoriesDialog(DialogEvent de) {
        delRec(de, "DeleteArticleBomAccessories");
    }

    public void articleBomStatus(String status) {
        logger.warning("status ===== " + status);
        ViewObject vo = getVO("XxpmArticleBomReadOnlyViewIterator");
        if ("Approved".equals(status)) {
            int result = 0;
            OperationBinding op = bc.getOperationBinding("articleBomProc");
            result = (Integer)op.execute();
            logger.warning("Result ===== " + result);
            if (result == 0) {
                showError("There is an error in BOM approval. For more information please view log.");
                return;
            }
        }
        if (vo != null) {
            vo.executeQuery();
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                if ("Approved".equals(status)) {
                    curRow.setAttribute("RejectReason", null);
                }
                curRow.setAttribute("ApprovalStatus", status);
                curRow.setAttribute("ApprovalFlag", 1);
                curRow.setAttribute("ApprovalDate",
                                    new oracle.jbo.domain.Date(new java.sql.Timestamp(Calendar.getInstance().getTimeInMillis())));
                execOper("Commit");
            }
        }

        FacesContext facesContext = FacesContext.getCurrentInstance();
        UIViewRoot root = facesContext.getViewRoot();
        RichCommandToolbarButton backButton =
            (RichCommandToolbarButton)root.findComponent(articleBomApprBackBtn.getClientId(facesContext));
        ActionEvent actionEvent = new ActionEvent(backButton);
        actionEvent.queue();
    }

    public void articleBomApproveAL(ActionEvent ae) {
        articleBomStatus("Approved");
    }

    public void setArticleBomApprBackBtn(RichCommandToolbarButton articleBomApprBackBtn) {
        this.articleBomApprBackBtn = articleBomApprBackBtn;
    }

    public RichCommandToolbarButton getArticleBomApprBackBtn() {
        return articleBomApprBackBtn;
    }

    public void abSendForApprovalAL(ActionEvent actionEvent) {
        ViewObject vo = getVO("XxpmArticleBomViewIterator");
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                curRow.setAttribute("ApprovalStatus", "In Process");
                curRow.setAttribute("ReqApprDate",
                                    new oracle.jbo.domain.Date(new java.sql.Timestamp(Calendar.getInstance().getTimeInMillis())));
                OperationBinding commitBinding =
                    bc.getOperationBinding("Commit");
                commitBinding.execute();
                if (commitBinding.getErrors().isEmpty()) {
                    showMessage("Approval has been successfully sent to line manager.");
                }
            }
        }
        this.articleBomAddButtonProp.setDisabled(false);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.articleBomAddButtonProp);
    }

    public void articleBomRejectAL(ActionEvent actionEvent) {
        articleBomStatus("Rejected");
    }

    public void refreshAbApprovalAL(ActionEvent ae) {
        getVO("ArticleBomApprovalViewIterator").executeQuery();
        AdfFacesContext.getCurrentInstance().addPartialTarget(ae.getComponent().getParent().getParent().getParent());
    }

    public void setArticleBomAccessoriesTable(RichTable articleBomAccessoriesTable) {
        this.articleBomAccessoriesTable = articleBomAccessoriesTable;
    }

    public RichTable getArticleBomAccessoriesTable() {
        return articleBomAccessoriesTable;
    }

    public void setArticleBomFabricTable(RichTable articleBomFabricTable) {
        this.articleBomFabricTable = articleBomFabricTable;
    }

    public RichTable getArticleBomFabricTable() {
        return articleBomFabricTable;
    }

    public void setSearchLovArtBom(RichInputListOfValues searchLovArtBom) {
        this.searchLovArtBom = searchLovArtBom;
    }

    public RichInputListOfValues getSearchLovArtBom() {
        return searchLovArtBom;
    }

    public void addMadeupArticleBomGroupVset(ActionEvent actionEvent) {
        ((AttributeBinding)bc.getControlBinding("BindValueSet")).setInputValue("XXPM_ARTICLE_BOM_GROUP");
        logger.warning("Value set id ===== " +
                       ((AttributeBinding)bc.getControlBinding("BindValueSet")).getInputValue());
        showPopup("AddValPopup");
        ;
    }

    public void setMadeupArticleBomGroup(RichSelectOneChoice madeupArticleBomGroup) {
        this.madeupArticleBomGroup = madeupArticleBomGroup;
    }

    public RichSelectOneChoice getMadeupArticleBomGroup() {
        return madeupArticleBomGroup;
    }

    public void refreshArticleBomAL(ActionEvent actionEvent) {
        execWithParamsSetCurRow("XxpmArticleBomViewIterator");
    }

    public void accCategoryChangeVCL(ValueChangeEvent valueChangeEvent) {
        ViewObject vo = getVO("XxpmItemMasterAccViewIterator");
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                curRow.setAttribute("BagDimensionsTrans", null);
                curRow.setAttribute("BagSizeTrans", null);
                curRow.setAttribute("BagResultantTrans", null);
                curRow.setAttribute("ProgramNameDesc", null);
                curRow.setAttribute("InsDimensionsTrans", null);
                curRow.setAttribute("InsSizeTrans", null);
                curRow.setAttribute("InsResultantTrans", null);
                curRow.setAttribute("StfSizeTrans", null);
                curRow.setAttribute("StfResultantTrans", null);
                curRow.setAttribute("CrtOutDimensionTrans", null);
                curRow.setAttribute("CrtInDimensionTrans", null);
                curRow.setAttribute("CrtSizeTrans", null);
                curRow.setAttribute("CrtResultantTrans", null);
                curRow.setAttribute("LblPlainSizeTrans", null);
                curRow.setAttribute("LblFoldSizeTrans", null);
                curRow.setAttribute("LblResultantTrans", null);
                curRow.setAttribute("ZipResultantTrans", null);
                curRow.setAttribute("ThrResultantTrans", null);
                curRow.setAttribute("ElsResultantTrans", null);
                curRow.setAttribute("CtcResultantTrans", null);
                curRow.setAttribute("FusResultantTrans", null);
                curRow.setAttribute("NwvResultantTrans", null);
                curRow.setAttribute("WdResultantTrans", null);
                curRow.setAttribute("BfResultantTrans", null);
                curRow.setAttribute("BtnResultantTrans", null);
                curRow.setAttribute("PprResultantTrans", null);
                curRow.setAttribute("StkResultantTrans", null);
                curRow.setAttribute("SgResultantTrans", null);
                curRow.setAttribute("TpResultantTrans", null);
                curRow.setAttribute("TgResultantTrans", null);
                curRow.setAttribute("LacResultantTrans", null);
                curRow.setAttribute("EyResultantTrans", null);
                curRow.setAttribute("HngResultantTrans", null);
                curRow.setAttribute("PmResultantTrans", null);
                curRow.setAttribute("StrResultantTrans", null);
                curRow.setAttribute("TapResultantTrans", null);
                curRow.setAttribute("RowStatus", null);
                curRow.setAttribute("Segment3", null);
                curRow.setAttribute("Segment7", null);
                //                curRow.setAttribute("ImId", null);
                curRow.setAttribute("BgBagDimensions", null);
                curRow.setAttribute("BgBagMaterial", null);
                curRow.setAttribute("BgBagPocket", null);
                curRow.setAttribute("BgBagType", null);
                curRow.setAttribute("BgBpLength", null);
                curRow.setAttribute("BgBpWidth", null);
                curRow.setAttribute("BgBtnColor", null);
                curRow.setAttribute("BgBtnMaterial", null);
                curRow.setAttribute("BgFlap", null);
                curRow.setAttribute("BgFpLength", null);
                curRow.setAttribute("BgFpWidth", null);
                curRow.setAttribute("BgGusset", null);
                curRow.setAttribute("BgMaterialGuage", null);
                curRow.setAttribute("BgMaterialSpecs", null);
                curRow.setAttribute("BgPrintType", null);
                curRow.setAttribute("BgZipColor", null);
                curRow.setAttribute("BgZipMaterial", null);
                curRow.setAttribute("BgZipSize", null);
                curRow.setAttribute("InsDimensions", null);
                curRow.setAttribute("InsFixType", null);
                curRow.setAttribute("InsGusset", null);
                curRow.setAttribute("InsInsertType", null);
                curRow.setAttribute("InsLamination", null);
                curRow.setAttribute("InsMaterialGsm", null);
                curRow.setAttribute("InsPaperType", null);
                curRow.setAttribute("InsVarnish", null);
                curRow.setAttribute("StfGusset1", null);
                curRow.setAttribute("StfGusset2", null);
                curRow.setAttribute("StfMaterial", null);
                curRow.setAttribute("StfPly", null);
                curRow.setAttribute("StfStifnerType", null);
                curRow.setAttribute("CrtBusting", null);
                curRow.setAttribute("CrtCartonType", null);
                curRow.setAttribute("CrtEct", null);
                curRow.setAttribute("CrtInnDimensions", null);
                curRow.setAttribute("CrtInnHeight", null);
                curRow.setAttribute("CrtInnLength", null);
                curRow.setAttribute("CrtInnUom", null);
                curRow.setAttribute("CrtInnWidth", null);
                curRow.setAttribute("CrtMaterial", null);
                curRow.setAttribute("CrtOutDimensions", null);
                curRow.setAttribute("CrtOutHeight", null);
                curRow.setAttribute("CrtOutLength", null);
                curRow.setAttribute("CrtOutUom", null);
                curRow.setAttribute("CrtOutWidth", null);
                curRow.setAttribute("CrtPly", null);
                curRow.setAttribute("CrtPrintType", null);
                curRow.setAttribute("CrtPrintedType", null);
                curRow.setAttribute("LblFoldLength", null);
                curRow.setAttribute("LblFoldSize", null);
                curRow.setAttribute("LblFoldSwingMargin", null);
                curRow.setAttribute("LblFoldWidth", null);
                curRow.setAttribute("LblFoldingType", null);
                curRow.setAttribute("LblLableType", null);
                curRow.setAttribute("LblMaterial", null);
                curRow.setAttribute("LblPlainLength", null);
                curRow.setAttribute("LblPlainSize", null);
                curRow.setAttribute("LblPlainSwingMargin", null);
                curRow.setAttribute("LblPlainWidth", null);
                curRow.setAttribute("ZipMaterialType", null);
                curRow.setAttribute("ZipTeethType", null);
                curRow.setAttribute("ZipUom", null);
                curRow.setAttribute("ThrMaterial", null);
                curRow.setAttribute("ThrTexSizePly", null);
                curRow.setAttribute("ThrThreadType", null);
                curRow.setAttribute("ThrThreadUsage", null);
                curRow.setAttribute("ElsCordType", null);
                curRow.setAttribute("ElsElasticType", null);
                curRow.setAttribute("ElsRatio", null);
                curRow.setAttribute("CtcDiaThickness", null);
                curRow.setAttribute("CtcMaterial", null);
                curRow.setAttribute("FusGsm", null);
                curRow.setAttribute("FusMaterial", null);
                curRow.setAttribute("NwvGsm", null);
                curRow.setAttribute("NwvMaterial", null);
                curRow.setAttribute("WdGsm", null);
                curRow.setAttribute("WdLoaft", null);
                curRow.setAttribute("WdMaterial", null);
                curRow.setAttribute("WdRatio", null);
                curRow.setAttribute("BfMaterial", null);
                curRow.setAttribute("BfMaterialType", null);
                curRow.setAttribute("BtnButtonColor", null);
                curRow.setAttribute("BtnButtonMaterial", null);
                curRow.setAttribute("BtnButtonSize", null);
                curRow.setAttribute("BtnButtonType", null);
                curRow.setAttribute("BtnHolesNum", null);
                curRow.setAttribute("PprPaperColor", null);
                curRow.setAttribute("PprPaperMaterial", null);
                curRow.setAttribute("StkColor", null);
                curRow.setAttribute("StkMaterial", null);
                curRow.setAttribute("StkPeelableType", null);
                curRow.setAttribute("StkPerforatedType", null);
                curRow.setAttribute("StkStickerType", null);
                curRow.setAttribute("StkText", null);
                curRow.setAttribute("SgItem", null);
                curRow.setAttribute("SgWeight", null);
                curRow.setAttribute("TpColor", null);
                curRow.setAttribute("TpMaterialType", null);
                curRow.setAttribute("LacColor", null);
                curRow.setAttribute("LacMaterial", null);
                curRow.setAttribute("LacType", null);
                curRow.setAttribute("LacUom", null);
                curRow.setAttribute("EyColor", null);
                curRow.setAttribute("EyFinish", null);
                curRow.setAttribute("EyMaterial", null);
                curRow.setAttribute("HngHookType", null);
                curRow.setAttribute("HngMaterialCombination", null);
                curRow.setAttribute("HngThickness", null);
                curRow.setAttribute("HngThicknessUom", null);
                curRow.setAttribute("StrDescription", null);
                curRow.setAttribute("TapMaterial", null);
                curRow.setAttribute("TapPrintText", null);
                curRow.setAttribute("AccDiameter", null);
                curRow.setAttribute("AccDiameterUom", null);
                curRow.setAttribute("AccHeight", null);
                curRow.setAttribute("AccHeightUom", null);
                curRow.setAttribute("AccLength", null);
                curRow.setAttribute("AccLength1", null);
                curRow.setAttribute("AccLength1Uom", null);
                curRow.setAttribute("AccLength2", null);
                curRow.setAttribute("AccLength2Uom", null);
                curRow.setAttribute("AccLengthUom", null);
                curRow.setAttribute("AccListPrice", null);
                curRow.setAttribute("AccRemarks", null);
                curRow.setAttribute("AccWastage", null);
                curRow.setAttribute("AccWidth", null);
                curRow.setAttribute("AccWidth1", null);
                curRow.setAttribute("AccWidth1Uom", null);
                curRow.setAttribute("AccWidth2", null);
                curRow.setAttribute("AccWidth2Uom", null);
                curRow.setAttribute("AccWidthUom", null);
                curRow.setAttribute("CtcItemType", null);
                curRow.setAttribute("Description", null);
                curRow.setAttribute("FolderCode", null);
                curRow.setAttribute("MinOrderQty", null);
                curRow.setAttribute("AccItemUom", null);
                curRow.setAttribute("AccCustVal", null);
                curRow.setAttribute("InsText", null);
                curRow.setAttribute("CrtText", null);

            }
        }
    }


    public void accBagPocketVCL(ValueChangeEvent vce) {
        ViewObject vo = getVO("XxpmItemMasterAccViewIterator");
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                curRow.setAttribute("BgFpLength", "");
                curRow.setAttribute("BgFpWidth", "");
                curRow.setAttribute("BgBpLength", "");
                curRow.setAttribute("BgBpWidth", "");
            }
        }
    }


    public void accHeightVCL(ValueChangeEvent vce) {
        ViewObject vo = getVO("XxpmItemMasterAccViewIterator");
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                if (vce.getNewValue() == null) {
                    curRow.setAttribute("AccHeightUom", null);
                    AdfFacesContext.getCurrentInstance().addPartialTarget(accHeightUom);
                }
            }
        }
    }

    public void accLengthVCL(ValueChangeEvent vce) {
        ViewObject vo = getVO("XxpmItemMasterAccViewIterator");
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                if (vce.getNewValue() == null) {
                    curRow.setAttribute("AccLengthUom", null);
                    AdfFacesContext.getCurrentInstance().addPartialTarget(accLengthUom);
                }
            }
        }
    }

    public void accThicknessVCL(ValueChangeEvent vce) {
        ViewObject vo = getVO("XxpmItemMasterAccViewIterator");
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                if (vce.getNewValue() == null) {
                    curRow.setAttribute("HngThicknessUom", null);
                    AdfFacesContext.getCurrentInstance().addPartialTarget(accHngThicknessUom);
                }
            }
        }
    }

    public void accDiameterVCL(ValueChangeEvent vce) {
        ViewObject vo = getVO("XxpmItemMasterAccViewIterator");
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                if (vce.getNewValue() == null) {
                    curRow.setAttribute("AccDiameterUom", null);
                    AdfFacesContext.getCurrentInstance().addPartialTarget(accDiameterUom);
                }
            }
        }
    }

    public void setAccDiameterUomStrcker(RichSelectOneChoice accDiameterUomStrcker) {
        this.accDiameterUomStrcker = accDiameterUomStrcker;
    }

    public RichSelectOneChoice getAccDiameterUomStrcker() {
        return accDiameterUomStrcker;
    }

    public void insertPoHeader(ActionEvent actionEvent) {
        execOper("CreateInsertPoHeader");
        logger.warning("insertPoHeader button pressed.");
        this.poAddButtonProp.setDisabled(true);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.poAddButtonProp);
    }

    public void commitPo(ActionEvent actionEvent) {
        execOper("Commit");
        logger.warning("commitPo button pressed.");
        this.poAddButtonProp.setDisabled(false);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.poAddButtonProp);
    }

    public void rollbackPo(ActionEvent actionEvent) {
        execOper("blankPoPage");
        logger.warning("rollbackPo button pressed.");
        this.poAddButtonProp.setDisabled(false);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.poAddButtonProp);
    }

    public void poSoHeaderIdVCL(ValueChangeEvent vce) {
        ViewObject fabLinesVo = getVO("XxpmPoLinesViewFabChildIterator");
        ViewObject accLinesVo = getVO("XxpmPoLinesViewAccChildIterator");
        //        logger.warning("PO Lines Fab view rows: " +
        //                           fabLinesVo.getEstimatedRowCount());
        //        logger.warning("PO Lines Fab view rows: " +
        //                           accLinesVo.getEstimatedRowCount());
        if (fabLinesVo.getEstimatedRowCount() > 0 ||
            accLinesVo.getEstimatedRowCount() > 0) {
            ADFContext.getCurrent().getSessionScope().put("soHeaderIdOldVal",
                                                          getValueFrmExpression("#{bindings.SoHeaderId.attributeValue}"));
            showPopup("poSoNumPopup");
        } else {
            setValueToExpression("#{bindings.SoHeaderId.inputValue}",
                                 vce.getNewValue());
            logger.warning("So Header ID ===== " +
                           getValueFrmExpression("#{bindings.SoHeaderId.attributeValue}"));
            execOper("Commit");
            ;
            execInsertPoLinesWithValues(2,
                                        new Integer(getValueFrmExpression("#{bindings.SoHeaderId.attributeValue}")),
                                        2);
            execOper("Commit");
            execOper("updatePoHeaderLovsAccessor");
            ResetUtils.reset(this.poSoHeaderId);
            execWithParamsSetCurRow("XxpmPoHeaderViewIterator");
        }
    }

    public void execInsertPoLinesWithValues(Integer type, Integer soVal,
                                            Integer transType) {
        OperationBinding op = bc.getOperationBinding("saleOrderBomsStatus");
        Integer soHeaderId = null;

        ViewObject vo = getVO("XxpmPoHeaderViewIterator");
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                logger.warning("Prog ID = " + curRow.getAttribute("ProgId"));

                if (type == 1) {
                    soHeaderId = (Integer)curRow.getAttribute("SoHeaderId");
                } else {
                    soHeaderId = soVal;
                }

                logger.warning("So Header ID = " + soHeaderId);
                logger.warning("PO ID = " + curRow.getAttribute("PoHeaderId"));
                ////////////////////////
                op.getParamsMap().put("hid", soHeaderId);
                Integer result = Integer.valueOf(op.execute().toString());
                if (result < 1) {
                    this.showError("Some or All boms for this sale order are not approved");
                    return;
                }
                ////////////////////////
                op = bc.getOperationBinding("insertPoLines");
                op.getParamsMap().put("prog", curRow.getAttribute("ProgId"));
                op.getParamsMap().put("hid", soHeaderId);
                op.getParamsMap().put("poId",
                                      curRow.getAttribute("PoHeaderId"));
                op.getParamsMap().put("transType", transType);
                op.execute();
            }
        }
    }

    public void soHeaderIdDL(DialogEvent de) {
        if (de.getOutcome().equals(DialogEvent.Outcome.yes)) {
            execInsertPoLinesWithValues(1, null, 2);
            logger.warning("SO Header ID Dialog Outcome ===== Yes.");
        } else {
            getVO("XxpmPoHeaderViewIterator").getCurrentRow().setAttribute("SoHeaderId",
                                                                           ADFContext.getCurrent().getSessionScope().get("soHeaderIdOldVal"));
            logger.warning("SO Header ID ===== " +
                    //                               ADFContext.getCurrent().getSessionScope().get("soHeaderIdOldVal"));
                    ADFContext.getCurrent().getSessionScope().put("soHeaderIdOldVal",
                                                                  null));
            AdfFacesContext.getCurrentInstance().addPartialTarget(this.poSoHeaderId);
            logger.warning("SO Header ID Dialog Outcome ===== No.");
        }
        execOper("Commit");
        execOper("updatePoHeaderLovsAccessor");
        ResetUtils.reset(this.poSoHeaderId);
        execWithParamsSetCurRow("XxpmPoHeaderViewIterator");
    }

    /*     public void searchItemPoButton(ActionEvent actionEvent) {
        execOper("ExecuteWithParams");
        this.articleBomAddButtonProp.setDisabled(false);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.articleBomAddButtonProp);
    } */

    public void setSearchLovPo(RichInputListOfValues searchLovPo) {
        this.searchLovPo = searchLovPo;
    }

    public RichInputListOfValues getSearchLovPo() {
        return searchLovPo;
    }

    public void refreshPoLines(ActionEvent actionEvent) {
        execInsertPoLinesWithValues(1, null, 1);
    }

    public void setPoSoHeaderId(RichSelectOneChoice poSoHeaderId) {
        this.poSoHeaderId = poSoHeaderId;
    }

    public RichSelectOneChoice getPoSoHeaderId() {
        return poSoHeaderId;
    }

    public void splitPoLines(String iter) {
        ViewObject vo = getVO(iter);
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                Integer indx = vo.getCurrentRowIndex();
                Row newRow = vo.createRow();
                newRow.setAttribute("PoHeaderId",
                                    curRow.getAttribute("PoHeaderId"));
                newRow.setAttribute("InventoryItemId",
                                    curRow.getAttribute("InventoryItemId"));
                newRow.setAttribute("Segment2",
                                    curRow.getAttribute("Segment2"));
                newRow.setAttribute("Description",
                                    curRow.getAttribute("Description"));
                newRow.setAttribute("Uom", curRow.getAttribute("Uom"));
                newRow.setAttribute("ItemType",
                                    curRow.getAttribute("ItemType"));
                newRow.setAttribute("Consumption",
                                    curRow.getAttribute("Consumption"));
                newRow.setAttribute("SoLineQty",
                                    curRow.getAttribute("SoLineQty"));
                newRow.setAttribute("PoQnty", curRow.getAttribute("PoQnty"));
                newRow.setAttribute("ActOrderedQty",
                                    Math.round(((Double)curRow.getAttribute("ActOrderedQty")).doubleValue() /
                                               2));
                curRow.setAttribute("ActOrderedQty",
                                    Math.round(((Double)curRow.getAttribute("ActOrderedQty")).doubleValue() /
                                               2));
                newRow.setAttribute("SoLineRate",
                                    curRow.getAttribute("SoLineRate"));
                newRow.setAttribute("Moq", curRow.getAttribute("Moq"));
                newRow.setAttribute("VendorId",
                                    curRow.getAttribute("VendorId"));
                newRow.setAttribute("VendorName",
                                    curRow.getAttribute("VendorName"));
                newRow.setAttribute("VendorSiteId",
                                    curRow.getAttribute("VendorSiteId"));
                vo.insertRowAtRangeIndex(indx + 1, newRow);
                vo.setCurrentRow(newRow);
            }
        }
    }

    public void splitPoFabLinesAL(ActionEvent actionEvent) {
        splitPoLines("XxpmPoLinesViewFabChildIterator");
    }

    public void splitPoAccLinesAL(ActionEvent actionEvent) {
        splitPoLines("XxpmPoLinesViewAccChildIterator");
    }

    /* public void setValueToEL(String el, Object val) {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        ELContext elContext = facesContext.getELContext();
        ExpressionFactory expressionFactory =
            facesContext.getApplication().getExpressionFactory();
        ValueExpression exp =
            expressionFactory.createValueExpression(elContext, el,
                                                    Object.class);
        exp.setValue(elContext, val);
    } */

    public void searchItemSetBomVCL(ValueChangeEvent vce) {

        searchAction("BindBomNum", (String)vce.getNewValue(),
                     this.searchLovSetBom);
    }

    public void searchItemSetBomButton(ActionEvent ae) {
        searchAction("BindBomNum", "", this.searchLovSetBom);
    }

    public void rollbackSetBom(ActionEvent ae) {
        execOper("blankSetBomPage");
        logger.warning("Rollback printing button pressed.");
    }

    public void createSetBomAL(ActionEvent actionEvent) {
        //        OperationBinding commitOper = bc.getOperationBinding("Commit");
        //        commitOper.execute();
        //        if (commitOper.getErrors().isEmpty()) {
        execOper("Commit");
        int result = 0;
        ViewObject vo = getVO("XxpmSetBomViewIterator");
        Row curRow = null;
        if (vo != null) {
            curRow = vo.getCurrentRow();
            //            OperationBinding op = bc.getOperationBinding("createSetBom");
            OperationBinding op = bc.getOperationBinding("setBomProc");
            result = (Integer)op.execute();
            logger.warning("Result ===== " + result);
            //        execWithParamsSetCurRow("XxpmSetBomViewIterator");
            vo.executeQuery();
            if (curRow != null) {
                OperationBinding refreshOper =
                    bc.getOperationBinding("setCurrentRowWithKeyValueSetBom");
                refreshOper.getParamsMap().put("rowKey",
                                               curRow.getAttribute("SetBomId"));
                refreshOper.execute();
            }
        }
        //        }
    }

    public void setBomSetIdVCL(ValueChangeEvent vce) {
        setValueToExpression("#{bindings.SetId.inputValue}",
                             vce.getNewValue());
        execOper("Commit");
        ViewObject setBomVo = getVO("XxpmSetBomViewIterator");
        if (setBomVo != null) {
            Row currRow = setBomVo.getCurrentRow();
            if (currRow != null) {
                OperationBinding op =
                    bc.getOperationBinding("insetArticleIntoSetBom");
                op.getParamsMap().put("progId",
                                      currRow.getAttribute("ProgId"));
                op.getParamsMap().put("setId", currRow.getAttribute("SetId"));
                op.getParamsMap().put("setBomId",
                                      currRow.getAttribute("SetBomId"));
                op.getParamsMap().put("s4",
                                      currRow.getAttribute("ColorTrans"));
                op.getParamsMap().put("s5", currRow.getAttribute("SizeTrans"));
                op.execute();
            }
        }
        getVO("XxpmSetBomArticlesViewChildIterator").executeQuery();
    }

    public void commitSetBom(ActionEvent ae) {
        OperationBinding op = bc.getOperationBinding("Commit");
        op.execute();
        if (op.getErrors().isEmpty()) {
            showSaveMessage("setBomCreationMsg");
        }

    }

    public void setSearchLovSetBom(RichInputListOfValues searchLovSetBom) {
        this.searchLovSetBom = searchLovSetBom;
    }

    public RichInputListOfValues getSearchLovSetBom() {
        return searchLovSetBom;
    }

    public void copyMadeupSetAL(ActionEvent actionEvent) {
        execOper("copymadeupSetItem");
    }

    public void generatePOAL(ActionEvent actionEvent) {
        execOper("Commit");
        execOper("generatePO");
        execWithParamsSetCurRow("XxpmPoHeaderViewIterator");
        /* DCIteratorBinding dcibFab = (DCIteratorBinding)bc.get("XxpmPoLinesViewFabChildIterator");
        DCIteratorBinding dcibAcc = (DCIteratorBinding)bc.get("XxpmPoLinesViewAccChildIterator");
        dcibFab.executeQuery();
        dcibAcc.executeQuery(); */
        this.poAddButtonProp.setDisabled(false);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.poAddButtonProp);
    }

    public void insertSetBomAccessoryAL(ActionEvent actionEvent) {
        ViewObject vo = getVO("XxpmSetBomAccessoriesViewChildIterator");
        if (vo != null) {
            Row newRow = vo.createRow();
            newRow.setAttribute("Active", 1);
            vo.insertRow(newRow);
        }

    }

    public void setDyStandard(RichSelectOneChoice dyStandard) {
        this.dyStandard = dyStandard;
    }

    public RichSelectOneChoice getDyStandard() {
        return dyStandard;
    }

    public void setActiveBuyer(String activeBuyer) {
        this.activeBuyer = activeBuyer;
    }

    public String getActiveBuyer() {
        //return activeBuyer;
        String result = null;
        OperationBinding op = bc.getOperationBinding("getActiveUserAgent");
        result = (op.execute() != null ? String.valueOf(op.execute()) : null);
        return result;
    }

    /* public Integer vendorIdVCL() {
        Integer result = null;
        OperationBinding op =
            bc.getOperationBinding("getDefaultValForVendorSiteId");
        result = (Integer)op.execute();
        return result;
    } */

    public void vendorIdFabVCL(ValueChangeEvent vce) {
        ViewObject vo = getVO("XxpmPoLinesViewFabChildIterator");
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                setValueToExpression("#{row.bindings.VendorName.inputValue}",
                                     vce.getNewValue());
                curRow.setAttribute("VendorSiteId",
                                    (Integer)bc.getOperationBinding("getDefaultValForVendorSiteIdFab").execute());
                logger.warning("Vendor site id = " +
                               bc.getOperationBinding("getDefaultValForVendorSiteIdFab").execute());

                ;
            }
        }
    }

    public void vendorIdAccVCL(ValueChangeEvent vce) {
        ViewObject vo = getVO("XxpmPoLinesViewAccChildIterator");
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                setValueToExpression("#{row.bindings.VendorName.inputValue}",
                                     vce.getNewValue());
                curRow.setAttribute("VendorSiteId",
                                    (Integer)bc.getOperationBinding("getDefaultValForVendorSiteIdAcc").execute());
                logger.warning("Vendor site id = " +
                               bc.getOperationBinding("getDefaultValForVendorSiteIdAcc").execute());

            }
        }
    }

    public void copyDyItemUpdateStatus(ActionEvent actionEvent) {
        copyItemUpdateStatus("XxpmItemMasterDyViewIterator");
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.dyMainPanelFormLayout);
    }

    public void setDyMainPanelFormLayout(RichPanelFormLayout dyMainPanelFormLayout) {
        this.dyMainPanelFormLayout = dyMainPanelFormLayout;
    }

    public RichPanelFormLayout getDyMainPanelFormLayout() {
        return dyMainPanelFormLayout;
    }

    public void setPrnMainPanelFormLayout(RichPanelFormLayout prnMainPanelFormLayout) {
        this.prnMainPanelFormLayout = prnMainPanelFormLayout;
    }

    public RichPanelFormLayout getPrnMainPanelFormLayout() {
        return prnMainPanelFormLayout;
    }

    public void copyPrnItemUpdateStatus(ActionEvent actionEvent) {
        copyItemUpdateStatus("XxpmItemMasterPrnViewIterator");
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.prnMainPanelFormLayout);
    }

    public String getCombExpToExcelFileName() {
        //return combExpToExcelFileName;
        String result = null;
        ViewObject vo = getVO("XxpmMadeupArticlesViewProgChildIterator");
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                result = curRow.getAttribute("ArticleName") + " Combinations";
            }
        }

        Date curDate = new Date();
        SimpleDateFormat ft = new SimpleDateFormat("E dd-MM-yyyy hh.mm.ss a");

        logger.warning("Current Date: " + ft.format(curDate));
        return result + " " + ft.format(curDate);
    }

    public void accCatTypeVCL(ValueChangeEvent vce) {
        setValueToExpression("#{bindings.AccCategoryTypeLov.inputValue}",
                             vce.getNewValue());
        StringBuffer catBuf = new StringBuffer();
        String result = null;
        JUCtrlListBinding cat =
            (JUCtrlListBinding)bc.get("AccCategoryTypeLov");
        Object[] catVals = cat.getSelectedValues();
        for (int i = 0; i < catVals.length; i++) {
            catBuf.append("'" + catVals[i] + "',");
        }
        if (catBuf != null) {
            result = catBuf.toString();
            result =
                    catBuf.length() > 0 ? result.substring(0, result.length() -
                                                           1) : "''";
            logger.warning("accCatTypeVCL resutl = " + result);
            OperationBinding op =
                bc.getOperationBinding("executePoLinesAccCatQuery");
            op.getParamsMap().put("accCat", result);
            op.execute();
        }
    }

    /* public void accCatTypeAL(ActionEvent ae) {
        StringBuffer catBuf = new StringBuffer();
        String result = null;
        JUCtrlListBinding cat =
            (JUCtrlListBinding)bc.get("AccCategoryTypeLov");
        Object[] catVals = cat.getSelectedValues();
        for (int i = 0; i < catVals.length; i++) {
            catBuf.append("'" + catVals[i] + "',");
        }
        if (catBuf != null) {
            result = catBuf.toString();
            result = result.substring(0, result.length() - 1);
            logger.warning("accCatTypeVCL resutl = " + result);
        } else {
            logger.warning("accCatTypeVCL resutl = null");
        }

    } */

    public void vendorApplyButtonAL(ActionEvent ae) {
        ViewObject vendorVo = getVO("VendorsLovIterator");
        if (vendorVo != null) {
            Row curRow = vendorVo.getCurrentRow();
            if (curRow != null) {
                Integer vendorId =
                    Integer.valueOf(curRow.getAttribute("VendorId").toString());
                String vendorName =
                    String.valueOf(curRow.getAttribute("VendorName").toString());
                Row[] accRows =
                    getVO("XxpmPoLinesViewAccChildIterator").getAllRowsInRange();
                for (Row row : accRows) {
                    if (Integer.valueOf(row.getAttribute("EbsStatus") == null ?
                                        "0" :
                                        row.getAttribute("EbsStatus").toString()) !=
                        1) {
                        row.setAttribute("VendorId", vendorId);
                        row.setAttribute("VendorName", vendorName);
                        ////////////////////////
                        OperationBinding op =
                            bc.getOperationBinding("getDefaultVendorSiteId");
                        op.getParamsMap().put("vendorId", vendorId);

                        row.setAttribute("VendorSiteId",
                                         (Integer)op.execute());
                    }

                }
                AdfFacesContext.getCurrentInstance().addPartialTarget(this.poLinesViewAccTable);
            }
        }
    }

    /*     public void articleBomFabSegment2VCL(ValueChangeEvent vce) {
        logger.warning("vce.getNewValue: " + vce.getNewValue());
        if (vce.getNewValue() != null) {
            ViewObject vo = getVO("XxpmArticleBomFabricViewChildIterator");
            if (vo != null) {
                Row curRow = vo.getCurrentRow();
                if (curRow != null) {
                    //curRow.setAttribute("SubInv", "Dyed Fbr");
                    logger.warning("Sub Inv Oper. Val: " +
                                       bc.getOperationBinding("getDefaultValForSubInvFab"));
                    curRow.setAttribute("SubInv",
                                        bc.getOperationBinding("getDefaultValForSubInvFab"));
                }
            }
        }
    }

    public void articleBomAccSegment2VCL(ValueChangeEvent vce) {
        if (vce.getNewValue() != null) {
            ViewObject vo =
                getVO("XxpmArticleBomAccessoriesViewChildIterator");
            if (vo != null) {
                Row curRow = vo.getCurrentRow();
                if (curRow != null) {
                    curRow.setAttribute("SubInv", "Accessory");
                }
            }
        }
    } */

    public void setProgramAddButtonProp(RichCommandToolbarButton programAddButtonProp) {
        this.programAddButtonProp = programAddButtonProp;
    }

    public RichCommandToolbarButton getProgramAddButtonProp() {
        return programAddButtonProp;
    }

    public void setArticleBomAddButtonProp(RichCommandToolbarButton articleBomAddButtonProp) {
        this.articleBomAddButtonProp = articleBomAddButtonProp;
    }

    public RichCommandToolbarButton getArticleBomAddButtonProp() {
        return articleBomAddButtonProp;
    }

    public void setPoAddButtonProp(RichCommandToolbarButton poAddButtonProp) {
        this.poAddButtonProp = poAddButtonProp;
    }

    public RichCommandToolbarButton getPoAddButtonProp() {
        return poAddButtonProp;
    }

    public String exportToExcelFileName(String result) {
        Date curDate = new Date();
        SimpleDateFormat ft = new SimpleDateFormat("E dd-MM-yyyy hh.mm.ss a");
        return result + " " + ft.format(curDate);
    }

    public String getExpAllCombsToExcelFileName() {
        //return expAllCombsToExcelFileName;
        return exportToExcelFileName("Articles List");
    }

    public String getExpPOFabToExcelFileName() {
        //return expAllCombsToExcelFileName;
        return exportToExcelFileName("PO Fabric Items");
    }

    public String getExpPOAccToExcelFileName() {
        //return expAllCombsToExcelFileName;
        return exportToExcelFileName("PO Accessory Items");
    }

    public String getExpPORcvStatusReportFileName() {
        //return expPORcvStatusReportFileName;
        return exportToExcelFileName("PO Receiving Status Report");
    }

    public void articleListReportParamsVCL(ValueChangeEvent vce) {
        OperationBinding op = bc.getOperationBinding("ExecuteWithParams");
        /* logger.warning("New Val: " + vce.getNewValue());
        op.getParamsMap().put("BindProgName", vce.getNewValue()); */
        op.execute();
    }

    public void articleListReportParamsAL(ActionEvent ae) {
        String prog =
            String.valueOf(((AttributeBinding)bc.getControlBinding("BindProg")).getInputValue());
        String user =
            String.valueOf(((AttributeBinding)bc.getControlBinding("BindUser")).getInputValue());
        String manager =
            String.valueOf(((AttributeBinding)bc.getControlBinding("BindManager")).getInputValue());

        OperationBinding op = bc.getOperationBinding("ExecuteWithParams");
        op.getParamsMap().put("BindProgName", (prog == "null" ? "" : prog));
        op.getParamsMap().put("BindUser", (user == "null" ? "" : user));
        op.getParamsMap().put("BindManager",
                              (manager == "null" ? "" : manager));
        op.execute();
    }

    public void accessoriesListReportParamsAL(ActionEvent ae) {
        String prog =
            String.valueOf(((AttributeBinding)bc.getControlBinding("BindProgName")).getInputValue());

        String category =
            String.valueOf(((AttributeBinding)bc.getControlBinding("BindAccCategory")).getInputValue());
        /* String user =
            String.valueOf(((AttributeBinding)bc.getControlBinding("BindUser")).getInputValue());
        String manager =
            String.valueOf(((AttributeBinding)bc.getControlBinding("BindManager")).getInputValue()); */

        OperationBinding op = bc.getOperationBinding("ExecuteWithParams");
        op.getParamsMap().put("BindProgName", (prog == "null" ? "" : prog));
        op.getParamsMap().put("BindAccCategory",
                              (category == "null" ? "" : category));
        /* op.getParamsMap().put("BindUser", (user == "null" ? "" : user));
        op.getParamsMap().put("BindManager",
                              (manager == "null" ? "" : manager)); */
        op.execute();
    }

    public String getExpAccessoriesToExcelFileName() {
        //return expAccessoriesToExcelFileName;
        String result = "Accessories List";

        Date curDate = new Date();
        SimpleDateFormat ft = new SimpleDateFormat("E dd-MM-yyyy hh.mm.ss a");

        logger.warning("Current Date: " + ft.format(curDate));
        return result + " " + ft.format(curDate);
    }

    public void poRcvStatusReportGoBtn(ActionEvent ae) {
        //        ViewObject vo = getVO("PoStatusFilterViewIterator");
        //        if (vo != null) {
        //            Row curRow = vo.getCurrentRow();
        //            if (curRow != null) {
        //                String sid = String.valueOf(curRow.getAttribute("SoHeaderId"));
        //                //                setValueToExpression("#{bindings.SoHeaderId.inputValue}", sid);
        //                sid =
        //getValueFrmExpression("#{bindings.SoHeaderId.attributeValue}");
        //                logger.warning("sid: " + sid);
        //                OperationBinding op =
        //                    bc.getOperationBinding("ExecuteWithParams");
        //                op.getParamsMap().put("BindSoHeaderId", sid);
        ////                op.execute();
        //            }
        //        }

        getValueFrmExpression("#{bindings.SoHeaderId.attributeValue}");
        logger.warning("sid: " +
                       getValueFrmExpression("#{bindings.SoHeaderId.attributeValue}"));
        OperationBinding op = bc.getOperationBinding("ExecuteWithParams");
        op.getParamsMap().put("BindSoHeaderId",
                              getValueFrmExpression("#{bindings.SoHeaderId.attributeValue}"));
        op.execute();
    }

    public void setPoLinesViewAccTable(RichTable poLinesViewAccTable) {
        this.poLinesViewAccTable = poLinesViewAccTable;
    }

    public RichTable getPoLinesViewAccTable() {
        return poLinesViewAccTable;
    }

    public void updateRemarksIntoPoLineVCL(ValueChangeEvent vce) {
        ViewObject vo = getVO("PoRcvStatusViewIterator");
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                String lineId =
                    String.valueOf(curRow.getAttribute("PoLineId"));
                String remarks = String.valueOf(vce.getNewValue());

                OperationBinding op =
                    bc.getOperationBinding("updateRemarksIntoPoLine");
                op.getParamsMap().put("lineId", lineId);
                op.getParamsMap().put("remarks", remarks);
                op.execute();
            }
        }
    }

    //    public void madeupSetsDL(DialogEvent de) {
    //        ViewObject vo = getVO("XxpmMadeupSetsViewChildIterator");
    //        Row curRow = vo.getCurrentRow();
    //        logger.warning("SetName: " + curRow.getAttribute("SetName"));
    //        logger.warning("MadeupSetColor: " +
    //                           curRow.getAttribute("MadeupSetColor"));
    //        logger.warning("MadeupSetSize: " +
    //                           curRow.getAttribute("MadeupSetSize"));
    //        logger.warning("Sku: " + curRow.getAttribute("Sku"));
    //        logger.warning("CustomerDesc: " +
    //                           curRow.getAttribute("CustomerDesc"));
    //        ////////////////////
    //        if (de.getOutcome().equals(DialogEvent.Outcome.ok)) {
    //            execOper("Commit");
    //            logger.warning("Commit executed on madeupSetsDL");
    //        } else {
    //            execOper("Rollback");
    //            logger.warning("Rollback executed on madeupSetsDL");
    //        }
    //    }

    public void setAccWidthUomEls(RichSelectOneChoice accWidthUomEls) {
        this.accWidthUomEls = accWidthUomEls;
    }

    public RichSelectOneChoice getAccWidthUomEls() {
        return accWidthUomEls;
    }

    public void setAccLengthUomIns(RichSelectOneChoice accLengthUomIns) {
        this.accLengthUomIns = accLengthUomIns;
    }

    public RichSelectOneChoice getAccLengthUomIns() {
        return accLengthUomIns;
    }

    public void setAccLengthUomStf(RichSelectOneChoice accLengthUomStf) {
        this.accLengthUomStf = accLengthUomStf;
    }

    public RichSelectOneChoice getAccLengthUomStf() {
        return accLengthUomStf;
    }

    public void setAccLengthUomSg(RichSelectOneChoice accLengthUomSg) {
        this.accLengthUomSg = accLengthUomSg;
    }

    public RichSelectOneChoice getAccLengthUomSg() {
        return accLengthUomSg;
    }

    public void setAccWidthUomPpr(RichSelectOneChoice accWidthUomPpr) {
        this.accWidthUomPpr = accWidthUomPpr;
    }

    public RichSelectOneChoice getAccWidthUomPpr() {
        return accWidthUomPpr;
    }

    public void setAccWidthUomLbl(RichSelectOneChoice accWidthUomLbl) {
        this.accWidthUomLbl = accWidthUomLbl;
    }

    public RichSelectOneChoice getAccWidthUomLbl() {
        return accWidthUomLbl;
    }

    public void setAccWidthUomBag(RichSelectOneChoice accWidthUomBag) {
        this.accWidthUomBag = accWidthUomBag;
    }

    public RichSelectOneChoice getAccWidthUomBag() {
        return accWidthUomBag;
    }

    public void deleteSetBomAccessoriesDialog(DialogEvent de) {
        delRec(de, "DeleteSetBomAccessories");
    }

    public void changeItemStatusFlagValueBtn(ActionEvent actionEvent) {
        ViewObject vo = getVO("XxpmItemMasterAccViewIterator");
        if (vo != null) {
            Row curRow = vo.getCurrentRow();
            if (curRow != null) {
                Integer curVal =
                    Integer.parseInt(String.valueOf(curRow.getAttribute("ItemStatusFlag")));
                curRow.setAttribute("ItemStatusFlag", curVal == 1 ? 0 : 1);
                this.commitAcc(actionEvent);
            }
        }
    }

    //    public void createArticleBomVersionAL(ActionEvent actionEvent) {
    //        execOper("createArticleBomVersion");
    //    }

    public void artBomVersionPopupFetchListener(PopupFetchEvent popupFetchEvent) {
        ViewObject artBomVo = this.getVO("XxpmArticleBomViewIterator");
        Row currRow = (artBomVo != null ? artBomVo.getCurrentRow() : null);
        if (currRow != null) {
            Integer progId =
                new Integer(String.valueOf(currRow.getAttribute("ProgId")));
            ViewObject versionVo =
                this.getVO("ArticleBomForSpecificProgramViewIterator");
            versionVo.setNamedWhereClauseParam("BindProgId", progId);
            versionVo.executeQuery();

        }
    }

    //    public void createVerionAL(ActionEvent ae) {
    //
    //        ViewObject artBomVo = this.getVO("XxpmArticleBomViewIterator");
    //        RowSet bomRs = artBomVo.createRowSet(null);
    //        bomRs.setNamedWhereClauseParam("BindArtBomNum", null);
    //        bomRs.executeQuery();
    //        ViewObject versionVo =
    //            this.getVO("ArticleBomForSpecificProgramViewIterator");
    //        RowSetIterator versionRsi = versionVo.createRowSetIterator(null);
    //        String where = "";
    //        while (versionRsi.hasNext()) {
    //            Row row = versionRsi.next();
    //            Integer articleId =
    //                Integer.valueOf(row.getAttribute("ArticleId").toString());
    //            Integer version =
    //                Integer.valueOf(row.getAttribute("ArticleBomVersion").toString());
    //            System.out.println("Version: " +
    //                               this.getValueFrmExpression("#{row.bindings.ArticleBomVersion.attributeValue}"));
    //            Row[] bomFilteredRows =
    //                bomRs.getFilteredRows("ArticleId", articleId);
    //            if (bomFilteredRows.length > 0) {
    //                for (Row bomFilteredRow : bomFilteredRows) {
    //                    Integer bomVersion =
    //                        Integer.valueOf(bomFilteredRow.getAttribute("ArtBomVersion").toString());
    //                    if (bomVersion == version) {
    //                        Integer artBomId =
    //                            Integer.valueOf(bomFilteredRow.getAttribute("ArtBomId").toString());
    //                        where += (artBomId + ",");
    //                    }
    //                }
    //            }
    //        }
    //        versionRsi.closeRowSetIterator();
    //        if (where != null && where.length() > 0) {
    //            where = "(" + where.substring(0, where.length() - 1) + ")";
    //            System.out.println("Where: " + where);
    //            AttributeBinding attr =
    //                (AttributeBinding)bc.getControlBinding("VersionDesc");
    //            String versionDesc = String.valueOf(attr.getInputValue());
    //            System.out.println("Version Desc: " + versionDesc);
    //            OperationBinding op =
    //                bc.getOperationBinding("createArticleBomVersion");
    //            op.getParamsMap().put("boms", where);
    //            op.getParamsMap().put("versionDesc", versionDesc);
    //            Integer result = new Integer(String.valueOf(op.execute()));
    //            if (result > 0) {
    //                FacesMessage msg =
    //                    new FacesMessage(FacesMessage.SEVERITY_ERROR, null,
    //                                     "Duplicate version description entered");
    //                throw new ValidatorException(msg);
    //            }
    //            if (op.getErrors().isEmpty()) {
    //                RichPopup popup = getArtVersionPopup();
    //                popup.hide();
    //                this.execOper("Commit");
    //                this.showMessage("Version created successfully.");
    //            }
    //        }
    //    }

    public void createVersionDL(DialogEvent de) {
        if (de.getOutcome().equals(DialogEvent.Outcome.ok)) {
            ViewObject artBomVo = this.getVO("XxpmArticleBomViewIterator");
            RowSet bomRs = artBomVo.createRowSet(null);
            bomRs.setNamedWhereClauseParam("BindArtBomNum", null);
            bomRs.executeQuery();
            ViewObject versionVo =
                this.getVO("ArticleBomForSpecificProgramViewIterator");
            RowSetIterator versionRsi = versionVo.createRowSetIterator(null);
            String where = "";
            while (versionRsi.hasNext()) {
                Row row = versionRsi.next();
                Integer articleId =
                    Integer.valueOf(row.getAttribute("ArticleId").toString());
                Integer version =
                    Integer.valueOf(row.getAttribute("ArticleBomVersion").toString());
                System.out.println("Version: " +
                                   this.getValueFrmExpression("#{row.bindings.ArticleBomVersion.attributeValue}"));
                Row[] bomFilteredRows =
                    bomRs.getFilteredRows("ArticleId", articleId);
                if (bomFilteredRows.length > 0) {
                    for (Row bomFilteredRow : bomFilteredRows) {
                        Integer bomVersion =
                            Integer.valueOf(bomFilteredRow.getAttribute("ArtBomVersion").toString());
                        if (bomVersion == version) {
                            Integer artBomId =
                                Integer.valueOf(bomFilteredRow.getAttribute("ArtBomId").toString());
                            where += (artBomId + ",");
                        }
                    }
                }
            }
            versionRsi.closeRowSetIterator();
            if (where != null && where.length() > 0) {
                where = "(" + where.substring(0, where.length() - 1) + ")";
                System.out.println("Where: " + where);
                AttributeBinding attr =
                    (AttributeBinding)bc.getControlBinding("VersionDesc");
                String versionDesc = String.valueOf(attr.getInputValue());
                System.out.println("Version Desc: " + versionDesc);
                OperationBinding op =
                    bc.getOperationBinding("createArticleBomVersion");
                op.getParamsMap().put("boms", where);
                op.getParamsMap().put("versionDesc", versionDesc);
                Integer result = new Integer(String.valueOf(op.execute()));
                if (result > 0) {
                    throw new ValidationException("\n\nDuplicate version description entered\n\n");
                }
                if (op.getErrors().isEmpty()) {
                    this.execOper("Commit");
                    this.showMessage("Version created successfully.");
                }
            }
        }
    }

    public void articleBomVersionDropDownVLC(ValueChangeEvent vce) {
        //        ViewObject lovVo = this.getVO("ArticleBomVersionsLovIterator");
        //        System.out.println("Value: " + vce.getNewValue());
        //        Row lovRow =
        //            lovVo.getRowAtRangeIndex(Integer.valueOf(vce.getNewValue().toString()));
        //        Integer version =
        //            Integer.valueOf(lovRow.getAttribute("ArtBomVersion").toString());
        //        System.out.println("Version: " + version);
        //        AttributeBinding attr =
        //            (AttributeBinding)bc.getControlBinding("Version");
        //        attr.setInputValue(version);
    }

    public void setArticleBomVersionBinding(RichSelectOneChoice articleBomVersionBinding) {
        if (articleBomVersionBinding != null &&
            articleBomVersionBinding.getValue() == null) {
            articleBomVersionBinding.setValue(0);
        }
        this.articleBomVersionBinding = articleBomVersionBinding;
    }

    public RichSelectOneChoice getArticleBomVersionBinding() {
        return articleBomVersionBinding;
    }

    public void refreshPO(ActionEvent actionEvent) {
        //        ViewObject vo = this.getVO("XxpmPoHeaderViewIterator");
        //        vo.executeQuery();
        this.execOper("ExecuteFab");
        this.execOper("ExecuteAcc");
    }

    public void createArticleBomVersionAL(ActionEvent actionEvent) {
        // Add event code here...
    }
}
