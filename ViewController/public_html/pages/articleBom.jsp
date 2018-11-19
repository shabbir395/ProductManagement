<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<f:view>
  <af:document id="d1" title="Article BOM Creation Form">
    <af:messages id="m1"/>
    <af:form id="f1">
      <af:panelStretchLayout id="panelStretchLayout5" startWidth="0px"
                             endWidth="0px" topHeight="0px" bottomHeight="0px"
                             dimensionsFrom="children">
        <f:facet name="center">
          <af:image source="/Images/Banners/ArticleBOM.png" id="i1"/>
        </f:facet>
      </af:panelStretchLayout>
      <af:panelStretchLayout id="panelStretchLayout6" startWidth="0px"
                             endWidth="0px" topHeight="0px" bottomHeight="0px"
                             inlineStyle="background-color:rgb(33,127,188); text-align:right;"
                             rendered="true" dimensionsFrom="children">
        <f:facet name="center">
          <af:panelGroupLayout layout="scroll"
                               xmlns:af="http://xmlns.oracle.com/adf/faces/rich"
                               id="panelGroupLayout1">
            <af:goLink text="Home" id="goLink1"
                       destination="http://prodapp.nishat.net:8001/OA_HTML/OA.jsp?OAFunc=OAHOMEPAGE"
                       inlineStyle="color:white; font-weight:bold;"/>
          </af:panelGroupLayout>
        </f:facet>
      </af:panelStretchLayout>
      <af:panelFormLayout id="pfl3">
        <af:panelGroupLayout id="pgl22" layout="vertical"
                             partialTriggers="ctb10">
          <af:panelStretchLayout id="panelStretchLayout1" startWidth="0px"
                                 endWidth="0px" topHeight="0px"
                                 bottomHeight="0px" dimensionsFrom="children">
            <f:facet name="center">
              <af:panelGroupLayout layout="scroll"
                                   xmlns:af="http://xmlns.oracle.com/adf/faces/rich"
                                   id="pgl11">
                <af:outputFormatted value="Search Article Bom"
                                    id="outputFormatted10"
                                    inlineStyle="font-size:small; vertical-align:top;"/>
              </af:panelGroupLayout>
            </f:facet>
          </af:panelStretchLayout>
          <af:spacer width="10" height="10" id="spacer3"/>
          <af:panelGroupLayout id="pgl5" layout="horizontal">
            <af:outputFormatted value="Bom No." id="of11"/>
            <af:spacer width="10" height="10" id="s7"/>
            <af:inputListOfValues popupTitle="Search and Result Dialog"
                                  id="ilov1" simple="true"
                                  value="#{bindings.BindArtBomNum.inputValue}"
                                  autoSubmit="true"
                                  valueChangeListener="#{ViewActions.searchItemArtBomVCL}"
                                  binding="#{ViewActions.searchLovArtBom}"
                                  model="#{bindings.BomNoSearchRef.listOfValuesModel}"
                                  disabled="#{bindings.ArticleBomSearchViewIterator.estimatedRowCount < 1 ? true : false}"
                                  partialTriggers="ctb6 ctb7"/>
            <af:spacer width="10" height="10" id="spacer10"/>
            <af:commandToolbarButton actionListener="#{ViewActions.searchItemArtBomButton}"
                                     text="Go" id="cb1" immediate="true"
                                     disabled="#{bindings.ArticleBomSearchViewIterator.estimatedRowCount < 1 ? true : false}"/>
          </af:panelGroupLayout>
          <af:spacer width="10" height="10" id="spacer5"/>
          <af:panelGroupLayout id="pgl1" layout="horizontal">
            <af:commandToolbarButton text="First"
                                     disabled="#{!bindings.First.enabled}"
                                     partialSubmit="true" id="ctb1"
                                     actionListener="#{bindings.First.execute}"/>
            <af:spacer width="10" height="10" id="s2"/>
            <af:commandToolbarButton text="Previous"
                                     disabled="#{!bindings.Previous.enabled}"
                                     partialSubmit="true" id="ctb2"
                                     actionListener="#{bindings.Previous.execute}"/>
            <af:spacer width="10" height="10" id="s3"/>
            <af:commandToolbarButton text="Next"
                                     disabled="#{!bindings.Next.enabled}"
                                     partialSubmit="true" id="ctb3"
                                     actionListener="#{bindings.Next.execute}"/>
            <af:spacer width="10" height="10" id="s4"/>
            <af:commandToolbarButton text="Last"
                                     disabled="#{!bindings.Last.enabled}"
                                     partialSubmit="true" id="ctb4"
                                     actionListener="#{bindings.Last.execute}"/>
            <af:spacer width="10" height="10" id="spacer6"/>
            <af:commandToolbarButton text="Attachments" partialSubmit="true"
                                     id="commandToolbarButton4"/>
            <af:spacer width="10" height="10" id="spacer7"/>
            <af:commandToolbarButton text="Refresh" id="ctb11"
                                     actionListener="#{ViewActions.refreshArticleBomAL}"/>
            <af:spacer width="10" height="10" id="spacer9"/>
            <af:commandToolbarButton text="View Log" id="ctb9">
              <af:showPopupBehavior popupId="bomLogPopup" triggerType="action"/>
            </af:commandToolbarButton>
            <af:popup id="bomLogPopup" contentDelivery="lazyUncached">
              <af:dialog id="d3" type="ok" resize="on">
                <af:inputText value="#{bindings.BomLog.inputValue}"
                              simple="true"
                              required="#{bindings.BomLog.hints.mandatory}"
                              columns="#{bindings.BomLog.hints.displayWidth}"
                              maximumLength="#{bindings.BomLog.hints.precision}"
                              shortDesc="#{bindings.BomLog.hints.tooltip}"
                              id="it31"
                              contentStyle="width:99.9%; height:99.9%;"
                              disabled="true" rendered="false">
                  <f:validator binding="#{bindings.BomLog.validator}"/>
                </af:inputText>
                <af:outputFormatted value="#{bindings.BomLog.inputValue}"
                                    id="of2" styleClass="PreWrap"/>
              </af:dialog>
            </af:popup>
          </af:panelGroupLayout>
          <af:spacer width="10" height="10" id="spacer2"/>
          <af:panelFormLayout id="pfl4">
            <af:inputText value="#{bindings.RejectReason.inputValue}"
                          label="#{bindings.RejectReason.hints.label}"
                          required="#{bindings.RejectReason.hints.mandatory}"
                          columns="#{bindings.RejectReason.hints.displayWidth}"
                          maximumLength="#{bindings.RejectReason.hints.precision}"
                          shortDesc="#{bindings.RejectReason.hints.tooltip}"
                          id="inputText1" contentStyle="width:400px;" rows="5"
                          autoSubmit="true" disabled="true"
                          inlineStyle="color:Red; font-weight:bold;"
                          rendered="#{bindings.ApprovalStatus.inputValue == 'Rejected' ? true : false}"
                          partialTriggers="it29 ctb11">
              <f:validator binding="#{bindings.RejectReason.validator}"/>
            </af:inputText>
          </af:panelFormLayout>
          <af:spacer width="10" height="10" id="spacer11"/>
          <af:panelStretchLayout id="panelStretchLayout2" startWidth="0px"
                                 endWidth="0px" topHeight="0px"
                                 bottomHeight="0px" dimensionsFrom="children">
            <f:facet name="center">
              <af:outputFormatted value="Madeup Program Information"
                                  id="outputFormatted5"
                                  inlineStyle="font-size:small; vertical-align:top;"/>
            </f:facet>
          </af:panelStretchLayout>
          <af:panelGridLayout id="pgl6" rendered="true" partialTriggers="ctb5">
            <af:gridRow id="gr65" height="auto" marginTop="5px"
                        marginBottom="1px">
              <af:gridCell marginStart="5px" width="dontCare" id="gc133">
                <af:outputFormatted value="Program Name"
                                    id="outputFormatted57"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc134"
                           marginEnd="100px">
                <af:outputText value="#{bindings.ArtBomId.inputValue}" id="ot1"
                               rendered="false"/>
                <af:inputListOfValues id="ilov4"
                                      popupTitle="Search and Select: #{bindings.ProgName.hints.label}"
                                      value="#{bindings.ProgName.inputValue}"
                                      label="#{bindings.ProgName.hints.label}"
                                      model="#{bindings.ProgName.listOfValuesModel}"
                                      required="#{bindings.ProgName.hints.mandatory}"
                                      columns="#{bindings.ProgName.hints.displayWidth}"
                                      shortDesc="#{bindings.ProgName.hints.tooltip}"
                                      autoSubmit="true" simple="true"
                                      contentStyle="width:150px;"
                                      immediate="true"
                                      searchDesc="Search for programs"
                                      disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                      partialTriggers="ctb6 ctb7 ctb10">
                  <f:validator binding="#{bindings.ProgName.validator}"/>
                </af:inputListOfValues>
                <af:inputText value="#{bindings.ProgId.inputValue}"
                              label="#{bindings.ProgId.hints.label}"
                              required="#{bindings.ProgId.hints.mandatory}"
                              columns="#{bindings.ProgId.hints.displayWidth}"
                              maximumLength="#{bindings.ProgId.hints.precision}"
                              shortDesc="#{bindings.ProgId.hints.tooltip}"
                              partialTriggers="ilov4" id="it6"
                              rendered="false">
                  <f:validator binding="#{bindings.ProgId.validator}"/>
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.ProgId.format}"/>
                </af:inputText>
                <af:outputText value="#{bindings.ProgNameMaster.inputValue}"
                               id="ot27" rendered="false"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gridCell1">
                <af:outputFormatted value="BOM #" id="outputFormatted1"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gridCell2"
                           marginEnd="100px">
                <af:inputText value="#{bindings.ArtBomNum.inputValue}"
                              simple="true"
                              required="#{bindings.ArtBomNum.hints.mandatory}"
                              columns="#{bindings.ArtBomNum.hints.displayWidth}"
                              maximumLength="#{bindings.ArtBomNum.hints.precision}"
                              shortDesc="#{bindings.ArtBomNum.hints.tooltip}"
                              id="it2" autoSubmit="true" disabled="true"
                              contentStyle="width:150px;"
                              label="#{bindings.ArtBomNum.hints.label}">
                  <f:validator binding="#{bindings.ArtBomNum.validator}"/>
                </af:inputText>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gridCell3">
                <af:outputFormatted value="Program Manager"
                                    id="outputFormatted2"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gridCell4">
                <af:inputText value="#{bindings.ProgManagerTrans.inputValue}"
                              label="#{bindings.ProgManagerTrans.hints.label}"
                              required="#{bindings.ProgManagerTrans.hints.mandatory}"
                              columns="#{bindings.ProgManagerTrans.hints.displayWidth}"
                              maximumLength="#{bindings.ProgManagerTrans.hints.precision}"
                              shortDesc="#{bindings.ProgManagerTrans.hints.tooltip}"
                              id="it7" simple="true" autoSubmit="true"
                              disabled="true" contentStyle="width:150px;">
                  <f:validator binding="#{bindings.ProgManagerTrans.validator}"/>
                </af:inputText>
              </af:gridCell>
            </af:gridRow>
            <af:gridRow marginTop="5px" height="auto" id="gr36">
              <af:gridCell marginStart="5px" width="dontCare" id="gc74">
                <af:outputFormatted value="Customer" id="outputFormatted7"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc72">
                <af:inputText value="#{bindings.CustomerNameTrans.inputValue}"
                              label="#{bindings.CustomerNameTrans.hints.label}"
                              required="#{bindings.CustomerNameTrans.hints.mandatory}"
                              columns="#{bindings.CustomerNameTrans.hints.displayWidth}"
                              maximumLength="#{bindings.CustomerNameTrans.hints.precision}"
                              shortDesc="#{bindings.CustomerNameTrans.hints.tooltip}"
                              id="it3" simple="true" autoSubmit="true"
                              disabled="true" contentStyle="width:150px;">
                  <f:validator binding="#{bindings.CustomerNameTrans.validator}"/>
                </af:inputText>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gridCell5">
                <af:outputFormatted value="BOM Group" id="outputFormatted3"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gridCell6">
                <af:inputText value="#{bindings.BomGroupTrans.inputValue}"
                              simple="true"
                              required="#{bindings.BomGroupTrans.hints.mandatory}"
                              columns="#{bindings.BomGroupTrans.hints.displayWidth}"
                              maximumLength="#{bindings.BomGroupTrans.hints.precision}"
                              shortDesc="#{bindings.BomGroupTrans.hints.tooltip}"
                              id="it5"
                              label="#{bindings.BomGroupTrans.hints.label}"
                              autoSubmit="true" disabled="true"
                              contentStyle="width:150px;">
                  <f:validator binding="#{bindings.BomGroupTrans.validator}"/>
                </af:inputText>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gridCell7">
                <af:outputFormatted value="Created By" id="outputFormatted4"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gridCell8">
                <af:inputText value="#{bindings.CreatorName.inputValue}"
                              label="#{bindings.CreatorName.hints.label}"
                              simple="true"
                              required="#{bindings.CreatorName.hints.mandatory}"
                              columns="#{bindings.CreatorName.hints.displayWidth}"
                              maximumLength="#{bindings.CreatorName.hints.precision}"
                              shortDesc="#{bindings.CreatorName.hints.tooltip}"
                              id="it30" contentStyle="width:150px;"
                              autoSubmit="true" disabled="true">
                  <f:validator binding="#{bindings.CreatorName.validator}"/>
                </af:inputText>
              </af:gridCell>
            </af:gridRow>
            <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                        id="gr37">
              <af:gridCell marginStart="5px" width="dontCare" id="gc71">
                <af:outputFormatted value="Article" id="outputFormatted335"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc73">
                <af:selectOneChoice value="#{bindings.ArticleId.inputValue}"
                                    label="#{bindings.ArticleId.label}"
                                    required="#{bindings.ArticleId.hints.mandatory}"
                                    shortDesc="#{bindings.ArticleId.hints.tooltip}"
                                    id="soc1" simple="true" autoSubmit="true"
                                    partialTriggers="ilov4 ctb5 ctb6 ctb7 ctb10"
                                    disabled="#{bindings.ProgName.inputValue == null || (bindings.RowStatus.inputValue != 0 && bindings.RowStatus.inputValue != -1)}"
                                    valueChangeListener="#{ViewActions.articleBomArticleVCL}"
                                    binding="#{ViewActions.articleBomArticleId}">
                  <f:selectItems value="#{bindings.ArticleId.items}" id="si1"/>
                </af:selectOneChoice>
                <af:resource type="javascript">
                  function onPopupOpened(event) {
                      var popup = event.getSource();
                      popup.cancel = function () {
                      };
                  }
                </af:resource>
                <af:popup id="articleBomArticlePopup">
                  <af:clientListener method="onPopupOpened" type="popupOpened"/>
                  <af:dialog id="d2" type="yesNo" closeIconVisible="false"
                             stretchChildren="first"
                             dialogListener="#{ViewActions.articleBomArticleDL}"
                             contentHeight="30"
                             titleIconSource="/Images/warning 12x12.png"
                             title="Warning!">
                    <af:outputFormatted value="Are you sure you want to change the article?"
                                        id="of1"
                                        inlineStyle="font-weight:bold;"/>
                  </af:dialog>
                </af:popup>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gridCell9">
                <af:outputFormatted value="Bom Status" id="outputFormatted8"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gridCell10">
                <af:inputText id="it29" simple="true" autoSubmit="true"
                              disabled="true" contentStyle="width:150px;"
                              value="#{bindings.ApprovalStatus.inputValue}"
                              required="#{bindings.ApprovalStatus.hints.mandatory}"
                              columns="#{bindings.ApprovalStatus.hints.displayWidth}"
                              maximumLength="#{bindings.ApprovalStatus.hints.precision}">
                  <f:validator binding="#{bindings.ApprovalStatus.validator}"/>
                </af:inputText>
                <af:resource type="javascript">
                  
                  function onPopupOpened(event) {
                      var popup = event.getSource();
                      popup.cancel = function () {
                      };
                  }
                
                </af:resource>
                <af:popup id="popup1">
                  <af:clientListener method="onPopupOpened" type="popupOpened"/>
                  <af:dialog id="dialog3" type="yesNo" closeIconVisible="false"
                             stretchChildren="first"
                             dialogListener="#{ViewActions.articleBomArticleDL}"
                             contentHeight="30"
                             titleIconSource="/Images/warning 12x12.png">
                    <af:outputFormatted value="Are you sure you want to change the article?"
                                        id="outputFormatted9"
                                        inlineStyle="font-weight:bold;"/>
                  </af:dialog>
                </af:popup>
              </af:gridCell>
            </af:gridRow>
          </af:panelGridLayout>
        </af:panelGroupLayout>
        <af:spacer width="10" height="10" id="spacer1"/>
        <af:showDetail disclosed="true" id="sd1">
          <af:panelCollection id="pc1" styleClass="AFStretchWidth"
                              rendered="true">
            <af:table value="#{bindings.MadeupCombDetailsLovChild.collectionModel}"
                      var="row"
                      rows="#{bindings.MadeupCombDetailsLovChild.rangeSize}"
                      emptyText="#{bindings.MadeupCombDetailsLovChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                      fetchSize="#{bindings.MadeupCombDetailsLovChild.rangeSize}"
                      rowBandingInterval="0"
                      filterModel="#{bindings.MadeupCombDetailsLovChildQuery.queryDescriptor}"
                      queryListener="#{bindings.MadeupCombDetailsLovChildQuery.processQuery}"
                      filterVisible="true" varStatus="vs" id="t1"
                      autoHeightRows="7" rowSelection="single"
                      selectedRowKeys="#{bindings.MadeupCombDetailsLovChild.collectionModel.selectedRow}"
                      selectionListener="#{bindings.MadeupCombDetailsLovChild.collectionModel.makeCurrent}">
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovChild.hints.CombId.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovChild.hints.CombId.label}"
                         id="c3" align="center" rendered="false"
                         rowHeader="true">
                <af:outputText value="#{row.CombId}" id="ot9">
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.MadeupCombDetailsLovChild.hints.CombId.format}"/>
                </af:outputText>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovChild.hints.CombEbsDesc.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovChild.hints.CombEbsDesc.label}"
                         id="c5" align="center" rendered="false">
                <af:outputText value="#{row.CombEbsDesc}" id="ot14"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovChild.hints.CombPmDesc.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovChild.hints.CombPmDesc.label}"
                         id="c19" align="center" rendered="false">
                <af:outputText value="#{row.CombPmDesc}" id="ot13"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovChild.hints.ArticleId.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovChild.hints.ArticleId.label}"
                         id="c8" align="center" rendered="false">
                <af:outputText value="#{row.ArticleId}" id="ot2">
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.MadeupCombDetailsLovChild.hints.ArticleId.format}"/>
                </af:outputText>
              </af:column>
              <af:column id="c21" headerText="Sr#" align="center" width="40">
                <af:outputText id="ot16" value="#{vs.index + 1}"/>
              </af:column>
              <af:column headerText="#{bindings.MadeupCombDetailsLovChild.hints.ConcatenatedSegments.label}"
                         filterable="true" sortable="true" align="center"
                         width="250" id="c20"
                         sortProperty="#{bindings.MadeupCombDetailsLovChild.hints.ConcatenatedSegments.name}"
                         inlineStyle="text-align:left;">
                <af:outputText value="#{row.ConcatenatedSegments}" id="ot15"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovChild.hints.ArticleName.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovChild.hints.ArticleName.label}"
                         id="c1" align="center" width="200"
                         inlineStyle="text-align:left;">
                <af:outputText value="#{row.ArticleName}" id="ot7"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovChild.hints.PrimaryUnitOfMeasure.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovChild.hints.PrimaryUnitOfMeasure.label}"
                         id="c9" align="center" width="80"
                         inlineStyle="text-align:left;">
                <af:outputText value="#{row.PrimaryUnitOfMeasure}" id="ot12"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovChild.hints.ColorCode.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovChild.hints.ColorCode.label}"
                         id="c7" align="center" rendered="false">
                <af:outputText value="#{row.ColorCode}" id="ot8"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovChild.hints.CombColor.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovChild.hints.CombColor.label}"
                         id="c4" align="center" inlineStyle="text-align:left;">
                <af:outputText value="#{row.CombColor}" id="ot11"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovChild.hints.SizeCode.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovChild.hints.SizeCode.label}"
                         id="c6" align="center" rendered="false">
                <af:outputText value="#{row.SizeCode}" id="ot10"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovChild.hints.CombSize.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovChild.hints.CombSize.label}"
                         id="c2" align="center" inlineStyle="text-align:left;">
                <af:outputText value="#{row.CombSize}" id="ot6"/>
              </af:column>
            </af:table>
          </af:panelCollection>
        </af:showDetail>
        <af:spacer width="10" height="10" id="spacer4"/>
        <af:panelTabbed id="pt1" dimensionsFrom="disclosedChild"
                        partialTriggers="d2">
          <af:showDetailItem text="Fabric" id="sdi1">
            <af:panelGroupLayout id="pgl3" layout="horizontal" valign="top">
              <af:panelCollection id="pc2" inlineStyle="width:920px;">
                <f:facet name="toolbar">
                  <af:toolbar id="t6">
                    <af:commandToolbarButton actionListener="#{ViewActions.insertAbFabricAL}"
                                             id="ctb8"
                                             icon="/Images/add-icon 12x12.png"/>
                    <af:commandToolbarButton id="commandButton1"
                                             icon="/Images/del-icon 12x12.png"
                                             disabled="#{bindings.EbsStatusFabric.inputValue == 1 || bindings.XxpmArticleBomFabricViewChild.estimatedRowCount < 1 ? true : false}"
                                             partialTriggers="::ctb1 ::ctb2 ::ctb3 ::ctb4"
                                             immediate="true">
                      <af:showPopupBehavior popupId="delArticleBomFabricPopup"
                                            triggerType="action"/>
                    </af:commandToolbarButton>
                    <af:popup id="delArticleBomFabricPopup">
                      <af:dialog id="dialog1" type="yesNo"
                                 dialogListener="#{ViewActions.deleteArticleBomFabricDialog}"
                                 stretchChildren="first" contentHeight="30">
                        <af:outputFormatted value="Are you sure you want to delete this record?"
                                            id="outputFormatted12"
                                            inlineStyle="font-weight:bold;"/>
                      </af:dialog>
                    </af:popup>
                  </af:toolbar>
                </f:facet>
                <f:facet name="statusbar"/>
                <af:table value="#{bindings.XxpmArticleBomFabricViewChild.collectionModel}"
                          var="row"
                          rows="#{bindings.XxpmArticleBomFabricViewChild.rangeSize}"
                          emptyText="#{bindings.XxpmArticleBomFabricViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.XxpmArticleBomFabricViewChild.rangeSize}"
                          rowBandingInterval="0"
                          filterModel="#{bindings.XxpmArticleBomFabricViewChildQuery.queryDescriptor}"
                          queryListener="#{bindings.XxpmArticleBomFabricViewChildQuery.processQuery}"
                          filterVisible="true" varStatus="vs"
                          selectedRowKeys="#{bindings.XxpmArticleBomFabricViewChild.collectionModel.selectedRow}"
                          selectionListener="#{bindings.XxpmArticleBomFabricViewChild.collectionModel.makeCurrent}"
                          id="t2"
                          binding="#{ViewActions.articleBomFabricTable}"
                          inlineStyle="width:920px;" rowSelection="single"
                          autoHeightRows="7">
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewChild.hints.ArtBomFabId.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewChild.hints.ArtBomFabId.label}"
                             id="c12" align="center" rendered="false"
                             rowHeader="true" filterable="true">
                    <af:outputText value="#{row.ArtBomFabId}" id="ot3"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewChild.hints.ArtBomId.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewChild.hints.ArtBomId.label}"
                             id="c26" align="center" rendered="false"
                             filterable="true">
                    <af:inputText value="#{row.bindings.ArtBomId.inputValue}"
                                  label="#{bindings.XxpmArticleBomFabricViewChild.hints.ArtBomId.label}"
                                  required="#{bindings.XxpmArticleBomFabricViewChild.hints.ArtBomId.mandatory}"
                                  columns="#{bindings.XxpmArticleBomFabricViewChild.hints.ArtBomId.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomFabricViewChild.hints.ArtBomId.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomFabricViewChild.hints.ArtBomId.tooltip}"
                                  id="it19" autoSubmit="true">
                      <f:validator binding="#{row.bindings.ArtBomId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomFabricViewChild.hints.ArtBomId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewChild.hints.ImId.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewChild.hints.ImId.label}"
                             id="c16" align="center" rendered="false"
                             filterable="true">
                    <af:inputText value="#{row.bindings.ImId.inputValue}"
                                  label="#{bindings.XxpmArticleBomFabricViewChild.hints.ImId.label}"
                                  required="#{bindings.XxpmArticleBomFabricViewChild.hints.ImId.mandatory}"
                                  columns="#{bindings.XxpmArticleBomFabricViewChild.hints.ImId.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomFabricViewChild.hints.ImId.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomFabricViewChild.hints.ImId.tooltip}"
                                  id="it14" autoSubmit="true">
                      <f:validator binding="#{row.bindings.ImId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomFabricViewChild.hints.ImId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c59" width="40" align="center" headerText="Sr#"
                             filterable="true">
                    <af:outputText value="#{vs.index + 1}" id="ot26"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewChild.hints.Segment2.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewChild.hints.Segment2.label}"
                             id="c17" align="center" width="90"
                             filterable="true">
                    <af:inputListOfValues id="segment2Id"
                                          popupTitle="Search and Select: #{bindings.XxpmArticleBomFabricViewChild.hints.Segment2.label}"
                                          value="#{row.bindings.Segment2.inputValue}"
                                          model="#{row.bindings.Segment2.listOfValuesModel}"
                                          required="#{bindings.XxpmArticleBomFabricViewChild.hints.Segment2.mandatory}"
                                          columns="#{bindings.XxpmArticleBomFabricViewChild.hints.Segment2.displayWidth}"
                                          shortDesc="#{bindings.XxpmArticleBomFabricViewChild.hints.Segment2.tooltip}"
                                          autoSubmit="true"
                                          contentStyle="background-color:InfoBackground;"
                                          disabled="#{row.EbsStatus == 1 ? true : false}"
                                          inlineStyle="background-color:InfoBackground;">
                      <f:validator binding="#{row.bindings.Segment2.validator}"/>
                    </af:inputListOfValues>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewChild.hints.Description.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewChild.hints.Description.label}"
                             id="c18" align="center" width="300"
                             filterable="true">
                    <af:inputText value="#{row.bindings.Description.inputValue}"
                                  label="#{bindings.XxpmArticleBomFabricViewChild.hints.Description.label}"
                                  required="#{bindings.XxpmArticleBomFabricViewChild.hints.Description.mandatory}"
                                  columns="#{bindings.XxpmArticleBomFabricViewChild.hints.Description.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomFabricViewChild.hints.Description.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomFabricViewChild.hints.Description.tooltip}"
                                  id="it15" autoSubmit="true" disabled="true"
                                  contentStyle="min-width:100%;">
                      <f:validator binding="#{row.bindings.Description.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewChild.hints.ItemColor.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewChild.hints.ItemColor.label}"
                             id="c10" align="center" width="80"
                             filterable="true">
                    <af:inputText value="#{row.bindings.ItemColor.inputValue}"
                                  label="#{bindings.XxpmArticleBomFabricViewChild.hints.ItemColor.label}"
                                  required="#{bindings.XxpmArticleBomFabricViewChild.hints.ItemColor.mandatory}"
                                  columns="#{bindings.XxpmArticleBomFabricViewChild.hints.ItemColor.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomFabricViewChild.hints.ItemColor.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomFabricViewChild.hints.ItemColor.tooltip}"
                                  id="it16" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.ItemColor.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewChild.hints.ItemSize.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewChild.hints.ItemSize.label}"
                             id="c13" align="center" width="80"
                             filterable="true">
                    <af:inputText value="#{row.bindings.ItemSize.inputValue}"
                                  label="#{bindings.XxpmArticleBomFabricViewChild.hints.ItemSize.label}"
                                  required="#{bindings.XxpmArticleBomFabricViewChild.hints.ItemSize.mandatory}"
                                  columns="#{bindings.XxpmArticleBomFabricViewChild.hints.ItemSize.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomFabricViewChild.hints.ItemSize.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomFabricViewChild.hints.ItemSize.tooltip}"
                                  id="it13" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.ItemSize.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewChild.hints.Uom.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewChild.hints.Uom.label}"
                             id="c11" align="center" width="70"
                             filterable="true">
                    <af:inputText value="#{row.bindings.Uom.inputValue}"
                                  label="#{bindings.XxpmArticleBomFabricViewChild.hints.Uom.label}"
                                  required="#{bindings.XxpmArticleBomFabricViewChild.hints.Uom.mandatory}"
                                  columns="#{bindings.XxpmArticleBomFabricViewChild.hints.Uom.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomFabricViewChild.hints.Uom.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomFabricViewChild.hints.Uom.tooltip}"
                                  id="it18" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.Uom.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewChild.hints.SubInv.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewChild.hints.SubInv.label}"
                             id="c25" align="center" width="100"
                             filterable="true">
                    <af:selectOneChoice value="#{row.bindings.SubInv.inputValue}"
                                        label="#{row.bindings.SubInv.label}"
                                        required="#{bindings.XxpmArticleBomFabricViewChild.hints.SubInv.mandatory}"
                                        shortDesc="#{bindings.XxpmArticleBomFabricViewChild.hints.SubInv.tooltip}"
                                        id="soc3" autoSubmit="true"
                                        partialTriggers="segment2Id"
                                        disabled="#{row.bindings.Segment2.inputValue == null || row.EbsStatus == 1 ? true : false}"
                                        contentStyle="background-color:InfoBackground;">
                      <f:selectItems value="#{row.bindings.SubInv.items}"
                                     id="si3"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewChild.hints.Consumption.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewChild.hints.Consumption.label}"
                             id="c15" align="center" width="30"
                             filterable="true">
                    <af:inputText value="#{row.bindings.Consumption.inputValue}"
                                  label="#{bindings.XxpmArticleBomFabricViewChild.hints.Consumption.label}"
                                  required="#{bindings.XxpmArticleBomFabricViewChild.hints.Consumption.mandatory}"
                                  columns="#{bindings.XxpmArticleBomFabricViewChild.hints.Consumption.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomFabricViewChild.hints.Consumption.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomFabricViewChild.hints.Consumption.tooltip}"
                                  id="it20" autoSubmit="true"
                                  styleClass="AFFieldNumberMarker"
                                  contentStyle="background-color:InfoBackground;">
                      <f:validator binding="#{row.bindings.Consumption.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomFabricViewChild.hints.Consumption.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewChild.hints.Wastage.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewChild.hints.Wastage.label}"
                             id="c14" align="center" width="30"
                             filterable="true">
                    <af:inputText value="#{row.bindings.Wastage.inputValue}"
                                  label="#{bindings.XxpmArticleBomFabricViewChild.hints.Wastage.label}"
                                  required="#{bindings.XxpmArticleBomFabricViewChild.hints.Wastage.mandatory}"
                                  columns="#{bindings.XxpmArticleBomFabricViewChild.hints.Wastage.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomFabricViewChild.hints.Wastage.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomFabricViewChild.hints.Wastage.tooltip}"
                                  id="it17" autoSubmit="true"
                                  styleClass="AFFieldNumberMarker">
                      <f:validator binding="#{row.bindings.Wastage.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomFabricViewChild.hints.Wastage.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmArticleBomFabricViewChild.hints.Active.label}"
                             id="c56" align="center" width="40"
                             filterable="true">
                    <af:commandImageLink id="cil1" partialSubmit="true"
                                         icon="#{row.bindings.Active.attributeValue == '1' ? '/Images/checked-Checkbox 12x12.png' : '/Images/unchecked-Checkbox 12x12.png'}"
                                         actionListener="#{ViewActions.articleBomFabActiveButtonAL}"
                                         partialTriggers="cil1"/>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmArticleBomFabricViewChild.hints.EbsStatus.label}"
                             id="c57" rendered="false" filterable="true">
                    <af:outputText value="#{row.EbsStatus}" id="ot24">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomFabricViewChild.hints.EbsStatus.format}"/>
                    </af:outputText>
                  </af:column>
                </af:table>
              </af:panelCollection>
              <af:panelCollection id="pc4" inlineStyle="width:160px;">
                <af:table value="#{bindings.XxpmAbFabricColorsViewChild.collectionModel}"
                          var="row"
                          rows="#{bindings.XxpmAbFabricColorsViewChild.rangeSize}"
                          emptyText="#{bindings.XxpmAbFabricColorsViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.XxpmAbFabricColorsViewChild.rangeSize}"
                          rowBandingInterval="0" id="t7" autoHeightRows="10"
                          inlineStyle="width:160px;"
                          summary="XxpmAbFabricColorsViewChild"
                          selectedRowKeys="#{bindings.XxpmAbFabricColorsViewChild.collectionModel.selectedRow}"
                          selectionListener="#{bindings.XxpmAbFabricColorsViewChild.collectionModel.makeCurrent}"
                          filterVisible="true"
                          filterModel="#{bindings.XxpmAbFabricColorsViewChildQuery.queryDescriptor}"
                          contentDelivery="immediate">
                  <af:column sortProperty="#{bindings.XxpmAbFabricColorsViewChild.hints.AbFabColorId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbFabricColorsViewChild.hints.AbFabColorId.label}"
                             id="c31" align="center" rendered="false"
                             rowHeader="true">
                    <af:outputText value="#{row.AbFabColorId}" id="ot5"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricColorsViewChild.hints.ArtBomFabId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbFabricColorsViewChild.hints.ArtBomFabId.label}"
                             id="c29" align="center" rendered="false">
                    <af:outputText value="#{row.ArtBomFabId}" id="ot4">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmAbFabricColorsViewChild.hints.ArtBomFabId.format}"/>
                    </af:outputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricColorsViewChild.hints.ColorCode.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbFabricColorsViewChild.hints.ColorCode.label}"
                             id="c28" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.ColorCode.inputValue}"
                                  label="#{bindings.XxpmAbFabricColorsViewChild.hints.ColorCode.label}"
                                  required="#{bindings.XxpmAbFabricColorsViewChild.hints.ColorCode.mandatory}"
                                  columns="#{bindings.XxpmAbFabricColorsViewChild.hints.ColorCode.displayWidth}"
                                  maximumLength="#{bindings.XxpmAbFabricColorsViewChild.hints.ColorCode.precision}"
                                  shortDesc="#{bindings.XxpmAbFabricColorsViewChild.hints.ColorCode.tooltip}"
                                  id="it22" autoSubmit="true">
                      <f:validator binding="#{row.bindings.ColorCode.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricColorsViewChild.hints.ColorDesc.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmAbFabricColorsViewChild.hints.ColorDesc.label}"
                             id="c27" align="center" width="80"
                             inlineStyle="text-align:left;">
                    <af:outputFormatted value="#{row.bindings.ColorDesc.inputValue}"
                                        id="of5"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricColorsViewChild.hints.Selected.name}"
                             id="c30" align="center" width="50">
                    <af:selectBooleanCheckbox value="#{row.bindings.Selected.inputValue}"
                                              label="#{row.bindings.Selected.label}"
                                              shortDesc="#{bindings.XxpmAbFabricColorsViewChild.hints.Selected.tooltip}"
                                              id="sbc1" autoSubmit="true"
                                              valueChangeListener="#{ViewActions.articleBomFabAccDetailsSelectVCL}"/>
                    <f:facet name="header">
                      <af:selectBooleanCheckbox id="sbc5" autoSubmit="true"
                                                valueChangeListener="#{ViewActions.articleBomFabColorsSelectAllVCL}"
                                                simple="true"
                                                value="#{bindings.ColorChkboxFab.inputValue}"
                                                label="#{bindings.ColorChkboxFab.label}"/>
                    </f:facet>
                  </af:column>
                </af:table>
              </af:panelCollection>
              <af:panelCollection id="pc5" inlineStyle="width:160px;">
                <af:table value="#{bindings.XxpmAbFabricSizesViewChild.collectionModel}"
                          var="row"
                          rows="#{bindings.XxpmAbFabricSizesViewChild.rangeSize}"
                          emptyText="#{bindings.XxpmAbFabricSizesViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.XxpmAbFabricSizesViewChild.rangeSize}"
                          rowBandingInterval="0" id="t8" autoHeightRows="10"
                          inlineStyle="width:160px;"
                          summary="XxpmAbFabricSizesViewChild"
                          selectedRowKeys="#{bindings.XxpmAbFabricSizesViewChild.collectionModel.selectedRow}"
                          selectionListener="#{bindings.XxpmAbFabricSizesViewChild.collectionModel.makeCurrent}"
                          filterVisible="true"
                          filterModel="#{bindings.XxpmAbFabricSizesViewChildQuery.queryDescriptor}"
                          contentDelivery="immediate">
                  <af:column sortProperty="#{bindings.XxpmAbFabricSizesViewChild.hints.AbFabSizeId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbFabricSizesViewChild.hints.AbFabSizeId.label}"
                             id="c35" align="center" rendered="false"
                             rowHeader="true">
                    <af:outputText value="#{row.AbFabSizeId}" id="ot19"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricSizesViewChild.hints.ArtBomFabId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbFabricSizesViewChild.hints.ArtBomFabId.label}"
                             id="c32" align="center" rendered="false">
                    <af:outputText value="#{row.ArtBomFabId}" id="ot18">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmAbFabricSizesViewChild.hints.ArtBomFabId.format}"/>
                    </af:outputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricSizesViewChild.hints.SizeCode.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbFabricSizesViewChild.hints.SizeCode.label}"
                             id="c36" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.SizeCode.inputValue}"
                                  label="#{bindings.XxpmAbFabricSizesViewChild.hints.SizeCode.label}"
                                  required="#{bindings.XxpmAbFabricSizesViewChild.hints.SizeCode.mandatory}"
                                  columns="#{bindings.XxpmAbFabricSizesViewChild.hints.SizeCode.displayWidth}"
                                  maximumLength="#{bindings.XxpmAbFabricSizesViewChild.hints.SizeCode.precision}"
                                  shortDesc="#{bindings.XxpmAbFabricSizesViewChild.hints.SizeCode.tooltip}"
                                  id="it24" autoSubmit="true">
                      <f:validator binding="#{row.bindings.SizeCode.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricSizesViewChild.hints.SizeDesc.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmAbFabricSizesViewChild.hints.SizeDesc.label}"
                             id="c34" align="center"
                             inlineStyle="text-align:left;" width="80">
                    <af:outputFormatted value="#{row.bindings.SizeDesc.inputValue}"
                                        id="of6"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricSizesViewChild.hints.Selected.name}"
                             id="c33" align="center" width="50">
                    <af:selectBooleanCheckbox value="#{row.bindings.Selected.inputValue}"
                                              label="#{row.bindings.Selected.label}"
                                              shortDesc="#{bindings.XxpmAbFabricSizesViewChild.hints.Selected.tooltip}"
                                              id="sbc2" autoSubmit="true"
                                              valueChangeListener="#{ViewActions.articleBomFabAccDetailsSelectVCL}"/>
                    <f:facet name="header">
                      <af:selectBooleanCheckbox id="sbc6" simple="true"
                                                autoSubmit="true"
                                                valueChangeListener="#{ViewActions.articleBomFabSizesSelectAllVCL}"
                                                label="#{bindings.SizeChkboxFab.label}"
                                                value="#{bindings.SizeChkboxFab.inputValue}"/>
                    </f:facet>
                  </af:column>
                </af:table>
              </af:panelCollection>
            </af:panelGroupLayout>
          </af:showDetailItem>
          <af:showDetailItem text="Accessories" id="sdi2">
            <af:panelGroupLayout id="pgl4" layout="horizontal" valign="top">
              <af:panelCollection id="pc3" inlineStyle="width:1020px;">
                <f:facet name="toolbar">
                  <af:toolbar id="t9">
                    <af:commandToolbarButton actionListener="#{ViewActions.insertAbAccessoriesAL}"
                                             id="ctb12"
                                             icon="/Images/add-icon 12x12.png"/>
                    <af:commandToolbarButton id="ctb13"
                                             icon="/Images/del-icon 12x12.png"
                                             disabled="#{bindings.EbsStatusAccessories.inputValue == 1 || bindings.XxpmArticleBomAccessoriesViewChild.estimatedRowCount < 1 ? true : false}"
                                             partialTriggers="::ctb1 ::ctb2 ::ctb3 ::ctb4"
                                             immediate="true">
                      <af:showPopupBehavior popupId="delArticleBomAccessoriesPopup"
                                            triggerType="action"/>
                    </af:commandToolbarButton>
                    <af:popup id="delArticleBomAccessoriesPopup">
                      <af:dialog id="dialog2" type="yesNo"
                                 dialogListener="#{ViewActions.deleteArticleBomAccessoriesDialog}"
                                 stretchChildren="first" contentHeight="30"
                                 title="Warning!">
                        <af:outputFormatted value="Are you sure you want to delete this record?"
                                            id="outputFormatted6"
                                            inlineStyle="font-weight:bold;"/>
                      </af:dialog>
                    </af:popup>
                  </af:toolbar>
                </f:facet>
                <af:table value="#{bindings.XxpmArticleBomAccessoriesViewChild.collectionModel}"
                          var="row"
                          rows="#{bindings.XxpmArticleBomAccessoriesViewChild.rangeSize}"
                          emptyText="#{bindings.XxpmArticleBomAccessoriesViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.XxpmArticleBomAccessoriesViewChild.rangeSize}"
                          rowBandingInterval="0"
                          filterModel="#{bindings.XxpmArticleBomAccessoriesViewChildQuery.queryDescriptor}"
                          queryListener="#{bindings.XxpmArticleBomAccessoriesViewChildQuery.processQuery}"
                          filterVisible="true" varStatus="vs" id="t5"
                          autoHeightRows="7"
                          binding="#{ViewActions.articleBomAccessoriesTable}"
                          rowSelection="single"
                          selectedRowKeys="#{bindings.XxpmArticleBomAccessoriesViewChild.collectionModel.selectedRow}"
                          selectionListener="#{bindings.XxpmArticleBomAccessoriesViewChild.collectionModel.makeCurrent}"
                          inlineStyle="width:1020px;" editingMode="editAll">
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ArtBomAccId.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ArtBomAccId.label}"
                             id="c24" align="center" rendered="false"
                             rowHeader="true" filterable="true">
                    <af:outputText value="#{row.ArtBomAccId}" id="ot17"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ArtBomId.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ArtBomId.label}"
                             id="c41" align="center" rendered="false"
                             filterable="true">
                    <af:inputText value="#{row.bindings.ArtBomId.inputValue}"
                                  label="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ArtBomId.label}"
                                  required="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ArtBomId.mandatory}"
                                  columns="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ArtBomId.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ArtBomId.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ArtBomId.tooltip}"
                                  id="it10">
                      <f:validator binding="#{row.bindings.ArtBomId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ArtBomId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ImId.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ImId.label}"
                             id="c22" align="center" rendered="false"
                             filterable="true">
                    <af:inputText value="#{row.bindings.ImId.inputValue}"
                                  label="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ImId.label}"
                                  required="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ImId.mandatory}"
                                  columns="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ImId.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ImId.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ImId.tooltip}"
                                  id="it12">
                      <f:validator binding="#{row.bindings.ImId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.ImId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="column1" width="40" align="center"
                             headerText="Sr#" filterable="true">
                    <af:outputText value="#{vs.index + 1}" id="outputText1"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Segment2.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Segment2.label}"
                             id="c38" align="center" width="90"
                             filterable="true">
                    <af:inputListOfValues id="inputListOfValues1"
                                          popupTitle="Search and Select: #{bindings.XxpmArticleBomAccessoriesViewChild.hints.Segment2.label}"
                                          value="#{row.bindings.Segment2.inputValue}"
                                          model="#{row.bindings.Segment2.listOfValuesModel}"
                                          required="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Segment2.mandatory}"
                                          columns="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Segment2.displayWidth}"
                                          shortDesc="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Segment2.tooltip}"
                                          autoSubmit="true"
                                          searchDesc="Search and Select Acc Segment2"
                                          disabled="#{row.EbsStatus == 1 ? true : false}"
                                          contentStyle="background-color:InfoBackground;">
                      <f:validator binding="#{row.bindings.Segment2.validator}"/>
                    </af:inputListOfValues>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Description.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Description.label}"
                             id="c42" align="center" width="360"
                             filterable="true">
                    <af:inputText value="#{row.bindings.Description.inputValue}"
                                  label="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Description.label}"
                                  required="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Description.mandatory}"
                                  columns="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Description.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Description.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Description.tooltip}"
                                  id="it11" autoSubmit="true" disabled="true"
                                  contentStyle="min-width:100%;">
                      <f:validator binding="#{row.bindings.Description.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.AccColorTrans.label}"
                             id="c40"
                             sortProperty="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.AccColorTrans.name}"
                             sortable="true" align="center" width="80"
                             filterable="true">
                    <af:inputListOfValues id="ilov2"
                                          popupTitle="Search and Select: #{bindings.XxpmArticleBomAccessoriesViewChild.hints.AccColorTrans.label}"
                                          value="#{row.bindings.AccColorTrans.inputValue}"
                                          model="#{row.bindings.AccColorTrans.listOfValuesModel}"
                                          required="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.AccColorTrans.mandatory}"
                                          columns="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.AccColorTrans.displayWidth}"
                                          shortDesc="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.AccColorTrans.tooltip}"
                                          autoSubmit="true"
                                          disabled="#{row.EbsStatus == 1 ? true : false}">
                      <f:validator binding="#{row.bindings.AccColorTrans.validator}"/>
                    </af:inputListOfValues>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.AccSizeTrans.label}"
                             id="c43"
                             sortProperty="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.AccSizeTrans.name}"
                             sortable="true" filterable="true" align="center"
                             width="70">
                    <af:inputListOfValues id="ilov3"
                                          popupTitle="Search and Select: #{bindings.XxpmArticleBomAccessoriesViewChild.hints.AccSizeTrans.label}"
                                          value="#{row.bindings.AccSizeTrans.inputValue}"
                                          model="#{row.bindings.AccSizeTrans.listOfValuesModel}"
                                          required="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.AccSizeTrans.mandatory}"
                                          columns="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.AccSizeTrans.displayWidth}"
                                          shortDesc="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.AccSizeTrans.tooltip}"
                                          autoSubmit="true"
                                          disabled="#{row.EbsStatus == 1 ? true : false}">
                      <f:validator binding="#{row.bindings.AccSizeTrans.validator}"/>
                    </af:inputListOfValues>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Uom.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Uom.label}"
                             id="c44" align="center" width="70"
                             filterable="true">
                    <af:inputText value="#{row.bindings.Uom.inputValue}"
                                  label="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Uom.label}"
                                  required="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Uom.mandatory}"
                                  columns="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Uom.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Uom.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Uom.tooltip}"
                                  id="it9" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.Uom.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.SubInv.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.SubInv.label}"
                             id="c37" align="center" width="100"
                             filterable="true">
                    <af:selectOneChoice value="#{row.bindings.SubInv.inputValue}"
                                        label="#{row.bindings.SubInv.label}"
                                        required="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.SubInv.mandatory}"
                                        shortDesc="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.SubInv.tooltip}"
                                        id="soc6" autoSubmit="true"
                                        partialTriggers="inputListOfValues1"
                                        disabled="#{row.bindings.Segment2.inputValue == null || row.EbsStatus == 1 ? true : false}"
                                        contentStyle="background-color:InfoBackground;">
                      <f:selectItems value="#{row.bindings.SubInv.items}"
                                     id="si6"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Consumption.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Consumption.label}"
                             id="c23" align="center" width="30"
                             filterable="true">
                    <af:inputText value="#{row.bindings.Consumption.inputValue}"
                                  label="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Consumption.label}"
                                  required="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Consumption.mandatory}"
                                  columns="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Consumption.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Consumption.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Consumption.tooltip}"
                                  id="it4" autoSubmit="true"
                                  styleClass="AFFieldNumberMarker"
                                  contentStyle="background-color:InfoBackground;"
                                  partialTriggers="it21">
                      <f:validator binding="#{row.bindings.Consumption.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Consumption.format}"
                                        maxFractionDigits="4"/>
                    </af:inputText>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.MeterConeConversion.label}"
                             id="c60"
                             sortProperty="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.MeterConeConversion.name}"
                             sortable="true" align="center" width="40"
                             filterable="true">
                    <af:inputText value="#{row.bindings.MeterConeConversion.inputValue}"
                                  label="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.MeterConeConversion.label}"
                                  required="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.MeterConeConversion.mandatory}"
                                  columns="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.MeterConeConversion.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.MeterConeConversion.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.MeterConeConversion.tooltip}"
                                  id="it21" autoSubmit="true"
                                  styleClass="AFFieldNumberMarker"
                                  disabled="#{fn:substring(row.bindings.Segment2.inputValue,0,3) != 'THR' ? true : false}">
                      <f:validator binding="#{row.bindings.MeterConeConversion.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.MeterConeConversion.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Wastage.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Wastage.label}"
                             id="c39" align="center" width="30"
                             filterable="true">
                    <af:inputText value="#{row.bindings.Wastage.inputValue}"
                                  label="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Wastage.label}"
                                  required="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Wastage.mandatory}"
                                  columns="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Wastage.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Wastage.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Wastage.tooltip}"
                                  id="it1" autoSubmit="true"
                                  styleClass="AFFieldNumberMarker">
                      <f:validator binding="#{row.bindings.Wastage.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Wastage.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.Active.label}"
                             id="c55" align="center" width="40"
                             filterable="true">
                    <af:commandImageLink id="cil2"
                                         icon="#{row.bindings.Active.attributeValue == '1' ? '/Images/checked-Checkbox 12x12.png' : '/Images/unchecked-Checkbox 12x12.png'}"
                                         actionListener="#{ViewActions.articleBomAccActiveButtonAL}"
                                         partialTriggers="cil2"
                                         partialSubmit="true"/>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.EbsStatus.label}"
                             id="c58" rendered="false" filterable="true">
                    <af:outputText value="#{row.EbsStatus}" id="ot25">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomAccessoriesViewChild.hints.EbsStatus.format}"/>
                    </af:outputText>
                  </af:column>
                </af:table>
              </af:panelCollection>
              <af:panelCollection id="pc6" inlineStyle="width:160px;">
                <af:table value="#{bindings.XxpmAbAccessoriesColorsViewChild.collectionModel}"
                          var="row"
                          rows="#{bindings.XxpmAbAccessoriesColorsViewChild.rangeSize}"
                          emptyText="#{bindings.XxpmAbAccessoriesColorsViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.XxpmAbAccessoriesColorsViewChild.rangeSize}"
                          rowBandingInterval="0" id="t10" autoHeightRows="10"
                          inlineStyle="width:160px;"
                          selectionListener="#{bindings.XxpmAbAccessoriesColorsViewChild.collectionModel.makeCurrent}"
                          selectedRowKeys="#{bindings.XxpmAbAccessoriesColorsViewChild.collectionModel.selectedRow}"
                          filterVisible="true"
                          filterModel="#{bindings.XxpmAbAccessoriesColorsViewChildQuery.queryDescriptor}"
                          contentDelivery="immediate">
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.AbAccColorId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.AbAccColorId.label}"
                             id="c45" align="center" rendered="false"
                             rowHeader="true">
                    <af:outputText value="#{row.AbAccColorId}" id="ot21"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.ArtBomAccId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.ArtBomAccId.label}"
                             id="c49" align="center" rendered="false">
                    <af:outputText value="#{row.ArtBomAccId}" id="ot20">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.ArtBomAccId.format}"/>
                    </af:outputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.ColorCode.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.ColorCode.label}"
                             id="c47" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.ColorCode.inputValue}"
                                  label="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.ColorCode.label}"
                                  required="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.ColorCode.mandatory}"
                                  columns="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.ColorCode.displayWidth}"
                                  maximumLength="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.ColorCode.precision}"
                                  shortDesc="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.ColorCode.tooltip}"
                                  id="it26" autoSubmit="true">
                      <f:validator binding="#{row.bindings.ColorCode.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.ColorDesc.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.ColorDesc.label}"
                             id="c48" align="center" width="80"
                             inlineStyle="text-align:left;">
                    <af:outputFormatted value="#{row.bindings.ColorDesc.inputValue}"
                                        id="of3"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.Selected.name}"
                             id="c46" align="center" width="50">
                    <af:selectBooleanCheckbox value="#{row.bindings.Selected.inputValue}"
                                              label="#{row.bindings.Selected.label}"
                                              shortDesc="#{bindings.XxpmAbAccessoriesColorsViewChild.hints.Selected.tooltip}"
                                              id="sbc3" autoSubmit="true"
                                              valueChangeListener="#{ViewActions.articleBomFabAccDetailsSelectVCL}"/>
                    <f:facet name="header">
                      <af:selectBooleanCheckbox id="sbc7" simple="true"
                                                autoSubmit="true"
                                                valueChangeListener="#{ViewActions.articleBomAccColorsSelectAllVCL}"
                                                value="#{bindings.ColorChkboxAcc.inputValue}"
                                                label="#{bindings.ColorChkboxAcc.label}"/>
                    </f:facet>
                  </af:column>
                </af:table>
              </af:panelCollection>
              <af:panelCollection id="pc7" inlineStyle="width:160px;">
                <af:table value="#{bindings.XxpmAbAccessoriesSizesViewChild.collectionModel}"
                          var="row"
                          rows="#{bindings.XxpmAbAccessoriesSizesViewChild.rangeSize}"
                          emptyText="#{bindings.XxpmAbAccessoriesSizesViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.XxpmAbAccessoriesSizesViewChild.rangeSize}"
                          rowBandingInterval="0" id="t11" autoHeightRows="10"
                          inlineStyle="width:160px;"
                          selectionListener="#{bindings.XxpmAbAccessoriesSizesViewChild.collectionModel.makeCurrent}"
                          selectedRowKeys="#{bindings.XxpmAbAccessoriesSizesViewChild.collectionModel.selectedRow}"
                          filterVisible="true"
                          filterModel="#{bindings.XxpmAbAccessoriesSizesViewChildQuery.queryDescriptor}"
                          contentDelivery="immediate">
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.AbAccSizeId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.AbAccSizeId.label}"
                             id="c53" align="center" rendered="false"
                             rowHeader="true">
                    <af:outputText value="#{row.AbAccSizeId}" id="ot22"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.ArtBomAccId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.ArtBomAccId.label}"
                             id="c51" align="center" rendered="false">
                    <af:outputText value="#{row.ArtBomAccId}" id="ot23">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.ArtBomAccId.format}"/>
                    </af:outputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.SizeCode.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.SizeCode.label}"
                             id="c54" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.SizeCode.inputValue}"
                                  label="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.SizeCode.label}"
                                  required="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.SizeCode.mandatory}"
                                  columns="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.SizeCode.displayWidth}"
                                  maximumLength="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.SizeCode.precision}"
                                  shortDesc="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.SizeCode.tooltip}"
                                  id="it28" autoSubmit="true">
                      <f:validator binding="#{row.bindings.SizeCode.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.SizeDesc.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.SizeDesc.label}"
                             id="c52" align="center"
                             inlineStyle="text-align:left;" width="80">
                    <af:outputFormatted value="#{row.bindings.SizeDesc.inputValue}"
                                        id="of4"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.Selected.name}"
                             id="c50" align="center" width="50">
                    <af:selectBooleanCheckbox value="#{row.bindings.Selected.inputValue}"
                                              label="#{row.bindings.Selected.label}"
                                              shortDesc="#{bindings.XxpmAbAccessoriesSizesViewChild.hints.Selected.tooltip}"
                                              id="sbc4" autoSubmit="true"
                                              valueChangeListener="#{ViewActions.articleBomFabAccDetailsSelectVCL}"/>
                    <f:facet name="header">
                      <af:selectBooleanCheckbox id="sbc8" simple="true"
                                                autoSubmit="true"
                                                valueChangeListener="#{ViewActions.articleBomAccSizesSelectAllVCL}"
                                                value="#{bindings.SizeChkboxAcc.inputValue}"
                                                label="#{bindings.SizeChkboxAcc.label}"/>
                    </f:facet>
                  </af:column>
                </af:table>
              </af:panelCollection>
            </af:panelGroupLayout>
          </af:showDetailItem>
        </af:panelTabbed>
        <af:toolbar id="t4">
          <af:commandToolbarButton text="Add" id="ctb5"
                                   actionListener="#{ViewActions.insertArticleBom}"
                                   binding="#{ViewActions.articleBomAddButtonProp}"/>
          <af:spacer width="10" height="10" id="s6"/>
          <af:commandToolbarButton text="Save" id="ctb6"
                                   actionListener="#{ViewActions.commitArticleBom}"/>
          <af:spacer width="10" height="10" id="s5"/>
          <af:commandToolbarButton text="Clear" id="ctb7"
                                   actionListener="#{ViewActions.rollbackArticleBom}"
                                   immediate="true">
            <af:resetActionListener/>
          </af:commandToolbarButton>
          <af:spacer width="10" height="10" id="spacer8"/>
          <af:commandToolbarButton text="Send for Approval" id="ctb10"
                                   actionListener="#{ViewActions.abSendForApprovalAL}"
                                   disabled="#{bindings.ApprovalStatus.inputValue == 'In Process' ? true : false}">
            <af:resetActionListener/>
          </af:commandToolbarButton>
        </af:toolbar>
      </af:panelFormLayout>
    </af:form>
  </af:document>
</f:view>