<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<f:view>
  <af:document id="d1" title="Weaving Item Creation Form">
    <af:messages id="m1"/>
    <af:form id="f1" usesUpload="true">
      <af:panelStretchLayout id="psl1" startWidth="0px" endWidth="0px"
                             topHeight="0px" bottomHeight="0px"
                             dimensionsFrom="children">
        <f:facet name="center">
          <af:image source="/Images/Banners/Weaving.png" id="i1"/>
        </f:facet>
      </af:panelStretchLayout>
      <af:panelStretchLayout id="panelStretchLayout6" startWidth="0px"
                             endWidth="0px" topHeight="0px" bottomHeight="0px"
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
      <af:panelFormLayout id="pfl1"
                          binding="#{ViewActions.wvMainPanelFormLayout}">
        <af:panelStretchLayout id="panelStretchLayout1" startWidth="0px"
                               endWidth="0px" topHeight="0px"
                               bottomHeight="0px"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Search Item" id="outputFormatted2"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGroupLayout id="pgl2">
          <af:outputFormatted value="Item Description" id="of3"/>
          <af:spacer width="10" height="10" id="spacer5"/>
          <af:inputListOfValues
                                popupTitle="Search and Result Dialog"
                                id="ilov1" simple="true" autoSubmit="true"
                                value="#{bindings.BindDescWv.inputValue}"
                                model="#{bindings.WvDescriptionLov.listOfValuesModel}"
                                disabled="#{bindings.WeavingItemDescViewIterator.estimatedRowCount < 1 ? true : false}"
                                partialTriggers="ctb6 ctb7"
                                binding="#{ViewActions.searchLovWv}"
                                valueChangeListener="#{ViewActions.searchItemWvVCL}"/>
          <af:spacer width="10" height="10" id="spacer6"/>
          <af:commandButton actionListener="#{ViewActions.searchItemWvButton}"
                            text="Go"
                            disabled="#{!bindings.ExecuteWithParams.enabled}"
                            id="cb1"/>
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
                                   partialSubmit="true" id="ctb2"
                                   accessKey="P"/>
          <af:spacer width="10" height="10" id="s3"/>
          <af:commandToolbarButton actionListener="#{bindings.Next.execute}"
                                   text="Next"
                                   disabled="#{!bindings.Next.enabled}"
                                   partialSubmit="true" id="ctb3"
                                   accessKey="N"/>
          <af:spacer width="10" height="10" id="s4"/>
          <af:commandToolbarButton actionListener="#{bindings.Last.execute}"
                                   text="Last"
                                   disabled="#{!bindings.Last.enabled}"
                                   partialSubmit="true" id="ctb4"/>
          <af:spacer width="10" height="10" id="spacer7"/>
          <af:commandToolbarButton text="Attachments" partialSubmit="true"
                                   id="commandToolbarButton4" immediate="true">
            <af:showPopupBehavior popupId="attachmentPopup"
                                  triggerType="action"/>
          </af:commandToolbarButton>
          <af:popup id="attachmentPopup" contentDelivery="lazyUncached">
            <af:dialog id="attachmentDialog" type="ok" title="File Attachment"
                       contentWidth="300" contentHeight="200">
              <af:inputFile id="if1" autoSubmit="true" label="Upload File"
                            valueChangeListener="#{ViewActions.uploadFileWvVCL}"/>
              <af:table value="#{bindings.XxpmAttachmentsViewChildWv.collectionModel}"
                        var="row"
                        rows="#{bindings.XxpmAttachmentsViewChildWv.rangeSize}"
                        emptyText="#{bindings.XxpmAttachmentsViewChildWv.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.XxpmAttachmentsViewChildWv.rangeSize}"
                        rowBandingInterval="0"
                        selectedRowKeys="#{bindings.XxpmAttachmentsViewChildWv.collectionModel.selectedRow}"
                        selectionListener="#{bindings.XxpmAttachmentsViewChildWv.collectionModel.makeCurrent}"
                        rowSelection="single" id="table1"
                        styleClass="AFStretchWidth" partialTriggers="if1">
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildWv.hints.AtchId.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildWv.hints.AtchId.label}"
                           id="c34" rendered="false">
                  <af:outputText value="#{row.AtchId}" id="ot2"/>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildWv.hints.ImId.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildWv.hints.ImId.label}"
                           id="c37" rendered="false">
                  <af:outputText value="#{row.ImId}" id="ot3">
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmAttachmentsViewChildWv.hints.ImId.format}"/>
                  </af:outputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildWv.hints.FileCode.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildWv.hints.FileCode.label}"
                           id="c39" rendered="false">
                  <af:inputText value="#{row.bindings.FileCode.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChildWv.hints.FileCode.label}"
                                required="#{bindings.XxpmAttachmentsViewChildWv.hints.FileCode.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChildWv.hints.FileCode.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChildWv.hints.FileCode.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChildWv.hints.FileCode.tooltip}"
                                id="it18">
                    <f:validator binding="#{row.bindings.FileCode.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmAttachmentsViewChildWv.hints.FileCode.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildWv.hints.FileName.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildWv.hints.FileName.label}"
                           id="c38" width="250">
                  <af:inputText value="#{row.bindings.FileName.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChildWv.hints.FileName.label}"
                                required="#{bindings.XxpmAttachmentsViewChildWv.hints.FileName.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChildWv.hints.FileName.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChildWv.hints.FileName.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChildWv.hints.FileName.tooltip}"
                                id="it37" autoSubmit="true">
                    <f:validator binding="#{row.bindings.FileName.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildWv.hints.Path.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildWv.hints.Path.label}"
                           id="c36" rendered="false">
                  <af:inputText value="#{row.bindings.Path.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChildWv.hints.Path.label}"
                                required="#{bindings.XxpmAttachmentsViewChildWv.hints.Path.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChildWv.hints.Path.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChildWv.hints.Path.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChildWv.hints.Path.tooltip}"
                                id="it35">
                    <f:validator binding="#{row.bindings.Path.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildWv.hints.FileExt.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildWv.hints.FileExt.label}"
                           id="c40" rendered="false">
                  <af:inputText value="#{row.bindings.FileExt.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChildWv.hints.FileExt.label}"
                                required="#{bindings.XxpmAttachmentsViewChildWv.hints.FileExt.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChildWv.hints.FileExt.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChildWv.hints.FileExt.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChildWv.hints.FileExt.tooltip}"
                                id="it38">
                    <f:validator binding="#{row.bindings.FileExt.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column id="column1" headerText="Download" rendered="true"
                           width="60">
                  <af:commandLink text="Download" id="cl2">
                    <af:fileDownloadActionListener filename="#{row.bindings.FileName.inputValue}"
                                                   method="#{ViewActions.downloadFileWvListener}"/>
                  </af:commandLink>
                </af:column>
              </af:table>
            </af:dialog>
          </af:popup>
          <af:spacer width="10" height="10" id="spacer4"/>
          <af:commandToolbarButton text="Copy Item" partialSubmit="true"
                                   id="commandToolbarButton5"
                                   actionListener="#{ViewActions.copyWvItem}"/>
          <af:spacer width="10" height="10" id="spacer8"/>
          <af:commandToolbarButton text="Update Status" partialSubmit="true"
                                   id="commandToolbarButton6"
                                   actionListener="#{ViewActions.copyWvItemUpdateStatus}"/>
        </af:toolbar>
        <af:spacer width="10" height="20" id="s1"/>
        <af:panelStretchLayout id="panelStretchLayout2" startWidth="0px"
                               endWidth="0px" topHeight="0px"
                               bottomHeight="0px"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Item Information" id="outputFormatted3"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="pgl1">
          <af:gridRow marginTop="5px" height="auto" id="gr2">
            <af:gridCell marginStart="5px" width="dontCare" id="gc8">
              <af:outputFormatted value="Quality Code" id="of1"
                                  inlineStyle="font-weight:bold;"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="80px" id="gc5">
              <af:inputText value="#{bindings.Segment2.inputValue}"
                            label="#{bindings.Segment2.hints.label}"
                            required="#{bindings.Segment2.hints.mandatory}"
                            columns="#{bindings.Segment2.hints.displayWidth}"
                            maximumLength="#{bindings.Segment2.hints.precision}"
                            shortDesc="#{bindings.Segment2.hints.tooltip}"
                            id="it44" autoSubmit="true" simple="true"
                            contentStyle="width:70px; color:Black;"
                            disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                            validator="#{ViewActions.wvSegment2Validator}"
                            partialTriggers="ctb6">
                <f:validator binding="#{bindings.Segment2.validator}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc4">
              <af:outputFormatted value="Description " id="outputFormatted1"
                                  inlineStyle="font-weight:bold;"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc7">
              <af:inputText value="#{bindings.Description.inputValue}"
                            label="#{bindings.Description.hints.label}"
                            required="#{bindings.Description.hints.mandatory}"
                            columns="#{bindings.Description.hints.displayWidth}"
                            maximumLength="#{bindings.Description.hints.precision}"
                            shortDesc="#{bindings.Description.hints.tooltip}"
                            id="it34" autoSubmit="true" simple="true"
                            contentStyle="width:1120px; color:Black;"
                            disabled="true">
                <f:validator binding="#{bindings.Description.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow5">
            <af:gridCell id="gc9">
              <af:outputFormatted value="Item Status*" id="outputFormatted23"
                                  inlineStyle="font-weight:bold;"/>
            </af:gridCell>
            <af:gridCell id="gc10" columnSpan="2"
                         binding="#{ViewActions.wvSegment3Cell}">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice1" simple="true"
                                  contentStyle="width:150px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  partialTriggers="ctb8 ctb6 ctb7">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems1"/>
              </af:selectOneChoice>
              <af:outputFormatted value="#{bindings.ImId.inputValue}" id="outputFormatted24"
                                  inlineStyle="font-weight:bold;"
                                  rendered="false"/>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:spacer width="10" height="20" id="spacer2"/>
        <af:panelTabbed id="pt1" dimensionsFrom="disclosedChild">
          <af:showDetailItem text="Warp" id="sdi1" stretchChildren="first">
            <af:panelCollection id="pc1" styleClass="AFStretchWidth">
              <af:table value="#{bindings.XxpmWarpViewChild.collectionModel}"
                        var="row" rows="#{bindings.XxpmWarpViewChild.rangeSize}"
                        emptyText="#{bindings.XxpmWarpViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.XxpmWarpViewChild.rangeSize}"
                        rowBandingInterval="0"
                        selectedRowKeys="#{bindings.XxpmWarpViewChild.collectionModel.selectedRow}"
                        selectionListener="#{bindings.XxpmWarpViewChild.collectionModel.makeCurrent}"
                        rowSelection="single" id="t1" displayRow="selected"
                        contentDelivery="immediate"
                        columnStretching="column:c12"
                        styleClass="AFStretchWidth"
                        autoHeightRows="#{bindings.XxpmWarpViewChild.estimatedRowCount}">
                <af:column headerText="#{bindings.XxpmWarpViewChild.hints.ImId.label}"
                           id="c4" rendered="false" align="center">
                  <af:outputText value="#{row.ImId}" id="ot1">
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmWarpViewChild.hints.ImId.format}"/>
                  </af:outputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWarpViewChild.hints.ImIdYT.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWarpViewChild.hints.ImIdYT.label}"
                           id="c9" align="center" rendered="false">
                  <af:inputText value="#{row.bindings.ImIdYT.inputValue}"
                                label="#{bindings.XxpmWarpViewChild.hints.ImIdYT.label}"
                                required="#{bindings.XxpmWarpViewChild.hints.ImIdYT.mandatory}"
                                columns="#{bindings.XxpmWarpViewChild.hints.ImIdYT.displayWidth}"
                                maximumLength="#{bindings.XxpmWarpViewChild.hints.ImIdYT.precision}"
                                shortDesc="#{bindings.XxpmWarpViewChild.hints.ImIdYT.tooltip}"
                                id="it10">
                    <f:validator binding="#{row.bindings.ImIdYT.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmWarpViewChild.hints.ImIdYT.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWarpViewChild.hints.WarpId.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWarpViewChild.hints.WarpId.label}"
                           id="c5" align="center" rendered="false">
                  <af:outputFormatted value="#{row.bindings.WarpId.inputValue}"
                                      id="of5"/>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWarpViewChild.hints.ImIdYB.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWarpViewChild.hints.ImIdYB.label}"
                           id="c10" align="center" rendered="false">
                  <af:inputText value="#{row.bindings.ImIdYB.inputValue}"
                                label="#{bindings.XxpmWarpViewChild.hints.ImIdYB.label}"
                                required="#{bindings.XxpmWarpViewChild.hints.ImIdYB.mandatory}"
                                columns="#{bindings.XxpmWarpViewChild.hints.ImIdYB.displayWidth}"
                                maximumLength="#{bindings.XxpmWarpViewChild.hints.ImIdYB.precision}"
                                shortDesc="#{bindings.XxpmWarpViewChild.hints.ImIdYB.tooltip}"
                                id="it12">
                    <f:validator binding="#{row.bindings.ImIdYB.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmWarpViewChild.hints.ImIdYB.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWarpViewChild.hints.BaseImId.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWarpViewChild.hints.BaseImId.label}"
                           id="c6" align="center" rendered="false">
                  <af:inputText value="#{row.bindings.BaseImId.inputValue}"
                                label="#{bindings.XxpmWarpViewChild.hints.BaseImId.label}"
                                required="#{bindings.XxpmWarpViewChild.hints.BaseImId.mandatory}"
                                columns="#{bindings.XxpmWarpViewChild.hints.BaseImId.displayWidth}"
                                maximumLength="#{bindings.XxpmWarpViewChild.hints.BaseImId.precision}"
                                shortDesc="#{bindings.XxpmWarpViewChild.hints.BaseImId.tooltip}"
                                id="it7">
                    <f:validator binding="#{row.bindings.BaseImId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmWarpViewChild.hints.BaseImId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWarpViewChild.hints.Segment2.name}"
                           sortable="true" id="c1" align="center"
                           headerText="#{bindings.XxpmWarpViewChild.hints.Segment2.label}"
                           width="100">
                  <af:inputListOfValues id="segment2Id"
                                        popupTitle="Search and Select: #{bindings.XxpmWarpViewChild.hints.Segment2.label}"
                                        value="#{row.bindings.Segment2.inputValue}"
                                        model="#{row.bindings.Segment2.listOfValuesModel}"
                                        required="#{bindings.XxpmWarpViewChild.hints.Segment2.mandatory}"
                                        columns="#{bindings.XxpmWarpViewChild.hints.Segment2.displayWidth}"
                                        shortDesc="#{bindings.XxpmWarpViewChild.hints.Segment2.tooltip}"
                                        autoSubmit="true"
                                        valueChangeListener="#{ViewActions.warpSegment2VCL}">
                    <f:validator binding="#{row.bindings.Segment2.validator}"/>
                  </af:inputListOfValues>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWarpViewChild.hints.Description.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWarpViewChild.hints.Description.label}"
                           id="c12" align="center" width="350">
                  <af:inputText value="#{row.bindings.Description.inputValue}"
                                label="#{bindings.XxpmWarpViewChild.hints.Description.label}"
                                required="#{bindings.XxpmWarpViewChild.hints.Description.mandatory}"
                                columns="#{bindings.XxpmWarpViewChild.hints.Description.displayWidth}"
                                maximumLength="#{bindings.XxpmWarpViewChild.hints.Description.precision}"
                                shortDesc="#{bindings.XxpmWarpViewChild.hints.Description.tooltip}"
                                id="it8" autoSubmit="true"
                                contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.Description.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWarpViewChild.hints.MeasuringSystem.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWarpViewChild.hints.MeasuringSystem.label}"
                           id="c11" align="center" width="70">
                  <af:inputText value="#{row.bindings.MeasuringSystem.inputValue}"
                                label="#{bindings.XxpmWarpViewChild.hints.MeasuringSystem.label}"
                                required="#{bindings.XxpmWarpViewChild.hints.MeasuringSystem.mandatory}"
                                columns="#{bindings.XxpmWarpViewChild.hints.MeasuringSystem.displayWidth}"
                                maximumLength="#{bindings.XxpmWarpViewChild.hints.MeasuringSystem.precision}"
                                shortDesc="#{bindings.XxpmWarpViewChild.hints.MeasuringSystem.tooltip}"
                                id="it4" autoSubmit="true"
                                contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.MeasuringSystem.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWarpViewChild.hints.YarnCount.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWarpViewChild.hints.YarnCount.label}"
                           id="c8" align="center" width="30">
                  <af:inputText value="#{row.bindings.YarnCount.inputValue}"
                                label="#{bindings.XxpmWarpViewChild.hints.YarnCount.label}"
                                required="#{bindings.XxpmWarpViewChild.hints.YarnCount.mandatory}"
                                columns="#{bindings.XxpmWarpViewChild.hints.YarnCount.displayWidth}"
                                maximumLength="#{bindings.XxpmWarpViewChild.hints.YarnCount.precision}"
                                shortDesc="#{bindings.XxpmWarpViewChild.hints.YarnCount.tooltip}"
                                id="it2" autoSubmit="true"
                                contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.YarnCount.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmWarpViewChild.hints.YarnCount.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWarpViewChild.hints.YarnPlies.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWarpViewChild.hints.YarnPlies.label}"
                           id="c7" align="center" width="30">
                  <af:inputText value="#{row.bindings.YarnPlies.inputValue}"
                                label="#{bindings.XxpmWarpViewChild.hints.YarnPlies.label}"
                                required="#{bindings.XxpmWarpViewChild.hints.YarnPlies.mandatory}"
                                columns="#{bindings.XxpmWarpViewChild.hints.YarnPlies.displayWidth}"
                                maximumLength="#{bindings.XxpmWarpViewChild.hints.YarnPlies.precision}"
                                shortDesc="#{bindings.XxpmWarpViewChild.hints.YarnPlies.tooltip}"
                                id="it3" autoSubmit="true"
                                contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.YarnPlies.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWarpViewChild.hints.YarnType.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWarpViewChild.hints.YarnType.label}"
                           id="c3" align="center" width="50">
                  <af:inputText value="#{row.bindings.YarnType.inputValue}"
                                label="#{bindings.XxpmWarpViewChild.hints.YarnType.label}"
                                required="#{bindings.XxpmWarpViewChild.hints.YarnType.mandatory}"
                                columns="#{bindings.XxpmWarpViewChild.hints.YarnType.displayWidth}"
                                maximumLength="#{bindings.XxpmWarpViewChild.hints.YarnType.precision}"
                                shortDesc="#{bindings.XxpmWarpViewChild.hints.YarnType.tooltip}"
                                id="it1" autoSubmit="true"
                                contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.YarnType.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWarpViewChild.hints.YBResultant.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWarpViewChild.hints.YBResultant.label}"
                           id="c2" align="center" width="220">
                  <af:inputText value="#{row.bindings.YBResultant.inputValue}"
                                label="#{bindings.XxpmWarpViewChild.hints.YBResultant.label}"
                                required="#{bindings.XxpmWarpViewChild.hints.YBResultant.mandatory}"
                                columns="#{bindings.XxpmWarpViewChild.hints.YBResultant.displayWidth}"
                                maximumLength="#{bindings.XxpmWarpViewChild.hints.YBResultant.precision}"
                                shortDesc="#{bindings.XxpmWarpViewChild.hints.YBResultant.tooltip}"
                                id="it5" autoSubmit="true"
                                contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.YBResultant.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWarpViewChild.hints.YTResultant.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWarpViewChild.hints.YTResultant.label}"
                           id="c13" align="center" width="100" rendered="false">
                  <af:inputText value="#{row.bindings.YTResultant.inputValue}"
                                label="#{bindings.XxpmWarpViewChild.hints.YTResultant.label}"
                                required="#{bindings.XxpmWarpViewChild.hints.YTResultant.mandatory}"
                                columns="#{bindings.XxpmWarpViewChild.hints.YTResultant.displayWidth}"
                                maximumLength="#{bindings.XxpmWarpViewChild.hints.YTResultant.precision}"
                                shortDesc="#{bindings.XxpmWarpViewChild.hints.YTResultant.tooltip}"
                                id="it6" autoSubmit="true"
                                contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.YTResultant.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmWarpViewChild.hints.WarpResultant.label}"
                           id="c14" width="30" align="center" rendered="false">
                  <af:inputText value="#{row.bindings.WarpResultant.inputValue}"
                                label="#{bindings.XxpmWarpViewChild.hints.WarpResultant.label}"
                                required="#{bindings.XxpmWarpViewChild.hints.WarpResultant.mandatory}"
                                columns="#{bindings.XxpmWarpViewChild.hints.WarpResultant.displayWidth}"
                                maximumLength="#{bindings.XxpmWarpViewChild.hints.WarpResultant.precision}"
                                shortDesc="#{bindings.XxpmWarpViewChild.hints.WarpResultant.tooltip}"
                                id="it14" disabled="true" autoSubmit="true">
                    <f:validator binding="#{row.bindings.WarpResultant.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmWarpViewChild.hints.FancyYarnType.label}"
                           id="c33" align="center">
                  <af:inputText value="#{row.bindings.FancyYarnType.inputValue}"
                                label="#{bindings.XxpmWarpViewChild.hints.FancyYarnType.label}"
                                required="#{bindings.XxpmWarpViewChild.hints.FancyYarnType.mandatory}"
                                columns="#{bindings.XxpmWarpViewChild.hints.FancyYarnType.displayWidth}"
                                maximumLength="#{bindings.XxpmWarpViewChild.hints.FancyYarnType.precision}"
                                shortDesc="#{bindings.XxpmWarpViewChild.hints.FancyYarnType.tooltip}"
                                id="it13" contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.FancyYarnType.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column id="column3" width="50" align="center"
                           headerText="Delete">
                  <af:commandToolbarButton text="Delete"
                                           id="commandToolbarButton2"
                                           immediate="true">
                    <af:showPopupBehavior popupId="::delWarpPopup"
                                          triggerType="action"/>
                  </af:commandToolbarButton>
                </af:column>
              </af:table>
              <af:popup id="delWarpPopup">
                <af:dialog id="delWarpDialog" inlineStyle="width:280px;"
                           type="yesNo"
                           dialogListener="#{ViewActions.deleteWarpDialog}">
                  <af:outputFormatted value="Are you sure you want to delete this record?"
                                      id="of12"
                                      inlineStyle="font-weight:bold;"/>
                </af:dialog>
              </af:popup>
            </af:panelCollection>
            <af:toolbar id="t5">
              <af:commandToolbarButton text="Add Row" id="ctb5"
                                       actionListener="#{ViewActions.insertWarp}"
                                       immediate="true"/>
            </af:toolbar>
          </af:showDetailItem>
          <af:showDetailItem text="Weft" id="sdi2" stretchChildren="first">
            <af:panelCollection id="pc2" styleClass="AFStretchWidth">
              <af:table value="#{bindings.XxpmWeftViewChild.collectionModel}"
                        var="row" rows="#{bindings.XxpmWeftViewChild.rangeSize}"
                        emptyText="#{bindings.XxpmWeftViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.XxpmWeftViewChild.rangeSize}"
                        rowBandingInterval="0"
                        selectedRowKeys="#{bindings.XxpmWeftViewChild.collectionModel.selectedRow}"
                        selectionListener="#{bindings.XxpmWeftViewChild.collectionModel.makeCurrent}"
                        rowSelection="single" id="t2"
                        styleClass="AFStretchWidth" contentDelivery="immediate"
                        columnStretching="column:c19"
                        autoHeightRows="#{bindings.XxpmWeftViewChild.estimatedRowCount}">
                <af:column sortProperty="#{bindings.XxpmWeftViewChild.hints.ImIdYT.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWeftViewChild.hints.ImIdYT.label}"
                           id="c20" rendered="false" width="10%" align="center">
                  <af:inputText value="#{row.bindings.ImIdYT.inputValue}"
                                label="#{bindings.XxpmWeftViewChild.hints.ImIdYT.label}"
                                required="#{bindings.XxpmWeftViewChild.hints.ImIdYT.mandatory}"
                                columns="#{bindings.XxpmWeftViewChild.hints.ImIdYT.displayWidth}"
                                maximumLength="#{bindings.XxpmWeftViewChild.hints.ImIdYT.precision}"
                                shortDesc="#{bindings.XxpmWeftViewChild.hints.ImIdYT.tooltip}"
                                id="it21">
                    <f:validator binding="#{row.bindings.ImIdYT.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmWeftViewChild.hints.ImIdYT.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWeftViewChild.hints.CottonRatio.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWeftViewChild.hints.CottonRatio.label}"
                           id="c16" rendered="false" width="10%" align="center">
                  <af:inputText value="#{row.bindings.CottonRatio.inputValue}"
                                label="#{bindings.XxpmWeftViewChild.hints.CottonRatio.label}"
                                required="#{bindings.XxpmWeftViewChild.hints.CottonRatio.mandatory}"
                                columns="#{bindings.XxpmWeftViewChild.hints.CottonRatio.displayWidth}"
                                maximumLength="#{bindings.XxpmWeftViewChild.hints.CottonRatio.precision}"
                                shortDesc="#{bindings.XxpmWeftViewChild.hints.CottonRatio.tooltip}"
                                id="it15">
                    <f:validator binding="#{row.bindings.CottonRatio.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmWeftViewChild.hints.CottonRatio.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWeftViewChild.hints.FiberRatio.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWeftViewChild.hints.FiberRatio.label}"
                           id="c17" rendered="false" width="10%" align="center">
                  <af:inputText value="#{row.bindings.FiberRatio.inputValue}"
                                label="#{bindings.XxpmWeftViewChild.hints.FiberRatio.label}"
                                required="#{bindings.XxpmWeftViewChild.hints.FiberRatio.mandatory}"
                                columns="#{bindings.XxpmWeftViewChild.hints.FiberRatio.displayWidth}"
                                maximumLength="#{bindings.XxpmWeftViewChild.hints.FiberRatio.precision}"
                                shortDesc="#{bindings.XxpmWeftViewChild.hints.FiberRatio.tooltip}"
                                id="it19">
                    <f:validator binding="#{row.bindings.FiberRatio.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmWeftViewChild.hints.FiberRatio.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWeftViewChild.hints.WeftId.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWeftViewChild.hints.WeftId.label}"
                           id="c23" rendered="false" width="10%" align="center">
                  <af:outputFormatted value="#{row.bindings.WeftId.inputValue}"
                                      id="of4"/>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWeftViewChild.hints.ImId.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWeftViewChild.hints.ImId.label}"
                           id="c29" rendered="false" width="10%" align="center">
                  <af:inputText value="#{row.bindings.ImId.inputValue}"
                                label="#{bindings.XxpmWeftViewChild.hints.ImId.label}"
                                required="#{bindings.XxpmWeftViewChild.hints.ImId.mandatory}"
                                columns="#{bindings.XxpmWeftViewChild.hints.ImId.displayWidth}"
                                maximumLength="#{bindings.XxpmWeftViewChild.hints.ImId.precision}"
                                shortDesc="#{bindings.XxpmWeftViewChild.hints.ImId.tooltip}"
                                id="it26" disabled="true">
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmWeftViewChild.hints.ImId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWeftViewChild.hints.Segment2.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWeftViewChild.hints.Segment2.label}"
                           id="c22" width="100" align="center">
                  <af:inputListOfValues id="inputListOfValues1"
                                        popupTitle="Search and Select: #{bindings.XxpmWeftViewChild.hints.Segment2.label}"
                                        value="#{row.bindings.Segment2.inputValue}"
                                        model="#{row.bindings.Segment2.listOfValuesModel}"
                                        required="#{bindings.XxpmWeftViewChild.hints.Segment2.mandatory}"
                                        columns="#{bindings.XxpmWeftViewChild.hints.Segment2.displayWidth}"
                                        shortDesc="#{bindings.XxpmWeftViewChild.hints.Segment2.tooltip}"
                                        valueChangeListener="#{ViewActions.weftSegment2VCL}"
                                        autoSubmit="true">
                    <f:validator binding="#{row.bindings.Segment2.validator}"/>
                  </af:inputListOfValues>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWeftViewChild.hints.BaseImId.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWeftViewChild.hints.BaseImId.label}"
                           id="c27" rendered="false" width="10%" align="center">
                  <af:inputText value="#{row.bindings.BaseImId.inputValue}"
                                label="#{bindings.XxpmWeftViewChild.hints.BaseImId.label}"
                                required="#{bindings.XxpmWeftViewChild.hints.BaseImId.mandatory}"
                                columns="#{bindings.XxpmWeftViewChild.hints.BaseImId.displayWidth}"
                                maximumLength="#{bindings.XxpmWeftViewChild.hints.BaseImId.precision}"
                                shortDesc="#{bindings.XxpmWeftViewChild.hints.BaseImId.tooltip}"
                                id="it23">
                    <f:validator binding="#{row.bindings.BaseImId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmWeftViewChild.hints.BaseImId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWeftViewChild.hints.ImIdYB.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWeftViewChild.hints.ImIdYB.label}"
                           id="c24" rendered="false" width="10%" align="center">
                  <af:inputText value="#{row.bindings.ImIdYB.inputValue}"
                                label="#{bindings.XxpmWeftViewChild.hints.ImIdYB.label}"
                                required="#{bindings.XxpmWeftViewChild.hints.ImIdYB.mandatory}"
                                columns="#{bindings.XxpmWeftViewChild.hints.ImIdYB.displayWidth}"
                                maximumLength="#{bindings.XxpmWeftViewChild.hints.ImIdYB.precision}"
                                shortDesc="#{bindings.XxpmWeftViewChild.hints.ImIdYB.tooltip}"
                                id="it28">
                    <f:validator binding="#{row.bindings.ImIdYB.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmWeftViewChild.hints.ImIdYB.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWeftViewChild.hints.Description.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWeftViewChild.hints.Description.label}"
                           id="c19" width="350" align="center">
                  <af:inputText value="#{row.bindings.Description.inputValue}"
                                label="#{bindings.XxpmWeftViewChild.hints.Description.label}"
                                required="#{bindings.XxpmWeftViewChild.hints.Description.mandatory}"
                                columns="#{bindings.XxpmWeftViewChild.hints.Description.displayWidth}"
                                maximumLength="#{bindings.XxpmWeftViewChild.hints.Description.precision}"
                                shortDesc="#{bindings.XxpmWeftViewChild.hints.Description.tooltip}"
                                id="it20" contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.Description.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWeftViewChild.hints.MeasuringSystem.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWeftViewChild.hints.MeasuringSystem.label}"
                           id="c18" width="70" align="center">
                  <af:inputText value="#{row.bindings.MeasuringSystem.inputValue}"
                                label="#{bindings.XxpmWeftViewChild.hints.MeasuringSystem.label}"
                                required="#{bindings.XxpmWeftViewChild.hints.MeasuringSystem.mandatory}"
                                columns="#{bindings.XxpmWeftViewChild.hints.MeasuringSystem.displayWidth}"
                                maximumLength="#{bindings.XxpmWeftViewChild.hints.MeasuringSystem.precision}"
                                shortDesc="#{bindings.XxpmWeftViewChild.hints.MeasuringSystem.tooltip}"
                                id="it27" autoSubmit="true"
                                contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.MeasuringSystem.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWeftViewChild.hints.YarnCount.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWeftViewChild.hints.YarnCount.label}"
                           id="c21" width="30" align="center">
                  <af:inputText value="#{row.bindings.YarnCount.inputValue}"
                                label="#{bindings.XxpmWeftViewChild.hints.YarnCount.label}"
                                required="#{bindings.XxpmWeftViewChild.hints.YarnCount.mandatory}"
                                columns="#{bindings.XxpmWeftViewChild.hints.YarnCount.displayWidth}"
                                maximumLength="#{bindings.XxpmWeftViewChild.hints.YarnCount.precision}"
                                shortDesc="#{bindings.XxpmWeftViewChild.hints.YarnCount.tooltip}"
                                id="it24" autoSubmit="true"
                                contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.YarnCount.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmWeftViewChild.hints.YarnCount.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWeftViewChild.hints.YarnPlies.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWeftViewChild.hints.YarnPlies.label}"
                           id="c26" width="30" align="center">
                  <af:inputText value="#{row.bindings.YarnPlies.inputValue}"
                                label="#{bindings.XxpmWeftViewChild.hints.YarnPlies.label}"
                                required="#{bindings.XxpmWeftViewChild.hints.YarnPlies.mandatory}"
                                columns="#{bindings.XxpmWeftViewChild.hints.YarnPlies.displayWidth}"
                                maximumLength="#{bindings.XxpmWeftViewChild.hints.YarnPlies.precision}"
                                shortDesc="#{bindings.XxpmWeftViewChild.hints.YarnPlies.tooltip}"
                                id="it25" contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.YarnPlies.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWeftViewChild.hints.YarnType.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWeftViewChild.hints.YarnType.label}"
                           id="c15" width="50" align="center">
                  <af:inputText value="#{row.bindings.YarnType.inputValue}"
                                label="#{bindings.XxpmWeftViewChild.hints.YarnType.label}"
                                required="#{bindings.XxpmWeftViewChild.hints.YarnType.mandatory}"
                                columns="#{bindings.XxpmWeftViewChild.hints.YarnType.displayWidth}"
                                maximumLength="#{bindings.XxpmWeftViewChild.hints.YarnType.precision}"
                                shortDesc="#{bindings.XxpmWeftViewChild.hints.YarnType.tooltip}"
                                id="it22" contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.YarnType.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWeftViewChild.hints.YBResultant.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWeftViewChild.hints.YBResultant.label}"
                           id="c25" width="220" align="center">
                  <af:inputText value="#{row.bindings.YBResultant.inputValue}"
                                label="#{bindings.XxpmWeftViewChild.hints.YBResultant.label}"
                                required="#{bindings.XxpmWeftViewChild.hints.YBResultant.mandatory}"
                                columns="#{bindings.XxpmWeftViewChild.hints.YBResultant.displayWidth}"
                                maximumLength="#{bindings.XxpmWeftViewChild.hints.YBResultant.precision}"
                                shortDesc="#{bindings.XxpmWeftViewChild.hints.YBResultant.tooltip}"
                                id="it16" contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.YBResultant.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmWeftViewChild.hints.YTResultant.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmWeftViewChild.hints.YTResultant.label}"
                           id="c28" width="100" align="center">
                  <af:inputText value="#{row.bindings.YTResultant.inputValue}"
                                label="#{bindings.XxpmWeftViewChild.hints.YTResultant.label}"
                                required="#{bindings.XxpmWeftViewChild.hints.YTResultant.mandatory}"
                                columns="#{bindings.XxpmWeftViewChild.hints.YTResultant.displayWidth}"
                                maximumLength="#{bindings.XxpmWeftViewChild.hints.YTResultant.precision}"
                                shortDesc="#{bindings.XxpmWeftViewChild.hints.YTResultant.tooltip}"
                                id="it17" contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.YTResultant.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmWeftViewChild.hints.WeftResultant.label}"
                           id="c30" width="30" rendered="false" align="center">
                  <af:inputText value="#{row.bindings.WeftResultant.inputValue}"
                                label="#{bindings.XxpmWeftViewChild.hints.WeftResultant.label}"
                                required="#{bindings.XxpmWeftViewChild.hints.WeftResultant.mandatory}"
                                columns="#{bindings.XxpmWeftViewChild.hints.WeftResultant.displayWidth}"
                                maximumLength="#{bindings.XxpmWeftViewChild.hints.WeftResultant.precision}"
                                shortDesc="#{bindings.XxpmWeftViewChild.hints.WeftResultant.tooltip}"
                                id="it29" disabled="true" autoSubmit="true">
                    <f:validator binding="#{row.bindings.WeftResultant.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column headerText="#{bindings.XxpmWeftViewChild.hints.FancyYarnType.label}"
                           id="c35" width="100" align="center">
                  <af:inputText value="#{row.bindings.FancyYarnType.inputValue}"
                                label="#{bindings.XxpmWeftViewChild.hints.FancyYarnType.label}"
                                required="#{bindings.XxpmWeftViewChild.hints.FancyYarnType.mandatory}"
                                columns="#{bindings.XxpmWeftViewChild.hints.FancyYarnType.displayWidth}"
                                maximumLength="#{bindings.XxpmWeftViewChild.hints.FancyYarnType.precision}"
                                shortDesc="#{bindings.XxpmWeftViewChild.hints.FancyYarnType.tooltip}"
                                id="it30" disabled="true" autoSubmit="true"
                                contentStyle="min-width:100%;">
                    <f:validator binding="#{row.bindings.FancyYarnType.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column id="column4" width="50" headerText="Delete"
                           align="center">
                  <af:commandToolbarButton text="Delete"
                                           id="commandToolbarButton3"
                                           immediate="true">
                    <af:showPopupBehavior popupId="::delWeftpopup"
                                          triggerType="action"/>
                  </af:commandToolbarButton>
                </af:column>
              </af:table>
              <af:popup id="delWeftpopup">
                <af:dialog id="delWeftdialog" inlineStyle="width:280px;"
                           type="yesNo"
                           dialogListener="#{ViewActions.deleteWeftDialog}">
                  <af:outputFormatted value="Are you sure you want to delete this record?"
                                      id="outputFormatted15"
                                      inlineStyle="font-weight:bold;"/>
                </af:dialog>
              </af:popup>
            </af:panelCollection>
            <af:toolbar id="t6">
              <af:commandToolbarButton text="Add Row" id="commandToolbarButton1"
                                       actionListener="#{ViewActions.insertWeft}"
                                       immediate="true"/>
            </af:toolbar>
          </af:showDetailItem>
        </af:panelTabbed>
        <af:spacer width="10" height="20" id="spacer1"/>
        <af:panelStretchLayout id="panelStretchLayout3" startWidth="0px"
                               endWidth="0px" topHeight="0px"
                               bottomHeight="0px"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Other Information" id="outputFormatted4"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout1">
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow10">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell18">
              <af:outputFormatted value="Ends*" id="outputFormatted12"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell19">
              <af:inputText value="#{bindings.Ends.inputValue}"
                            label="#{bindings.Ends.hints.label}"
                            columns="#{bindings.Ends.hints.displayWidth}"
                            maximumLength="#{bindings.Ends.hints.precision}"
                            shortDesc="#{bindings.Ends.hints.tooltip}" id="it39"
                            autoSubmit="true" simple="true"
                            contentStyle="width:70px;" required="true">
                <f:validator binding="#{bindings.Ends.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.Ends.format}"/>
              </af:inputText>
              <af:outputFormatted value="#{bindings.ImId.inputValue}" id="of2"
                                  rendered="false"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow11">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell20">
              <af:outputFormatted value="Picks*" id="outputFormatted14"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell21"
                         columnSpan="1">
              <af:inputText value="#{bindings.Picks.inputValue}"
                            label="#{bindings.Picks.hints.label}"
                            columns="#{bindings.Picks.hints.displayWidth}"
                            maximumLength="#{bindings.Picks.hints.precision}"
                            shortDesc="#{bindings.Picks.hints.tooltip}"
                            id="it41" autoSubmit="true" simple="true"
                            contentStyle="width:70px;" required="true">
                <f:validator binding="#{bindings.Picks.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.Picks.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow12">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell22">
              <af:outputFormatted value="Width*" id="outputFormatted16"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell23"
                         columnSpan="1">
              <af:inputText value="#{bindings.Width.inputValue}"
                            label="#{bindings.Width.hints.label}"
                            columns="#{bindings.Width.hints.displayWidth}"
                            maximumLength="#{bindings.Width.hints.precision}"
                            shortDesc="#{bindings.Width.hints.tooltip}"
                            id="it36" autoSubmit="true" simple="true"
                            contentStyle="width:70px;" required="true">
                <f:validator binding="#{bindings.Width.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.Width.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow14">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell26">
              <af:outputFormatted value="Resultant" id="outputFormatted20"
                                  inlineStyle="font-weight:bold;"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell27">
              <af:inputText value="#{bindings.EPWResultant.inputValue}"
                            label="#{bindings.EPWResultant.hints.label}"
                            required="#{bindings.EPWResultant.hints.mandatory}"
                            columns="#{bindings.EPWResultant.hints.displayWidth}"
                            maximumLength="#{bindings.EPWResultant.hints.precision}"
                            shortDesc="#{bindings.EPWResultant.hints.tooltip}"
                            id="it31" autoSubmit="true" simple="true"
                            disabled="true">
                <f:validator binding="#{bindings.EPWResultant.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:spacer width="10" height="20" id="spacer3"/>
        <af:panelStretchLayout id="panelStretchLayout5" startWidth="0px"
                               endWidth="0px" topHeight="0px"
                               bottomHeight="0px"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Body" id="outputFormatted6"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout2">
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow1">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell1">
              <af:outputFormatted value="Weave" id="outputFormatted7"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell2">
              <af:selectOneChoice value="#{bindings.Weave.inputValue}"
                                  label="#{bindings.Weave.label}"
                                  shortDesc="#{bindings.Weave.hints.tooltip}"
                                  id="soc1" contentStyle="width:140px;"
                                  simple="true" autoSubmit="true"
                                  binding="#{ViewActions.wvWeave}">
                <f:selectItems value="#{bindings.Weave.items}" id="si1"/>
              </af:selectOneChoice>
              <af:commandButton id="cb2" icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addWvWeaveVset}"
                                useWindow="true" immediate="true"/>
            </af:gridCell>
            <af:gridCell marginStart="50px" width="dontCare" id="gridCell25">
              <af:outputFormatted value="Warp Contraction %"
                                  id="outputFormatted21"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell28">
              <af:inputText value="#{bindings.WarpContraction.inputValue}"
                            label="#{bindings.WarpContraction.hints.label}"
                            required="true"
                            columns="#{bindings.WarpContraction.hints.displayWidth}"
                            maximumLength="#{bindings.WarpContraction.hints.precision}"
                            shortDesc="#{bindings.WarpContraction.hints.tooltip}"
                            id="inputText4" autoSubmit="true" simple="true"
                            contentStyle="width:70px;">
                <f:validator binding="#{bindings.WarpContraction.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.WarpContraction.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow2">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell3">
              <af:outputFormatted value="Direction" id="outputFormatted8"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell4"
                         columnSpan="1">
              <af:selectOneChoice value="#{bindings.Direction.inputValue}"
                                  label="#{bindings.Direction.label}"
                                  shortDesc="#{bindings.Direction.hints.tooltip}"
                                  id="soc2" contentStyle="width:140px;"
                                  simple="true" autoSubmit="true"
                                  binding="#{ViewActions.wvDirection}">
                <f:selectItems value="#{bindings.Direction.items}" id="si2"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton1"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addWvDirectionVset}"
                                useWindow="true" immediate="true"/>
            </af:gridCell>
            <af:gridCell marginStart="50px" width="dontCare" id="gridCell30">
              <af:outputFormatted value="Weft Contraction %"
                                  id="outputFormatted22"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell29">
              <af:inputText value="#{bindings.WeftContraction.inputValue}"
                            label="#{bindings.WeftContraction.hints.label}"
                            required="true"
                            columns="#{bindings.WeftContraction.hints.displayWidth}"
                            maximumLength="#{bindings.WeftContraction.hints.precision}"
                            shortDesc="#{bindings.WeftContraction.hints.tooltip}"
                            id="inputText5" autoSubmit="true" simple="true"
                            contentStyle="width:70px;">
                <f:validator binding="#{bindings.WeftContraction.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.WeftContraction.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow3">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell5">
              <af:outputFormatted value="Design" id="outputFormatted9"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell6"
                         columnSpan="1">
              <af:selectOneChoice value="#{bindings.Design.inputValue}"
                                  label="#{bindings.Design.label}"
                                  shortDesc="#{bindings.Design.hints.tooltip}"
                                  id="soc3" simple="true"
                                  contentStyle="width:140px;" autoSubmit="true"
                                  binding="#{ViewActions.wvDesign}">
                <f:selectItems value="#{bindings.Design.items}" id="si3"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton2"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addWvDesignVset}"
                                useWindow="true" immediate="true"/>
            </af:gridCell>
            <af:gridCell marginStart="50px" width="dontCare" id="gridCell13">
              <af:outputFormatted value="Fabric Blend" id="outputFormatted17"
                                  inlineStyle="font-weight:bold;"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell14">
              <af:inputText value="#{bindings.FabricBlendResultant.inputValue}"
                            label="#{bindings.FabricBlendResultant.hints.label}"
                            required="#{bindings.FabricBlendResultant.hints.mandatory}"
                            columns="#{bindings.FabricBlendResultant.hints.displayWidth}"
                            maximumLength="#{bindings.FabricBlendResultant.hints.precision}"
                            shortDesc="#{bindings.FabricBlendResultant.hints.tooltip}"
                            id="inputText1" autoSubmit="true" simple="true"
                            disabled="true"
                            binding="#{ViewActions.fabricBlendResultant}"
                            partialTriggers="it39 it41">
                <f:validator binding="#{bindings.FabricBlendResultant.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr1" height="auto" marginTop="5px" marginBottom="5px"
                      rendered="false">
            <af:gridCell id="gc1">
              <af:outputFormatted value="Size" id="outputFormatted5"/>
            </af:gridCell>
            <af:gridCell id="gc2" marginStart="5px" width="dontCare">
              <af:selectOneChoice value="#{bindings.WeaveSize.inputValue}"
                                  label="#{bindings.WeaveSize.label}"
                                  required="#{bindings.WeaveSize.hints.mandatory}"
                                  shortDesc="#{bindings.WeaveSize.hints.tooltip}"
                                  id="soc4" simple="true"
                                  contentStyle="width:70px;" autoSubmit="true"
                                  binding="#{ViewActions.wvSize}">
                <f:selectItems value="#{bindings.WeaveSize.items}" id="si4"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton3"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addWvSizeVset}"
                                useWindow="true" immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr3" height="auto" marginTop="5px" marginBottom="5px">
            <af:gridCell id="gridCell9">
              <af:outputFormatted value="Insertion" id="outputFormatted11"/>
            </af:gridCell>
            <af:gridCell id="gridCell10" width="dontCare" marginStart="5px">
              <af:selectOneChoice value="#{bindings.Insertion.inputValue}"
                                  label="#{bindings.Insertion.label}"
                                  shortDesc="#{bindings.Insertion.hints.tooltip}"
                                  id="soc5" simple="true"
                                  contentStyle="width:140px;" autoSubmit="true"
                                  binding="#{ViewActions.wvInsertion}">
                <f:selectItems value="#{bindings.Insertion.items}" id="si5"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton4"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addWvInsertionVset}"
                                useWindow="true" immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr4" height="auto" marginTop="5px" marginBottom="5px">
            <af:gridCell id="gridCell11">
              <af:outputFormatted value="Selvedge type" id="outputFormatted13"/>
            </af:gridCell>
            <af:gridCell id="gridCell12" marginStart="5px" width="dontCare">
              <af:selectOneChoice value="#{bindings.SelvedgeType.inputValue}"
                                  label="#{bindings.SelvedgeType.label}"
                                  shortDesc="#{bindings.SelvedgeType.hints.tooltip}"
                                  id="soc6" simple="true"
                                  contentStyle="width:140px;" autoSubmit="true"
                                  binding="#{ViewActions.wvSelvedgeType}">
                <f:selectItems value="#{bindings.SelvedgeType.items}"
                               id="si6"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton5"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addWvSelvedgeTypeVset}"
                                useWindow="true" immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow4">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell7">
              <af:outputFormatted value="Resultant" id="outputFormatted10"
                                  inlineStyle="font-weight:bold;"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell8">
              <af:inputText value="#{bindings.WeaveResultant.inputValue}"
                            label="#{bindings.WeaveResultant.hints.label}"
                            required="#{bindings.WeaveResultant.hints.mandatory}"
                            columns="#{bindings.WeaveResultant.hints.displayWidth}"
                            maximumLength="#{bindings.WeaveResultant.hints.precision}"
                            shortDesc="#{bindings.WeaveResultant.hints.tooltip}"
                            id="it45" autoSubmit="true" simple="true"
                            disabled="true" contentStyle="width:70px;">
                <f:validator binding="#{bindings.WeaveResultant.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow6" rendered="false">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell15">
              <af:outputFormatted value="Warp Resultant" id="outputFormatted18"
                                  inlineStyle="font-weight:bold;"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell16">
              <af:inputText value="#{bindings.WarpResultantSum.inputValue}"
                            label="#{bindings.WarpResultantSum.hints.label}"
                            required="#{bindings.WarpResultantSum.hints.mandatory}"
                            columns="#{bindings.WarpResultantSum.hints.displayWidth}"
                            maximumLength="#{bindings.WarpResultantSum.hints.precision}"
                            shortDesc="#{bindings.WarpResultantSum.hints.tooltip}"
                            id="inputText2" autoSubmit="true" simple="true"
                            disabled="true"
                            binding="#{ViewActions.warpResultantSum}">
                <f:validator binding="#{bindings.WarpResultantSum.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow7" rendered="false">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell17">
              <af:outputFormatted value="Weft Resultant" id="outputFormatted19"
                                  inlineStyle="font-weight:bold;"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell24">
              <af:inputText value="#{bindings.WeftResultantSum.inputValue}"
                            label="#{bindings.WeftResultantSum.hints.label}"
                            required="#{bindings.WeftResultantSum.hints.mandatory}"
                            columns="#{bindings.WeftResultantSum.hints.displayWidth}"
                            maximumLength="#{bindings.WeftResultantSum.hints.precision}"
                            shortDesc="#{bindings.WeftResultantSum.hints.tooltip}"
                            id="inputText3" autoSubmit="true" simple="true"
                            disabled="true"
                            binding="#{ViewActions.weftResultantSum}">
                <f:validator binding="#{bindings.WeftResultantSum.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:toolbar id="t4">
          <af:commandToolbarButton text="Add" id="ctb8"
                                   actionListener="#{ViewActions.insertMasterWvItem}"/>
          <af:spacer width="10" height="10" id="s6"/>
          <af:commandToolbarButton text="Save" id="ctb6"
                                   actionListener="#{ViewActions.commitWv}"
                                   accessKey="S"/>
          <af:spacer width="10" height="10" id="s5"/>
          <af:commandToolbarButton text="Clear" id="ctb7"
                                   actionListener="#{ViewActions.rollbackWv}"
                                   immediate="true">
            <af:resetActionListener/>
          </af:commandToolbarButton>
        </af:toolbar>
        <af:popup id="AddValPopup">
          <af:dialog id="d2" title="Add new value" contentWidth="300"
                     type="okCancel"
                     dialogListener="#{ViewActions.wvAddVsetVal}">
            <af:inputText label="Value" id="inputText6"
                          value="#{bindings.BindVsetVal.inputValue}"
                          autoSubmit="true"/>
            <af:inputText label="Value Set" id="inputText7"
                          value="#{bindings.BindValueSet.inputValue}"
                          autoSubmit="true" rendered="false"/>
          </af:dialog>
        </af:popup>
      </af:panelFormLayout>
    </af:form>
  </af:document>
</f:view>