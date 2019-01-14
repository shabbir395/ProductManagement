<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<f:view>
  <af:document id="d1">
    <af:messages id="m1"/>
    <af:form id="f1">
      <af:panelFormLayout id="pfl3">
        <f:facet name="footer"/>
        <af:toolbar id="t1">
          <af:commandToolbarButton text="Back" partialSubmit="true" id="ctb1"
                                   action="abApprBack"
                                   binding="#{ViewActions.articleBomApprBackBtn}"/>
          <af:spacer width="10" height="10" id="s1"/>
          <af:commandToolbarButton text="Approve" id="ctb2"
                                   actionListener="#{ViewActions.articleBomApproveAL}"/>
          <af:spacer width="10" height="10" id="spacer1"/>
          <af:commandToolbarButton text="Reject" id="commandToolbarButton1"
                                   actionListener="#{ViewActions.articleBomRejectAL}"
                                   partialTriggers="it6"
                                   disabled="#{bindings.RejectReason.inputValue != null ? false : true}"/>
        </af:toolbar>
        <af:panelFormLayout id="pfl4">
          <af:inputText value="#{bindings.RejectReason.inputValue}"
                        label="#{bindings.RejectReason.hints.label}"
                        required="#{bindings.RejectReason.hints.mandatory}"
                        columns="#{bindings.RejectReason.hints.displayWidth}"
                        maximumLength="#{bindings.RejectReason.hints.precision}"
                        shortDesc="#{bindings.RejectReason.hints.tooltip}"
                        id="it6" contentStyle="width:400px;" rows="5"
                        autoSubmit="true">
            <f:validator binding="#{bindings.RejectReason.validator}"/>
          </af:inputText>
        </af:panelFormLayout>
        <af:panelGridLayout id="pgl6" rendered="true">
          <af:gridRow id="gr65" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc133">
              <af:outputFormatted value="Program Name" id="outputFormatted57"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc134">
              <af:inputText value="#{bindings.ProgName.inputValue}"
                            simple="true"
                            required="#{bindings.ProgName.hints.mandatory}"
                            columns="#{bindings.ProgName.hints.displayWidth}"
                            maximumLength="#{bindings.ProgName.hints.precision}"
                            shortDesc="#{bindings.ProgName.hints.tooltip}"
                            id="it4" contentStyle="width:150px;"
                            disabled="true">
                <f:validator binding="#{bindings.ProgName.validator}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell1">
              <af:outputFormatted value="BOM #" id="outputFormatted1"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell2">
              <af:inputText value="#{bindings.ArtBomNum.inputValue}"
                            simple="true"
                            required="#{bindings.ArtBomNum.hints.mandatory}"
                            columns="#{bindings.ArtBomNum.hints.displayWidth}"
                            maximumLength="#{bindings.ArtBomNum.hints.precision}"
                            shortDesc="#{bindings.ArtBomNum.hints.tooltip}"
                            id="it2" autoSubmit="true" disabled="true"
                            contentStyle="width:150px;">
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
                            label="#{bindings.BomGroupTrans.hints.label}"
                            required="#{bindings.BomGroupTrans.hints.mandatory}"
                            columns="#{bindings.BomGroupTrans.hints.displayWidth}"
                            maximumLength="#{bindings.BomGroupTrans.hints.precision}"
                            shortDesc="#{bindings.BomGroupTrans.hints.tooltip}"
                            id="it5" simple="true" autoSubmit="true"
                            disabled="true" contentStyle="width:150px;">
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
              <af:inputText value="#{bindings.ArticleName.inputValue}"
                            simple="true"
                            required="#{bindings.ArticleName.hints.mandatory}"
                            columns="#{bindings.ArticleName.hints.displayWidth}"
                            maximumLength="#{bindings.ArticleName.hints.precision}"
                            shortDesc="#{bindings.ArticleName.hints.tooltip}"
                            id="it1" contentStyle="width:150px;"
                            disabled="true">
                <f:validator binding="#{bindings.ArticleName.validator}"/>
              </af:inputText>
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
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell11">
              <af:outputFormatted value="Bom Version" id="outputFormatted5"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell12">
              <af:outputFormatted value="#{bindings.ArtBomVersion.inputValue}" id="of1"/>
              <af:outputText value=" - " id="ot44"/>
              <af:outputFormatted value="#{bindings.ArtBomVersionDesc.inputValue}" id="of2"/>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:showDetail disclosed="true" id="sd1">
          <af:panelCollection id="pc1" styleClass="AFStretchWidth"
                              rendered="true">
            <f:facet name="menus"/>
            <f:facet name="toolbar"/>
            <f:facet name="statusbar"/>
            <af:table value="#{bindings.MadeupCombDetailsLovReadOnlyChild.collectionModel}"
                      var="row"
                      rows="#{bindings.MadeupCombDetailsLovReadOnlyChild.rangeSize}"
                      emptyText="#{bindings.MadeupCombDetailsLovReadOnlyChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                      fetchSize="#{bindings.MadeupCombDetailsLovReadOnlyChild.rangeSize}"
                      rowBandingInterval="0"
                      filterModel="#{bindings.MadeupCombDetailsLovReadOnlyChildQuery.queryDescriptor}"
                      queryListener="#{bindings.MadeupCombDetailsLovReadOnlyChildQuery.processQuery}"
                      filterVisible="true" varStatus="vs" id="table1"
                      contentDelivery="immediate" autoHeightRows="10">
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.CombId.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.CombId.label}"
                         id="c3" align="center" rendered="false">
                <af:outputText value="#{row.CombId}" id="ot9">
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.CombId.format}"/>
                </af:outputText>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.CombEbsDesc.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.CombEbsDesc.label}"
                         id="c5" align="center" rendered="false">
                <af:outputText value="#{row.CombEbsDesc}" id="ot14"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.CombPmDesc.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.CombPmDesc.label}"
                         id="c19" align="center" rendered="false">
                <af:outputText value="#{row.CombPmDesc}" id="ot13"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.ArticleId.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.ArticleId.label}"
                         id="c8" align="center" rendered="false">
                <af:outputText value="#{row.ArticleId}" id="ot2">
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.ArticleId.format}"/>
                </af:outputText>
              </af:column>
              <af:column id="c21" headerText="Sr#" align="center" width="40">
                <af:outputText id="ot16" value="#{vs.index + 1}"/>
              </af:column>
              <af:column headerText="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.ConcatenatedSegments.label}"
                         filterable="true" sortable="true" align="center"
                         width="250" id="c20"
                         sortProperty="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.ConcatenatedSegments.name}"
                         inlineStyle="text-align:left;">
                <af:outputText value="#{row.ConcatenatedSegments}" id="ot15"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.ArticleName.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.ArticleName.label}"
                         id="c1" align="center" width="200"
                         inlineStyle="text-align:left;">
                <af:outputText value="#{row.ArticleName}" id="ot7"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.PrimaryUnitOfMeasure.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.PrimaryUnitOfMeasure.label}"
                         id="c9" align="center" width="80"
                         inlineStyle="text-align:left;">
                <af:outputText value="#{row.PrimaryUnitOfMeasure}" id="ot12"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.ColorCode.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.ColorCode.label}"
                         id="c7" align="center" rendered="false">
                <af:outputText value="#{row.ColorCode}" id="ot8"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.CombColor.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.CombColor.label}"
                         id="c4" align="center" inlineStyle="text-align:left;">
                <af:outputText value="#{row.CombColor}" id="ot11"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.SizeCode.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.SizeCode.label}"
                         id="c6" align="center" rendered="false">
                <af:outputText value="#{row.SizeCode}" id="ot10"/>
              </af:column>
              <af:column sortProperty="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.CombSize.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.MadeupCombDetailsLovReadOnlyChild.hints.CombSize.label}"
                         id="c2" align="center" inlineStyle="text-align:left;">
                <af:outputText value="#{row.CombSize}" id="ot6"/>
              </af:column>
            </af:table>
          </af:panelCollection>
        </af:showDetail>
        <af:spacer width="10" height="10" id="spacer4"/>
        <af:panelTabbed id="pt1" dimensionsFrom="disclosedChild">
          <af:showDetailItem text="Fabric" id="sdi1">
            <af:panelGroupLayout id="pgl1" layout="horizontal" valign="top"
                                 partialTriggers="pc2:t2">
              <af:panelCollection id="pc2" inlineStyle="width:920px;">
                <f:facet name="menus"/>
                <f:facet name="toolbar">
                  <af:toolbar id="t6">
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
                <af:table value="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.collectionModel}"
                          var="row"
                          rows="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.rangeSize}"
                          emptyText="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.rangeSize}"
                          rowBandingInterval="0"
                          filterModel="#{bindings.XxpmArticleBomFabricViewReadOnlyChildQuery.queryDescriptor}"
                          queryListener="#{bindings.XxpmArticleBomFabricViewReadOnlyChildQuery.processQuery}"
                          filterVisible="true" varStatus="vs"
                          selectedRowKeys="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.collectionModel.selectedRow}"
                          selectionListener="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.collectionModel.makeCurrent}"
                          id="t2" contentDelivery="immediate"
                          autoHeightRows="10" rowSelection="single"
                          inlineStyle="width:920px;">
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ArtBomFabId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ArtBomFabId.label}"
                             id="c12" align="center" rendered="false">
                    <af:outputText value="#{row.ArtBomFabId}" id="ot3"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ArtBomId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ArtBomId.label}"
                             id="c26" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.ArtBomId.inputValue}"
                                  label="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ArtBomId.label}"
                                  required="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ArtBomId.mandatory}"
                                  columns="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ArtBomId.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ArtBomId.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ArtBomId.tooltip}"
                                  id="it19" autoSubmit="true">
                      <f:validator binding="#{row.bindings.ArtBomId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ArtBomId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ImId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ImId.label}"
                             id="c16" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.ImId.inputValue}"
                                  label="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ImId.label}"
                                  required="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ImId.mandatory}"
                                  columns="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ImId.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ImId.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ImId.tooltip}"
                                  id="it14" autoSubmit="true">
                      <f:validator binding="#{row.bindings.ImId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ImId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="column1" headerText="Sr#" align="center"
                             width="40">
                    <af:outputText value="#{vs.index + 1}" id="outputText1"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.Segment2.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.Segment2.label}"
                             id="c17" align="center" width="90">
                    <af:outputText value="#{row.Segment2}" id="ot33"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.Description.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.Description.label}"
                             id="c18" align="center" width="300"
                             inlineStyle="text-align:left;">
                    <af:outputText value="#{row.Description}" id="ot34"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ItemColor.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ItemColor.label}"
                             id="c10" align="center" width="80"
                             inlineStyle="text-align:left;">
                    <af:outputText value="#{row.ItemColor}" id="ot35"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ItemSize.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.ItemSize.label}"
                             id="c13" align="center" width="80"
                             inlineStyle="text-align:left;">
                    <af:outputText value="#{row.ItemSize}" id="ot36"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.Uom.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.Uom.label}"
                             id="c11" align="center" width="70"
                             inlineStyle="text-align:left;">
                    <af:outputText value="#{row.Uom}" id="ot37"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.SubInv.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.SubInv.label}"
                             id="c25" align="center" width="100"
                             inlineStyle="text-align:left;">
                    <af:outputText value="#{row.SubInv}" id="ot38"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.Consumption.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.Consumption.label}"
                             id="c15" align="center" width="30"
                             inlineStyle="text-align:right;">
                    <af:outputText value="#{row.Consumption}" id="ot39">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.Consumption.format}"/>
                    </af:outputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.Wastage.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.Wastage.label}"
                             id="c14" align="center" width="30"
                             inlineStyle="text-align:right;">
                    <af:outputText value="#{row.Wastage}" id="ot40">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.Wastage.format}"/>
                    </af:outputText>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.Active.label}"
                             id="c56" align="center" width="40">
                    <af:selectBooleanCheckbox value="#{row.bindings.Active.inputValue}"
                                              label="#{row.bindings.Active.label}"
                                              shortDesc="#{bindings.XxpmArticleBomFabricViewReadOnlyChild.hints.Active.tooltip}"
                                              id="sbc6" disabled="true"/>
                  </af:column>
                </af:table>
              </af:panelCollection>
              <af:panelCollection id="pc4" inlineStyle="width:160px;">
                <af:table value="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.collectionModel}"
                          var="row"
                          rows="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.rangeSize}"
                          emptyText="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.rangeSize}"
                          rowBandingInterval="0" id="t7"
                          contentDelivery="immediate" autoHeightRows="10"
                          inlineStyle="width:160px;">
                  <af:column sortProperty="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.AbFabColorId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.AbFabColorId.label}"
                             id="c31" align="center" rendered="false">
                    <af:outputText value="#{row.AbFabColorId}" id="ot5"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.ArtBomFabId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.ArtBomFabId.label}"
                             id="c29" align="center" rendered="false">
                    <af:outputText value="#{row.ArtBomFabId}" id="ot4">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.ArtBomFabId.format}"/>
                    </af:outputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.ColorCode.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.ColorCode.label}"
                             id="c28" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.ColorCode.inputValue}"
                                  label="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.ColorCode.label}"
                                  required="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.ColorCode.mandatory}"
                                  columns="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.ColorCode.displayWidth}"
                                  maximumLength="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.ColorCode.precision}"
                                  shortDesc="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.ColorCode.tooltip}"
                                  id="it22" autoSubmit="true">
                      <f:validator binding="#{row.bindings.ColorCode.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.ColorDesc.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.ColorDesc.label}"
                             id="c27" align="center" width="80"
                             inlineStyle="text-align:left;">
                    <af:outputText value="#{row.ColorDesc}" id="ot41"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.Selected.name}"
                             sortable="false" id="c30" align="center"
                             width="50">
                    <af:selectBooleanCheckbox value="#{row.bindings.Selected.inputValue}"
                                              label="#{row.bindings.Selected.label}"
                                              shortDesc="#{bindings.XxpmAbFabricColorsViewReadOnlyChild.hints.Selected.tooltip}"
                                              id="sbc1" autoSubmit="true"
                                              valueChangeListener="#{ViewActions.articleBomFabAccDetailsSelectVCL}"
                                              disabled="true"/>
                  </af:column>
                </af:table>
              </af:panelCollection>
              <af:panelCollection id="pc5" inlineStyle="width:160px;">
                <af:table value="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.collectionModel}"
                          var="row"
                          rows="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.rangeSize}"
                          emptyText="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.rangeSize}"
                          rowBandingInterval="0" id="t8"
                          contentDelivery="immediate" autoHeightRows="10"
                          inlineStyle="width:160px;">
                  <af:column sortProperty="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.AbFabSizeId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.AbFabSizeId.label}"
                             id="c35" align="center" rendered="false">
                    <af:outputText value="#{row.AbFabSizeId}" id="ot19"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.ArtBomFabId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.ArtBomFabId.label}"
                             id="c32" align="center" rendered="false">
                    <af:outputText value="#{row.ArtBomFabId}" id="ot18">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.ArtBomFabId.format}"/>
                    </af:outputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.SizeCode.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.SizeCode.label}"
                             id="c36" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.SizeCode.inputValue}"
                                  label="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.SizeCode.label}"
                                  required="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.SizeCode.mandatory}"
                                  columns="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.SizeCode.displayWidth}"
                                  maximumLength="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.SizeCode.precision}"
                                  shortDesc="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.SizeCode.tooltip}"
                                  id="it24" autoSubmit="true">
                      <f:validator binding="#{row.bindings.SizeCode.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.SizeDesc.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.SizeDesc.label}"
                             id="c34" align="center" width="80"
                             inlineStyle="text-align:left;">
                    <af:outputText value="#{row.SizeDesc}" id="ot42"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.Selected.name}"
                             sortable="false" id="c33" align="center"
                             width="50">
                    <af:selectBooleanCheckbox value="#{row.bindings.Selected.inputValue}"
                                              label="#{row.bindings.Selected.label}"
                                              shortDesc="#{bindings.XxpmAbFabricSizesViewReadOnlyChild.hints.Selected.tooltip}"
                                              id="sbc2" autoSubmit="true"
                                              valueChangeListener="#{ViewActions.articleBomFabAccDetailsSelectVCL}"
                                              disabled="true"/>
                  </af:column>
                </af:table>
              </af:panelCollection>
            </af:panelGroupLayout>
          </af:showDetailItem>
          <af:showDetailItem text="Accessories" id="sdi2">
            <af:panelGroupLayout id="pgl2" layout="horizontal" valign="top"
                                 partialTriggers="pc3:t5">
              <af:panelCollection id="pc3" inlineStyle="width:1020px;">
                <f:facet name="menus"/>
                <f:facet name="toolbar">
                  <af:toolbar id="t9">
                    <af:popup id="delArticleBomAccessoriesPopup">
                      <af:dialog id="dialog2" type="yesNo"
                                 dialogListener="#{ViewActions.deleteArticleBomAccessoriesDialog}"
                                 stretchChildren="first" contentHeight="30">
                        <af:outputFormatted value="Are you sure you want to delete this record?"
                                            id="outputFormatted6"
                                            inlineStyle="font-weight:bold;"/>
                      </af:dialog>
                    </af:popup>
                  </af:toolbar>
                </f:facet>
                <f:facet name="statusbar"/>
                <af:table value="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.collectionModel}"
                          var="row"
                          rows="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.rangeSize}"
                          emptyText="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.rangeSize}"
                          rowBandingInterval="0"
                          filterModel="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChildQuery.queryDescriptor}"
                          queryListener="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChildQuery.processQuery}"
                          filterVisible="true" varStatus="vs" id="t5"
                          contentDelivery="immediate" autoHeightRows="10"
                          rowSelection="single"
                          selectionListener="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.collectionModel.makeCurrent}"
                          selectedRowKeys="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.collectionModel.selectedRow}"
                          inlineStyle="width:1020px;">
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ArtBomAccId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ArtBomAccId.label}"
                             id="c24" align="center" rendered="false">
                    <af:outputText value="#{row.ArtBomAccId}" id="ot17"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ArtBomId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ArtBomId.label}"
                             id="c41" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.ArtBomId.inputValue}"
                                  label="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ArtBomId.label}"
                                  required="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ArtBomId.mandatory}"
                                  columns="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ArtBomId.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ArtBomId.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ArtBomId.tooltip}"
                                  id="it10">
                      <f:validator binding="#{row.bindings.ArtBomId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ArtBomId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ImId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ImId.label}"
                             id="c22" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.ImId.inputValue}"
                                  label="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ImId.label}"
                                  required="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ImId.mandatory}"
                                  columns="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ImId.displayWidth}"
                                  maximumLength="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ImId.precision}"
                                  shortDesc="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ImId.tooltip}"
                                  id="it12">
                      <f:validator binding="#{row.bindings.ImId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.ImId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c57" headerText="Sr#" align="center"
                             width="40">
                    <af:outputText value="#{vs.index + 1}" id="ot1"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.Segment2.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.Segment2.label}"
                             id="c38" align="center" width="90"
                             inlineStyle="text-align:left;">
                    <af:outputText value="#{row.Segment2}" id="ot25"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.Description.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.Description.label}"
                             id="c42" align="center" width="380"
                             inlineStyle="text-align:left;">
                    <af:outputText value="#{row.Description}" id="ot26"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.AccColor.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.AccColor.label}"
                             id="c40" align="center" width="80"
                             inlineStyle="text-align:left;">
                    <af:outputText value="#{row.AccColorTrans}" id="ot24"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.AccSizeTrans.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.AccSizeTrans.label}"
                             id="column2" align="center" width="80"
                             inlineStyle="text-align:left;">
                    <af:outputText value="#{row.AccSizeTrans}" id="ot43"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.Uom.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.Uom.label}"
                             id="c44" align="center" width="70"
                             inlineStyle="text-align:left;">
                    <af:outputText value="#{row.Uom}" id="ot27"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.SubInv.name}"
                             sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.SubInv.label}"
                             id="c37" align="center"
                             inlineStyle="text-align:left;">
                    <af:outputText value="#{row.SubInv}" id="ot28"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.Consumption.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.Consumption.label}"
                             id="c23" align="center" width="30"
                             inlineStyle="text-align:right;">
                    <af:outputText value="#{row.Consumption}" id="ot29">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.Consumption.format}"/>
                    </af:outputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.Wastage.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.Wastage.label}"
                             id="c39" align="center" width="30"
                             inlineStyle="text-align:right;">
                    <af:outputText value="#{row.Wastage}" id="ot30">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.Wastage.format}"/>
                    </af:outputText>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.Active.label}"
                             id="c55" align="center" width="40">
                    <af:selectBooleanCheckbox value="#{row.bindings.Active.inputValue}"
                                              label="#{row.bindings.Active.label}"
                                              shortDesc="#{bindings.XxpmArticleBomAccessoriesViewReadOnlyChild.hints.Active.tooltip}"
                                              id="sbc5" disabled="true"/>
                  </af:column>
                </af:table>
              </af:panelCollection>
              <af:panelCollection id="pc6" inlineStyle="width:160px;">
                <af:table value="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.collectionModel}"
                          var="row"
                          rows="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.rangeSize}"
                          emptyText="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.rangeSize}"
                          rowBandingInterval="0" id="t10"
                          contentDelivery="immediate" autoHeightRows="10"
                          inlineStyle="width:160px;">
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.AbAccColorId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.AbAccColorId.label}"
                             id="c45" align="center" rendered="false">
                    <af:outputText value="#{row.AbAccColorId}" id="ot21"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.ArtBomAccId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.ArtBomAccId.label}"
                             id="c49" align="center" rendered="false">
                    <af:outputText value="#{row.ArtBomAccId}" id="ot20">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.ArtBomAccId.format}"/>
                    </af:outputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.ColorCode.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.ColorCode.label}"
                             id="c47" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.ColorCode.inputValue}"
                                  label="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.ColorCode.label}"
                                  required="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.ColorCode.mandatory}"
                                  columns="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.ColorCode.displayWidth}"
                                  maximumLength="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.ColorCode.precision}"
                                  shortDesc="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.ColorCode.tooltip}"
                                  id="it26" autoSubmit="true">
                      <f:validator binding="#{row.bindings.ColorCode.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.ColorDesc.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.ColorDesc.label}"
                             id="c48" align="center" width="80"
                             inlineStyle="text-align:left;">
                    <af:outputText value="#{row.ColorDesc}" id="ot31"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.Selected.name}"
                             sortable="false" id="c46" align="center"
                             width="50">
                    <af:selectBooleanCheckbox value="#{row.bindings.Selected.inputValue}"
                                              label="#{row.bindings.Selected.label}"
                                              shortDesc="#{bindings.XxpmAbAccessoriesColorsViewReadOnlyChild.hints.Selected.tooltip}"
                                              id="sbc3" autoSubmit="true"
                                              valueChangeListener="#{ViewActions.articleBomFabAccDetailsSelectVCL}"
                                              disabled="true"/>
                  </af:column>
                </af:table>
              </af:panelCollection>
              <af:panelCollection id="pc7" inlineStyle="width:160px;">
                <af:table value="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.collectionModel}"
                          var="row"
                          rows="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.rangeSize}"
                          emptyText="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.rangeSize}"
                          rowBandingInterval="0" id="t11"
                          contentDelivery="immediate" autoHeightRows="10"
                          inlineStyle="width:160px;">
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.AbAccSizeId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.AbAccSizeId.label}"
                             id="c53" align="center" rendered="false">
                    <af:outputText value="#{row.AbAccSizeId}" id="ot22"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.ArtBomAccId.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.ArtBomAccId.label}"
                             id="c51" align="center" rendered="false">
                    <af:outputText value="#{row.ArtBomAccId}" id="ot23">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.ArtBomAccId.format}"/>
                    </af:outputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.SizeCode.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.SizeCode.label}"
                             id="c54" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.SizeCode.inputValue}"
                                  label="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.SizeCode.label}"
                                  required="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.SizeCode.mandatory}"
                                  columns="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.SizeCode.displayWidth}"
                                  maximumLength="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.SizeCode.precision}"
                                  shortDesc="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.SizeCode.tooltip}"
                                  id="it28" autoSubmit="true">
                      <f:validator binding="#{row.bindings.SizeCode.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.SizeDesc.name}"
                             sortable="false"
                             headerText="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.SizeDesc.label}"
                             id="c52" align="center" width="80"
                             inlineStyle="text-align:left;">
                    <af:outputText value="#{row.SizeDesc}" id="ot32"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.Selected.name}"
                             sortable="false" id="c50" align="center"
                             width="50">
                    <af:selectBooleanCheckbox value="#{row.bindings.Selected.inputValue}"
                                              label="#{row.bindings.Selected.label}"
                                              shortDesc="#{bindings.XxpmAbAccessoriesSizesViewReadOnlyChild.hints.Selected.tooltip}"
                                              id="sbc4" autoSubmit="true"
                                              valueChangeListener="#{ViewActions.articleBomFabAccDetailsSelectVCL}"
                                              disabled="true"/>
                  </af:column>
                </af:table>
              </af:panelCollection>
            </af:panelGroupLayout>
          </af:showDetailItem>
        </af:panelTabbed>
      </af:panelFormLayout>
    </af:form>
  </af:document>
</f:view>