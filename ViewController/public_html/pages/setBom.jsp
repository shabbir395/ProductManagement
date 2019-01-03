<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<f:view>
  <af:document id="d1" title="Set Bom Creation Form">
    <af:messages id="m1"/>
    <af:form id="f1">
      <af:panelStretchLayout id="psl1" startWidth="0px" endWidth="0px"
                             topHeight="0px" bottomHeight="0px"
                             dimensionsFrom="children">
        <f:facet name="center">
          <af:image source="/Images/Banners/SetBOM.png" id="i1"/>
        </f:facet>
      </af:panelStretchLayout>
      <af:panelStretchLayout id="psl2" startWidth="0px" endWidth="0px"
                             topHeight="0px" bottomHeight="0px"
                             inlineStyle="background-color:rgb(33,127,188); text-align:right;"
                             rendered="true" dimensionsFrom="children">
        <f:facet name="center">
          <af:panelGroupLayout layout="scroll"
                               xmlns:af="http://xmlns.oracle.com/adf/faces/rich"
                               id="pgl10">
            <af:goLink text="Home" id="gl1"
                       destination="http://prodapp.nishat.net:8001/OA_HTML/OA.jsp?OAFunc=OAHOMEPAGE"
                       inlineStyle="color:white; font-weight:bold;"/>
          </af:panelGroupLayout>
        </f:facet>
      </af:panelStretchLayout>
      <af:panelFormLayout id="pfl1">
        <af:panelGroupLayout id="pgl2">
          <af:panelStretchLayout id="psl3" startWidth="0px" endWidth="0px"
                                 topHeight="0px" bottomHeight="0px"
                                 dimensionsFrom="children">
            <f:facet name="center">
              <af:outputFormatted value="Search Set BOM" id="of3"
                                  inlineStyle="font-size:small; vertical-align:top;"/>
            </f:facet>
          </af:panelStretchLayout>
          <af:panelGroupLayout id="pgl5" layout="horizontal">
            <af:outputFormatted value="Bom #" id="of11"/>
            <af:spacer width="10" height="10" id="s7"/>
            <af:inputListOfValues popupTitle="Search and Result Dialog"
                                  id="ilov1" simple="true"
                                  value="#{bindings.BindBomNum.inputValue}"
                                  autoSubmit="true"
                                  valueChangeListener="#{ViewActions.searchItemSetBomVCL}"
                                  binding="#{ViewActions.searchLovSetBom}"
                                  model="#{bindings.BomNumberLov.listOfValuesModel}"
                                  partialTriggers="ctb1 ctb2"
                                  disabled="#{bindings.SetBomSearchViewIterator.estimatedRowCount < 1 ? true : false}"/>
            <af:spacer width="10" height="10" id="spacer7"/>
            <af:commandToolbarButton actionListener="#{ViewActions.searchItemSetBomButton}"
                                     text="Go"
                                     disabled="#{!bindings.ExecuteWithParams.enabled}"
                                     id="ctb8" immediate="true"/>
          </af:panelGroupLayout>
          <af:spacer width="10" height="20" id="spacer5"/>
          <af:toolbar id="t3">
            <af:commandToolbarButton text="First"
                                     disabled="#{!bindings.First.enabled}"
                                     partialSubmit="true" id="ctb6"
                                     actionListener="#{bindings.First.execute}"/>
            <af:spacer width="10" height="10" id="spacer3"/>
            <af:commandToolbarButton text="Previous"
                                     disabled="#{!bindings.Previous.enabled}"
                                     partialSubmit="true" id="ctb7"
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
            <af:spacer width="10" height="10" id="s5"/>
            <af:commandButton text="Attachment" id="cb1"/>
            <af:spacer width="10" height="10" id="spacer9"/>
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
            <af:commandToolbarButton text="View Log" id="ctb9">
              <af:showPopupBehavior popupId="bomLogPopup" triggerType="action"/>
            </af:commandToolbarButton>
          </af:toolbar>
          <af:panelStretchLayout id="psl4" startWidth="0px" endWidth="0px"
                                 topHeight="0px" bottomHeight="0px"
                                 dimensionsFrom="children">
            <f:facet name="center">
              <af:outputFormatted value="Set BOM" id="of4"
                                  inlineStyle="font-size:small; vertical-align:top;"/>
            </f:facet>
          </af:panelStretchLayout>
          <af:panelGridLayout id="pgl1" dimensionsFrom="children">
            <af:gridRow marginTop="5px" height="auto" id="gr1">
              <af:gridCell marginStart="5px" width="dontCare" id="gc16"
                           marginEnd="25px">
                <af:outputFormatted value="Program Name" id="of5"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc11"
                           marginEnd="100px">
                <af:inputListOfValues id="ilov3"
                                      popupTitle="Search and Select: #{bindings.ProgramName.hints.label}"
                                      value="#{bindings.ProgramName.inputValue}"
                                      label="#{bindings.ProgramName.hints.label}"
                                      model="#{bindings.ProgramName.listOfValuesModel}"
                                      required="#{bindings.ProgramName.hints.mandatory}"
                                      columns="#{bindings.ProgramName.hints.displayWidth}"
                                      shortDesc="#{bindings.ProgramName.hints.tooltip}"
                                      autoSubmit="true" simple="true"
                                      contentStyle="width:230px;"
                                      disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}">
                  <f:validator binding="#{bindings.ProgramName.validator}"/>
                </af:inputListOfValues>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc14"
                           marginEnd="25px">
                <af:outputFormatted value="BOM #" id="of1"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc6"
                           marginEnd="100px">
                <af:inputText value="#{bindings.BomNumber.inputValue}"
                              simple="true"
                              required="#{bindings.BomNumber.hints.mandatory}"
                              columns="#{bindings.BomNumber.hints.displayWidth}"
                              maximumLength="#{bindings.BomNumber.hints.precision}"
                              shortDesc="#{bindings.BomNumber.hints.tooltip}"
                              id="it1" contentStyle="width:170px;"
                              autoSubmit="true" disabled="true">
                  <f:validator binding="#{bindings.BomNumber.validator}"/>
                </af:inputText>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc7"
                           marginEnd="25px">
                <af:outputFormatted value="Program Manager" id="of6"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                           id="gc3">
                <af:inputText value="#{bindings.UserName.inputValue}"
                              simple="true"
                              required="#{bindings.UserName.hints.mandatory}"
                              columns="#{bindings.UserName.hints.displayWidth}"
                              maximumLength="#{bindings.UserName.hints.precision}"
                              shortDesc="#{bindings.UserName.hints.tooltip}"
                              id="it9" disabled="true"
                              contentStyle="width:100px;">
                  <f:validator binding="#{bindings.UserName.validator}"/>
                </af:inputText>
              </af:gridCell>
            </af:gridRow>
            <af:gridRow marginTop="5px" height="auto" id="gr2">
              <af:gridCell marginStart="5px" width="dontCare" id="gc10">
                <af:outputFormatted value="Customer" id="of7"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc4">
                <af:inputText value="#{bindings.CustomerNameTrans.inputValue}"
                              simple="true"
                              required="#{bindings.CustomerNameTrans.hints.mandatory}"
                              columns="#{bindings.CustomerNameTrans.hints.displayWidth}"
                              maximumLength="#{bindings.CustomerNameTrans.hints.precision}"
                              shortDesc="#{bindings.CustomerNameTrans.hints.tooltip}"
                              id="it14" contentStyle="width:230px;"
                              disabled="true">
                  <f:validator binding="#{bindings.CustomerNameTrans.validator}"/>
                </af:inputText>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc8">
                <af:outputFormatted value="Color" id="of8"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc17">
                <af:inputText id="it13" disabled="true" simple="true"
                              value="#{bindings.ColorTrans.inputValue}"
                              label="#{bindings.ColorTrans.label}"
                              required="#{bindings.ColorTrans.hints.mandatory}"
                              shortDesc="#{bindings.ColorTrans.hints.tooltip}"
                              contentStyle="width:170px;"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc2">
                <af:outputFormatted value="Created By" id="of9"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                           id="gc9">
                <af:inputText value="#{bindings.UserName.inputValue}"
                              simple="true"
                              required="#{bindings.UserName.hints.mandatory}"
                              columns="#{bindings.UserName.hints.displayWidth}"
                              maximumLength="#{bindings.UserName.hints.precision}"
                              shortDesc="#{bindings.UserName.hints.tooltip}"
                              id="it2" disabled="true"
                              inlineStyle="font-weight:bold;"
                              contentStyle="width:100px;">
                  <f:validator binding="#{bindings.UserName.validator}"/>
                </af:inputText>
              </af:gridCell>
            </af:gridRow>
            <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                        id="gr3">
              <af:gridCell marginStart="5px" width="dontCare" id="gc5">
                <af:outputFormatted value="Set Name" id="of10"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc13">
                <af:selectOneChoice value="#{bindings.SetId.inputValue}"
                                    label="#{bindings.SetId.label}"
                                    required="#{bindings.SetId.hints.mandatory}"
                                    shortDesc="#{bindings.SetId.hints.tooltip}"
                                    id="soc3" simple="true"
                                    contentStyle="width:236px;"
                                    autoSubmit="true" partialTriggers="ilov3"
                                    valueChangeListener="#{ViewActions.setBomSetIdVCL}"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}">
                  <f:selectItems value="#{bindings.SetId.items}" id="si3"/>
                </af:selectOneChoice>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc18">
                <af:outputFormatted value="Size" id="of12"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc19">
                <af:inputText id="it15" simple="true" disabled="true"
                              contentStyle="width:170px;"
                              value="#{bindings.SizeTrans.inputValue}"
                              label="#{bindings.SizeTrans.label}"
                              shortDesc="#{bindings.SizeTrans.hints.tooltip}"
                              required="#{bindings.SizeTrans.hints.mandatory}"/>
              </af:gridCell>
            </af:gridRow>
            <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                        id="gr4">
              <af:gridCell marginStart="5px" width="dontCare" id="gc20">
                <af:outputFormatted value="Item Code" id="of13"/>
              </af:gridCell>
              <af:gridCell marginStart="5px" width="dontCare" id="gc21">
                <af:inputText value="#{bindings.ConcatenatedSegments.inputValue}"
                              simple="true"
                              required="#{bindings.ConcatenatedSegments.hints.mandatory}"
                              columns="#{bindings.ConcatenatedSegments.hints.displayWidth}"
                              maximumLength="#{bindings.ConcatenatedSegments.hints.precision}"
                              shortDesc="#{bindings.ConcatenatedSegments.hints.tooltip}"
                              id="it12" contentStyle="width:230px;"
                              disabled="true" partialTriggers="soc3">
                  <f:validator binding="#{bindings.ConcatenatedSegments.validator}"/>
                </af:inputText>
              </af:gridCell>
            </af:gridRow>
          </af:panelGridLayout>
        </af:panelGroupLayout>
        <af:panelTabbed id="pt1" dimensionsFrom="disclosedChild">
          <af:showDetailItem text="Articles" id="sdi1" stretchChildren="first">
            <af:panelCollection id="pc1" styleClass="AFStretchWidth">
              <f:facet name="menus"/>
              <f:facet name="toolbar"/>
              <f:facet name="statusbar"/>
              <af:table value="#{bindings.XxpmSetBomArticlesViewChild.collectionModel}"
                        var="row"
                        rows="#{bindings.XxpmSetBomArticlesViewChild.rangeSize}"
                        emptyText="#{bindings.XxpmSetBomArticlesViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.XxpmSetBomArticlesViewChild.rangeSize}"
                        rowBandingInterval="0"
                        filterModel="#{bindings.XxpmSetBomArticlesViewChildQuery.queryDescriptor}"
                        queryListener="#{bindings.XxpmSetBomArticlesViewChildQuery.processQuery}"
                        filterVisible="true" varStatus="vs"
                        selectedRowKeys="#{bindings.XxpmSetBomArticlesViewChild.collectionModel.selectedRow}"
                        selectionListener="#{bindings.XxpmSetBomArticlesViewChild.collectionModel.makeCurrent}"
                        rowSelection="single" id="t2"
                        contentDelivery="immediate" autoHeightRows="25">
                <af:column id="c17" rendered="false">
                  <af:outputText value="#{row.BomArticleId}" id="ot3"/>
                </af:column>
                <af:column id="column2" rendered="false">
                  <af:outputText value="#{row.CombId}" id="ot4">
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmSetBomArticlesViewChild.hints.CombId.format}"/>
                  </af:outputText>
                </af:column>
                <af:column id="column1" rendered="false">
                  <af:outputText value="#{row.SetBomId}" id="ot5">
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmSetBomArticlesViewChild.hints.SetBomId.format}"/>
                  </af:outputText>
                </af:column>
                <af:column id="column4" align="center" width="30"
                           headerText="Sr#">
                  <af:outputText value="#{vs.index + 1}" id="ot7"/>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmSetBomArticlesViewChild.hints.ItemCodeTrans.name}"
                           filterable="true" sortable="false"
                           headerText="#{bindings.XxpmSetBomArticlesViewChild.hints.ItemCodeTrans.label}"
                           id="c3" align="center">
                  <af:inputText value="#{row.bindings.ItemCodeTrans.inputValue}"
                                label="#{bindings.XxpmSetBomArticlesViewChild.hints.ItemCodeTrans.label}"
                                required="#{bindings.XxpmSetBomArticlesViewChild.hints.ItemCodeTrans.mandatory}"
                                columns="#{bindings.XxpmSetBomArticlesViewChild.hints.ItemCodeTrans.displayWidth}"
                                maximumLength="#{bindings.XxpmSetBomArticlesViewChild.hints.ItemCodeTrans.precision}"
                                shortDesc="#{bindings.XxpmSetBomArticlesViewChild.hints.ItemCodeTrans.tooltip}"
                                id="it4" disabled="true"
                                contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.ItemCodeTrans.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmSetBomArticlesViewChild.hints.DescriptionTrans.name}"
                           filterable="true" sortable="false"
                           headerText="#{bindings.XxpmSetBomArticlesViewChild.hints.DescriptionTrans.label}"
                           id="c5" align="center" width="350">
                  <af:inputText value="#{row.bindings.DescriptionTrans.inputValue}"
                                label="#{bindings.XxpmSetBomArticlesViewChild.hints.DescriptionTrans.label}"
                                required="#{bindings.XxpmSetBomArticlesViewChild.hints.DescriptionTrans.mandatory}"
                                columns="#{bindings.XxpmSetBomArticlesViewChild.hints.DescriptionTrans.displayWidth}"
                                maximumLength="#{bindings.XxpmSetBomArticlesViewChild.hints.DescriptionTrans.precision}"
                                shortDesc="#{bindings.XxpmSetBomArticlesViewChild.hints.DescriptionTrans.tooltip}"
                                id="it6" disabled="true"
                                contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.DescriptionTrans.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmSetBomArticlesViewChild.hints.UomTrans.name}"
                           filterable="true" sortable="false"
                           headerText="#{bindings.XxpmSetBomArticlesViewChild.hints.UomTrans.label}"
                           id="c4" align="center">
                  <af:inputText value="#{row.bindings.UomTrans.inputValue}"
                                label="#{bindings.XxpmSetBomArticlesViewChild.hints.UomTrans.label}"
                                required="#{bindings.XxpmSetBomArticlesViewChild.hints.UomTrans.mandatory}"
                                columns="#{bindings.XxpmSetBomArticlesViewChild.hints.UomTrans.displayWidth}"
                                maximumLength="#{bindings.XxpmSetBomArticlesViewChild.hints.UomTrans.precision}"
                                shortDesc="#{bindings.XxpmSetBomArticlesViewChild.hints.UomTrans.tooltip}"
                                id="it5" disabled="true" autoSubmit="true"
                                contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.UomTrans.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmSetBomArticlesViewChild.hints.SubInventory.name}"
                           filterable="true" sortable="false"
                           headerText="#{bindings.XxpmSetBomArticlesViewChild.hints.SubInventory.label}"
                           id="c2" align="center">
                  <af:inputListOfValues id="subInventoryId"
                                        popupTitle="Search and Select: #{bindings.XxpmSetBomArticlesViewChild.hints.SubInventory.label}"
                                        label="#{row.bindings.SubInventory.label}"
                                        value="#{row.bindings.SubInventory.inputValue}"
                                        model="#{row.bindings.SubInventory.listOfValuesModel}"
                                        required="#{bindings.XxpmSetBomArticlesViewChild.hints.SubInventory.mandatory}"
                                        disabled="#{row.bindings.EbsStatus.inputValue == 1 ? true : false}"
                                        contentStyle="min-width:100%;"
                                        columns="#{bindings.XxpmSetBomArticlesViewChild.hints.SubInventory.displayWidth}"
                                        shortDesc="#{bindings.XxpmSetBomArticlesViewChild.hints.SubInventory.tooltip}"
                                        autoSubmit="true">
                    <f:validator binding="#{row.bindings.SubInventory.validator}"/>
                  </af:inputListOfValues>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmSetBomArticlesViewChild.hints.ConsumptionTrans.name}"
                           filterable="true" sortable="false"
                           headerText="#{bindings.XxpmSetBomArticlesViewChild.hints.ConsumptionTrans.label}"
                           id="c1" align="center">
                  <af:inputText value="#{row.bindings.ConsumptionTrans.inputValue}"
                                label="#{bindings.XxpmSetBomArticlesViewChild.hints.ConsumptionTrans.label}"
                                required="#{bindings.XxpmSetBomArticlesViewChild.hints.ConsumptionTrans.mandatory}"
                                columns="#{bindings.XxpmSetBomArticlesViewChild.hints.ConsumptionTrans.displayWidth}"
                                maximumLength="#{bindings.XxpmSetBomArticlesViewChild.hints.ConsumptionTrans.precision}"
                                shortDesc="#{bindings.XxpmSetBomArticlesViewChild.hints.ConsumptionTrans.tooltip}"
                                id="it3" disabled="true" autoSubmit="true"
                                contentStyle="min-width:90%;text-align:right;">
                    <f:validator binding="#{row.bindings.ConsumptionTrans.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmSetBomArticlesViewChild.hints.ConsumptionTrans.format}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmSetBomArticlesViewChild.hints.Active.label}"
                           id="c14" width="40" align="center">
                  <af:selectBooleanCheckbox value="#{row.bindings.Active.inputValue}"
                                            label="#{row.bindings.Active.label}"
                                            shortDesc="#{bindings.XxpmSetBomArticlesViewChild.hints.Active.tooltip}"
                                            id="sbc1" autoSubmit="true"/>
                </af:column>
              </af:table>
            </af:panelCollection>
          </af:showDetailItem>
          <af:showDetailItem text="Accessory" id="pc2" stretchChildren="first">
            <af:panelCollection id="pc3" styleClass="AFStretchWidth">
              <f:facet name="menus"/>
              <f:facet name="toolbar">
                <af:toolbar id="t5">
                  <af:commandToolbarButton id="ctb5"
                                           icon="/Images/add-icon 12x12.png"
                                           actionListener="#{ViewActions.insertSetBomAccessoryAL}"
                                           disabled="#{!bindings.CreateInsertSetBomAccessory.enabled}"/>
                  <af:commandToolbarButton id="ctb13"
                                           icon="/Images/del-icon 12x12.png"
                                           disabled="#{bindings.EbsStatusAccessories.inputValue == 1 || bindings.XxpmSetBomAccessoriesViewChildIterator.estimatedRowCount < 1 ? true : false}"
                                           partialTriggers="::ctb6 ::ctb7 ::ctb3 ::ctb4 ::ctb8"
                                           immediate="true">
                    <af:showPopupBehavior popupId="delSetBomAccessoriesPopup"
                                          triggerType="action"/>
                  </af:commandToolbarButton>
                  <af:popup id="delSetBomAccessoriesPopup">
                    <af:dialog id="dialog2" type="yesNo"
                               dialogListener="#{ViewActions.deleteSetBomAccessoriesDialog}"
                               stretchChildren="first" contentHeight="30"
                               title="Warning!">
                      <af:outputFormatted value="Are you sure you want to delete this record?"
                                          id="of14"
                                          inlineStyle="font-weight:bold;"/>
                    </af:dialog>
                  </af:popup>
                </af:toolbar>
              </f:facet>
              <f:facet name="statusbar"/>
              <af:table value="#{bindings.XxpmSetBomAccessoriesViewChild.collectionModel}"
                        var="row"
                        rows="#{bindings.XxpmSetBomAccessoriesViewChild.rangeSize}"
                        emptyText="#{bindings.XxpmSetBomAccessoriesViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.XxpmSetBomAccessoriesViewChild.rangeSize}"
                        rowBandingInterval="0"
                        filterModel="#{bindings.XxpmSetBomAccessoriesViewChildQuery.queryDescriptor}"
                        queryListener="#{bindings.XxpmSetBomAccessoriesViewChildQuery.processQuery}"
                        filterVisible="true" varStatus="vs"
                        selectedRowKeys="#{bindings.XxpmSetBomAccessoriesViewChild.collectionModel.selectedRow}"
                        selectionListener="#{bindings.XxpmSetBomAccessoriesViewChild.collectionModel.makeCurrent}"
                        rowSelection="single" id="t4" partialTriggers="::ctb5"
                        contentDelivery="immediate"
                        autoHeightRows="#{bindings.XxpmSetBomAccessoriesViewChild.estimatedRowCount}">
                <af:column sortProperty="#{bindings.XxpmSetBomAccessoriesViewChild.hints.AccessoryId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmSetBomAccessoriesViewChild.hints.AccessoryId.label}"
                           id="c7" rendered="false">
                  <af:outputText value="#{row.AccessoryId}" id="ot1"/>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmSetBomAccessoriesViewChild.hints.ImId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmSetBomAccessoriesViewChild.hints.ImId.label}"
                           id="c11" rendered="false">
                  <af:inputText value="#{row.bindings.ImId.inputValue}"
                                label="#{bindings.XxpmSetBomAccessoriesViewChild.hints.ImId.label}"
                                required="#{bindings.XxpmSetBomAccessoriesViewChild.hints.ImId.mandatory}"
                                columns="#{bindings.XxpmSetBomAccessoriesViewChild.hints.ImId.displayWidth}"
                                maximumLength="#{bindings.XxpmSetBomAccessoriesViewChild.hints.ImId.precision}"
                                shortDesc="#{bindings.XxpmSetBomAccessoriesViewChild.hints.ImId.tooltip}"
                                id="it8">
                    <f:validator binding="#{row.bindings.ImId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmSetBomAccessoriesViewChild.hints.ImId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmSetBomAccessoriesViewChild.hints.SetBomId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmSetBomAccessoriesViewChild.hints.SetBomId.label}"
                           id="c8" rendered="false">
                  <af:outputText value="#{row.SetBomId}" id="ot2">
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmSetBomAccessoriesViewChild.hints.SetBomId.format}"/>
                  </af:outputText>
                </af:column>
                <af:column id="c18" align="center" width="30" headerText="Sr#">
                  <af:outputText value="#{vs.index + 1}" id="ot6"/>
                </af:column>
                <af:column headerText="#{bindings.XxpmSetBomAccessoriesViewChild.hints.ItemCodeTrans.label}"
                           id="c12" align="center">
                  <af:inputListOfValues id="ilov4"
                                        popupTitle="Search and Select: #{bindings.XxpmSetBomAccessoriesViewChild.hints.ItemCodeTrans.label}"
                                        value="#{row.bindings.ItemCodeTrans.inputValue}"
                                        model="#{row.bindings.ItemCodeTrans.listOfValuesModel}"
                                        required="#{bindings.XxpmSetBomAccessoriesViewChild.hints.ItemCodeTrans.mandatory}"
                                        columns="#{bindings.XxpmSetBomAccessoriesViewChild.hints.ItemCodeTrans.displayWidth}"
                                        shortDesc="#{bindings.XxpmSetBomAccessoriesViewChild.hints.ItemCodeTrans.tooltip}"
                                        disabled="#{row.bindings.EbsStatus.inputValue == 1 ? true : false}"
                                        autoSubmit="true">
                    <f:validator binding="#{row.bindings.ItemCodeTrans.validator}"/>
                  </af:inputListOfValues>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmSetBomAccessoriesViewChild.hints.ItemCodeTrans.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmSetBomAccessoriesViewChild.hints.DescriptionTrans.label}"
                           id="column3" align="center" width="350">
                  <af:inputText value="#{row.bindings.DescriptionTrans.inputValue}"
                                label="#{bindings.XxpmSetBomAccessoriesViewChild.hints.DescriptionTrans.label}"
                                required="#{bindings.XxpmSetBomAccessoriesViewChild.hints.DescriptionTrans.mandatory}"
                                columns="#{bindings.XxpmSetBomAccessoriesViewChild.hints.DescriptionTrans.displayWidth}"
                                maximumLength="#{bindings.XxpmSetBomAccessoriesViewChild.hints.DescriptionTrans.precision}"
                                shortDesc="#{bindings.XxpmSetBomAccessoriesViewChild.hints.DescriptionTrans.tooltip}"
                                id="it16" autoSubmit="true" disabled="true"
                                contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.DescriptionTrans.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmSetBomAccessoriesViewChild.hints.UomTrans.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmSetBomAccessoriesViewChild.hints.UomTrans.label}"
                           id="c9" align="center">
                  <af:inputText value="#{row.bindings.UomTrans.inputValue}"
                                label="#{bindings.XxpmSetBomAccessoriesViewChild.hints.UomTrans.label}"
                                required="#{bindings.XxpmSetBomAccessoriesViewChild.hints.UomTrans.mandatory}"
                                columns="#{bindings.XxpmSetBomAccessoriesViewChild.hints.UomTrans.displayWidth}"
                                maximumLength="#{bindings.XxpmSetBomAccessoriesViewChild.hints.UomTrans.precision}"
                                shortDesc="#{bindings.XxpmSetBomAccessoriesViewChild.hints.UomTrans.tooltip}"
                                id="it10" autoSubmit="true" disabled="true"
                                contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.UomTrans.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmSetBomAccessoriesViewChild.hints.AccColorTrans.label}"
                           id="c6"
                           sortProperty="#{bindings.XxpmSetBomAccessoriesViewChild.hints.AccColorTrans.name}"
                           sortable="true" filterable="true" align="center">
                  <af:inputListOfValues id="ilov2"
                                        popupTitle="Search and Select: #{bindings.XxpmSetBomAccessoriesViewChild.hints.AccColorTrans.label}"
                                        value="#{row.bindings.AccColorTrans.inputValue}"
                                        model="#{row.bindings.AccColorTrans.listOfValuesModel}"
                                        required="#{bindings.XxpmSetBomAccessoriesViewChild.hints.AccColorTrans.mandatory}"
                                        columns="#{bindings.XxpmSetBomAccessoriesViewChild.hints.AccColorTrans.displayWidth}"
                                        shortDesc="#{bindings.XxpmSetBomAccessoriesViewChild.hints.AccColorTrans.tooltip}"
                                        autoSubmit="true"
                                        disabled="#{row.bindings.EbsStatus.inputValue == 1 ? true : false}">
                    <f:validator binding="#{row.bindings.AccColorTrans.validator}"/>
                  </af:inputListOfValues>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmSetBomAccessoriesViewChild.hints.SubInventory.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmSetBomAccessoriesViewChild.hints.SubInventory.label}"
                           id="c15" align="center">
                  <af:inputListOfValues id="inputListOfValues1"
                                        popupTitle="Search and Select: #{bindings.XxpmSetBomAccessoriesViewChild.hints.SubInventory.label}"
                                        value="#{row.bindings.SubInventory.inputValue}"
                                        model="#{row.bindings.SubInventory.listOfValuesModel}"
                                        required="#{bindings.XxpmSetBomAccessoriesViewChild.hints.SubInventory.mandatory}"
                                        disabled="#{row.bindings.EbsStatus.inputValue == 1 ? true : false}"
                                        columns="#{bindings.XxpmSetBomAccessoriesViewChild.hints.SubInventory.displayWidth}"
                                        shortDesc="#{bindings.XxpmSetBomAccessoriesViewChild.hints.SubInventory.tooltip}"
                                        autoSubmit="true"
                                        partialTriggers="ilov4">
                    <f:validator binding="#{row.bindings.SubInventory.validator}"/>
                  </af:inputListOfValues>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Consumption.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Consumption.label}"
                           id="c10" align="center">
                  <af:inputText value="#{row.bindings.Consumption.inputValue}"
                                label="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Consumption.label}"
                                required="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Consumption.mandatory}"
                                columns="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Consumption.displayWidth}"
                                maximumLength="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Consumption.precision}"
                                shortDesc="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Consumption.tooltip}"
                                id="it11"
                                disabled="#{row.bindings.EbsStatus.inputValue == 1 ? true : false}"
                                autoSubmit="true"
                                contentStyle="min-width:90%;text-align:right;">
                    <f:validator binding="#{row.bindings.Consumption.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Consumption.format}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Wastage.label}"
                           id="c13"
                           sortProperty="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Wastage.name}"
                           filterable="true" sortable="true" align="center">
                  <af:inputText value="#{row.bindings.Wastage.inputValue}"
                                label="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Wastage.label}"
                                required="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Wastage.mandatory}"
                                columns="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Wastage.displayWidth}"
                                maximumLength="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Wastage.precision}"
                                shortDesc="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Wastage.tooltip}"
                                id="it7"
                                disabled="#{row.bindings.EbsStatus.inputValue == 1 ? true : false}"
                                autoSubmit="true"
                                contentStyle="min-width:90%;text-align:right;">
                    <f:validator binding="#{row.bindings.Wastage.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Wastage.format}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Active.label}"
                           id="c16" width="40" align="center">
                  <af:selectBooleanCheckbox value="#{row.bindings.Active.inputValue}"
                                            label="#{row.bindings.Active.label}"
                                            shortDesc="#{bindings.XxpmSetBomAccessoriesViewChild.hints.Active.tooltip}"
                                            id="sbc2" autoSubmit="true"/>
                </af:column>
              </af:table>
            </af:panelCollection>
          </af:showDetailItem>
        </af:panelTabbed>
        <af:toolbar id="t1">
          <af:commandToolbarButton text="Add" id="ctb1"
                                   actionListener="#{bindings.CreateInsertSetBom.execute}"
                                   disabled="#{!bindings.CreateInsertSetBom.enabled}"/>
          <af:spacer width="10" height="10" id="s1"/>
          <af:commandToolbarButton text="Save" id="ctb2"
                                   actionListener="#{ViewActions.commitSetBom}"
                                   disabled="true"/>
          <af:spacer width="10" height="10" id="s2"/>
          <af:commandToolbarButton text="Clear" id="ctb10"
                                   actionListener="#{ViewActions.rollbackSetBom}"
                                   immediate="true">
            <af:resetActionListener/>
          </af:commandToolbarButton>
          <af:spacer width="10" height="10" id="spacer1"/>
          <af:commandToolbarButton text="Generate BOM" id="ctb12"
                                   actionListener="#{ViewActions.createSetBomAL}"
                                   immediate="true">
            <af:resetActionListener/>
          </af:commandToolbarButton>
        </af:toolbar>
      </af:panelFormLayout>
    </af:form>
  </af:document>
</f:view>