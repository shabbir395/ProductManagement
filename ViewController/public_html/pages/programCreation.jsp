<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<f:view>
  <af:document id="d1" title="Program Creation Form">
    <af:messages id="m1"/>
    <af:form id="f1" usesUpload="true">
      <af:panelStretchLayout id="psl1" startWidth="0px" endWidth="0px"
                             topHeight="0px" bottomHeight="0px"
                             dimensionsFrom="children">
        <f:facet name="center">
          <af:image source="/Images/Banners/Program.png" id="i1"
                    inlineStyle="color:white; font-weight:bold;"/>
        </f:facet>
      </af:panelStretchLayout>
      <af:panelStretchLayout id="panelStretchLayout3" startWidth="0px"
                             endWidth="0px" topHeight="0px" bottomHeight="0px"
                             inlineStyle="background-color:rgb(33,127,188); text-align:right;"
                             rendered="true" dimensionsFrom="children">
        <f:facet name="center">
          <af:panelGroupLayout layout="scroll"
                               xmlns:af="http://xmlns.oracle.com/adf/faces/rich"
                               id="panelGroupLayout1">
            <af:goLink text="Home" id="gl1"
                       destination="http://prodapp.nishat.net:8001/OA_HTML/OA.jsp?OAFunc=OAHOMEPAGE"
                       inlineStyle="color:white; font-weight:bold;"/>
          </af:panelGroupLayout>
        </f:facet>
      </af:panelStretchLayout>
      <af:panelFormLayout id="pfl1">
        <af:panelStretchLayout id="panelStretchLayout1" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Search Program" id="outputFormatted7"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGroupLayout id="pgl5" layout="horizontal">
          <af:outputFormatted value="Program Name" id="of11"/>
          <af:spacer width="10" height="10" id="s7"/>
          <af:inputListOfValues popupTitle="Search and Result Dialog" id="ilov1"
                                simple="true"
                                value="#{bindings.BindDescProg.inputValue}"
                                autoSubmit="true"
                                binding="#{ViewActions.searchLovProg}"
                                valueChangeListener="#{ViewActions.searchItemProgVCL}"
                                model="#{bindings.ProgNameLov.listOfValuesModel}"
                                disabled="#{bindings.MadeupProgramDescViewIterator.estimatedRowCount < 1}"/>
          <af:spacer width="10" height="10" id="spacer7"/>
          <af:commandToolbarButton actionListener="#{ViewActions.searchItemProgButton}"
                                   text="Go"
                                   disabled="#{!bindings.ExecuteWithParams.enabled}"
                                   id="ctb23" immediate="true"/>
        </af:panelGroupLayout>
        <af:toolbar id="t3">
          <af:commandToolbarButton actionListener="#{bindings.First.execute}"
                                   text="First"
                                   disabled="#{!bindings.First.enabled}"
                                   partialSubmit="true" id="ctb1"/>
          <af:spacer width="10" height="10" id="s2"/>
          <af:commandToolbarButton actionListener="#{bindings.Previous.execute}"
                                   text="Previous"
                                   disabled="#{!bindings.Previous.enabled}"
                                   partialSubmit="true" id="ctb2"/>
          <af:spacer width="10" height="10" id="s3"/>
          <af:commandToolbarButton actionListener="#{bindings.Next.execute}"
                                   text="Next"
                                   disabled="#{!bindings.Next.enabled}"
                                   partialSubmit="true" id="ctb3"/>
          <af:spacer width="10" height="10" id="s4"/>
          <af:commandToolbarButton actionListener="#{bindings.Last.execute}"
                                   text="Last"
                                   disabled="#{!bindings.Last.enabled}"
                                   partialSubmit="true" id="ctb4"/>
          <af:spacer width="10" height="10" id="spacer6"/>
          <af:commandToolbarButton text="Attachments" partialSubmit="true"
                                   id="commandToolbarButton4">
            <af:showPopupBehavior popupId="attachmentPopup"
                                  triggerType="action"/>
          </af:commandToolbarButton>
          <af:popup id="attachmentPopup" contentDelivery="lazyUncached">
            <af:dialog id="attachmentDialog" type="ok" title="File Attachment"
                       contentWidth="300" contentHeight="200">
              <af:inputFile id="if1" autoSubmit="true" label="Upload File"
                            valueChangeListener="#{ViewActions.uploadFileProgVCL}"/>
              <af:table value="#{bindings.XxpmAttachmentsViewChildProg.collectionModel}"
                        var="row"
                        rows="#{bindings.XxpmAttachmentsViewChildProg.rangeSize}"
                        emptyText="#{bindings.XxpmAttachmentsViewChildProg.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.XxpmAttachmentsViewChildProg.rangeSize}"
                        rowBandingInterval="0"
                        selectedRowKeys="#{bindings.XxpmAttachmentsViewChildProg.collectionModel.selectedRow}"
                        selectionListener="#{bindings.XxpmAttachmentsViewChildProg.collectionModel.makeCurrent}"
                        rowSelection="single" id="t5"
                        styleClass="AFStretchWidth" partialTriggers="if1">
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildProg.hints.AtchId.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildProg.hints.AtchId.label}"
                           id="c23" rendered="false">
                  <af:outputFormatted value="#{row.bindings.AtchId.inputValue}"
                                      id="of3"/>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildProg.hints.ImId.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildProg.hints.ImId.label}"
                           id="c21" rendered="false">
                  <af:inputText value="#{row.bindings.ImId.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChildProg.hints.ImId.label}"
                                required="#{bindings.XxpmAttachmentsViewChildProg.hints.ImId.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChildProg.hints.ImId.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChildProg.hints.ImId.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChildProg.hints.ImId.tooltip}"
                                id="inputText1">
                    <f:validator binding="#{row.bindings.ImId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmAttachmentsViewChildProg.hints.ImId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildProg.hints.FileCode.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildProg.hints.FileCode.label}"
                           id="c20" rendered="false">
                  <af:inputText value="#{row.bindings.FileCode.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChildProg.hints.FileCode.label}"
                                required="#{bindings.XxpmAttachmentsViewChildProg.hints.FileCode.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChildProg.hints.FileCode.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChildProg.hints.FileCode.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChildProg.hints.FileCode.tooltip}"
                                id="inputText2">
                    <f:validator binding="#{row.bindings.FileCode.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmAttachmentsViewChildProg.hints.FileCode.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildProg.hints.FileName.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildProg.hints.FileName.label}"
                           id="c22" width="250" rendered="true" align="center">
                  <af:inputText label="#{bindings.XxpmAttachmentsViewChildProg.hints.FileName.label}"
                                required="#{bindings.XxpmAttachmentsViewChildProg.hints.FileName.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChildProg.hints.FileName.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChildProg.hints.FileName.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChildProg.hints.FileName.tooltip}"
                                id="inputText3" autoSubmit="true"
                                value="#{row.bindings.FileName.inputValue}">
                    <f:validator binding="#{row.bindings.FileName.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildProg.hints.Path.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildProg.hints.Path.label}"
                           id="c19" rendered="false">
                  <af:inputText value="#{row.bindings.Path.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChildProg.hints.Path.label}"
                                required="#{bindings.XxpmAttachmentsViewChildProg.hints.Path.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChildProg.hints.Path.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChildProg.hints.Path.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChildProg.hints.Path.tooltip}"
                                id="inputText4">
                    <f:validator binding="#{row.bindings.Path.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmAttachmentsViewChildProg.hints.ProgId.label}"
                           id="c99" rendered="false">
                  <af:inputText value="#{row.bindings.ProgId.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChildProg.hints.ProgId.label}"
                                required="#{bindings.XxpmAttachmentsViewChildProg.hints.ProgId.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChildProg.hints.ProgId.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChildProg.hints.ProgId.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChildProg.hints.ProgId.tooltip}"
                                id="it31">
                    <f:validator binding="#{row.bindings.ProgId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmAttachmentsViewChildProg.hints.ProgId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column id="c24" headerText="Download" rendered="true"
                           width="60">
                  <af:commandLink text="Download" id="cl2">
                    <af:fileDownloadActionListener filename="#{row.bindings.FileName.inputValue}"
                                                   method="#{ViewActions.downloadFileProgListener}"/>
                  </af:commandLink>
                </af:column>
              </af:table>
            </af:dialog>
          </af:popup>
        </af:toolbar>
        <af:spacer width="10" height="20" id="s1"/>
        <af:panelStretchLayout id="panelStretchLayout2" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Program Information"
                                id="outputFormatted11"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="pgl1" dimensionsFrom="children">
          <af:gridRow marginTop="5px" height="auto" id="gr6">
            <af:gridCell marginStart="5px" width="dontCare" id="gc18">
              <af:outputFormatted value="Customer Name" id="of1"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc15"
                         columnSpan="3">
              <af:inputListOfValues id="customerNameId"
                                    popupTitle="Search and Select: #{bindings.CustomerName.hints.label}"
                                    value="#{bindings.CustomerName.inputValue}"
                                    label="#{bindings.CustomerName.hints.label}"
                                    model="#{bindings.CustomerName.listOfValuesModel}"
                                    required="#{bindings.CustomerName.hints.mandatory}"
                                    columns="#{bindings.CustomerName.hints.displayWidth}"
                                    shortDesc="#{bindings.CustomerName.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:370px;"
                                    disabled="#{bindings.EbsStatusPrograms.inputValue == '1' ? true : false}"
                                    partialTriggers="ctb6">
                <f:validator binding="#{bindings.CustomerName.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr4">
            <af:gridCell marginStart="5px" width="80px" id="gc7">
              <af:outputFormatted value="Customer Code" id="outputFormatted2"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="200px" id="gc5">
              <af:inputText value="#{bindings.CustomerId.inputValue}"
                            label="#{bindings.CustomerId.hints.label}"
                            required="#{bindings.CustomerId.hints.mandatory}"
                            columns="#{bindings.CustomerId.hints.displayWidth}"
                            maximumLength="#{bindings.CustomerId.hints.precision}"
                            shortDesc="#{bindings.CustomerId.hints.tooltip}"
                            id="it17" autoSubmit="true" simple="true"
                            rendered="false">
                <f:validator binding="#{bindings.CustomerId.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.CustomerId.format}"/>
              </af:inputText>
              <af:inputText value="#{bindings.CustomerCode.inputValue}"
                            label="#{bindings.CustomerCode.hints.label}"
                            required="#{bindings.CustomerCode.hints.mandatory}"
                            columns="#{bindings.CustomerCode.hints.displayWidth}"
                            maximumLength="#{bindings.CustomerCode.hints.precision}"
                            shortDesc="#{bindings.CustomerCode.hints.tooltip}"
                            id="it15" autoSubmit="true" simple="true"
                            contentStyle="width:94px;" disabled="true"
                            partialTriggers="ctb6">
                <f:validator binding="#{bindings.CustomerCode.validator}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="100px" id="gc21"
                         marginEnd="0px">
              <af:outputFormatted value="Program Manager"
                                  id="outputFormatted1"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="0px" width="130px"
                         id="gc17" inlineStyle="text-align:center;">
              <af:inputText value="#{bindings.UserNameTrans.inputValue}"
                            simple="true"
                            required="#{bindings.UserNameTrans.hints.mandatory}"
                            columns="#{bindings.UserNameTrans.hints.displayWidth}"
                            maximumLength="#{bindings.UserNameTrans.hints.precision}"
                            shortDesc="#{bindings.UserNameTrans.hints.tooltip}"
                            id="it32" disabled="true"
                            contentStyle="width:114px;">
                <f:validator binding="#{bindings.UserNameTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr2">
            <af:gridCell marginStart="5px" width="dontCare" id="gc11">
              <af:outputFormatted value="Thread Count" id="outputFormatted4"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc3">
              <af:selectOneChoice value="#{bindings.ThreadCount.inputValue}"
                                  label="#{bindings.ThreadCount.label}"
                                  required="#{bindings.ThreadCount.hints.mandatory}"
                                  shortDesc="#{bindings.ThreadCount.hints.tooltip}"
                                  id="soc5" simple="true"
                                  contentStyle="width:100px;" autoSubmit="true"
                                  disabled="#{bindings.EbsStatusPrograms.inputValue == '1' ? true : false}"
                                  partialTriggers="ctb6"
                                  binding="#{ViewActions.madeupThreadCount}">
                <f:selectItems value="#{bindings.ThreadCount.items}" id="si5"/>
              </af:selectOneChoice>
              <af:commandButton id="cb2" icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addMadeupThreadCountVset}"
                                immediate="true"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc6">
              <af:outputFormatted value="Line Manager" id="outputFormatted3"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="0px" width="dontCare"
                         id="gc19">
              <af:selectOneChoice value="#{bindings.ManagerId.inputValue}"
                                  label="#{bindings.ManagerId.label}"
                                  required="#{bindings.ManagerId.hints.mandatory}"
                                  shortDesc="#{bindings.ManagerId.hints.tooltip}"
                                  id="soc4" simple="true"
                                  contentStyle="width:120px;" autoSubmit="true">
                <f:selectItems value="#{bindings.ManagerId.items}" id="si4"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr3">
            <af:gridCell marginStart="5px" width="dontCare" id="gc1">
              <af:outputFormatted value="Brand Name" id="outputFormatted6"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc20">
              <af:selectOneChoice value="#{bindings.BrandName.inputValue}"
                                  label="#{bindings.BrandName.label}"
                                  required="#{bindings.BrandName.hints.mandatory}"
                                  shortDesc="#{bindings.BrandName.hints.tooltip}"
                                  id="soc6" simple="true"
                                  contentStyle="width:100px;" autoSubmit="true"
                                  disabled="#{bindings.EbsStatusPrograms.inputValue == '1' ? true : false}"
                                  partialTriggers="ctb6"
                                  binding="#{ViewActions.madeupBrandName}">
                <f:selectItems value="#{bindings.BrandName.items}" id="si6"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton2"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addMadeupBrandNameVset}"
                                immediate="true"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell2">
              <af:panelGroupLayout id="pgl2" layout="horizontal">
                <af:commandToolbarButton id="commandToolbarButton2"
                                         disabled="false" text="Sets"
                                         actionListener="#{ViewActions.madeupShowSetPopup}"/>
              </af:panelGroupLayout>
              <af:popup id="madeupSetsPopup" contentDelivery="lazyUncached">
                <af:dialog id="d2" resize="on">
                  <af:panelCollection id="pc5" styleClass="AFStretchWidth">
                    <f:facet name="menus"/>
                    <f:facet name="toolbar">
                      <af:toolbar id="t14">
                        <af:commandToolbarButton actionListener="#{bindings.CreateInsertSets.execute}"
                                                 disabled="#{!bindings.CreateInsertSets.enabled}"
                                                 id="ctb8" immediate="true"
                                                 icon="/Images/add-icon 12x12.png"/>
                        <af:commandToolbarButton id="ctb14"
                                                 icon="/Images/del-icon 12x12.png"
                                                 disabled="#{bindings.EbsStatusSets.inputValue == '1' || bindings.XxpmMadeupSetsViewChildIterator.estimatedRowCount < 1 ? true : false}"
                                                 immediate="true">
                          <af:showPopupBehavior popupId="delMadeupSetPopup"
                                                triggerType="action"/>
                        </af:commandToolbarButton>
                        <af:commandToolbarButton id="ctb20"
                                                 icon="/Images/copy 16x16.png"
                                                 actionListener="#{ViewActions.copyMadeupSetAL}"
                                                 immediate="true"/>
                      </af:toolbar>
                    </f:facet>
                    <f:facet name="statusbar"/>
                    <af:table value="#{bindings.XxpmMadeupSetsViewChild.collectionModel}"
                              var="row"
                              rows="#{bindings.XxpmMadeupSetsViewChild.rangeSize}"
                              emptyText="#{bindings.XxpmMadeupSetsViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                              fetchSize="#{bindings.XxpmMadeupSetsViewChild.rangeSize}"
                              rowBandingInterval="0"
                              filterModel="#{bindings.XxpmMadeupSetsViewChildQuery.queryDescriptor}"
                              queryListener="#{bindings.XxpmMadeupSetsViewChildQuery.processQuery}"
                              filterVisible="true" varStatus="vs"
                              selectedRowKeys="#{bindings.XxpmMadeupSetsViewChild.collectionModel.selectedRow}"
                              selectionListener="#{bindings.XxpmMadeupSetsViewChild.collectionModel.makeCurrent}"
                              rowSelection="single" id="t6"
                              partialTriggers="::ctb8"
                              contentDelivery="immediate"
                              autoHeightRows="#{bindings.XxpmMadeupSetsViewChildIterator.estimatedRowCount}"
                              styleClass="AFStretchWidth"
                              columnStretching="column:c64">
                      <af:column id="c119" align="center" headerText="Sr#"
                                 width="30">
                        <af:outputText value="#{vs.index + 1}" id="ot1"/>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.SetId.name}"
                                 filterable="true" sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetsViewChild.hints.SetId.label}"
                                 id="c66" align="center" rendered="false">
                        <af:outputFormatted value="#{row.bindings.SetId.inputValue}"
                                            id="of7"/>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.ProgId.name}"
                                 filterable="true" sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetsViewChild.hints.ProgId.label}"
                                 id="c57" align="center" rendered="false">
                        <af:outputFormatted value="#{row.bindings.ProgId.inputValue}"
                                            id="of6">
                          <af:convertNumber groupingUsed="false"
                                            pattern="#{bindings.XxpmMadeupSetsViewChild.hints.ProgId.format}"/>
                        </af:outputFormatted>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.SetName.name}"
                                 filterable="true" sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetsViewChild.hints.SetName.label}"
                                 id="c65" align="center" width="85">
                        <af:inputText value="#{row.bindings.SetName.inputValue}"
                                      label="#{bindings.XxpmMadeupSetsViewChild.hints.SetName.label}"
                                      required="#{bindings.XxpmMadeupSetsViewChild.hints.SetName.mandatory}"
                                      columns="#{bindings.XxpmMadeupSetsViewChild.hints.SetName.displayWidth}"
                                      maximumLength="#{bindings.XxpmMadeupSetsViewChild.hints.SetName.precision}"
                                      shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.SetName.tooltip}"
                                      id="it79" autoSubmit="true"
                                      contentStyle="min-width:100%;"
                                      styleClass="AFFieldTextMarker"
                                      disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}">
                          <f:validator binding="#{row.bindings.SetName.validator}"/>
                        </af:inputText>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.Segment1.name}"
                                 filterable="true" sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetsViewChild.hints.Segment1.label}"
                                 id="c54" align="center" rendered="false">
                        <af:inputText value="#{row.bindings.Segment1.inputValue}"
                                      label="#{bindings.XxpmMadeupSetsViewChild.hints.Segment1.label}"
                                      required="#{bindings.XxpmMadeupSetsViewChild.hints.Segment1.mandatory}"
                                      columns="#{bindings.XxpmMadeupSetsViewChild.hints.Segment1.displayWidth}"
                                      maximumLength="#{bindings.XxpmMadeupSetsViewChild.hints.Segment1.precision}"
                                      shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.Segment1.tooltip}"
                                      id="it18" autoSubmit="true">
                          <f:validator binding="#{row.bindings.Segment1.validator}"/>
                        </af:inputText>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.Segment2.name}"
                                 filterable="true" sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetsViewChild.hints.Segment2.label}"
                                 id="c61" align="center" rendered="false">
                        <af:inputText value="#{row.bindings.Segment2.inputValue}"
                                      label="#{bindings.XxpmMadeupSetsViewChild.hints.Segment2.label}"
                                      required="#{bindings.XxpmMadeupSetsViewChild.hints.Segment2.mandatory}"
                                      columns="#{bindings.XxpmMadeupSetsViewChild.hints.Segment2.displayWidth}"
                                      maximumLength="#{bindings.XxpmMadeupSetsViewChild.hints.Segment2.precision}"
                                      shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.Segment2.tooltip}"
                                      id="it29" autoSubmit="true">
                          <f:validator binding="#{row.bindings.Segment2.validator}"/>
                        </af:inputText>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.Segment3.name}"
                                 filterable="true" sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetsViewChild.hints.Segment3.label}"
                                 id="c56" align="center" rendered="false">
                        <af:inputText value="#{row.bindings.Segment3.inputValue}"
                                      label="#{bindings.XxpmMadeupSetsViewChild.hints.Segment3.label}"
                                      required="#{bindings.XxpmMadeupSetsViewChild.hints.Segment3.mandatory}"
                                      columns="#{bindings.XxpmMadeupSetsViewChild.hints.Segment3.displayWidth}"
                                      maximumLength="#{bindings.XxpmMadeupSetsViewChild.hints.Segment3.precision}"
                                      shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.Segment3.tooltip}"
                                      id="it83" autoSubmit="true">
                          <f:validator binding="#{row.bindings.Segment3.validator}"/>
                        </af:inputText>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.Segment4.name}"
                                 filterable="true" sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetsViewChild.hints.Segment4.label}"
                                 id="c60" align="center" rendered="false">
                        <af:inputText value="#{row.bindings.Segment4.inputValue}"
                                      label="#{bindings.XxpmMadeupSetsViewChild.hints.Segment4.label}"
                                      required="#{bindings.XxpmMadeupSetsViewChild.hints.Segment4.mandatory}"
                                      columns="#{bindings.XxpmMadeupSetsViewChild.hints.Segment4.displayWidth}"
                                      maximumLength="#{bindings.XxpmMadeupSetsViewChild.hints.Segment4.precision}"
                                      shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.Segment4.tooltip}"
                                      id="it41" autoSubmit="true">
                          <f:validator binding="#{row.bindings.Segment4.validator}"/>
                        </af:inputText>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.Segment5.name}"
                                 filterable="true" sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetsViewChild.hints.Segment5.label}"
                                 id="c55" align="center" rendered="false">
                        <af:inputText value="#{row.bindings.Segment5.inputValue}"
                                      label="#{bindings.XxpmMadeupSetsViewChild.hints.Segment5.label}"
                                      required="#{bindings.XxpmMadeupSetsViewChild.hints.Segment5.mandatory}"
                                      columns="#{bindings.XxpmMadeupSetsViewChild.hints.Segment5.displayWidth}"
                                      maximumLength="#{bindings.XxpmMadeupSetsViewChild.hints.Segment5.precision}"
                                      shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.Segment5.tooltip}"
                                      id="it78" autoSubmit="true">
                          <f:validator binding="#{row.bindings.Segment5.validator}"/>
                        </af:inputText>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.Segment6.name}"
                                 filterable="true" sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetsViewChild.hints.Segment6.label}"
                                 id="c59" align="center" rendered="false">
                        <af:inputText value="#{row.bindings.Segment6.inputValue}"
                                      label="#{bindings.XxpmMadeupSetsViewChild.hints.Segment6.label}"
                                      required="#{bindings.XxpmMadeupSetsViewChild.hints.Segment6.mandatory}"
                                      columns="#{bindings.XxpmMadeupSetsViewChild.hints.Segment6.displayWidth}"
                                      maximumLength="#{bindings.XxpmMadeupSetsViewChild.hints.Segment6.precision}"
                                      shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.Segment6.tooltip}"
                                      id="it80" autoSubmit="true">
                          <f:validator binding="#{row.bindings.Segment6.validator}"/>
                        </af:inputText>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.Segment7.name}"
                                 filterable="true" sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetsViewChild.hints.Segment7.label}"
                                 id="c62" align="center" rendered="false">
                        <af:inputText value="#{row.bindings.Segment7.inputValue}"
                                      label="#{bindings.XxpmMadeupSetsViewChild.hints.Segment7.label}"
                                      required="#{bindings.XxpmMadeupSetsViewChild.hints.Segment7.mandatory}"
                                      columns="#{bindings.XxpmMadeupSetsViewChild.hints.Segment7.displayWidth}"
                                      maximumLength="#{bindings.XxpmMadeupSetsViewChild.hints.Segment7.precision}"
                                      shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.Segment7.tooltip}"
                                      id="it38" autoSubmit="true">
                          <f:validator binding="#{row.bindings.Segment7.validator}"/>
                        </af:inputText>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.Description.name}"
                                 filterable="true" sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetsViewChild.hints.Description.label}"
                                 id="c63" align="center" rendered="false"
                                 width="100">
                        <af:inputText value="#{row.bindings.Description.inputValue}"
                                      label="#{bindings.XxpmMadeupSetsViewChild.hints.Description.label}"
                                      required="#{bindings.XxpmMadeupSetsViewChild.hints.Description.mandatory}"
                                      columns="#{bindings.XxpmMadeupSetsViewChild.hints.Description.displayWidth}"
                                      maximumLength="#{bindings.XxpmMadeupSetsViewChild.hints.Description.precision}"
                                      shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.Description.tooltip}"
                                      id="it82" styleClass="AFFieldTextMarker"
                                      autoSubmit="true">
                          <f:validator binding="#{row.bindings.Description.validator}"/>
                        </af:inputText>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetColor.name}"
                                 filterable="true" sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetColor.label}"
                                 id="c67" align="center" width="85">
                        <af:inputListOfValues id="madeupSetColorId"
                                              popupTitle="Search and Select: #{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetColor.label}"
                                              value="#{row.bindings.MadeupSetColor.inputValue}"
                                              model="#{row.bindings.MadeupSetColor.listOfValuesModel}"
                                              required="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetColor.mandatory}"
                                              columns="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetColor.displayWidth}"
                                              shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetColor.tooltip}"
                                              autoSubmit="true"
                                              disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}">
                          <f:validator binding="#{row.bindings.MadeupSetColor.validator}"/>
                        </af:inputListOfValues>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetSize.name}"
                                 filterable="true" sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetSize.label}"
                                 id="c58" align="center" width="90">
                        <af:inputListOfValues id="madeupSetSizeId"
                                              popupTitle="Search and Select: #{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetSize.label}"
                                              value="#{row.bindings.MadeupSetSize.inputValue}"
                                              model="#{row.bindings.MadeupSetSize.listOfValuesModel}"
                                              required="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetSize.mandatory}"
                                              columns="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetSize.displayWidth}"
                                              shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetSize.tooltip}"
                                              autoSubmit="true"
                                              disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}">
                          <f:validator binding="#{row.bindings.MadeupSetSize.validator}"/>
                        </af:inputListOfValues>
                      </af:column>
                      <af:column headerText="#{bindings.XxpmMadeupSetsViewChild.hints.Sku.label}"
                                 id="c117" align="center" sortable="true"
                                 filterable="true"
                                 sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.Sku.name}"
                                 inlineStyle="text-align:right;">
                        <af:inputText value="#{row.bindings.Sku.inputValue}"
                                      label="#{bindings.XxpmMadeupSetsViewChild.hints.Sku.label}"
                                      required="#{bindings.XxpmMadeupSetsViewChild.hints.Sku.mandatory}"
                                      columns="#{bindings.XxpmMadeupSetsViewChild.hints.Sku.displayWidth}"
                                      maximumLength="#{bindings.XxpmMadeupSetsViewChild.hints.Sku.precision}"
                                      shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.Sku.tooltip}"
                                      id="it86" contentStyle="min-width:90%;">
                          <f:validator binding="#{row.bindings.Sku.validator}"/>
                        </af:inputText>
                      </af:column>
                      <af:column headerText="#{bindings.XxpmMadeupSetsViewChild.hints.CustomerDesc.label}"
                                 id="c118" align="center" sortable="true"
                                 filterable="true"
                                 sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.CustomerDesc.name}"
                                 width="200" inlineStyle="text-align:left;">
                        <af:inputText value="#{row.bindings.CustomerDesc.inputValue}"
                                      label="#{bindings.XxpmMadeupSetsViewChild.hints.CustomerDesc.label}"
                                      required="#{bindings.XxpmMadeupSetsViewChild.hints.CustomerDesc.mandatory}"
                                      columns="#{bindings.XxpmMadeupSetsViewChild.hints.CustomerDesc.displayWidth}"
                                      maximumLength="#{bindings.XxpmMadeupSetsViewChild.hints.CustomerDesc.precision}"
                                      shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.CustomerDesc.tooltip}"
                                      id="it87" contentStyle="min-width:100%;">
                          <f:validator binding="#{row.bindings.CustomerDesc.validator}"/>
                        </af:inputText>
                      </af:column>
                      <af:column headerText="#{bindings.XxpmMadeupSetsViewChild.hints.ConcateSegments.label}"
                                 id="c114" align="center" width="230"
                                 sortable="true" filterable="true"
                                 sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.ConcateSegment.name}">
                        <af:inputText value="#{row.bindings.ConcateSegments.inputValue}"
                                      label="#{bindings.XxpmMadeupSetsViewChild.hints.ConcateSegments.label}"
                                      required="#{bindings.XxpmMadeupSetsViewChild.hints.ConcateSegments.mandatory}"
                                      columns="#{bindings.XxpmMadeupSetsViewChild.hints.ConcateSegments.displayWidth}"
                                      maximumLength="#{bindings.XxpmMadeupSetsViewChild.hints.ConcateSegments.precision}"
                                      shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.ConcateSegments.tooltip}"
                                      id="it40"
                                      rendered="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                      disabled="true"
                                      contentStyle="min-width:100%;">
                          <f:validator binding="#{row.bindings.ConcateSegments.validator}"/>
                        </af:inputText>
                      </af:column>
                      <af:column headerText="#{bindings.XxpmMadeupSetsViewChild.hints.Segment2.label}"
                                 id="c98" align="center" rendered="false">
                        <af:inputText value="#{row.bindings.Segment2.inputValue}"
                                      label="#{bindings.XxpmMadeupSetsViewChild.hints.Segment2.label}"
                                      required="#{bindings.XxpmMadeupSetsViewChild.hints.Segment2.mandatory}"
                                      columns="#{bindings.XxpmMadeupSetsViewChild.hints.Segment2.displayWidth}"
                                      maximumLength="#{bindings.XxpmMadeupSetsViewChild.hints.Segment2.precision}"
                                      shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.Segment2.tooltip}"
                                      id="it28"
                                      rendered="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                      disabled="true"
                                      inlineStyle="text-align:center;">
                          <f:validator binding="#{row.bindings.Segment2.validator}"/>
                        </af:inputText>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetResultant.name}"
                                 filterable="true" sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetResultant.label}"
                                 id="c64" align="center" width="100"
                                 inlineStyle="text-align:left;">
                        <af:inputText value="#{row.bindings.MadeupSetResultant.inputValue}"
                                      label="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetResultant.label}"
                                      required="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetResultant.mandatory}"
                                      columns="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetResultant.displayWidth}"
                                      maximumLength="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetResultant.precision}"
                                      shortDesc="#{bindings.XxpmMadeupSetsViewChild.hints.MadeupSetResultant.tooltip}"
                                      id="it81" autoSubmit="true"
                                      disabled="true"
                                      contentStyle="min-width:100%;">
                          <f:validator binding="#{row.bindings.MadeupSetResultant.validator}"/>
                        </af:inputText>
                      </af:column>
                    </af:table>
                    <af:popup id="delMadeupSetPopup">
                      <af:dialog id="dialog2" inlineStyle="width:280px;"
                                 type="yesNo"
                                 dialogListener="#{ViewActions.deleteMadeupSetDialog}">
                        <af:outputFormatted value="Are you sure you want to delete this record?"
                                            id="outputFormatted13"
                                            inlineStyle="font-weight:bold;"/>
                      </af:dialog>
                    </af:popup>
                  </af:panelCollection>
                  <af:panelCollection id="pc6" styleClass="AFStretchWidth">
                    <f:facet name="toolbar">
                      <af:toolbar id="t15">
                        <af:commandToolbarButton actionListener="#{bindings.CreateInsertSetArticles.execute}"
                                                 disabled="#{!bindings.CreateInsertSetArticles.enabled}"
                                                 id="ctb9"
                                                 icon="/Images/add-icon 12x12.png"/>
                        <af:commandToolbarButton id="ctb15"
                                                 icon="/Images/del-icon 12x12.png"
                                                 disabled="#{bindings.XxpmMadeupSetArticlesViewSetsChildIterator.estimatedRowCount < 1 ? true : false}"
                                                 immediate="true">
                          <af:showPopupBehavior popupId="delMadeupSetArticlePopup"
                                                triggerType="action"/>
                        </af:commandToolbarButton>
                      </af:toolbar>
                    </f:facet>
                    <f:facet name="statusbar"/>
                    <af:table value="#{bindings.XxpmMadeupSetArticlesViewSetsChild.collectionModel}"
                              var="row"
                              rows="#{bindings.XxpmMadeupSetArticlesViewSetsChild.rangeSize}"
                              emptyText="#{bindings.XxpmMadeupSetArticlesViewSetsChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                              fetchSize="#{bindings.XxpmMadeupSetArticlesViewSetsChild.rangeSize}"
                              rowBandingInterval="0"
                              selectedRowKeys="#{bindings.XxpmMadeupSetArticlesViewSetsChild.collectionModel.selectedRow}"
                              selectionListener="#{bindings.XxpmMadeupSetArticlesViewSetsChild.collectionModel.makeCurrent}"
                              rowSelection="single" id="t7"
                              contentDelivery="immediate"
                              autoHeightRows="#{bindings.XxpmMadeupSetArticlesViewSetsChildIterator.estimatedRowCount}"
                              partialTriggers="::ctb9 :::pc5:ctb8"
                              styleClass="AFStretchWidth">
                      <af:column sortProperty="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.SetArticleId.name}"
                                 sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.SetArticleId.label}"
                                 id="c71" align="center" rendered="false">
                        <af:outputFormatted value="#{row.bindings.SetArticleId.inputValue}"
                                            id="of10">
                          <af:convertNumber groupingUsed="false"
                                            pattern="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.SetArticleId.format}"/>
                        </af:outputFormatted>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.SetId.name}"
                                 sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.SetId.label}"
                                 id="c72" align="center" rendered="false">
                        <af:outputFormatted value="#{row.bindings.SetId.inputValue}"
                                            id="of9">
                          <af:convertNumber groupingUsed="false"
                                            pattern="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.SetId.format}"/>
                        </af:outputFormatted>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.ArticleId.name}"
                                 sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.ArticleId.label}"
                                 id="c68" align="center" width="150">
                        <af:selectOneChoice value="#{row.bindings.ArticleId.inputValue}"
                                            label="#{row.bindings.ArticleId.label}"
                                            required="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.ArticleId.mandatory}"
                                            shortDesc="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.ArticleId.tooltip}"
                                            id="soc8" autoSubmit="true">
                          <f:selectItems value="#{row.bindings.ArticleId.items}"
                                         id="si8"/>
                        </af:selectOneChoice>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.Quantity.name}"
                                 sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.Quantity.label}"
                                 id="c70" align="center">
                        <af:inputText value="#{row.bindings.Quantity.inputValue}"
                                      label="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.Quantity.label}"
                                      required="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.Quantity.mandatory}"
                                      columns="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.Quantity.displayWidth}"
                                      maximumLength="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.Quantity.precision}"
                                      shortDesc="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.Quantity.tooltip}"
                                      id="it84" styleClass="AFFieldNumberMarker"
                                      autoSubmit="true">
                          <f:validator binding="#{row.bindings.Quantity.validator}"/>
                          <af:convertNumber groupingUsed="false"
                                            pattern="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.Quantity.format}"/>
                        </af:inputText>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.ProgId.name}"
                                 sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.ProgId.label}"
                                 id="c69" align="center" rendered="false">
                        <af:outputFormatted value="#{row.bindings.ProgId.inputValue}"
                                            id="of12">
                          <af:convertNumber groupingUsed="false"
                                            pattern="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.ProgId.format}"/>
                        </af:outputFormatted>
                      </af:column>
                      <af:column sortProperty="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.SetIdMaster.name}"
                                 sortable="true"
                                 headerText="#{bindings.XxpmMadeupSetArticlesViewSetsChild.hints.SetIdMaster.label}"
                                 id="c73" align="center" rendered="false">
                        <af:outputFormatted value="#{row.bindings.SetIdMaster.inputValue}"
                                            id="of8"/>
                      </af:column>
                    </af:table>
                    <af:popup id="delMadeupSetArticlePopup">
                      <af:dialog id="dialog3" inlineStyle="width:280px;"
                                 type="yesNo"
                                 dialogListener="#{ViewActions.deleteMadeupSetArticleDialog}">
                        <af:outputFormatted value="Are you sure you want to delete this record?"
                                            id="outputFormatted14"
                                            inlineStyle="font-weight:bold;"/>
                      </af:dialog>
                    </af:popup>
                  </af:panelCollection>
                </af:dialog>
              </af:popup>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr5">
            <af:gridCell marginStart="5px" width="dontCare" id="gc12">
              <af:outputFormatted value="Weave Design" id="outputFormatted8"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc9">
              <af:selectOneChoice value="#{bindings.WeaveDesign.inputValue}"
                                  label="#{bindings.WeaveDesign.label}"
                                  required="#{bindings.WeaveDesign.hints.mandatory}"
                                  shortDesc="#{bindings.WeaveDesign.hints.tooltip}"
                                  id="soc7" simple="true"
                                  contentStyle="width:100px;" autoSubmit="true"
                                  disabled="#{bindings.EbsStatusPrograms.inputValue == '1' ? true : false}"
                                  partialTriggers="ctb6">
                <f:selectItems value="#{bindings.WeaveDesign.items}" id="si7"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto" id="gr1">
            <af:gridCell marginStart="5px" width="dontCare" id="gc10">
              <af:outputFormatted value="Program Name" id="outputFormatted10"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc23"
                         columnSpan="3">
              <af:inputText value="#{bindings.ProgCode.inputValue}"
                            label="#{bindings.ProgCode.hints.label}"
                            required="#{bindings.ProgCode.hints.mandatory}"
                            columns="#{bindings.ProgCode.hints.displayWidth}"
                            maximumLength="#{bindings.ProgCode.hints.precision}"
                            shortDesc="#{bindings.ProgCode.hints.tooltip}"
                            id="it19" rendered="false" simple="true"
                            autoSubmit="true">
                <f:validator binding="#{bindings.ProgCode.validator}"/>
              </af:inputText>
              <af:inputText value="#{bindings.ProgId.inputValue}"
                            label="#{bindings.ProgId.hints.label}"
                            required="#{bindings.ProgId.hints.mandatory}"
                            columns="#{bindings.ProgId.hints.displayWidth}"
                            maximumLength="#{bindings.ProgId.hints.precision}"
                            shortDesc="#{bindings.ProgId.hints.tooltip}"
                            id="it24" rendered="false" simple="true"
                            autoSubmit="true">
                <f:validator binding="#{bindings.ProgId.validator}"/>
              </af:inputText>
              <af:inputText value="#{bindings.ProgramResultant.inputValue}"
                            label="#{bindings.ProgramResultant.hints.label}"
                            required="#{bindings.ProgramResultant.hints.mandatory}"
                            columns="#{bindings.ProgramResultant.hints.displayWidth}"
                            maximumLength="#{bindings.ProgramResultant.hints.precision}"
                            shortDesc="#{bindings.ProgramResultant.hints.tooltip}"
                            id="it30" autoSubmit="true" simple="true"
                            contentStyle="width:370px;" disabled="true">
                <f:validator binding="#{bindings.ProgramResultant.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:spacer width="10" height="20" id="spacer2"/>
        <af:panelStretchLayout id="panelStretchLayout4" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Articles Information"
                                id="outputFormatted17"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelTabbed id="pt1" dimensionsFrom="disclosedChild"
                        binding="#{ViewActions.programPanelTabbed}">
          <af:showDetailItem text="Articles" id="sdi1"
                             disclosureListener="#{ViewActions.dimensionsTabDL}">
            <af:panelCollection id="pc3" styleClass="AFStretchWidth">
              <f:facet name="menus"/>
              <f:facet name="toolbar">
                <af:toolbar id="t10">
                  <af:commandToolbarButton actionListener="#{bindings.CreateInsertArticles.execute}"
                                           disabled="#{!bindings.CreateInsertArticles.enabled}"
                                           id="ctb10"
                                           icon="/Images/add-icon 12x12.png"/>
                  <af:commandToolbarButton id="commandButton1"
                                           icon="/Images/del-icon 12x12.png"
                                           disabled="#{bindings.EbsStatusArticles.inputValue == '1' || bindings.XxpmMadeupArticlesViewProgChildIterator.estimatedRowCount < 1 ? true : false}">
                    <af:showPopupBehavior popupId="delArticlePopup"
                                          triggerType="action"/>
                  </af:commandToolbarButton>
                </af:toolbar>
              </f:facet>
              <f:facet name="statusbar"/>
              <af:table value="#{bindings.XxpmMadeupArticlesViewProgChild.collectionModel}"
                        var="row"
                        rows="#{bindings.XxpmMadeupArticlesViewProgChild.rangeSize}"
                        emptyText="#{bindings.XxpmMadeupArticlesViewProgChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.XxpmMadeupArticlesViewProgChild.rangeSize}"
                        rowBandingInterval="0"
                        filterModel="#{bindings.XxpmMadeupArticlesViewProgChildQuery.queryDescriptor}"
                        queryListener="#{bindings.XxpmMadeupArticlesViewProgChildQuery.processQuery}"
                        filterVisible="true" varStatus="vs"
                        selectedRowKeys="#{bindings.XxpmMadeupArticlesViewProgChild.collectionModel.selectedRow}"
                        selectionListener="#{bindings.XxpmMadeupArticlesViewProgChild.collectionModel.makeCurrent}"
                        rowSelection="single" id="t1"
                        contentDelivery="immediate"
                        autoHeightRows="#{bindings.XxpmMadeupArticlesViewProgChild.estimatedRowCount}"
                        styleClass="AFStretchWidth" partialTriggers="::ctb10">
                <af:column sortProperty="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ArticleId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ArticleId.label}"
                           id="c6" align="center" rendered="false">
                  <af:outputFormatted value="#{row.bindings.ArticleId.inputValue}"
                                      id="of2"/>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ProgId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ProgId.label}"
                           id="c8" align="center" rendered="false">
                  <af:inputText value="#{row.bindings.ProgId.inputValue}"
                                label="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ProgId.label}"
                                required="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ProgId.mandatory}"
                                columns="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ProgId.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ProgId.precision}"
                                shortDesc="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ProgId.tooltip}"
                                id="it44">
                    <f:validator binding="#{row.bindings.ProgId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ProgId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ArticleName.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ArticleName.label}"
                           id="c5" align="center" width="210">
                  <af:inputText value="#{row.bindings.ArticleName.inputValue}"
                                label="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ArticleName.label}"
                                required="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ArticleName.mandatory}"
                                columns="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ArticleName.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ArticleName.precision}"
                                shortDesc="#{bindings.XxpmMadeupArticlesViewProgChild.hints.ArticleName.tooltip}"
                                id="it50" autoSubmit="true"
                                contentStyle="min-width:100%;"
                                disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                partialTriggers=":::ctb6">
                    <f:validator binding="#{row.bindings.ArticleName.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmMadeupArticlesViewProgChild.hints.HemDetails.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupArticlesViewProgChild.hints.HemDetails.label}"
                           id="c4" align="center" width="150">
                  <af:inputText value="#{row.bindings.HemDetails.inputValue}"
                                label="#{bindings.XxpmMadeupArticlesViewProgChild.hints.HemDetails.label}"
                                required="#{bindings.XxpmMadeupArticlesViewProgChild.hints.HemDetails.mandatory}"
                                columns="#{bindings.XxpmMadeupArticlesViewProgChild.hints.HemDetails.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupArticlesViewProgChild.hints.HemDetails.precision}"
                                shortDesc="#{bindings.XxpmMadeupArticlesViewProgChild.hints.HemDetails.tooltip}"
                                id="it43" autoSubmit="true"
                                contentStyle="min-width:100%;"
                                disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                partialTriggers=":::ctb6">
                    <f:validator binding="#{row.bindings.HemDetails.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmMadeupArticlesViewProgChild.hints.Embroided.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupArticlesViewProgChild.hints.Embroided.label}"
                           id="c13" align="center" width="55">
                  <af:selectBooleanCheckbox value="#{row.bindings.Embroided.inputValue}"
                                            label="#{row.bindings.Embroided.label}"
                                            shortDesc="#{bindings.XxpmMadeupArticlesViewProgChild.hints.Embroided.tooltip}"
                                            id="sbc2" autoSubmit="true"
                                            disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                            partialTriggers=":::ctb6"/>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmMadeupArticlesViewProgChild.hints.EmbroideryDetails.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupArticlesViewProgChild.hints.EmbroideryDetails.label}"
                           id="c11" align="center" width="150">
                  <af:inputText value="#{row.bindings.EmbroideryDetails.inputValue}"
                                label="#{bindings.XxpmMadeupArticlesViewProgChild.hints.EmbroideryDetails.label}"
                                required="#{bindings.XxpmMadeupArticlesViewProgChild.hints.EmbroideryDetails.mandatory}"
                                columns="#{bindings.XxpmMadeupArticlesViewProgChild.hints.EmbroideryDetails.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupArticlesViewProgChild.hints.EmbroideryDetails.precision}"
                                shortDesc="#{bindings.XxpmMadeupArticlesViewProgChild.hints.EmbroideryDetails.tooltip}"
                                id="it47" autoSubmit="true"
                                contentStyle="min-width:100%;"
                                disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                partialTriggers=":::ctb6">
                    <f:validator binding="#{row.bindings.EmbroideryDetails.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmMadeupArticlesViewProgChild.hints.Quilted.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupArticlesViewProgChild.hints.Quilted.label}"
                           id="c1" align="center" width="55">
                  <af:selectBooleanCheckbox value="#{row.bindings.Quilted.inputValue}"
                                            label="#{row.bindings.Quilted.label}"
                                            shortDesc="#{bindings.XxpmMadeupArticlesViewProgChild.hints.Quilted.tooltip}"
                                            id="sbc1" autoSubmit="true"
                                            disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                            partialTriggers=":::ctb6"/>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmMadeupArticlesViewProgChild.hints.QuiltDesign.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupArticlesViewProgChild.hints.QuiltDesign.label}"
                           id="c12" align="center" width="150">
                  <af:inputText value="#{row.bindings.QuiltDesign.inputValue}"
                                label="#{bindings.XxpmMadeupArticlesViewProgChild.hints.QuiltDesign.label}"
                                required="#{bindings.XxpmMadeupArticlesViewProgChild.hints.QuiltDesign.mandatory}"
                                columns="#{bindings.XxpmMadeupArticlesViewProgChild.hints.QuiltDesign.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupArticlesViewProgChild.hints.QuiltDesign.precision}"
                                shortDesc="#{bindings.XxpmMadeupArticlesViewProgChild.hints.QuiltDesign.tooltip}"
                                id="it2" autoSubmit="true"
                                contentStyle="min-width:100%;"
                                disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                partialTriggers=":::ctb6">
                    <f:validator binding="#{row.bindings.QuiltDesign.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmMadeupArticlesViewProgChild.hints.QuiltType.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupArticlesViewProgChild.hints.QuiltType.label}"
                           id="c2" align="center" width="150">
                  <af:inputText value="#{row.bindings.QuiltType.inputValue}"
                                label="#{bindings.XxpmMadeupArticlesViewProgChild.hints.QuiltType.label}"
                                required="#{bindings.XxpmMadeupArticlesViewProgChild.hints.QuiltType.mandatory}"
                                columns="#{bindings.XxpmMadeupArticlesViewProgChild.hints.QuiltType.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupArticlesViewProgChild.hints.QuiltType.precision}"
                                shortDesc="#{bindings.XxpmMadeupArticlesViewProgChild.hints.QuiltType.tooltip}"
                                id="it42" autoSubmit="true"
                                contentStyle="min-width:100%;"
                                disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                partialTriggers=":::ctb6">
                    <f:validator binding="#{row.bindings.QuiltType.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupArticlesViewProgChild.hints.OpenStock.label}"
                           id="c3" align="center" sortable="true"
                           filterable="true" width="50" rendered="false">
                  <af:selectBooleanCheckbox value="#{row.bindings.OpenStock.inputValue}"
                                            label="#{row.bindings.OpenStock.label}"
                                            shortDesc="#{bindings.XxpmMadeupArticlesViewProgChild.hints.OpenStock.tooltip}"
                                            id="sbc3" autoSubmit="true"
                                            disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                            partialTriggers=":::ctb6"/>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupArticlesViewProgChild.hints.SetArticle.label}"
                           id="c7" align="center" sortable="true"
                           filterable="true" width="50">
                  <af:selectBooleanCheckbox value="#{row.bindings.SetArticle.inputValue}"
                                            label="#{row.bindings.SetArticle.label}"
                                            shortDesc="#{bindings.XxpmMadeupArticlesViewProgChild.hints.SetArticle.tooltip}"
                                            id="sbc4" autoSubmit="true"
                                            disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                            partialTriggers=":::ctb6"/>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupArticlesViewProgChild.hints.Finished.label}"
                           id="c9" align="center" sortable="true"
                           filterable="true" width="50" rendered="false">
                  <af:selectBooleanCheckbox value="#{row.bindings.Finished.inputValue}"
                                            label="#{row.bindings.Finished.label}"
                                            shortDesc="#{bindings.XxpmMadeupArticlesViewProgChild.hints.Finished.tooltip}"
                                            id="sbc5" autoSubmit="true"
                                            disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                            partialTriggers=":::ctb6"/>
                </af:column>
                <af:column id="c10" headerText="Dimensions" align="center"
                           width="60">
                  <af:commandLink text="Dimensions" id="cl4"
                                  actionListener="#{ViewActions.callDimensionsTab}"/>
                </af:column>
              </af:table>
              <af:popup id="delArticlePopup">
                <af:dialog id="dialog1" inlineStyle="width:280px;" type="yesNo"
                           dialogListener="#{ViewActions.deleteMadeupArticleDialog}">
                  <af:outputFormatted value="Are you sure you want to delete this record? It will delete dimensions and combinations of this article as well and also remove reference of this article under set popup."
                                      id="outputFormatted12"
                                      inlineStyle="font-weight:bold;"/>
                </af:dialog>
              </af:popup>
            </af:panelCollection>
          </af:showDetailItem>
          <af:showDetailItem text="Color/Design" id="sdi2"
                             disclosureListener="#{ViewActions.dimensionsTabDL}">
            <af:panelCollection id="pc4" styleClass="AFStretchWidth">
              <f:facet name="menus"/>
              <f:facet name="toolbar">
                <af:toolbar id="t13">
                  <af:commandToolbarButton actionListener="#{bindings.CreateInsertColors.execute}"
                                           disabled="#{!bindings.CreateInsertColors.enabled}"
                                           id="ctb11"
                                           icon="/Images/add-icon 12x12.png"/>
                  <af:commandToolbarButton id="ctb17"
                                           icon="/Images/del-icon 12x12.png"
                                           disabled="#{bindings.EbsStatusColors.inputValue == '1' || bindings.XxpmMadeupColorsViewChildIterator.estimatedRowCount < 1 ? true : false}">
                    <af:showPopupBehavior popupId="delMadeupColorPopup"
                                          triggerType="action"/>
                  </af:commandToolbarButton>
                </af:toolbar>
              </f:facet>
              <f:facet name="statusbar"/>
              <af:table value="#{bindings.XxpmMadeupColorsViewChild.collectionModel}"
                        var="row"
                        rows="#{bindings.XxpmMadeupColorsViewChild.rangeSize}"
                        emptyText="#{bindings.XxpmMadeupColorsViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.XxpmMadeupColorsViewChild.rangeSize}"
                        rowBandingInterval="0"
                        filterModel="#{bindings.XxpmMadeupColorsViewChildQuery.queryDescriptor}"
                        queryListener="#{bindings.XxpmMadeupColorsViewChildQuery.processQuery}"
                        filterVisible="true" varStatus="vs"
                        selectedRowKeys="#{bindings.XxpmMadeupColorsViewChild.collectionModel.selectedRow}"
                        selectionListener="#{bindings.XxpmMadeupColorsViewChild.collectionModel.makeCurrent}"
                        rowSelection="single" id="t8" partialTriggers="::ctb11"
                        styleClass="AFStretchWidth" contentDelivery="immediate"
                        autoHeightRows="#{bindings.XxpmMadeupColorsViewChildIterator.estimatedRowCount}">
                <af:column sortProperty="#{bindings.XxpmMadeupColorsViewChild.hints.ColorId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorId.label}"
                           id="c75" align="center" rendered="false">
                  <af:inputText value="#{row.bindings.ColorId.inputValue}"
                                label="#{bindings.XxpmMadeupColorsViewChild.hints.ColorId.label}"
                                required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorId.mandatory}"
                                columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorId.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupColorsViewChild.hints.ColorId.precision}"
                                shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorId.tooltip}"
                                id="it5">
                    <f:validator binding="#{row.bindings.ColorId.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmMadeupColorsViewChild.hints.ProgId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ProgId.label}"
                           id="c74" align="center" rendered="false">
                  <af:inputText value="#{row.bindings.ProgId.inputValue}"
                                label="#{bindings.XxpmMadeupColorsViewChild.hints.ProgId.label}"
                                required="#{bindings.XxpmMadeupColorsViewChild.hints.ProgId.mandatory}"
                                columns="#{bindings.XxpmMadeupColorsViewChild.hints.ProgId.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupColorsViewChild.hints.ProgId.precision}"
                                shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ProgId.tooltip}"
                                id="it3">
                    <f:validator binding="#{row.bindings.ProgId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmMadeupColorsViewChild.hints.ProgId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode.label}"
                           id="c78" align="center" rendered="false">
                  <af:inputText value="#{row.bindings.ColorCode.inputValue}"
                                label="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode.label}"
                                required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode.mandatory}"
                                columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode.precision}"
                                shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode.tooltip}"
                                id="it4">
                    <f:validator binding="#{row.bindings.ColorCode.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode2.label}"
                           id="c100" align="center" rendered="false">
                  <af:inputText value="#{row.bindings.ColorCode2.inputValue}"
                                label="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode2.label}"
                                required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode2.mandatory}"
                                columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode2.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode2.precision}"
                                shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode2.tooltip}"
                                id="it1" autoSubmit="true">
                    <f:validator binding="#{row.bindings.ColorCode2.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode3.label}"
                           id="c101" align="center" rendered="false">
                  <af:inputText value="#{row.bindings.ColorCode3.inputValue}"
                                label="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode3.label}"
                                required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode3.mandatory}"
                                columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode3.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode3.precision}"
                                shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode3.tooltip}"
                                id="it33" autoSubmit="true">
                    <f:validator binding="#{row.bindings.ColorCode3.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode4.label}"
                           id="c102" align="center" rendered="false">
                  <af:inputText value="#{row.bindings.ColorCode4.inputValue}"
                                label="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode4.label}"
                                required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode4.mandatory}"
                                columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode4.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode4.precision}"
                                shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode4.tooltip}"
                                id="it34" autoSubmit="true">
                    <f:validator binding="#{row.bindings.ColorCode4.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode5.label}"
                           id="c103" align="center" rendered="false">
                  <af:inputText value="#{row.bindings.ColorCode5.inputValue}"
                                label="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode5.label}"
                                required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode5.mandatory}"
                                columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode5.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode5.precision}"
                                shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode5.tooltip}"
                                id="it35" autoSubmit="true">
                    <f:validator binding="#{row.bindings.ColorCode5.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode6.label}"
                           id="c104" align="center" rendered="false">
                  <af:inputText value="#{row.bindings.ColorCode6.inputValue}"
                                label="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode6.label}"
                                required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode6.mandatory}"
                                columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode6.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode6.precision}"
                                shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode6.tooltip}"
                                id="it36" autoSubmit="true">
                    <f:validator binding="#{row.bindings.ColorCode6.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode7.label}"
                           id="c105" align="center" rendered="false">
                  <af:inputText value="#{row.bindings.ColorCode7.inputValue}"
                                label="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode7.label}"
                                required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode7.mandatory}"
                                columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode7.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode7.precision}"
                                shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode7.tooltip}"
                                id="it37" autoSubmit="true">
                    <f:validator binding="#{row.bindings.ColorCode7.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode8.label}"
                           id="c106" align="center" rendered="false">
                  <af:inputText value="#{row.bindings.ColorCode8.inputValue}"
                                label="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode8.label}"
                                required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode8.mandatory}"
                                columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode8.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode8.precision}"
                                shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCode8.tooltip}"
                                id="it39" autoSubmit="true">
                    <f:validator binding="#{row.bindings.ColorCode8.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName.label}"
                           id="c77" align="center" width="120">
                  <af:inputListOfValues id="colorNameId"
                                        popupTitle="Search and Select: #{bindings.XxpmMadeupColorsViewChild.hints.ColorName.label}"
                                        value="#{row.bindings.ColorName.inputValue}"
                                        model="#{row.bindings.ColorName.listOfValuesModel}"
                                        required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName.mandatory}"
                                        columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName.displayWidth}"
                                        shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName.tooltip}"
                                        autoSubmit="true"
                                        disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                        partialTriggers=":::ctb6">
                    <f:validator binding="#{row.bindings.ColorName.validator}"/>
                  </af:inputListOfValues>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCategory.label}"
                           id="c76" align="center" width="120" sortable="true"
                           filterable="true"
                           sortProperty="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCategory.name}">
                  <af:selectOneChoice value="#{row.bindings.ColorCategory.inputValue}"
                                      label="#{row.bindings.ColorCategory.label}"
                                      required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCategory.mandatory}"
                                      shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorCategory.tooltip}"
                                      id="soc9" autoSubmit="true">
                    <f:selectItems value="#{row.bindings.ColorCategory.items}"
                                   id="si9"/>
                  </af:selectOneChoice>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName2.label}"
                           id="c107" align="center" width="120" sortable="true"
                           filterable="true"
                           sortProperty="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName2.name}">
                  <af:inputListOfValues id="colorName2Id"
                                        popupTitle="Search and Select: #{bindings.XxpmMadeupColorsViewChild.hints.ColorName2.label}"
                                        value="#{row.bindings.ColorName2.inputValue}"
                                        model="#{row.bindings.ColorName2.listOfValuesModel}"
                                        required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName2.mandatory}"
                                        columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName2.displayWidth}"
                                        shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName2.tooltip}"
                                        autoSubmit="true">
                    <f:validator binding="#{row.bindings.ColorName2.validator}"/>
                  </af:inputListOfValues>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName3.label}"
                           id="c108" align="center" width="120" sortable="true"
                           filterable="true"
                           sortProperty="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName3.name}">
                  <af:inputListOfValues id="colorName3Id"
                                        popupTitle="Search and Select: #{bindings.XxpmMadeupColorsViewChild.hints.ColorName3.label}"
                                        value="#{row.bindings.ColorName3.inputValue}"
                                        model="#{row.bindings.ColorName3.listOfValuesModel}"
                                        required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName3.mandatory}"
                                        columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName3.displayWidth}"
                                        shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName3.tooltip}"
                                        autoSubmit="true">
                    <f:validator binding="#{row.bindings.ColorName3.validator}"/>
                  </af:inputListOfValues>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName4.label}"
                           id="c109" align="center" width="120" sortable="true"
                           filterable="true"
                           sortProperty="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName4.name}">
                  <af:inputListOfValues id="colorName4Id"
                                        popupTitle="Search and Select: #{bindings.XxpmMadeupColorsViewChild.hints.ColorName4.label}"
                                        value="#{row.bindings.ColorName4.inputValue}"
                                        model="#{row.bindings.ColorName4.listOfValuesModel}"
                                        required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName4.mandatory}"
                                        columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName4.displayWidth}"
                                        shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName4.tooltip}"
                                        autoSubmit="true">
                    <f:validator binding="#{row.bindings.ColorName4.validator}"/>
                  </af:inputListOfValues>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName5.label}"
                           id="c110" align="center" width="120" sortable="true"
                           filterable="true"
                           sortProperty="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName5.name}">
                  <af:inputListOfValues id="colorName5Id"
                                        popupTitle="Search and Select: #{bindings.XxpmMadeupColorsViewChild.hints.ColorName5.label}"
                                        value="#{row.bindings.ColorName5.inputValue}"
                                        model="#{row.bindings.ColorName5.listOfValuesModel}"
                                        required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName5.mandatory}"
                                        columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName5.displayWidth}"
                                        shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName5.tooltip}"
                                        autoSubmit="true">
                    <f:validator binding="#{row.bindings.ColorName5.validator}"/>
                  </af:inputListOfValues>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName6.label}"
                           id="c111" align="center" width="120" sortable="true"
                           filterable="true"
                           sortProperty="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName6.name}">
                  <af:inputListOfValues id="colorName6Id"
                                        popupTitle="Search and Select: #{bindings.XxpmMadeupColorsViewChild.hints.ColorName6.label}"
                                        value="#{row.bindings.ColorName6.inputValue}"
                                        model="#{row.bindings.ColorName6.listOfValuesModel}"
                                        required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName6.mandatory}"
                                        columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName6.displayWidth}"
                                        shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName6.tooltip}"
                                        autoSubmit="true">
                    <f:validator binding="#{row.bindings.ColorName6.validator}"/>
                  </af:inputListOfValues>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName7.label}"
                           id="c112" align="center" width="120" sortable="true"
                           filterable="true"
                           sortProperty="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName7.name}">
                  <af:inputListOfValues id="colorName7Id"
                                        popupTitle="Search and Select: #{bindings.XxpmMadeupColorsViewChild.hints.ColorName7.label}"
                                        value="#{row.bindings.ColorName7.inputValue}"
                                        model="#{row.bindings.ColorName7.listOfValuesModel}"
                                        required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName7.mandatory}"
                                        columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName7.displayWidth}"
                                        shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName7.tooltip}"
                                        autoSubmit="true">
                    <f:validator binding="#{row.bindings.ColorName7.validator}"/>
                  </af:inputListOfValues>
                </af:column>
                <af:column headerText="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName8.label}"
                           id="c113" align="center" width="120" sortable="true"
                           filterable="true"
                           sortProperty="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName8.name}">
                  <af:inputListOfValues id="colorName8Id"
                                        popupTitle="Search and Select: #{bindings.XxpmMadeupColorsViewChild.hints.ColorName8.label}"
                                        value="#{row.bindings.ColorName8.inputValue}"
                                        model="#{row.bindings.ColorName8.listOfValuesModel}"
                                        required="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName8.mandatory}"
                                        columns="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName8.displayWidth}"
                                        shortDesc="#{bindings.XxpmMadeupColorsViewChild.hints.ColorName8.tooltip}"
                                        autoSubmit="true">
                    <f:validator binding="#{row.bindings.ColorName8.validator}"/>
                  </af:inputListOfValues>
                </af:column>
              </af:table>
              <af:popup id="delMadeupColorPopup">
                <af:dialog id="dialog4" inlineStyle="width:280px;" type="yesNo"
                           dialogListener="#{ViewActions.deleteMadeupColorsDialog}">
                  <af:outputFormatted value="Are you sure you want to delete this record?"
                                      id="outputFormatted5"
                                      inlineStyle="font-weight:bold;"/>
                </af:dialog>
              </af:popup>
            </af:panelCollection>
          </af:showDetailItem>
          <af:showDetailItem text="Size" id="showDetailItem1"
                             disclosureListener="#{ViewActions.dimensionsTabDL}">
            <af:panelCollection id="panelCollection1">
              <f:facet name="menus"/>
              <f:facet name="toolbar">
                <af:toolbar id="toolbar1">
                  <af:commandToolbarButton actionListener="#{bindings.CreateInsertSize.execute}"
                                           disabled="#{!bindings.CreateInsertSize.enabled}"
                                           id="ctb16"
                                           icon="/Images/add-icon 12x12.png"/>
                  <af:commandToolbarButton id="ctb18"
                                           icon="/Images/del-icon 12x12.png"
                                           disabled="#{bindings.EbsStatusSizes.inputValue == '1' || bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount < 1 ? true : false}">
                    <af:showPopupBehavior popupId="delMadeupSizePopup"
                                          triggerType="action"/>
                  </af:commandToolbarButton>
                </af:toolbar>
              </f:facet>
              <f:facet name="statusbar"/>
              <af:table value="#{bindings.XxpmMadeupSizesViewChild.collectionModel}"
                        var="row"
                        rows="#{bindings.XxpmMadeupSizesViewChild.rangeSize}"
                        emptyText="#{bindings.XxpmMadeupSizesViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.XxpmMadeupSizesViewChild.rangeSize}"
                        rowBandingInterval="0"
                        filterModel="#{bindings.XxpmMadeupSizesViewChildQuery.queryDescriptor}"
                        queryListener="#{bindings.XxpmMadeupSizesViewChildQuery.processQuery}"
                        filterVisible="true" varStatus="vs"
                        selectedRowKeys="#{bindings.XxpmMadeupSizesViewChild.collectionModel.selectedRow}"
                        selectionListener="#{bindings.XxpmMadeupSizesViewChild.collectionModel.makeCurrent}"
                        rowSelection="single" id="t16" partialTriggers="::ctb16"
                        styleClass="AFStretchWidth" contentDelivery="immediate"
                        autoHeightRows="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount}">
                <af:column sortProperty="#{bindings.XxpmMadeupSizesViewChild.hints.SizeId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupSizesViewChild.hints.SizeId.label}"
                           id="c94" rendered="false">
                  <af:outputFormatted value="#{row.bindings.SizeId.inputValue}"
                                      id="of14"/>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmMadeupSizesViewChild.hints.ProgId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupSizesViewChild.hints.ProgId.label}"
                           id="c91" rendered="false">
                  <af:outputFormatted value="#{row.bindings.ProgId.inputValue}"
                                      id="of13">
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmMadeupSizesViewChild.hints.ProgId.format}"/>
                  </af:outputFormatted>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmMadeupSizesViewChild.hints.SizeCode.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupSizesViewChild.hints.SizeCode.label}"
                           id="c92" rendered="false">
                  <af:inputText value="#{row.bindings.SizeCode.inputValue}"
                                label="#{bindings.XxpmMadeupSizesViewChild.hints.SizeCode.label}"
                                required="#{bindings.XxpmMadeupSizesViewChild.hints.SizeCode.mandatory}"
                                columns="#{bindings.XxpmMadeupSizesViewChild.hints.SizeCode.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupSizesViewChild.hints.SizeCode.precision}"
                                shortDesc="#{bindings.XxpmMadeupSizesViewChild.hints.SizeCode.tooltip}"
                                id="it25">
                    <f:validator binding="#{row.bindings.SizeCode.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmMadeupSizesViewChild.hints.SizeName.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupSizesViewChild.hints.SizeName.label}"
                           id="c93" width="200" align="center">
                  <af:inputListOfValues id="sizeNameId"
                                        popupTitle="Search and Select: #{bindings.XxpmMadeupSizesViewChild.hints.SizeName.label}"
                                        value="#{row.bindings.SizeName.inputValue}"
                                        model="#{row.bindings.SizeName.listOfValuesModel}"
                                        required="#{bindings.XxpmMadeupSizesViewChild.hints.SizeName.mandatory}"
                                        columns="#{bindings.XxpmMadeupSizesViewChild.hints.SizeName.displayWidth}"
                                        shortDesc="#{bindings.XxpmMadeupSizesViewChild.hints.SizeName.tooltip}"
                                        autoSubmit="true"
                                        disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                        partialTriggers=":::ctb6">
                    <f:validator binding="#{row.bindings.SizeName.validator}"/>
                  </af:inputListOfValues>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmMadeupSizesViewChild.hints.EbsStatus.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.XxpmMadeupSizesViewChild.hints.EbsStatus.label}"
                           id="c95" rendered="false">
                  <af:inputText value="#{row.bindings.EbsStatus.inputValue}"
                                label="#{bindings.XxpmMadeupSizesViewChild.hints.EbsStatus.label}"
                                required="#{bindings.XxpmMadeupSizesViewChild.hints.EbsStatus.mandatory}"
                                columns="#{bindings.XxpmMadeupSizesViewChild.hints.EbsStatus.displayWidth}"
                                maximumLength="#{bindings.XxpmMadeupSizesViewChild.hints.EbsStatus.precision}"
                                shortDesc="#{bindings.XxpmMadeupSizesViewChild.hints.EbsStatus.tooltip}"
                                id="it26">
                    <f:validator binding="#{row.bindings.EbsStatus.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmMadeupSizesViewChild.hints.EbsStatus.format}"/>
                  </af:inputText>
                </af:column>
              </af:table>
              <af:popup id="delMadeupSizePopup">
                <af:dialog id="dialog5" inlineStyle="width:280px;" type="yesNo"
                           dialogListener="#{ViewActions.deleteMadeupSizesDialog}">
                  <af:outputFormatted value="Are you sure you want to delete this record?"
                                      id="outputFormatted15"
                                      inlineStyle="font-weight:bold;"/>
                </af:dialog>
              </af:popup>
            </af:panelCollection>
          </af:showDetailItem>
          <af:showDetailItem text="Special Instructions" id="sdi4"
                             disclosureListener="#{ViewActions.dimensionsTabDL}">
            <af:inputText value="#{bindings.SpecialInstructions.inputValue}"
                          label="#{bindings.SpecialInstructions.hints.label}"
                          required="#{bindings.SpecialInstructions.hints.mandatory}"
                          columns="#{bindings.SpecialInstructions.hints.displayWidth}"
                          maximumLength="#{bindings.SpecialInstructions.hints.precision}"
                          shortDesc="#{bindings.SpecialInstructions.hints.tooltip}"
                          id="it22" rows="3" contentStyle="width:300px;">
              <f:validator binding="#{bindings.SpecialInstructions.validator}"/>
            </af:inputText>
          </af:showDetailItem>
          <af:showDetailItem text="Dimensions" id="sdi5"
                             binding="#{ViewActions.dimensionsTab}"
                             disclosureListener="#{ViewActions.dimensionsTabDL}"
                             rendered="false">
            <af:panelGroupLayout id="pgl3" layout="horizontal">
              <af:inputText label="#{bindings.ArticleName.hints.label}"
                            id="it45" value="#{bindings.ArticleName.inputValue}"
                            required="#{bindings.ArticleName.hints.mandatory}"
                            columns="#{bindings.ArticleName.hints.displayWidth}"
                            maximumLength="#{bindings.ArticleName.hints.precision}"
                            disabled="true" contentStyle="width:100px;">
                <f:validator binding="#{bindings.ArticleName.validator}"/>
              </af:inputText>
              <af:panelGroupLayout id="pgl4" layout="horizontal">
                <af:selectOneChoice label="#{bindings.BomGroup.label}" id="soc1"
                                    value="#{bindings.BomGroup.inputValue}"
                                    shortDesc="#{bindings.BomGroup.hints.tooltip}"
                                    required="#{bindings.BomGroup.hints.mandatory}"
                                    binding="#{ViewActions.madeupArticleBomGroup}">
                  <f:selectItems value="#{bindings.BomGroup.items}" id="si1"/>
                </af:selectOneChoice>
                <af:commandButton id="commandButton3"
                                  icon="/Images/add-icon 12x12.png"
                                  actionListener="#{ViewActions.addMadeupArticleBomGroupVset}"
                                  immediate="true"/>
              </af:panelGroupLayout>
            </af:panelGroupLayout>
            <af:panelTabbed id="pt2" dimensionsFrom="disclosedChild">
              <af:showDetailItem text="Dimensions" id="sdi6">
                <af:panelCollection id="pc2" styleClass="AFStretchWidth">
                  <f:facet name="menus"/>
                  <f:facet name="toolbar">
                    <af:toolbar id="t11">
                      <af:commandToolbarButton actionListener="#{bindings.CreateInsertDimensions.execute}"
                                               disabled="#{!bindings.CreateInsertDimensions.enabled}"
                                               id="ctb12"
                                               icon="/Images/add-icon 12x12.png"/>
                      <af:commandToolbarButton id="ctb19"
                                               icon="/Images/del-icon 12x12.png"
                                               disabled="#{bindings.EbsStatusDimensions.inputValue == '1' || bindings.XxpmMadeupDimensionsViewChildIterator.estimatedRowCount < 1 ? true : false}">
                        <af:showPopupBehavior popupId="delMadeupDimensionPopup"
                                              triggerType="action"/>
                      </af:commandToolbarButton>
                    </af:toolbar>
                  </f:facet>
                  <f:facet name="statusbar"/>
                  <af:table value="#{bindings.XxpmMadeupDimensionsViewChild.collectionModel}"
                            var="row"
                            rows="#{bindings.XxpmMadeupDimensionsViewChild.rangeSize}"
                            emptyText="#{bindings.XxpmMadeupDimensionsViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                            fetchSize="#{bindings.XxpmMadeupDimensionsViewChild.rangeSize}"
                            rowBandingInterval="0"
                            filterModel="#{bindings.XxpmMadeupDimensionsViewChildQuery.queryDescriptor}"
                            queryListener="#{bindings.XxpmMadeupDimensionsViewChildQuery.processQuery}"
                            filterVisible="true" varStatus="vs"
                            selectedRowKeys="#{bindings.XxpmMadeupDimensionsViewChild.collectionModel.selectedRow}"
                            selectionListener="#{bindings.XxpmMadeupDimensionsViewChild.collectionModel.makeCurrent}"
                            rowSelection="single" id="t2"
                            styleClass="AFStretchWidth"
                            contentDelivery="immediate"
                            autoHeightRows="#{bindings.XxpmMadeupDimensionsViewChild.estimatedRowCount}"
                            partialTriggers="::ctb12">
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionId.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionId.label}"
                               id="c40" align="center" rendered="false">
                      <af:outputFormatted value="#{row.bindings.DimensionId.inputValue}"
                                          id="of4"/>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.ArticleId.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.XxpmMadeupDimensionsViewChild.hints.ArticleId.label}"
                               id="c39" align="center" rendered="false">
                      <af:outputFormatted value="#{row.bindings.ArticleId.inputValue}"
                                          id="of5">
                        <af:convertNumber groupingUsed="false"
                                          pattern="#{bindings.XxpmMadeupDimensionsViewChild.hints.ArticleId.format}"/>
                      </af:outputFormatted>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.Parameter.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.XxpmMadeupDimensionsViewChild.hints.Parameter.label}"
                               id="c33" align="center">
                      <af:selectOneChoice value="#{row.bindings.Parameter.inputValue}"
                                          label="#{row.bindings.Parameter.label}"
                                          required="#{bindings.XxpmMadeupDimensionsViewChild.hints.Parameter.mandatory}"
                                          shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.Parameter.tooltip}"
                                          id="soc3" autoSubmit="true"
                                          contentStyle="min-width:100%;"
                                          disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                          partialTriggers=":::ctb6">
                        <f:selectItems value="#{row.bindings.Parameter.items}"
                                       id="si2"/>
                      </af:selectOneChoice>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.Uom.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.XxpmMadeupDimensionsViewChild.hints.Uom.label}"
                               id="c53" align="center">
                      <af:selectOneChoice value="#{row.bindings.Uom.inputValue}"
                                          label="#{row.bindings.Uom.label}"
                                          required="#{bindings.XxpmMadeupDimensionsViewChild.hints.Uom.mandatory}"
                                          shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.Uom.tooltip}"
                                          id="soc2" autoSubmit="true"
                                          contentStyle="min-width:100%;"
                                          disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                          partialTriggers=":::ctb6">
                        <f:selectItems value="#{row.bindings.Uom.items}"
                                       id="si3"/>
                      </af:selectOneChoice>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize1.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize1Title}"
                               id="c29" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 1 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize1.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize1.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize1.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize1.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize1.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize1.tooltip}"
                                    id="it55" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize1.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize2.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize2Title}"
                               id="c34" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 2 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize2.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize2.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize2.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize2.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize2.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize2.tooltip}"
                                    id="it48" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize2.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize3.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize3Title}"
                               id="c52" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 3 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize3.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize3.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize3.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize3.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize3.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize3.tooltip}"
                                    id="it63" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize3.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize4.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize4Title}"
                               id="c45" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 4 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize4.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize4.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize4.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize4.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize4.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize4.tooltip}"
                                    id="it69" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize4.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize5.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize5Title}"
                               id="c31" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 5 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize5.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize5.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize5.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize5.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize5.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize5.tooltip}"
                                    id="it73" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize5.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize6.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize6Title}"
                               id="c14" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 6 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize6.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize6.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize6.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize6.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize6.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize6.tooltip}"
                                    id="it66" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize6.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize7.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize7Title}"
                               id="c25" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 7 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize7.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize7.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize7.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize7.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize7.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize7.tooltip}"
                                    id="it58" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize7.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize8.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize8Title}"
                               id="c41" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 8 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize8.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize8.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize8.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize8.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize8.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize8.tooltip}"
                                    id="it68" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize8.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize9.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize9Title}"
                               id="c26" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 9 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize9.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize9.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize9.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize9.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize9.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize9.tooltip}"
                                    id="it62" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize9.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize10.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize10Title}"
                               id="c35" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 10 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize10.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize10.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize10.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize10.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize10.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize10.tooltip}"
                                    id="it52" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize10.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize11.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize11Title}"
                               id="c50" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 11 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize11.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize11.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize11.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize11.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize11.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize11.tooltip}"
                                    id="it74" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize11.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize12.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize12Title}"
                               id="c18" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 12 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize12.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize12.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize12.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize12.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize12.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize12.tooltip}"
                                    id="it49" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize12.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize13.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize13Title}"
                               id="c43" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 13 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize13.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize13.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize13.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize13.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize13.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize13.tooltip}"
                                    id="it67" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize13.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize14.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize14Title}"
                               id="c44" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 14 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize14.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize14.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize14.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize14.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize14.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize14.tooltip}"
                                    id="it61" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize14.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize15.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize15Title}"
                               id="c38" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 15 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize15.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize15.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize15.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize15.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize15.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize15.tooltip}"
                                    id="it57" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize15.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize16.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize16Title}"
                               id="c28" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 16 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize16.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize16.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize16.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize16.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize16.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize16.tooltip}"
                                    id="it70" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize16.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize17.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize17Title}"
                               id="c42" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 17 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize17.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize17.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize17.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize17.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize17.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize17.tooltip}"
                                    id="it53" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize17.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize18.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize18Title}"
                               id="c17" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 18 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize18.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize18.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize18.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize18.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize18.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize18.tooltip}"
                                    id="it46" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize18.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize19.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize19Title}"
                               id="c47" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 19 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize19.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize19.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize19.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize19.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize19.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize19.tooltip}"
                                    id="it65" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize19.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize20.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize20Title}"
                               id="c46" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 20 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize20.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize20.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize20.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize20.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize20.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize20.tooltip}"
                                    id="it71" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize20.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize21.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize21Title}"
                               id="c15" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 21 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize21.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize21.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize21.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize21.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize21.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize21.tooltip}"
                                    id="it56" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize21.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize22.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize22Title}"
                               id="c30" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 22 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize22.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize22.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize22.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize22.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize22.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize22.tooltip}"
                                    id="it51" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize22.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize23.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize23Title}"
                               id="c27" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 23 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize23.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize23.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize23.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize23.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize23.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize23.tooltip}"
                                    id="it64" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize23.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize24.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize24Title}"
                               id="c51" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 24 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize24.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize24.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize24.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize24.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize24.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize24.tooltip}"
                                    id="it59" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize24.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize25.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize25Title}"
                               id="c48" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 25 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize25.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize25.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize25.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize25.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize25.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize25.tooltip}"
                                    id="it76" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize25.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize26.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize26Title}"
                               id="c36" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 26 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize26.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize26.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize26.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize26.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize26.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize26.tooltip}"
                                    id="it60" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize26.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize27.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize27Title}"
                               id="c32" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 27 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize27.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize27.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize27.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize27.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize27.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize27.tooltip}"
                                    id="it77" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize27.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize28.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize28Title}"
                               id="c37" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 28 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize28.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize28.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize28.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize28.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize28.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize28.tooltip}"
                                    id="it72" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize28.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize29.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize29Title}"
                               id="c16" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 29 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize29.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize29.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize29.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize29.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize29.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize29.tooltip}"
                                    id="it54" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize29.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize30.name}"
                               filterable="true" sortable="true"
                               headerText="#{ViewActions.dimSize30Title}"
                               id="c49" align="center"
                               rendered="#{bindings.XxpmMadeupSizesViewChildIterator.estimatedRowCount >= 30 ? true : false}"
                               partialTriggers=":::panelCollection1:t16 :::panelCollection1:t16:sizeNameId">
                      <af:inputText value="#{row.bindings.DimensionSize30.inputValue}"
                                    label="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize30.label}"
                                    required="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize30.mandatory}"
                                    columns="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize30.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize30.precision}"
                                    shortDesc="#{bindings.XxpmMadeupDimensionsViewChild.hints.DimensionSize30.tooltip}"
                                    id="it75" autoSubmit="true"
                                    contentStyle="min-width:95%;"
                                    styleClass="AFFieldNumberMarker"
                                    partialTriggers=":::ctb6">
                        <f:validator binding="#{row.bindings.DimensionSize30.validator}"/>
                      </af:inputText>
                    </af:column>
                  </af:table>
                  <af:popup id="delMadeupDimensionPopup">
                    <af:dialog id="dialog6" inlineStyle="width:280px;"
                               type="yesNo"
                               dialogListener="#{ViewActions.deleteMadeupDimensionsDialog}">
                      <af:outputFormatted value="Are you sure you want to delete this record?"
                                          id="outputFormatted16"
                                          inlineStyle="font-weight:bold;"/>
                    </af:dialog>
                  </af:popup>
                </af:panelCollection>
                <af:spacer width="10" height="20" id="spacer3"/>
                <af:panelCollection id="pc1" styleClass="AFStretchWidth">
                  <f:facet name="menus"/>
                  <f:facet name="toolbar">
                    <af:toolbar id="t12">
                      <af:commandToolbarButton id="ctb13"
                                               actionListener="#{ViewActions.genMadeupCombBtn}"
                                               icon="/Images/gen_comb2_12x12.png"/>
                      <af:commandToolbarButton id="cb1"
                                               icon="/Images/del-icon 12x12.png"
                                               partialTriggers="ctb13"
                                               disabled="#{bindings.XxpmMadeupCombinationsViewChildIterator.estimatedRowCount < 1 ? true : false}">
                        <af:showPopupBehavior popupId="::delMadeupComb"
                                              triggerType="action"/>
                      </af:commandToolbarButton>
                      <af:commandToolbarButton id="ctb21"
                                               icon="/Images/excel 12x12.png">
                        <af:setPropertyListener from="true"
                                                to="#{pageFlowScope.hideColumn}"
                                                type="action"/>
                        <af:exportCollectionActionListener type="excelHTML"
                                                           exportedId="t9"
                                                           filename="#{ViewActions.combExpToExcelFileName}.xls"/>
                        <af:setPropertyListener from="false"
                                                to="#{pageFlowScope.hideColumn}"
                                                type="action"/>
                      </af:commandToolbarButton>
                    </af:toolbar>
                  </f:facet>
                  <f:facet name="statusbar"/>
                  <af:table value="#{bindings.XxpmMadeupCombinationsViewChild.collectionModel}"
                            var="row"
                            rows="#{bindings.XxpmMadeupCombinationsViewChild.rangeSize}"
                            emptyText="#{bindings.XxpmMadeupCombinationsViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                            fetchSize="#{bindings.XxpmMadeupCombinationsViewChild.rangeSize}"
                            rowBandingInterval="0"
                            filterModel="#{bindings.XxpmMadeupCombinationsViewChildQuery.queryDescriptor}"
                            queryListener="#{bindings.XxpmMadeupCombinationsViewChildQuery.processQuery}"
                            filterVisible="true" varStatus="vs"
                            selectedRowKeys="#{bindings.XxpmMadeupCombinationsViewChild.collectionModel.selectedRow}"
                            selectionListener="#{bindings.XxpmMadeupCombinationsViewChild.collectionModel.makeCurrent}"
                            id="t9"
                            autoHeightRows="#{bindings.XxpmMadeupCombinationsViewChild.estimatedRowCount}"
                            columnStretching="column:c79"
                            styleClass="AFStretchWidth"
                            binding="#{ViewActions.madeupCombTable}"
                            contentDelivery="immediate">
                    <af:column sortProperty="#{bindings.XxpmMadeupCombinationsViewChild.hints.CombId.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.XxpmMadeupCombinationsViewChild.hints.CombId.label}"
                               id="c82" align="center" rendered="false">
                      <af:inputText value="#{row.bindings.CombId.inputValue}"
                                    label="#{bindings.XxpmMadeupCombinationsViewChild.hints.CombId.label}"
                                    required="#{bindings.XxpmMadeupCombinationsViewChild.hints.CombId.mandatory}"
                                    columns="#{bindings.XxpmMadeupCombinationsViewChild.hints.CombId.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupCombinationsViewChild.hints.CombId.precision}"
                                    shortDesc="#{bindings.XxpmMadeupCombinationsViewChild.hints.CombId.tooltip}"
                                    id="it8">
                        <f:validator binding="#{row.bindings.CombId.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupCombinationsViewChild.hints.ArticleId.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.XxpmMadeupCombinationsViewChild.hints.ArticleId.label}"
                               id="c89" align="center" rendered="false">
                      <af:inputText value="#{row.bindings.ArticleId.inputValue}"
                                    label="#{bindings.XxpmMadeupCombinationsViewChild.hints.ArticleId.label}"
                                    required="#{bindings.XxpmMadeupCombinationsViewChild.hints.ArticleId.mandatory}"
                                    columns="#{bindings.XxpmMadeupCombinationsViewChild.hints.ArticleId.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupCombinationsViewChild.hints.ArticleId.precision}"
                                    shortDesc="#{bindings.XxpmMadeupCombinationsViewChild.hints.ArticleId.tooltip}"
                                    id="it12">
                        <f:validator binding="#{row.bindings.ArticleId.validator}"/>
                        <af:convertNumber groupingUsed="false"
                                          pattern="#{bindings.XxpmMadeupCombinationsViewChild.hints.ArticleId.format}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment1.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment1.label}"
                               id="c84" align="center" rendered="false">
                      <af:inputText value="#{row.bindings.Segment1.inputValue}"
                                    label="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment1.label}"
                                    required="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment1.mandatory}"
                                    columns="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment1.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment1.precision}"
                                    shortDesc="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment1.tooltip}"
                                    id="it11">
                        <f:validator binding="#{row.bindings.Segment1.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment2.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment2.label}"
                               id="c88" align="center" rendered="false">
                      <af:inputText value="#{row.bindings.Segment2.inputValue}"
                                    label="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment2.label}"
                                    required="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment2.mandatory}"
                                    columns="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment2.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment2.precision}"
                                    shortDesc="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment2.tooltip}"
                                    id="it10">
                        <f:validator binding="#{row.bindings.Segment2.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment3.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment3.label}"
                               id="c83" align="center" rendered="false">
                      <af:inputText value="#{row.bindings.Segment3.inputValue}"
                                    label="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment3.label}"
                                    required="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment3.mandatory}"
                                    columns="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment3.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment3.precision}"
                                    shortDesc="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment3.tooltip}"
                                    id="it21">
                        <f:validator binding="#{row.bindings.Segment3.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment4.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment4.label}"
                               id="c87" align="center" rendered="false">
                      <af:inputText value="#{row.bindings.Segment4.inputValue}"
                                    label="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment4.label}"
                                    required="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment4.mandatory}"
                                    columns="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment4.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment4.precision}"
                                    shortDesc="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment4.tooltip}"
                                    id="it20">
                        <f:validator binding="#{row.bindings.Segment4.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment5.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment5.label}"
                               id="c90" align="center" rendered="false">
                      <af:inputText value="#{row.bindings.Segment5.inputValue}"
                                    label="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment5.label}"
                                    required="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment5.mandatory}"
                                    columns="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment5.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment5.precision}"
                                    shortDesc="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment5.tooltip}"
                                    id="it14">
                        <f:validator binding="#{row.bindings.Segment5.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment6.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment6.label}"
                               id="c80" align="center" rendered="false">
                      <af:inputText value="#{row.bindings.Segment6.inputValue}"
                                    label="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment6.label}"
                                    required="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment6.mandatory}"
                                    columns="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment6.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment6.precision}"
                                    shortDesc="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment6.tooltip}"
                                    id="it13">
                        <f:validator binding="#{row.bindings.Segment6.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment7.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment7.label}"
                               id="c86" align="center" rendered="false">
                      <af:inputText value="#{row.bindings.Segment7.inputValue}"
                                    label="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment7.label}"
                                    required="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment7.mandatory}"
                                    columns="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment7.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment7.precision}"
                                    shortDesc="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment7.tooltip}"
                                    id="it16">
                        <f:validator binding="#{row.bindings.Segment7.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column id="c96" headerText="Sr#" align="center"
                               width="30"
                               visible="#{pageFlowScope.hideColumn ne true}">
                      <af:outputFormatted value="#{vs.index+1}" id="of15"/>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupCombinationsViewChild.hints.Sku.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.XxpmMadeupCombinationsViewChild.hints.Sku.label}"
                               id="c81" align="center">
                      <af:inputText value="#{row.bindings.Sku.inputValue}"
                                    label="#{bindings.XxpmMadeupCombinationsViewChild.hints.Sku.label}"
                                    required="#{bindings.XxpmMadeupCombinationsViewChild.hints.Sku.mandatory}"
                                    columns="#{bindings.XxpmMadeupCombinationsViewChild.hints.Sku.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupCombinationsViewChild.hints.Sku.precision}"
                                    shortDesc="#{bindings.XxpmMadeupCombinationsViewChild.hints.Sku.tooltip}"
                                    id="it9" autoSubmit="true"
                                    styleClass="AFFieldNumberMarker"
                                    contentStyle="min-width:95%;">
                        <f:validator binding="#{row.bindings.Sku.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column headerText="#{bindings.XxpmMadeupCombinationsViewChild.hints.CustomerDesc.label}"
                               id="c85" align="center" width="200">
                      <af:inputText value="#{row.bindings.CustomerDesc.inputValue}"
                                    label="#{bindings.XxpmMadeupCombinationsViewChild.hints.CustomerDesc.label}"
                                    required="#{bindings.XxpmMadeupCombinationsViewChild.hints.CustomerDesc.mandatory}"
                                    columns="#{bindings.XxpmMadeupCombinationsViewChild.hints.CustomerDesc.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupCombinationsViewChild.hints.CustomerDesc.precision}"
                                    shortDesc="#{bindings.XxpmMadeupCombinationsViewChild.hints.CustomerDesc.tooltip}"
                                    id="it7" autoSubmit="true"
                                    styleClass="AFFieldTextMarker"
                                    contentStyle="min-width:100%;">
                        <f:validator binding="#{row.bindings.CustomerDesc.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column headerText="#{bindings.XxpmMadeupCombinationsViewChild.hints.ConcateSegments.label}"
                               id="c115" align="center" width="250">
                      <af:inputText value="#{row.bindings.ConcateSegments.inputValue}"
                                    label="#{bindings.XxpmMadeupCombinationsViewChild.hints.ConcateSegments.label}"
                                    required="#{bindings.XxpmMadeupCombinationsViewChild.hints.ConcateSegments.mandatory}"
                                    columns="#{bindings.XxpmMadeupCombinationsViewChild.hints.ConcateSegments.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupCombinationsViewChild.hints.ConcateSegments.precision}"
                                    shortDesc="#{bindings.XxpmMadeupCombinationsViewChild.hints.ConcateSegments.tooltip}"
                                    id="it85"
                                    rendered="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                    disabled="true">
                        <f:validator binding="#{row.bindings.ConcateSegments.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column headerText="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment2.label}"
                               id="c97" align="center" rendered="false">
                      <af:inputText value="#{row.bindings.Segment2.inputValue}"
                                    label="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment2.label}"
                                    required="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment2.mandatory}"
                                    columns="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment2.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment2.precision}"
                                    shortDesc="#{bindings.XxpmMadeupCombinationsViewChild.hints.Segment2.tooltip}"
                                    id="it27"
                                    rendered="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"
                                    disabled="true" autoSubmit="true"
                                    inlineStyle="text-align:center;">
                        <f:validator binding="#{row.bindings.Segment2.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.XxpmMadeupCombinationsViewChild.hints.Description.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.XxpmMadeupCombinationsViewChild.hints.Description.label}"
                               id="c79" align="center" width="100">
                      <af:inputText value="#{row.bindings.Description.inputValue}"
                                    label="#{bindings.XxpmMadeupCombinationsViewChild.hints.Description.label}"
                                    required="#{bindings.XxpmMadeupCombinationsViewChild.hints.Description.mandatory}"
                                    columns="#{bindings.XxpmMadeupCombinationsViewChild.hints.Description.displayWidth}"
                                    maximumLength="#{bindings.XxpmMadeupCombinationsViewChild.hints.Description.precision}"
                                    shortDesc="#{bindings.XxpmMadeupCombinationsViewChild.hints.Description.tooltip}"
                                    id="it6" autoSubmit="true"
                                    styleClass="AFFieldTextMarker"
                                    disabled="true"
                                    contentStyle="min-width:100%;">
                        <f:validator binding="#{row.bindings.Description.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column headerText="#{bindings.XxpmMadeupCombinationsViewChild.hints.Deleted.label}"
                               id="c116" align="center" width="40"
                               visible="#{pageFlowScope.hideColumn ne true}">
                      <af:selectBooleanCheckbox value="#{row.bindings.Deleted.inputValue}"
                                                label="#{row.bindings.Deleted.label}"
                                                shortDesc="#{bindings.XxpmMadeupCombinationsViewChild.hints.Deleted.tooltip}"
                                                id="sbc6" autoSubmit="true"
                                                disabled="#{row.bindings.EbsStatus.inputValue == '1' ? true : false}"/>
                    </af:column>
                  </af:table>
                </af:panelCollection>
                <af:popup id="delMadeupComb">
                  <af:dialog id="delYBDialog" inlineStyle="width:280px;"
                             type="yesNo"
                             dialogListener="#{ViewActions.deleteMadeupCombDialog}">
                    <af:outputFormatted value="Are you sure you want to delete selected records?"
                                        id="outputFormatted9"
                                        inlineStyle="font-weight:bold;"/>
                  </af:dialog>
                </af:popup>
              </af:showDetailItem>
              <af:showDetailItem text="Instructions" id="sdi7">
                <af:inputText value="#{bindings.Instructions.inputValue}"
                              label="#{bindings.Instructions.hints.label}"
                              required="#{bindings.Instructions.hints.mandatory}"
                              columns="#{bindings.Instructions.hints.displayWidth}"
                              maximumLength="#{bindings.Instructions.hints.precision}"
                              shortDesc="#{bindings.Instructions.hints.tooltip}"
                              id="it23" rows="3" contentStyle="width:300px;"
                              autoSubmit="true">
                  <f:validator binding="#{bindings.Instructions.validator}"/>
                </af:inputText>
              </af:showDetailItem>
            </af:panelTabbed>
          </af:showDetailItem>
        </af:panelTabbed>
        <af:spacer width="10" height="20" id="spacer1"/>
        <af:popup id="AddValPopup">
          <af:dialog id="dialog7" title="Add new value" contentWidth="300"
                     type="okCancel"
                     dialogListener="#{ViewActions.madeupAddVsetVal}">
            <af:inputText label="Value" id="inputText5"
                          value="#{bindings.BindVsetVal.inputValue}"
                          autoSubmit="true"/>
            <af:inputText label="Value Set" id="inputText6"
                          value="#{bindings.BindValueSet.inputValue}"
                          autoSubmit="true" rendered="false"/>
          </af:dialog>
        </af:popup>
      </af:panelFormLayout>
      <af:toolbar id="t4">
        <af:commandToolbarButton text="Add New Program" id="ctb5"
                                 binding="#{ViewActions.programAddButtonProp}"
                                 partialTriggers="ilov1 ctb5 ctb6 ctb7 ctb22 ctb23"
                                 actionListener="#{bindings.CreateInsertMadeupProgram.execute}"/>
        <af:spacer width="10" height="10" id="s6"/>
        <af:commandToolbarButton text="Save" id="ctb6"
                                 actionListener="#{ViewActions.commitMadeup}"/>
        <af:spacer width="10" height="10" id="s5"/>
        <af:commandToolbarButton text="Clear" id="ctb7"
                                 actionListener="#{ViewActions.rollbackMadeup}"
                                 immediate="true">
          <af:resetActionListener/>
        </af:commandToolbarButton>
        <af:spacer width="10" height="10" id="spacer4"/>
        <af:commandToolbarButton text="Generate in EBS" id="ctb22"
                                 actionListener="#{ViewActions.genProgItemsInEBS}"/>
      </af:toolbar>
    </af:form>
  </af:document>
</f:view>