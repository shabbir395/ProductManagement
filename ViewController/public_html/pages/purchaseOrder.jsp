<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<f:view afterPhase="#{ViewActions.blankVendorsLovOnPageLoad}">
  <af:document id="d1" title="Purchase Order">
    <af:messages id="m1"/>
    <af:form id="f1" partialTriggers="ctb2">
      <af:panelStretchLayout id="panelStretchLayout5" startWidth="0px"
                             endWidth="0px" topHeight="0px" bottomHeight="0px"
                             dimensionsFrom="children">
        <f:facet name="center">
          <af:image source="/Images/Banners/PO.png" id="i1"/>
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
      <af:panelFormLayout id="pfl3" partialTriggers="ctb20">
        <af:panelGroupLayout id="pgl22" layout="vertical"
                             partialTriggers="ctb1 ctb2 ctb3 ctb4 ctb5">
          <af:panelGroupLayout id="pgl2"
                               rendered="#{ViewActions.activeBuyer == null ? true : false}">
            <af:outputFormatted value="Note: You are not setup as a buyer. That's why you can't generate PO."
                                id="of7"
                                inlineStyle="font-weight:bold; color:Red;"/>
          </af:panelGroupLayout>
          <af:spacer width="10" height="10" id="spacer7"/>
          <af:panelStretchLayout id="panelStretchLayout1" startWidth="0px"
                                 endWidth="0px" topHeight="0px"
                                 bottomHeight="0px" dimensionsFrom="children">
            <f:facet name="center">
              <af:panelGroupLayout layout="scroll"
                                   xmlns:af="http://xmlns.oracle.com/adf/faces/rich"
                                   id="pgl11">
                <af:outputFormatted value="Search Purchase Order"
                                    id="outputFormatted10"
                                    inlineStyle="font-size:small; vertical-align:top;"/>
              </af:panelGroupLayout>
            </f:facet>
          </af:panelStretchLayout>
          <af:spacer width="10" height="10" id="spacer3"/>
          <af:panelGroupLayout id="pgl5" layout="horizontal">
            <af:outputFormatted value="Search PO" id="of11"/>
            <af:spacer width="10" height="10" id="s7"/>
            <af:inputListOfValues popupTitle="Search and Result Dialog"
                                  id="ilov1" simple="true" autoSubmit="true"
                                  valueChangeListener="#{ViewActions.searchPoVCL}"
                                  binding="#{ViewActions.searchLovPo}"
                                  model="#{bindings.PoHeaderIdLov.listOfValuesModel}"
                                  disabled="#{bindings.PoSearchViewIterator.estimatedRowCount < 1 ? true : false}"
                                  partialTriggers="ctb6 ctb7"
                                  value="#{bindings.BindPoId.inputValue}"/>
            <af:spacer width="10" height="10" id="spacer10"/>
            <af:commandToolbarButton actionListener="#{ViewActions.searchPoButton}"
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
            <af:spacer width="10" height="10" id="spacer9"/>
            <af:commandToolbarButton text="Refresh"
                                     id="ctb20"
                                     actionListener="#{ViewActions.refreshPO}"/>
            <af:spacer width="10" height="10" id="spacer4"/>
            <af:commandToolbarButton text="Re-Calculate Values" id="ctb8"
                                     actionListener="#{ViewActions.refreshPoLines}"
                                     disabled='#{bindings.IsProgManager.inputValue > 0 ? false : true}'
                                     partialTriggers="ilov1 cb1 ctb1 ctb2 ctb3 ctb4"/>
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
          <af:panelStretchLayout id="panelStretchLayout2" startWidth="0px"
                                 endWidth="0px" topHeight="0px"
                                 bottomHeight="0px" dimensionsFrom="children">
            <f:facet name="center">
              <af:outputFormatted value="PO Header Information"
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
                <af:inputListOfValues id="progNameId"
                                      popupTitle="Search and Select: #{bindings.ProgName.hints.label}"
                                      value="#{bindings.ProgName.inputValue}"
                                      label="#{bindings.ProgName.hints.label}"
                                      model="#{bindings.ProgName.listOfValuesModel}"
                                      required="#{bindings.ProgName.hints.mandatory}"
                                      columns="#{bindings.ProgName.hints.displayWidth}"
                                      shortDesc="#{bindings.ProgName.hints.tooltip}"
                                      autoSubmit="true" simple="true"
                                      contentStyle="width:150px;"
                                      searchDesc="Search for programs"
                                      disabled="#{bindings.EbsStatus.inputValue == 1 ? true : false}">
                  <f:validator binding="#{bindings.ProgName.validator}"/>
                </af:inputListOfValues>
                <af:inputText value="#{bindings.ProgId.inputValue}"
                              label="#{bindings.ProgId.hints.label}"
                              required="#{bindings.ProgId.hints.mandatory}"
                              columns="#{bindings.ProgId.hints.displayWidth}"
                              maximumLength="#{bindings.ProgId.hints.precision}"
                              shortDesc="#{bindings.ProgId.hints.tooltip}"
                              partialTriggers="progNameId" id="it6"
                              rendered="false">
                  <f:validator binding="#{bindings.ProgId.validator}"/>
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.ProgId.format}"/>
                </af:inputText>
              </af:gridCell>
            </af:gridRow>
            <af:gridRow marginTop="5px" height="auto" id="gr36">
              <af:gridCell marginStart="5px" width="dontCare" id="gc74">
                <af:outputFormatted value="Customer" id="outputFormatted7"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc72">
                <af:inputText value="#{bindings.CustomerName.inputValue}"
                              label="#{bindings.CustomerName.hints.label}"
                              required="#{bindings.CustomerName.hints.mandatory}"
                              columns="#{bindings.CustomerName.hints.displayWidth}"
                              maximumLength="#{bindings.CustomerName.hints.precision}"
                              shortDesc="#{bindings.CustomerName.hints.tooltip}"
                              id="it3" simple="true" autoSubmit="true"
                              disabled="true" contentStyle="width:150px;">
                  <f:validator binding="#{bindings.CustomerName.validator}"/>
                </af:inputText>
              </af:gridCell>
            </af:gridRow>
            <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                        id="gr37">
              <af:gridCell marginStart="5px" width="dontCare" id="gc71">
                <af:outputFormatted value="Sale Order #"
                                    id="outputFormatted335"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc73">
                <af:selectOneChoice value="#{bindings.SoHeaderId.inputValue}"
                                    label="#{bindings.SoHeaderId.label}"
                                    required="#{bindings.SoHeaderId.hints.mandatory}"
                                    shortDesc="#{bindings.SoHeaderId.hints.tooltip}"
                                    id="soc1" simple="true" autoSubmit="true"
                                    partialTriggers="progNameId"
                                    disabled="#{bindings.ProgName.inputValue == null || bindings.EbsStatus.inputValue == 1 ? true : false}"
                                    binding="#{ViewActions.poSoHeaderId}"
                                    valueChangeListener="#{ViewActions.poSoHeaderIdVCL}">
                  <f:selectItems value="#{bindings.SoHeaderId.items}" id="si1"/>
                </af:selectOneChoice>
                <af:resource type="javascript">
                  function onPopupOpened(event) {
                      var popup = event.getSource();
                      popup.cancel = function () {
                      };
                  }
                </af:resource>
                <af:popup id="poSoNumPopup">
                  <af:clientListener method="onPopupOpened" type="popupOpened"/>
                  <af:dialog id="d2" type="yesNo" closeIconVisible="false"
                             stretchChildren="first"
                             dialogListener="#{ViewActions.soHeaderIdDL}"
                             contentHeight="30"
                             titleIconSource="/Images/warning 12x12.png"
                             title="Warning!">
                    <af:outputFormatted value="Are you sure you want to change the Sale Order #?"
                                        id="of1"
                                        inlineStyle="font-weight:bold;"/>
                  </af:dialog>
                </af:popup>
              </af:gridCell>
            </af:gridRow>
            <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                        id="gridRow1">
              <af:gridCell marginStart="5px" width="dontCare" id="gridCell1">
                <af:outputFormatted value="Accessory Categories"
                                    id="outputFormatted1"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gridCell2">
                <af:selectManyChoice value="#{bindings.AccCategoryTypeLov.inputValue}"
                                     label="#{bindings.AccCategoryTypeLov.label}"
                                     id="smc1" autoSubmit="true"
                                     valueChangeListener="#{ViewActions.accCatTypeVCL}"
                                     simple="true" contentStyle="width:250px;">
                  <f:selectItems value="#{bindings.AccCategoryTypeLov.items}"
                                 id="si4"/>
                </af:selectManyChoice>
              </af:gridCell>
            </af:gridRow>
            <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                        id="gridRow2">
              <af:gridCell marginStart="5px" width="dontCare" id="gridCell3">
                <af:outputFormatted value="Accessory Vendor"
                                    id="outputFormatted2"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gridCell4">
                <af:panelGroupLayout id="pgl3" layout="horizontal">
                  <af:inputListOfValues id="inputListOfValues2"
                                        popupTitle="Search and Select: #{bindings.VendorName.hints.label}"
                                        value="#{bindings.VendorName.inputValue}"
                                        label="#{bindings.VendorName.hints.label}"
                                        model="#{bindings.VendorName.listOfValuesModel}"
                                        required="#{bindings.VendorName.hints.mandatory}"
                                        columns="#{bindings.VendorName.hints.displayWidth}"
                                        shortDesc="#{bindings.VendorName.hints.tooltip}"
                                        simple="true"
                                        contentStyle="width:250px;"
                                        autoSubmit="true">
                    <f:validator binding="#{bindings.VendorName.validator}"/>
                  </af:inputListOfValues>
                  <af:spacer width="10" height="10" id="s1"/>
                  <af:commandButton text="Apply" id="cb2"
                                    actionListener="#{ViewActions.vendorApplyButtonAL}"/>
                </af:panelGroupLayout>
              </af:gridCell>
            </af:gridRow>
          </af:panelGridLayout>
          <af:panelTabbed id="pt1" dimensionsFrom="disclosedChild"
                          partialTriggers="ctb8 soc1 d2">
            <af:showDetailItem text="Fabric" id="sdi1">
              <af:panelCollection id="pc1" styleClass="AFStretchWidth">
                <f:facet name="menus"/>
                <f:facet name="toolbar">
                  <af:toolbar id="toolbar1">
                    <af:commandToolbarButton id="commandToolbarButton1"
                                             icon="/Images/excel 12x12.png">
                      <af:setPropertyListener from="true"
                                              to="#{pageFlowScope.hideColumn}"
                                              type="action"/>
                      <af:exportCollectionActionListener type="excelHTML"
                                                         exportedId="t1"
                                                         filename="#{ViewActions.expPOFabToExcelFileName}.xls"/>
                      <af:setPropertyListener from="false"
                                              to="#{pageFlowScope.hideColumn}"
                                              type="action"/>
                    </af:commandToolbarButton>
                  </af:toolbar>
                </f:facet>
                <f:facet name="statusbar"/>
                <af:table value="#{bindings.XxpmPoLinesViewFabChild.collectionModel}"
                          var="row"
                          rows="#{bindings.XxpmPoLinesViewFabChild.rangeSize}"
                          emptyText="#{bindings.XxpmPoLinesViewFabChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.XxpmPoLinesViewFabChild.rangeSize}"
                          rowBandingInterval="0"
                          filterModel="#{bindings.XxpmPoLinesViewFabChildQuery.queryDescriptor}"
                          queryListener="#{bindings.XxpmPoLinesViewFabChildQuery.processQuery}"
                          filterVisible="true" varStatus="vs"
                          selectedRowKeys="#{bindings.XxpmPoLinesViewFabChild.collectionModel.selectedRow}"
                          selectionListener="#{bindings.XxpmPoLinesViewFabChild.collectionModel.makeCurrent}"
                          rowSelection="single" id="t1"
                          contentDelivery="immediate"
                          autoHeightRows="#{bindings.XxpmPoLinesViewFabChild.estimatedRowCount}"
                          styleClass="AFStretchWidth" partialTriggers="ctb9">
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.PoLineId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewFabChild.hints.PoLineId.label}"
                             id="c13" align="center" rendered="false">
                    <af:outputFormatted value="#{row.bindings.PoLineId.inputValue}"
                                        id="of4"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.PoHeaderId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewFabChild.hints.PoHeaderId.label}"
                             id="c2" align="center" rendered="false">
                    <af:outputFormatted value="#{row.bindings.PoHeaderId.inputValue}"
                                        id="of3">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmPoLinesViewFabChild.hints.PoHeaderId.format}"/>
                    </af:outputFormatted>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.InventoryItemId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewFabChild.hints.InventoryItemId.label}"
                             id="c8" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.InventoryItemId.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewFabChild.hints.InventoryItemId.label}"
                                  required="#{bindings.XxpmPoLinesViewFabChild.hints.InventoryItemId.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewFabChild.hints.InventoryItemId.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewFabChild.hints.InventoryItemId.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.InventoryItemId.tooltip}"
                                  id="it2">
                      <f:validator binding="#{row.bindings.InventoryItemId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmPoLinesViewFabChild.hints.InventoryItemId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c36" headerText="Sr#" align="center"
                             width="30">
                    <af:outputText value="#{vs.index + 1}" id="ot2"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.Segment2.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewFabChild.hints.Segment2.label}"
                             id="c1" align="center" width="70">
                    <af:inputText value="#{row.bindings.Segment2.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewFabChild.hints.Segment2.label}"
                                  required="#{bindings.XxpmPoLinesViewFabChild.hints.Segment2.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewFabChild.hints.Segment2.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewFabChild.hints.Segment2.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.Segment2.tooltip}"
                                  id="it5" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.Segment2.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.Description.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewFabChild.hints.Description.label}"
                             id="c7" align="center" width="300">
                    <af:inputText value="#{row.bindings.Description.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewFabChild.hints.Description.label}"
                                  required="#{bindings.XxpmPoLinesViewFabChild.hints.Description.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewFabChild.hints.Description.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewFabChild.hints.Description.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.Description.tooltip}"
                                  id="it12" autoSubmit="true" disabled="true"
                                  contentStyle="min-width:100%;">
                      <f:validator binding="#{row.bindings.Description.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.Uom.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewFabChild.hints.Uom.label}"
                             id="c4" align="center" width="60">
                    <af:inputText value="#{row.bindings.Uom.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewFabChild.hints.Uom.label}"
                                  required="#{bindings.XxpmPoLinesViewFabChild.hints.Uom.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewFabChild.hints.Uom.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewFabChild.hints.Uom.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.Uom.tooltip}"
                                  id="it4" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.Uom.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.ItemType.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewFabChild.hints.ItemType.label}"
                             id="c12" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.ItemType.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewFabChild.hints.ItemType.label}"
                                  required="#{bindings.XxpmPoLinesViewFabChild.hints.ItemType.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewFabChild.hints.ItemType.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewFabChild.hints.ItemType.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.ItemType.tooltip}"
                                  id="it11">
                      <f:validator binding="#{row.bindings.ItemType.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmPoLinesViewFabChild.hints.ItemType.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmPoLinesViewFabChild.hints.CurrencyCode.label}"
                             id="c39" align="center" width="60" sortable="true"
                             filterable="true"
                             sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.CurrencyCode.name}">
                    <af:selectOneChoice value="#{row.bindings.CurrencyCode.inputValue}"
                                        label="#{row.bindings.CurrencyCode.label}"
                                        required="#{bindings.XxpmPoLinesViewFabChild.hints.CurrencyCode.mandatory}"
                                        shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.CurrencyCode.tooltip}"
                                        id="soc4" autoSubmit="true"
                                        disabled="#{row.bindings.CurrencyCode.attributeValue == 'PKR' || row.bindings.EbsStatus.inputValue == '1' ? true : false}">
                      <f:selectItems value="#{row.bindings.CurrencyCode.items}"
                                     id="si5"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.Consumption.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewFabChild.hints.Consumption.label}"
                             id="c6" align="center" width="50">
                    <af:inputText value="#{row.bindings.Consumption.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewFabChild.hints.Consumption.label}"
                                  required="#{bindings.XxpmPoLinesViewFabChild.hints.Consumption.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewFabChild.hints.Consumption.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewFabChild.hints.Consumption.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.Consumption.tooltip}"
                                  id="it10" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.Consumption.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.SoLineQty.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewFabChild.hints.SoLineQty.label}"
                             id="c3" align="center" width="50">
                    <af:inputText value="#{row.bindings.SoLineQty.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewFabChild.hints.SoLineQty.label}"
                                  required="#{bindings.XxpmPoLinesViewFabChild.hints.SoLineQty.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewFabChild.hints.SoLineQty.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewFabChild.hints.SoLineQty.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.SoLineQty.tooltip}"
                                  id="it7" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.SoLineQty.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmPoLinesViewFabChild.hints.SoLineQty.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.PoQnty.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewFabChild.hints.PoQnty.label}"
                             id="c5" align="center" width="50">
                    <af:inputText value="#{row.bindings.PoQnty.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewFabChild.hints.PoQnty.label}"
                                  required="#{bindings.XxpmPoLinesViewFabChild.hints.PoQnty.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewFabChild.hints.PoQnty.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewFabChild.hints.PoQnty.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.PoQnty.tooltip}"
                                  id="it13" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.PoQnty.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmPoLinesViewFabChild.hints.ActOrderedQty.label}"
                             id="c30" align="center" sortable="true"
                             filterable="true"
                             sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.ActOrderedQty.name}"
                             width="50">
                    <af:inputText value="#{row.bindings.ActOrderedQty.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewFabChild.hints.ActOrderedQty.label}"
                                  required="#{bindings.XxpmPoLinesViewFabChild.hints.ActOrderedQty.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewFabChild.hints.ActOrderedQty.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewFabChild.hints.ActOrderedQty.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.ActOrderedQty.tooltip}"
                                  id="it26" autoSubmit="true"
                                  disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}">
                      <f:validator binding="#{row.bindings.ActOrderedQty.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmPoLinesViewFabChild.hints.ActOrderedQty.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.SoLineRate.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewFabChild.hints.SoLineRate.label}"
                             id="c9" align="center" width="50">
                    <af:inputText value="#{row.bindings.SoLineRate.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewFabChild.hints.SoLineRate.label}"
                                  required="#{bindings.XxpmPoLinesViewFabChild.hints.SoLineRate.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewFabChild.hints.SoLineRate.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewFabChild.hints.SoLineRate.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.SoLineRate.tooltip}"
                                  id="it8" autoSubmit="true"
                                  disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}">
                      <f:validator binding="#{row.bindings.SoLineRate.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.Moq.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewFabChild.hints.Moq.label}"
                             id="c14" align="center" width="50">
                    <af:inputText value="#{row.bindings.Moq.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewFabChild.hints.Moq.label}"
                                  required="#{bindings.XxpmPoLinesViewFabChild.hints.Moq.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewFabChild.hints.Moq.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewFabChild.hints.Moq.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.Moq.tooltip}"
                                  id="it1" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.Moq.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmPoLinesViewFabChild.hints.Moq.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.VendorId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewFabChild.hints.VendorId.label}"
                             id="c10" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.VendorId.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewFabChild.hints.VendorId.label}"
                                  required="#{bindings.XxpmPoLinesViewFabChild.hints.VendorId.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewFabChild.hints.VendorId.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewFabChild.hints.VendorId.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.VendorId.tooltip}"
                                  id="it9">
                      <f:validator binding="#{row.bindings.VendorId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmPoLinesViewFabChild.hints.VendorId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.VendorName.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewFabChild.hints.VendorName.label}"
                             id="c11" align="center" width="250">
                    <af:inputListOfValues id="vendorNameId"
                                          popupTitle="Search and Select: #{bindings.XxpmPoLinesViewFabChild.hints.VendorName.label}"
                                          value="#{row.bindings.VendorName.inputValue}"
                                          model="#{row.bindings.VendorName.listOfValuesModel}"
                                          required="#{bindings.XxpmPoLinesViewFabChild.hints.VendorName.mandatory}"
                                          columns="#{bindings.XxpmPoLinesViewFabChild.hints.VendorName.displayWidth}"
                                          shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.VendorName.tooltip}"
                                          autoSubmit="true"
                                          contentStyle="min-width:90%;"
                                          disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                          valueChangeListener="#{ViewActions.vendorIdFabVCL}">
                      <f:validator binding="#{row.bindings.VendorName.validator}"/>
                    </af:inputListOfValues>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmPoLinesViewFabChild.hints.VendorSiteId.label}"
                             id="c32" align="center" sortable="true"
                             filterable="true"
                             sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.VendorSiteId.name}">
                    <af:selectOneChoice value="#{row.bindings.VendorSiteId.inputValue}"
                                        label="#{row.bindings.VendorSiteId.label}"
                                        required="#{bindings.XxpmPoLinesViewFabChild.hints.VendorSiteId.mandatory}"
                                        shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.VendorSiteId.tooltip}"
                                        id="soc3" autoSubmit="true"
                                        partialTriggers="vendorNameId"
                                        disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}">
                      <f:selectItems value="#{row.bindings.VendorSiteId.items}"
                                     id="si3"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmPoLinesViewFabChild.hints.PoNum.label}"
                             id="c35" width="40" align="center" sortable="true"
                             filterable="true"
                             sortProperty="#{bindings.XxpmPoLinesViewFabChild.hints.PoNum.name}">
                    <af:inputText value="#{row.bindings.PoNum.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewFabChild.hints.PoNum.label}"
                                  required="#{bindings.XxpmPoLinesViewFabChild.hints.PoNum.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewFabChild.hints.PoNum.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewFabChild.hints.PoNum.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewFabChild.hints.PoNum.tooltip}"
                                  id="it28" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.PoNum.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c33" width="30" headerText="Split"
                             align="center">
                    <af:commandToolbarButton id="ctb9"
                                             actionListener="#{ViewActions.splitPoFabLinesAL}"
                                             icon="/Images/split 12x12.png"
                                             disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"/>
                  </af:column>
                </af:table>
              </af:panelCollection>
            </af:showDetailItem>
            <af:showDetailItem text="Accessories" id="showDetailItem1"
                               partialTriggers="smc1">
              <af:panelCollection id="pc2" styleClass="AFStretchWidth">
                <f:facet name="menus"/>
                <f:facet name="toolbar">
                  <af:toolbar id="t12">
                    <af:commandToolbarButton id="ctb21"
                                             icon="/Images/excel 12x12.png">
                      <af:setPropertyListener from="true"
                                              to="#{pageFlowScope.hideColumn}"
                                              type="action"/>
                      <af:exportCollectionActionListener type="excelHTML"
                                                         exportedId="t2"
                                                         filename="#{ViewActions.expPOAccToExcelFileName}.xls"/>
                      <af:setPropertyListener from="false"
                                              to="#{pageFlowScope.hideColumn}"
                                              type="action"/>
                    </af:commandToolbarButton>
                  </af:toolbar>
                </f:facet>
                <f:facet name="statusbar"/>
                <af:table value="#{bindings.XxpmPoLinesViewAccChild.collectionModel}"
                          var="row"
                          rows="#{bindings.XxpmPoLinesViewAccChild.rangeSize}"
                          emptyText="#{bindings.XxpmPoLinesViewAccChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.XxpmPoLinesViewAccChild.rangeSize}"
                          rowBandingInterval="0"
                          filterModel="#{bindings.XxpmPoLinesViewAccChildQuery.queryDescriptor}"
                          queryListener="#{bindings.XxpmPoLinesViewAccChildQuery.processQuery}"
                          filterVisible="true" varStatus="vs"
                          selectedRowKeys="#{bindings.XxpmPoLinesViewAccChild.collectionModel.selectedRow}"
                          selectionListener="#{bindings.XxpmPoLinesViewAccChild.collectionModel.makeCurrent}"
                          rowSelection="single" id="t2"
                          contentDelivery="immediate"
                          autoHeightRows="#{bindings.XxpmPoLinesViewAccChild.estimatedRowCount}"
                          styleClass="AFStretchWidth" partialTriggers="ctb10"
                          binding="#{ViewActions.poLinesViewAccTable}">
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.PoLineId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewAccChild.hints.PoLineId.label}"
                             id="c19" align="center" rendered="false">
                    <af:outputFormatted value="#{row.bindings.PoLineId.inputValue}"
                                        id="of5"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.PoHeaderId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewAccChild.hints.PoHeaderId.label}"
                             id="c27" align="center" rendered="false">
                    <af:outputFormatted value="#{row.bindings.PoHeaderId.inputValue}"
                                        id="of6">
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmPoLinesViewAccChild.hints.PoHeaderId.format}"/>
                    </af:outputFormatted>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.InventoryItemId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewAccChild.hints.InventoryItemId.label}"
                             id="c26" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.InventoryItemId.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewAccChild.hints.InventoryItemId.label}"
                                  required="#{bindings.XxpmPoLinesViewAccChild.hints.InventoryItemId.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewAccChild.hints.InventoryItemId.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewAccChild.hints.InventoryItemId.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.InventoryItemId.tooltip}"
                                  id="it22">
                      <f:validator binding="#{row.bindings.InventoryItemId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmPoLinesViewAccChild.hints.InventoryItemId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="column2" headerText="Sr#" align="center"
                             width="30">
                    <af:outputText value="#{vs.index + 1}" id="outputText1"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.Segment2.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewAccChild.hints.Segment2.label}"
                             id="c23" align="center" width="70">
                    <af:inputText value="#{row.bindings.Segment2.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewAccChild.hints.Segment2.label}"
                                  required="#{bindings.XxpmPoLinesViewAccChild.hints.Segment2.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewAccChild.hints.Segment2.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewAccChild.hints.Segment2.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.Segment2.tooltip}"
                                  id="it23" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.Segment2.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmPoLinesViewAccChild.hints.AccCat.label}"
                             id="c38" rendered="false">
                    <af:inputText value="#{row.bindings.AccCat.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewAccChild.hints.AccCat.label}"
                                  required="#{bindings.XxpmPoLinesViewAccChild.hints.AccCat.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewAccChild.hints.AccCat.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewAccChild.hints.AccCat.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.AccCat.tooltip}"
                                  id="it30">
                      <f:validator binding="#{row.bindings.AccCat.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.Description.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewAccChild.hints.Description.label}"
                             id="c22" align="center" width="300">
                    <af:inputText value="#{row.bindings.Description.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewAccChild.hints.Description.label}"
                                  required="#{bindings.XxpmPoLinesViewAccChild.hints.Description.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewAccChild.hints.Description.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewAccChild.hints.Description.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.Description.tooltip}"
                                  id="it21" autoSubmit="true" disabled="true"
                                  contentStyle="min-width:100%;">
                      <f:validator binding="#{row.bindings.Description.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.Uom.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewAccChild.hints.Uom.label}"
                             id="c28" align="center" width="60">
                    <af:inputText value="#{row.bindings.Uom.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewAccChild.hints.Uom.label}"
                                  required="#{bindings.XxpmPoLinesViewAccChild.hints.Uom.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewAccChild.hints.Uom.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewAccChild.hints.Uom.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.Uom.tooltip}"
                                  id="it15" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.Uom.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.ItemType.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewAccChild.hints.ItemType.label}"
                             id="c24" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.ItemType.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewAccChild.hints.ItemType.label}"
                                  required="#{bindings.XxpmPoLinesViewAccChild.hints.ItemType.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewAccChild.hints.ItemType.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewAccChild.hints.ItemType.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.ItemType.tooltip}"
                                  id="it16">
                      <f:validator binding="#{row.bindings.ItemType.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmPoLinesViewAccChild.hints.ItemType.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmPoLinesViewAccChild.hints.CurrencyCode.label}"
                             id="c40" align="center" width="60" sortable="true"
                             filterable="true"
                             sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.CurrencyCode.name}">
                    <af:selectOneChoice value="#{row.bindings.CurrencyCode.inputValue}"
                                        label="#{row.bindings.CurrencyCode.label}"
                                        required="#{bindings.XxpmPoLinesViewAccChild.hints.CurrencyCode.mandatory}"
                                        shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.CurrencyCode.tooltip}"
                                        id="soc5" autoSubmit="true"
                                        disabled="#{row.bindings.CurrencyCode.attributeValue == 'PKR' || row.bindings.EbsStatus.inputValue == '1' ? true : false}">
                      <f:selectItems value="#{row.bindings.CurrencyCode.items}"
                                     id="si6"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.Consumption.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewAccChild.hints.Consumption.label}"
                             id="c15" align="center" width="50">
                    <af:inputText value="#{row.bindings.Consumption.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewAccChild.hints.Consumption.label}"
                                  required="#{bindings.XxpmPoLinesViewAccChild.hints.Consumption.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewAccChild.hints.Consumption.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewAccChild.hints.Consumption.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.Consumption.tooltip}"
                                  id="it24" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.Consumption.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.SoLineQty.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewAccChild.hints.SoLineQty.label}"
                             id="c25" align="center" width="50">
                    <af:inputText value="#{row.bindings.SoLineQty.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewAccChild.hints.SoLineQty.label}"
                                  required="#{bindings.XxpmPoLinesViewAccChild.hints.SoLineQty.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewAccChild.hints.SoLineQty.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewAccChild.hints.SoLineQty.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.SoLineQty.tooltip}"
                                  id="it18" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.SoLineQty.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmPoLinesViewAccChild.hints.SoLineQty.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.PoQnty.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewAccChild.hints.PoQnty.label}"
                             id="c18" align="center" width="50">
                    <af:inputText value="#{row.bindings.PoQnty.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewAccChild.hints.PoQnty.label}"
                                  required="#{bindings.XxpmPoLinesViewAccChild.hints.PoQnty.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewAccChild.hints.PoQnty.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewAccChild.hints.PoQnty.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.PoQnty.tooltip}"
                                  id="it14" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.PoQnty.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmPoLinesViewAccChild.hints.UnallocatedStock.label}"
                             id="column3" align="center" sortable="true"
                             filterable="true"
                             sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.ActOrderedQty.name}"
                             width="50">
                    <af:inputText value="#{row.bindings.UnallocatedStock.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewAccChild.hints.UnallocatedStock.label}"
                                  required="#{bindings.XxpmPoLinesViewAccChild.hints.UnallocatedStock.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewAccChild.hints.UnallocatedStock.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewAccChild.hints.UnallocatedStock.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.UnallocatedStock.tooltip}"
                                  id="inputText1"
                                  autoSubmit="true" readOnly="true">
                      <f:validator binding="#{row.bindings.ActOrderedQty.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmPoLinesViewAccChild.hints.ActOrderedQty.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmPoLinesViewAccChild.hints.ActOrderedQty.label}"
                             id="c29" align="center" sortable="true"
                             filterable="true"
                             sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.ActOrderedQty.name}"
                             width="50">
                    <af:inputText value="#{row.bindings.ActOrderedQty.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewAccChild.hints.ActOrderedQty.label}"
                                  required="#{bindings.XxpmPoLinesViewAccChild.hints.ActOrderedQty.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewAccChild.hints.ActOrderedQty.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewAccChild.hints.ActOrderedQty.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.ActOrderedQty.tooltip}"
                                  id="it25"
                                  disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                  autoSubmit="true">
                      <f:validator binding="#{row.bindings.ActOrderedQty.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmPoLinesViewAccChild.hints.ActOrderedQty.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.SoLineRate.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewAccChild.hints.SoLineRate.label}"
                             id="c20" align="center" width="50">
                    <af:inputText value="#{row.bindings.SoLineRate.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewAccChild.hints.SoLineRate.label}"
                                  required="#{bindings.XxpmPoLinesViewAccChild.hints.SoLineRate.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewAccChild.hints.SoLineRate.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewAccChild.hints.SoLineRate.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.SoLineRate.tooltip}"
                                  id="it20" autoSubmit="true"
                                  disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}">
                      <f:validator binding="#{row.bindings.SoLineRate.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.Moq.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewAccChild.hints.Moq.label}"
                             id="c21" align="center" width="50">
                    <af:inputText value="#{row.bindings.Moq.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewAccChild.hints.Moq.label}"
                                  required="#{bindings.XxpmPoLinesViewAccChild.hints.Moq.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewAccChild.hints.Moq.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewAccChild.hints.Moq.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.Moq.tooltip}"
                                  id="it17" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.Moq.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmPoLinesViewAccChild.hints.Moq.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.VendorId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewAccChild.hints.VendorId.label}"
                             id="c17" align="center" rendered="false">
                    <af:inputText value="#{row.bindings.VendorId.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewAccChild.hints.VendorId.label}"
                                  required="#{bindings.XxpmPoLinesViewAccChild.hints.VendorId.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewAccChild.hints.VendorId.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewAccChild.hints.VendorId.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.VendorId.tooltip}"
                                  id="it19">
                      <f:validator binding="#{row.bindings.VendorId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.XxpmPoLinesViewAccChild.hints.VendorId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.VendorName.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.XxpmPoLinesViewAccChild.hints.VendorName.label}"
                             id="c16" align="center" width="200">
                    <af:inputListOfValues id="inputListOfValues1"
                                          popupTitle="Search and Select: #{bindings.XxpmPoLinesViewAccChild.hints.VendorName.label}"
                                          value="#{row.bindings.VendorName.inputValue}"
                                          model="#{row.bindings.VendorName.listOfValuesModel}"
                                          required="#{bindings.XxpmPoLinesViewAccChild.hints.VendorName.mandatory}"
                                          columns="#{bindings.XxpmPoLinesViewAccChild.hints.VendorName.displayWidth}"
                                          shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.VendorName.tooltip}"
                                          autoSubmit="true"
                                          contentStyle="min-width:90%;"
                                          disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                          valueChangeListener="#{ViewActions.vendorIdAccVCL}">
                      <f:validator binding="#{row.bindings.VendorName.validator}"/>
                    </af:inputListOfValues>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmPoLinesViewAccChild.hints.VendorSiteId.label}"
                             id="c31" align="center" sortable="true"
                             filterable="true"
                             sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.VendorSiteId.name}">
                    <af:selectOneChoice value="#{row.bindings.VendorSiteId.inputValue}"
                                        label="#{row.bindings.VendorSiteId.label}"
                                        required="#{bindings.XxpmPoLinesViewAccChild.hints.VendorSiteId.mandatory}"
                                        shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.VendorSiteId.tooltip}"
                                        id="soc2" autoSubmit="true"
                                        partialTriggers="inputListOfValues1"
                                        disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}">
                      <f:selectItems value="#{row.bindings.VendorSiteId.items}"
                                     id="si2"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column headerText="#{bindings.XxpmPoLinesViewAccChild.hints.PoNum.label}"
                             id="c34" width="40" align="center" sortable="true"
                             filterable="true"
                             sortProperty="#{bindings.XxpmPoLinesViewAccChild.hints.PoNum.name}">
                    <af:inputText value="#{row.bindings.PoNum.inputValue}"
                                  label="#{bindings.XxpmPoLinesViewAccChild.hints.PoNum.label}"
                                  required="#{bindings.XxpmPoLinesViewAccChild.hints.PoNum.mandatory}"
                                  columns="#{bindings.XxpmPoLinesViewAccChild.hints.PoNum.displayWidth}"
                                  maximumLength="#{bindings.XxpmPoLinesViewAccChild.hints.PoNum.precision}"
                                  shortDesc="#{bindings.XxpmPoLinesViewAccChild.hints.PoNum.tooltip}"
                                  id="it27" autoSubmit="true" disabled="true">
                      <f:validator binding="#{row.bindings.PoNum.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="column1" width="30" headerText="Split"
                             align="center">
                    <af:commandToolbarButton id="ctb10"
                                             actionListener="#{ViewActions.splitPoAccLinesAL}"
                                             icon="/Images/split 12x12.png"
                                             disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"/>
                  </af:column>
                </af:table>
              </af:panelCollection>
            </af:showDetailItem>
          </af:panelTabbed>
        </af:panelGroupLayout>
        <af:spacer width="10" height="10" id="spacer1"/>
        <af:toolbar id="t4">
          <af:commandToolbarButton text="Add" id="ctb5"
                                   actionListener="#{ViewActions.insertPoHeader}"
                                   binding="#{ViewActions.poAddButtonProp}"/>
          <af:spacer width="10" height="10" id="s6"/>
          <af:commandToolbarButton text="Save" id="ctb6"
                                   actionListener="#{ViewActions.commitPo}"/>
          <af:spacer width="10" height="10" id="s5"/>
          <af:commandToolbarButton text="Clear" id="ctb7"
                                   actionListener="#{ViewActions.rollbackPo}"
                                   immediate="true">
            <af:resetActionListener/>
          </af:commandToolbarButton>
          <af:spacer width="10" height="10" id="spacer8"/>
          <af:commandToolbarButton text="Generate PO" id="ctb11"
                                   actionListener="#{ViewActions.generatePOAL}"
                                   disabled="#{ViewActions.activeBuyer == null ? true : false}"/>
        </af:toolbar>
      </af:panelFormLayout>
    </af:form>
  </af:document>
</f:view>