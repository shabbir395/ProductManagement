<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<f:view>
  <af:document id="d1" theme="dark" title="Spinning Item Creation form">
    <af:messages id="m1"/>
    <af:form id="f1" usesUpload="true">
      <af:panelStretchLayout id="panelStretchLayout5" startWidth="0px"
                             endWidth="0px" topHeight="0px" bottomHeight="0px"
                             dimensionsFrom="children">
        <f:facet name="center">
          <af:image source="/Images/Banners/Spinning.png" id="i1"/>
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
      <af:panelFormLayout id="pfl1"
                          binding="#{ViewActions.spnMainPanelFormLayout}">
        <af:panelStretchLayout id="panelStretchLayout1" startWidth="0px"
                               endWidth="0px" topHeight="0px"
                               bottomHeight="0px" dimensionsFrom="children">
          <f:facet name="center">
            <af:panelGroupLayout layout="scroll"
                                 xmlns:af="http://xmlns.oracle.com/adf/faces/rich"
                                 id="pgl11">
              <af:outputFormatted value="Search Item" id="outputFormatted2"
                                  inlineStyle="font-size:small; vertical-align:top;"/>
            </af:panelGroupLayout>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGroupLayout id="pgl5" layout="horizontal">
          <af:outputFormatted value="Item Description" id="of11"/>
          <af:spacer width="10" height="10" id="s7"/>
          <af:inputListOfValues popupTitle="Search and Result Dialog" id="ilov1"
                                simple="true"
                                value="#{bindings.BindDescSpn.inputValue}"
                                autoSubmit="true"
                                valueChangeListener="#{ViewActions.searchItemSpnVCL}"
                                binding="#{ViewActions.searchLovSpn}"
                                model="#{bindings.SpnDescriptionLov.listOfValuesModel}"
                                disabled="#{bindings.SpinningItemDescViewIterator.estimatedRowCount < 1 ? true : false}"
                                partialTriggers="ctb6 ctb7"/>
          <af:spacer width="10" height="10" id="spacer7"/>
          <af:commandToolbarButton actionListener="#{ViewActions.searchItemSpnButton}"
                                   text="Go"
                                   disabled="#{!bindings.ExecuteWithParams.enabled}"
                                   id="cb1" immediate="true"/>
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
          <af:commandToolbarButton
                                   text="Attachments"
                                   partialSubmit="true"
                                   id="commandToolbarButton4">
            <af:showPopupBehavior popupId="attachmentPopup"
                                  triggerType="action"/>
          </af:commandToolbarButton>
          <af:spacer width="10" height="10" id="spacer4"/>
          <af:commandToolbarButton text="Copy Item" partialSubmit="true"
                                   id="commandToolbarButton5"
                                   actionListener="#{ViewActions.copySpnItem}"/>
          <af:spacer width="10" height="10" id="spacer8"/>
          <af:commandToolbarButton text="Update Status" partialSubmit="true"
                                   id="commandToolbarButton6"
                                   actionListener="#{ViewActions.copySpnItemUpdateStatus}"/>
          <af:popup id="attachmentPopup" contentDelivery="lazyUncached">
            <af:dialog id="attachmentDialog" type="ok" title="File Attachment"
                       contentWidth="300" contentHeight="200">
              <af:inputFile id="if1" autoSubmit="true"
                            label="Upload File"
                            valueChangeListener="#{ViewActions.uploadFileSpnVCL}"/>
              <af:table value="#{bindings.XxpmAttachmentsViewChild.collectionModel}"
                        var="row"
                        rows="#{bindings.XxpmAttachmentsViewChild.rangeSize}"
                        emptyText="#{bindings.XxpmAttachmentsViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.XxpmAttachmentsViewChild.rangeSize}"
                        rowBandingInterval="0"
                        selectedRowKeys="#{bindings.XxpmAttachmentsViewChild.collectionModel.selectedRow}"
                        selectionListener="#{bindings.XxpmAttachmentsViewChild.collectionModel.makeCurrent}"
                        rowSelection="single" id="t5"
                        styleClass="AFStretchWidth" partialTriggers="if1">
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChild.hints.AtchId.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChild.hints.AtchId.label}"
                           id="c23" rendered="false">
                  <af:outputFormatted value="#{row.bindings.AtchId.inputValue}"
                                      id="of3"/>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChild.hints.ImId.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChild.hints.ImId.label}"
                           id="c21" rendered="false">
                  <af:inputText value="#{row.bindings.ImId.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChild.hints.ImId.label}"
                                required="#{bindings.XxpmAttachmentsViewChild.hints.ImId.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChild.hints.ImId.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChild.hints.ImId.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChild.hints.ImId.tooltip}"
                                id="it13">
                    <f:validator binding="#{row.bindings.ImId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmAttachmentsViewChild.hints.ImId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChild.hints.FileCode.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChild.hints.FileCode.label}"
                           id="c20" rendered="false">
                  <af:inputText value="#{row.bindings.FileCode.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChild.hints.FileCode.label}"
                                required="#{bindings.XxpmAttachmentsViewChild.hints.FileCode.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChild.hints.FileCode.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChild.hints.FileCode.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChild.hints.FileCode.tooltip}"
                                id="it15">
                    <f:validator binding="#{row.bindings.FileCode.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmAttachmentsViewChild.hints.FileCode.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChild.hints.FileName.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChild.hints.FileName.label}"
                           id="c22" width="250" rendered="true" align="center">
                  <af:inputText value="#{row.bindings.FileName.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChild.hints.FileName.label}"
                                required="#{bindings.XxpmAttachmentsViewChild.hints.FileName.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChild.hints.FileName.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChild.hints.FileName.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChild.hints.FileName.tooltip}"
                                id="it14" autoSubmit="true">
                    <f:validator binding="#{row.bindings.FileName.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChild.hints.Path.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChild.hints.Path.label}"
                           id="c19" rendered="false">
                  <af:inputText value="#{row.bindings.Path.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChild.hints.Path.label}"
                                required="#{bindings.XxpmAttachmentsViewChild.hints.Path.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChild.hints.Path.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChild.hints.Path.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChild.hints.Path.tooltip}"
                                id="it16">
                    <f:validator binding="#{row.bindings.Path.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column id="c24" headerText="Download" rendered="true"
                           width="60">
                  <af:commandLink text="Download" id="cl2">
                    <af:fileDownloadActionListener filename="#{row.bindings.FileName.inputValue}"
                                                   method="#{ViewActions.downloadFileSpnListener}"/>
                  </af:commandLink>
                </af:column>
              </af:table>
            </af:dialog>
          </af:popup>
        </af:toolbar>
        <af:spacer width="10" height="20" id="s1"/>
        <af:panelStretchLayout id="panelStretchLayout2" startWidth="0px"
                               endWidth="0px" topHeight="0px"
                               bottomHeight="0px" dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Item Information" id="outputFormatted3"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="pgl1">
          <af:gridRow marginTop="5px" height="auto" id="gr2">
            <af:gridCell marginStart="5px" width="dontCare" id="gc8">
              <af:outputFormatted value="Item Code" id="of1"
                                  inlineStyle="font-weight:bold;"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="80px" id="gc5">
              <af:inputText value="#{bindings.Segment2.inputValue}"
                            simple="true"
                            columns="#{bindings.Segment2.hints.displayWidth}"
                            maximumLength="#{bindings.Segment2.hints.precision}"
                            shortDesc="#{bindings.Segment2.hints.tooltip}"
                            id="it1" contentStyle="color:Black;width:70.0px;"
                            disabled="true">
                <f:validator binding="#{bindings.Segment2.validator}"/>
              </af:inputText>
              <af:outputFormatted value="#{bindings.ImId.inputValue}" id="outputFormatted10"
                                  inlineStyle="font-weight:bold;"
                                  rendered="false"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc4">
              <af:outputFormatted value="Description " id="outputFormatted1"
                                  inlineStyle="font-weight:bold;"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc7">
              <af:inputText value="#{bindings.Description.inputValue}"
                            simple="true"
                            required="#{bindings.Description.hints.mandatory}"
                            columns="#{bindings.Description.hints.displayWidth}"
                            maximumLength="#{bindings.Description.hints.precision}"
                            shortDesc="#{bindings.Description.hints.tooltip}"
                            id="it9" disabled="true"
                            contentStyle="color:Black;width:1120px;">
                <f:validator binding="#{bindings.Description.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr1">
            <af:gridCell id="gc9">
              <af:outputFormatted value="Item Status*" id="outputFormatted6"
                                  inlineStyle="font-weight:bold;"/>
            </af:gridCell>
            <af:gridCell id="gc10" columnSpan="2">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="soc3" simple="true"
                                  contentStyle="width:150px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  required="true"
                                  partialTriggers="ctb5 ctb6 ctb7">
                <f:selectItems value="#{bindings.Segment3.items}" id="si3"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:spacer width="10" height="20" id="spacer2"/>
        <af:panelStretchLayout id="panelStretchLayout3" startWidth="0px"
                               endWidth="0px" topHeight="0px"
                               bottomHeight="0px" dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Yarn Construction" id="outputFormatted4"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout1">
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow10">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell18">
              <af:outputFormatted value="Yarn Count*" id="outputFormatted12"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="250px" id="gridCell19">
              <af:inputText value="#{bindings.YarnCount.inputValue}"
                            columns="#{bindings.YarnCount.hints.displayWidth}"
                            maximumLength="#{bindings.YarnCount.hints.precision}"
                            shortDesc="#{bindings.YarnCount.hints.tooltip}"
                            id="inputText1" simple="true" autoSubmit="true"
                            contentStyle="width:94px;" required="true"
                            partialTriggers="commandToolbarButton5"
                            binding="#{ViewActions.yarnCount}">
                <f:validator binding="#{bindings.YarnCount.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.YarnCount.format}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell id="gc1">
              <af:outputFormatted value="Waxed/UnWaxed*" id="outputFormatted7"/>
            </af:gridCell>
            <af:gridCell id="gc2">
              <af:selectOneChoice value="#{bindings.YarnStatus.inputValue}"
                                  label="#{bindings.YarnStatus.label}"
                                  required="true"
                                  shortDesc="#{bindings.YarnStatus.hints.tooltip}"
                                  id="soc2" simple="true" autoSubmit="true"
                                  contentStyle="width:100px;"
                                  binding="#{ViewActions.yarnStatus}">
                <f:selectItems value="#{bindings.YarnStatus.items}" id="si2"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton3"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addYarnStatusVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow11">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell20">
              <af:outputFormatted value="Yarn Plies*" id="outputFormatted14"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell21"
                         columnSpan="1">
              <af:selectOneChoice value="#{bindings.YarnPlies.inputValue}"
                                  label="#{bindings.YarnPlies.label}"
                                  required="true"
                                  shortDesc="#{bindings.YarnPlies.hints.tooltip}"
                                  id="selectOneChoice1" simple="true"
                                  autoSubmit="true" contentStyle="width:100px;"
                                  binding="#{ViewActions.yarnPlies}">
                <f:selectItems value="#{bindings.YarnPlies.items}"
                               id="selectItems1"/>
              </af:selectOneChoice>
              <af:commandButton id="cb2" icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addYarnPliesVset}"
                                immediate="true"/>
            </af:gridCell>
            <af:gridCell id="gc3">
              <af:outputFormatted value="Weaving/Knitting*"
                                  id="outputFormatted8"/>
            </af:gridCell>
            <af:gridCell id="gc6">
              <af:selectOneChoice value="#{bindings.YarnOutput.inputValue}"
                                  label="#{bindings.YarnOutput.label}"
                                  required="true"
                                  shortDesc="#{bindings.YarnOutput.hints.tooltip}"
                                  id="soc1" simple="true" autoSubmit="true"
                                  contentStyle="width:100px;"
                                  binding="#{ViewActions.yarnOutput}">
                <f:selectItems value="#{bindings.YarnOutput.items}" id="si1"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton4"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addYarnOutputVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow12">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell22">
              <af:outputFormatted value="Yarn Type" id="outputFormatted16"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell23"
                         columnSpan="1">
              <af:selectOneChoice value="#{bindings.YarnType.inputValue}"
                                  label="#{bindings.YarnType.label}"
                                  shortDesc="#{bindings.YarnType.hints.tooltip}"
                                  id="selectOneChoice2" simple="true"
                                  autoSubmit="true" contentStyle="width:100px;"
                                  binding="#{ViewActions.yarnType}">
                <f:selectItems value="#{bindings.YarnType.items}"
                               id="selectItems2"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton1"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addYarnTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow13">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell24">
              <af:outputFormatted value="Measuring System*"
                                  id="outputFormatted18"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell25"
                         columnSpan="1">
              <af:selectOneChoice value="#{bindings.MeasuringSystem.inputValue}"
                                  label="#{bindings.MeasuringSystem.label}"
                                  required="true"
                                  shortDesc="#{bindings.MeasuringSystem.hints.tooltip}"
                                  id="selectOneChoice3" simple="true"
                                  autoSubmit="true" contentStyle="width:100px;"
                                  binding="#{ViewActions.measuringSystem}">
                <f:selectItems value="#{bindings.MeasuringSystem.items}"
                               id="selectItems3"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton2"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addMeasuringSystemVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow14">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell26">
              <af:outputFormatted value="Resultant" id="outputFormatted20"
                                  inlineStyle="font-weight:bold;"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell27">
              <af:inputText value="#{bindings.MasterResultant.inputValue}"
                            simple="true"
                            required="#{bindings.MasterResultant.hints.mandatory}"
                            columns="#{bindings.MasterResultant.hints.displayWidth}"
                            maximumLength="#{bindings.MasterResultant.hints.precision}"
                            shortDesc="#{bindings.MasterResultant.hints.tooltip}"
                            id="it10" disabled="true"
                            contentStyle="color:Black;">
                <f:validator binding="#{bindings.MasterResultant.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow1" rendered="false">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell1">
              <af:outputFormatted value="Folder Code" id="outputFormatted9"
                                  inlineStyle="font-weight:bold;"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell2">
              <af:inputText value="#{bindings.FolderCode.inputValue}"
                            simple="true"
                            required="#{bindings.FolderCode.hints.mandatory}"
                            columns="#{bindings.FolderCode.hints.displayWidth}"
                            maximumLength="#{bindings.FolderCode.hints.precision}"
                            shortDesc="#{bindings.FolderCode.hints.tooltip}"
                            id="inputText2" disabled="true"
                            contentStyle="color:Black;">
                <f:validator binding="#{bindings.FolderCode.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.FolderCode.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow15" rendered="false">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell28">
              <af:outputFormatted value="Tot Ratio" id="outputFormatted22"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell29">
              <af:outputFormatted value="#{bindings.SumYBTotRatio.inputValue}"
                                  id="outputFormatted23"
                                  partialTriggers="pc1:t1:it3 pc1:t1:it2">
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.SumYBTotRatio.format}"/>
              </af:outputFormatted>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:spacer width="10" height="20" id="spacer1"/>
        <af:panelStretchLayout id="psl2" startWidth="0px" endWidth="0px"
                               topHeight="0px" bottomHeight="0px"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Yarn Blend" id="of2"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelCollection id="pc1" styleClass="AFStretchWidth">
          <af:table value="#{bindings.XxpmYarnBlendViewChild.collectionModel}"
                    var="row"
                    rows="#{bindings.XxpmYarnBlendViewChild.rangeSize}"
                    emptyText="#{bindings.XxpmYarnBlendViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                    fetchSize="#{bindings.XxpmYarnBlendViewChild.rangeSize}"
                    rowBandingInterval="0"
                    selectedRowKeys="#{bindings.XxpmYarnBlendViewChild.collectionModel.selectedRow}"
                    selectionListener="#{bindings.XxpmYarnBlendViewChild.collectionModel.makeCurrent}"
                    rowSelection="single" id="t1" contentDelivery="immediate"
                    displayRow="selected" binding="#{ViewActions.ybTable}"
                    columnStretching="column:c14" styleClass="AFStretchWidth"
                    autoHeightRows="#{bindings.XxpmYarnBlendViewChild.estimatedRowCount}">
            <af:column sortProperty="#{bindings.XxpmYarnBlendViewChild.hints.YbId.name}"
                       sortable="true"
                       headerText="#{bindings.XxpmYarnBlendViewChild.hints.YbId.label}"
                       id="c1" rendered="false">
              <af:inputText value="#{row.bindings.YbId.inputValue}"
                            label="#{bindings.XxpmYarnBlendViewChild.hints.YbId.label}"
                            required="#{bindings.XxpmYarnBlendViewChild.hints.YbId.mandatory}"
                            columns="#{bindings.XxpmYarnBlendViewChild.hints.YbId.displayWidth}"
                            maximumLength="#{bindings.XxpmYarnBlendViewChild.hints.YbId.precision}"
                            shortDesc="#{bindings.XxpmYarnBlendViewChild.hints.YbId.tooltip}"
                            id="it4">
                <f:validator binding="#{row.bindings.YbId.validator}"/>
              </af:inputText>
            </af:column>
            <af:column sortProperty="#{bindings.XxpmYarnBlendViewChild.hints.ImId.name}"
                       sortable="true"
                       headerText="#{bindings.XxpmYarnBlendViewChild.hints.ImId.label}"
                       id="c4" rendered="false">
              <af:inputText value="#{row.bindings.ImId.inputValue}"
                            label="#{bindings.XxpmYarnBlendViewChild.hints.ImId.label}"
                            required="#{bindings.XxpmYarnBlendViewChild.hints.ImId.mandatory}"
                            columns="#{bindings.XxpmYarnBlendViewChild.hints.ImId.displayWidth}"
                            maximumLength="#{bindings.XxpmYarnBlendViewChild.hints.ImId.precision}"
                            shortDesc="#{bindings.XxpmYarnBlendViewChild.hints.ImId.tooltip}"
                            id="it5" disabled="true"/>
            </af:column>
            <af:column sortProperty="#{bindings.XxpmYarnBlendViewChild.hints.Cotton.name}"
                       sortable="true"
                       headerText="#{bindings.XxpmYarnBlendViewChild.hints.Cotton.label}"
                       id="c3" align="center" width="190">
              <af:panelGroupLayout id="pgl2" layout="horizontal">
                <af:selectOneChoice value="#{row.bindings.Cotton.inputValue}"
                                    label="#{row.bindings.Cotton.label}"
                                    required="#{bindings.XxpmYarnBlendViewChild.hints.Cotton.mandatory}"
                                    shortDesc="#{bindings.XxpmYarnBlendViewChild.hints.Cotton.tooltip}"
                                    id="soc5" autoSubmit="true"
                                    binding="#{ViewActions.cotton}"
                                    valueChangeListener="#{ViewActions.spnCottonVCL}"
                                    contentStyle="width:160px;">
                  <f:selectItems value="#{row.bindings.Cotton.items}" id="si5"/>
                </af:selectOneChoice>
                <af:commandButton id="commandButton5"
                                  icon="/Images/add-icon 12x12.png"
                                  actionListener="#{ViewActions.addCottonTypeVset}"
                                  immediate="true"/>
              </af:panelGroupLayout>
            </af:column>
            <af:column sortProperty="#{bindings.XxpmYarnBlendViewChild.hints.CottonRatio.name}"
                       sortable="true"
                       headerText="#{bindings.XxpmYarnBlendViewChild.hints.CottonRatio.label}"
                       id="c2" align="center" width="66">
              <af:inputText value="#{row.bindings.CottonRatio.inputValue}"
                            label="#{bindings.XxpmYarnBlendViewChild.hints.CottonRatio.label}"
                            required="#{bindings.XxpmYarnBlendViewChild.hints.CottonRatio.mandatory}"
                            columns="#{bindings.XxpmYarnBlendViewChild.hints.CottonRatio.displayWidth}"
                            maximumLength="#{bindings.XxpmYarnBlendViewChild.hints.CottonRatio.precision}"
                            shortDesc="#{bindings.XxpmYarnBlendViewChild.hints.CottonRatio.tooltip}"
                            id="it3" autoSubmit="true"
                            contentStyle="min-width:100%;"
                            disabled="#{row.bindings.Cotton.attributeValue == null ? true : false}"
                            partialTriggers="soc5"
                            binding="#{ViewActions.cottonRatio}">
                <f:validator binding="#{row.bindings.CottonRatio.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.XxpmYarnBlendViewChild.hints.CottonRatio.format}"/>
              </af:inputText>
            </af:column>
            <af:column sortProperty="#{bindings.XxpmYarnBlendViewChild.hints.Fiber.name}"
                       sortable="true"
                       headerText="#{bindings.XxpmYarnBlendViewChild.hints.Fiber.label}"
                       id="c6" align="center" width="180">
              <af:panelGroupLayout id="pgl3" layout="horizontal">
                <af:selectOneChoice value="#{row.bindings.Fiber.inputValue}"
                                    label="#{row.bindings.Fiber.label}"
                                    required="#{bindings.XxpmYarnBlendViewChild.hints.Fiber.mandatory}"
                                    shortDesc="#{bindings.XxpmYarnBlendViewChild.hints.Fiber.tooltip}"
                                    id="soc4" autoSubmit="true"
                                    binding="#{ViewActions.fiber}"
                                    valueChangeListener="#{ViewActions.spnFiberVCL}"
                                    contentStyle="width:150px;">
                  <f:selectItems value="#{row.bindings.Fiber.items}" id="si4"/>
                </af:selectOneChoice>
                <af:commandButton id="commandButton6"
                                  icon="/Images/add-icon 12x12.png"
                                  actionListener="#{ViewActions.addFiberTypeVset}"
                                  immediate="true"/>
              </af:panelGroupLayout>
            </af:column>
            <af:column sortProperty="#{bindings.XxpmYarnBlendViewChild.hints.FiberRatio.name}"
                       sortable="true"
                       headerText="#{bindings.XxpmYarnBlendViewChild.hints.FiberRatio.label}"
                       id="c5" align="center" width="56">
              <af:inputText value="#{row.bindings.FiberRatio.inputValue}"
                            label="#{bindings.XxpmYarnBlendViewChild.hints.FiberRatio.label}"
                            required="#{bindings.XxpmYarnBlendViewChild.hints.FiberRatio.mandatory}"
                            columns="#{bindings.XxpmYarnBlendViewChild.hints.FiberRatio.displayWidth}"
                            maximumLength="#{bindings.XxpmYarnBlendViewChild.hints.FiberRatio.precision}"
                            shortDesc="#{bindings.XxpmYarnBlendViewChild.hints.FiberRatio.tooltip}"
                            id="it2" autoSubmit="true"
                            contentStyle="min-width:100%;"
                            disabled="#{row.bindings.Fiber.attributeValue == null ? true : false}"
                            partialTriggers="soc4"
                            binding="#{ViewActions.fiberRatio}">
                <f:validator binding="#{row.bindings.FiberRatio.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.XxpmYarnBlendViewChild.hints.FiberRatio.format}"/>
              </af:inputText>
            </af:column>
            <af:column headerText="#{bindings.XxpmYarnBlendViewChild.hints.YBResultant.label}"
                       id="c14" align="center" sortable="true" width="250"
                       inlineStyle="font-weight:bold;">
              <af:outputText value="#{row.YBResultant}" id="ot1"
                             binding="#{ViewActions.ybResultant}"/>
            </af:column>
            <af:column id="c16" width="50" align="center" headerText="Delete">
              <af:commandToolbarButton text="Delete"
                                       disabled="#{!bindings.revertOrremoveCurRowValue.enabled}"
                                       id="ctb8" immediate="true">
                <af:showPopupBehavior popupId=":::delYBPopup"
                                      triggerType="action"/>
              </af:commandToolbarButton>
            </af:column>
          </af:table>
        </af:panelCollection>
        <af:popup id="delYBPopup">
          <af:dialog id="delYBDialog" inlineStyle="width:280px;" type="yesNo"
                     dialogListener="#{ViewActions.deleteYBDialog}">
            <af:outputFormatted value="Are you sure you want to delete this record?"
                                id="of12" inlineStyle="font-weight:bold;"/>
          </af:dialog>
        </af:popup>
        <af:panelGroupLayout id="panelGroupLayout2" layout="horizontal">
          <af:commandToolbarButton text="Add Row" id="commandToolbarButton1"
                                   actionListener="#{ViewActions.insertYarnBlend}"/>
        </af:panelGroupLayout>
        <af:spacer width="10" height="20" id="spacer3"/>
        <af:panelStretchLayout id="panelStretchLayout4" startWidth="0px"
                               endWidth="0px" topHeight="0px"
                               bottomHeight="0px" dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Yarn Type" id="outputFormatted5"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelCollection id="pc2" styleClass="AFStretchWidth">
          <af:table value="#{bindings.XxpmYarnTypeViewChild.collectionModel}"
                    var="row" rows="#{bindings.XxpmYarnTypeViewChild.rangeSize}"
                    emptyText="#{bindings.XxpmYarnTypeViewChild.viewable ? 'No data to display.' : 'Access Denied.'}"
                    fetchSize="#{bindings.XxpmYarnTypeViewChild.rangeSize}"
                    rowBandingInterval="0"
                    selectedRowKeys="#{bindings.XxpmYarnTypeViewChild.collectionModel.selectedRow}"
                    selectionListener="#{bindings.XxpmYarnTypeViewChild.collectionModel.makeCurrent}"
                    rowSelection="single" id="t2"
                    contentDelivery="immediate"
                    displayRow="selected" binding="#{ViewActions.ytTable}"
                    columnStretching="column:c15" styleClass="AFStretchWidth"
                    autoHeightRows="#{bindings.XxpmYarnTypeViewChild.estimatedRowCount}">
            <af:column sortProperty="#{bindings.XxpmYarnTypeViewChild.hints.YtId.name}"
                       sortable="true"
                       headerText="#{bindings.XxpmYarnTypeViewChild.hints.YtId.label}"
                       id="c7" rendered="false">
              <af:inputText value="#{row.bindings.YtId.inputValue}"
                            label="#{bindings.XxpmYarnTypeViewChild.hints.YtId.label}"
                            required="#{bindings.XxpmYarnTypeViewChild.hints.YtId.mandatory}"
                            columns="#{bindings.XxpmYarnTypeViewChild.hints.YtId.displayWidth}"
                            maximumLength="#{bindings.XxpmYarnTypeViewChild.hints.YtId.precision}"
                            shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.YtId.tooltip}"
                            id="it6">
                <f:validator binding="#{row.bindings.YtId.validator}"/>
              </af:inputText>
            </af:column>
            <af:column sortProperty="#{bindings.XxpmYarnTypeViewChild.hints.ImId.name}"
                       sortable="true"
                       headerText="#{bindings.XxpmYarnTypeViewChild.hints.ImId.label}"
                       id="c9" rendered="false">
              <af:inputText value="#{row.bindings.ImId.inputValue}"
                            label="#{bindings.XxpmYarnTypeViewChild.hints.ImId.label}"
                            required="#{bindings.XxpmYarnTypeViewChild.hints.ImId.mandatory}"
                            columns="#{bindings.XxpmYarnTypeViewChild.hints.ImId.displayWidth}"
                            maximumLength="#{bindings.XxpmYarnTypeViewChild.hints.ImId.precision}"
                            shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.ImId.tooltip}"
                            id="it8" disabled="true"/>
            </af:column>
            <af:column headerText="#{bindings.XxpmYarnTypeViewChild.hints.DualCore.label}"
                       id="c25" width="40" align="center">
              <af:selectBooleanCheckbox value="#{row.bindings.DualCore.inputValue}"
                                        label="#{row.bindings.DualCore.label}"
                                        shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.DualCore.tooltip}"
                                        id="sbc1" autoSubmit="true"
                                        valueChangeListener="#{ViewActions.dualCoreVCL}"/>
            </af:column>
            <af:column headerText="#{bindings.XxpmYarnTypeViewChild.hints.Multicount.label}"
                       id="c30" width="40" align="center">
              <af:selectBooleanCheckbox value="#{row.bindings.Multicount.inputValue}"
                                        label="#{row.bindings.Multicount.label}"
                                        shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.Multicount.tooltip}"
                                        id="sbc3" autoSubmit="true"/>
            </af:column>
            <af:column sortProperty="#{bindings.XxpmYarnTypeViewChild.hints.FancyYarnType.name}"
                       sortable="true"
                       headerText="#{bindings.XxpmYarnTypeViewChild.hints.FancyYarnType.label}"
                       id="c13" align="center" width="180">
              <af:panelGroupLayout id="pgl4" layout="horizontal">
                <af:selectOneChoice value="#{row.bindings.FancyYarnType.inputValue}"
                                    label="#{row.bindings.FancyYarnType.label}"
                                    required="false"
                                    shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.FancyYarnType.tooltip}"
                                    id="soc9" autoSubmit="true"
                                    valueChangeListener="#{ViewActions.fancyYarnTypeVCL}"
                                    binding="#{ViewActions.fancyYarnType}"
                                    contentStyle="width:150px;">
                  <f:selectItems value="#{row.bindings.FancyYarnType.items}"
                                 id="si7"/>
                </af:selectOneChoice>
                <af:commandButton id="commandButton7"
                                  icon="/Images/add-icon 12x12.png"
                                  actionListener="#{ViewActions.addFancyYarnTypeVset}"
                                  immediate="true"/>
              </af:panelGroupLayout>
            </af:column>
            <af:column sortProperty="#{bindings.XxpmYarnTypeViewChild.hints.FytRatio.name}"
                       sortable="true"
                       headerText="#{bindings.XxpmYarnTypeViewChild.hints.FytRatio.label}"
                       id="c8" align="center" width="60">
              <af:inputText value="#{row.bindings.FytRatio.inputValue}"
                            label="#{bindings.XxpmYarnTypeViewChild.hints.FytRatio.label}"
                            columns="#{bindings.XxpmYarnTypeViewChild.hints.FytRatio.displayWidth}"
                            maximumLength="#{bindings.XxpmYarnTypeViewChild.hints.FytRatio.precision}"
                            shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.FytRatio.tooltip}"
                            id="it7" autoSubmit="true"
                            contentStyle="min-width:100%;"
                            binding="#{ViewActions.fytRatio}"
                            disabled="#{row.bindings.FancyYarnType.attributeValue == null ? true : false}">
                <f:validator binding="#{row.bindings.FytRatio.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.XxpmYarnTypeViewChild.hints.FytRatio.format}"/>
              </af:inputText>
            </af:column>
            <af:column headerText="#{bindings.XxpmYarnTypeViewChild.hints.Dtex1.label}"
                       id="c29" width="40" align="center">
              <af:selectBooleanCheckbox value="#{row.bindings.Dtex1.inputValue}"
                                        label="#{row.bindings.Dtex1.label}"
                                        shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.Dtex1.tooltip}"
                                        id="sbc2" autoSubmit="true"/>
            </af:column>
            <af:column sortProperty="#{bindings.XxpmYarnTypeViewChild.hints.Denier1.name}"
                       sortable="true"
                       headerText="#{bindings.XxpmYarnTypeViewChild.hints.Denier1.label}"
                       id="c10" align="center" width="100">
              <af:panelGroupLayout id="pgl7" layout="horizontal">
                <af:selectOneChoice value="#{row.bindings.Denier1.inputValue}"
                                    label="#{row.bindings.Denier1.label}"
                                    required="#{bindings.XxpmYarnTypeViewChild.hints.Denier1.mandatory}"
                                    shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.Denier1.tooltip}"
                                    id="soc6" autoSubmit="true"
                                    partialTriggers="soc9"
                                    binding="#{ViewActions.denier1}"
                                    valueChangeListener="#{ViewActions.denier1VCL}"
                                    disabled="#{row.bindings.FancyYarnType.attributeValue == null ? true : false}"
                                    contentStyle="width:70px;">
                  <f:selectItems value="#{row.bindings.Denier1.items}"
                                 id="si9"/>
                </af:selectOneChoice>
                <af:commandButton id="commandButton9"
                                  icon="/Images/add-icon 12x12.png"
                                  actionListener="#{ViewActions.addDenier2Vset}"
                                  immediate="true"/>
              </af:panelGroupLayout>
            </af:column>
            <af:column headerText="#{bindings.XxpmYarnTypeViewChild.hints.Draft1.label}"
                       id="c17" align="center" width="40">
              <af:inputText value="#{row.bindings.Draft1.inputValue}"
                            label="#{bindings.XxpmYarnTypeViewChild.hints.Draft1.label}"
                            required="#{bindings.XxpmYarnTypeViewChild.hints.Draft1.mandatory}"
                            columns="#{bindings.XxpmYarnTypeViewChild.hints.Draft1.displayWidth}"
                            maximumLength="#{bindings.XxpmYarnTypeViewChild.hints.Draft1.precision}"
                            shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.Draft1.tooltip}"
                            id="it11"
                            binding="#{ViewActions.draft1}" autoSubmit="true"
                            contentStyle="min-width:100%;"
                            disabled="#{row.bindings.Denier1.attributeValue == null ? true : false}"
                            partialTriggers="soc6">
                <f:validator binding="#{row.bindings.Draft1.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.XxpmYarnTypeViewChild.hints.Draft1.format}"/>
              </af:inputText>
            </af:column>
            <af:column headerText="#{bindings.XxpmYarnTypeViewChild.hints.FancyYarnType2.label}"
                       id="c26" width="180" align="center" sortable="true"
                       sortProperty="#{bindings.XxpmYarnTypeViewChild.hints.FancyYarnType2.name}">
              <af:panelGroupLayout id="pgl9" layout="horizontal">
                <af:selectOneChoice value="#{row.bindings.FancyYarnType2.inputValue}"
                                    label="#{row.bindings.FancyYarnType2.label}"
                                    required="#{bindings.XxpmYarnTypeViewChild.hints.FancyYarnType2.mandatory}"
                                    shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.FancyYarnType2.tooltip}"
                                    id="soc10" autoSubmit="true"
                                    disabled="#{row.bindings.DualCore.attributeValue == null ? true : false}"
                                    binding="#{ViewActions.fancyYarnType2}"
                                    contentStyle="width:150px;"
                                    valueChangeListener="#{ViewActions.fancyYarnType2VCL}"
                                    partialTriggers="sbc1">
                  <f:selectItems value="#{row.bindings.FancyYarnType2.items}"
                                 id="si10"/>
                </af:selectOneChoice>
                <af:commandButton id="commandButton11"
                                  icon="/Images/add-icon 12x12.png"
                                  actionListener="#{ViewActions.addFancyYarnTypeVset}"
                                  immediate="true"/>
              </af:panelGroupLayout>
            </af:column>
            <af:column headerText="#{bindings.XxpmYarnTypeViewChild.hints.FytRatio2.label}"
                       id="c27" width="60" align="center">
              <af:inputText value="#{row.bindings.FytRatio2.inputValue}"
                            label="#{bindings.XxpmYarnTypeViewChild.hints.FytRatio2.label}"
                            required="#{bindings.XxpmYarnTypeViewChild.hints.FytRatio2.mandatory}"
                            columns="#{bindings.XxpmYarnTypeViewChild.hints.FytRatio2.displayWidth}"
                            maximumLength="#{bindings.XxpmYarnTypeViewChild.hints.FytRatio2.precision}"
                            shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.FytRatio2.tooltip}"
                            id="it18" autoSubmit="true"
                            binding="#{ViewActions.fytRatio2}"
                            contentStyle="min-width:100%;"
                            partialTriggers="soc10"
                            disabled="#{row.bindings.FancyYarnType2.attributeValue == null ? true : false}">
                <f:validator binding="#{row.bindings.FytRatio2.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.XxpmYarnTypeViewChild.hints.FytRatio2.format}"/>
              </af:inputText>
            </af:column>
            <af:column headerText="#{bindings.XxpmYarnTypeViewChild.hints.Dtex2.label}"
                       id="c31" width="40" align="center">
              <af:selectBooleanCheckbox value="#{row.bindings.Dtex2.inputValue}"
                                        label="#{row.bindings.Dtex2.label}"
                                        shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.Dtex2.tooltip}"
                                        id="sbc4" autoSubmit="true"/>
            </af:column>
            <af:column sortProperty="#{bindings.XxpmYarnTypeViewChild.hints.Denier2.name}"
                       sortable="true"
                       headerText="#{bindings.XxpmYarnTypeViewChild.hints.Denier2.label}"
                       id="c11" align="center" width="100">
              <af:panelGroupLayout id="pgl8" layout="horizontal">
                <af:selectOneChoice value="#{row.bindings.Denier2.inputValue}"
                                    label="#{row.bindings.Denier2.label}"
                                    required="#{bindings.XxpmYarnTypeViewChild.hints.Denier2.mandatory}"
                                    shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.Denier2.tooltip}"
                                    id="soc7" autoSubmit="true"
                                    contentStyle="width:70px;"
                                    binding="#{ViewActions.denier2}"
                                    partialTriggers="soc10"
                                    valueChangeListener="#{ViewActions.denier2VCL}"
                                    disabled="#{row.bindings.FancyYarnType2.attributeValue == null ? true : false}">
                  <f:selectItems value="#{row.bindings.Denier2.items}"
                                 id="si6"/>
                </af:selectOneChoice>
                <af:commandButton id="commandButton10"
                                  icon="/Images/add-icon 12x12.png"
                                  actionListener="#{ViewActions.addDenier2Vset}"
                                  immediate="true"/>
              </af:panelGroupLayout>
            </af:column>
            <af:column headerText="#{bindings.XxpmYarnTypeViewChild.hints.Draft2.label}"
                       id="c18" align="center" width="40">
              <af:inputText value="#{row.bindings.Draft2.inputValue}"
                            label="#{bindings.XxpmYarnTypeViewChild.hints.Draft2.label}"
                            required="#{bindings.XxpmYarnTypeViewChild.hints.Draft2.mandatory}"
                            columns="#{bindings.XxpmYarnTypeViewChild.hints.Draft2.displayWidth}"
                            maximumLength="#{bindings.XxpmYarnTypeViewChild.hints.Draft2.precision}"
                            shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.Draft2.tooltip}"
                            id="it12"
                            binding="#{ViewActions.draft2}" autoSubmit="true"
                            contentStyle="min-width:100%;"
                            partialTriggers="soc7"
                            disabled="#{row.bindings.Denier2.attributeValue == null ? true : false}">
                <f:validator binding="#{row.bindings.Draft2.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.XxpmYarnTypeViewChild.hints.Draft2.format}"/>
              </af:inputText>
            </af:column>
            <af:column sortProperty="#{bindings.XxpmYarnTypeViewChild.hints.SlubCode.name}"
                       sortable="true"
                       headerText="#{bindings.XxpmYarnTypeViewChild.hints.SlubCode.label}"
                       id="c12" align="center" width="120">
              <af:panelGroupLayout id="pgl6" layout="horizontal">
                <af:selectOneChoice value="#{row.bindings.SlubCode.inputValue}"
                                    label="#{row.bindings.SlubCode.label}"
                                    required="#{bindings.XxpmYarnTypeViewChild.hints.SlubCode.mandatory}"
                                    shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.SlubCode.tooltip}"
                                    id="soc8" autoSubmit="true"
                                    binding="#{ViewActions.slubCode}"
                                    contentStyle="width:90px;">
                  <f:selectItems value="#{row.bindings.SlubCode.items}"
                                 id="si8"/>
                </af:selectOneChoice>
                <af:commandButton id="commandButton8"
                                  icon="/Images/add-icon 12x12.png"
                                  actionListener="#{ViewActions.addSlubCodeVset}"
                                  immediate="true"/>
              </af:panelGroupLayout>
            </af:column>
            <af:column headerText="#{bindings.XxpmYarnTypeViewChild.hints.YTResultant.label}"
                       id="c15" sortable="true" align="center" width="250"
                       inlineStyle="font-weight:bold;">
              <af:outputText value="#{row.YTResultant}" id="ot2"
                             partialTriggers="soc9 it7 soc6 it11 soc10 it18 soc7 it12 soc8"
                             binding="#{ViewActions.ytResultant}"/>
            </af:column>
            <af:column headerText="#{bindings.XxpmYarnTypeViewChild.hints.NewRow.label}"
                       id="c28" rendered="false">
              <af:inputText value="#{row.bindings.NewRow.inputValue}"
                            label="#{bindings.XxpmYarnTypeViewChild.hints.NewRow.label}"
                            required="#{bindings.XxpmYarnTypeViewChild.hints.NewRow.mandatory}"
                            columns="#{bindings.XxpmYarnTypeViewChild.hints.NewRow.displayWidth}"
                            maximumLength="#{bindings.XxpmYarnTypeViewChild.hints.NewRow.precision}"
                            shortDesc="#{bindings.XxpmYarnTypeViewChild.hints.NewRow.tooltip}"
                            id="it19">
                <f:validator binding="#{row.bindings.NewRow.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.XxpmYarnTypeViewChild.hints.NewRow.format}"/>
              </af:inputText>
            </af:column>
            <af:column id="column1" width="50" align="center"
                       headerText="Delete" rendered="false">
              <af:commandToolbarButton text="Delete"
                                       disabled="#{!bindings.revertOrremoveCurRowValue.enabled}"
                                       id="commandToolbarButton3"
                                       immediate="true">
                <af:showPopupBehavior popupId=":::delYTPopup"
                                      triggerType="action"/>
              </af:commandToolbarButton>
            </af:column>
          </af:table>
        </af:panelCollection>
        <af:panelGroupLayout id="panelGroupLayout3" layout="horizontal"
                             rendered="false">
          <af:commandToolbarButton text="Add Row" id="commandToolbarButton2"
                                   actionListener="#{ViewActions.insertYarnType}"/>
        </af:panelGroupLayout>
        <af:popup id="delYTPopup">
          <af:dialog id="delYTDialog" inlineStyle="width:280px;" type="yesNo"
                     dialogListener="#{ViewActions.deleteYTDialog}">
            <af:outputFormatted value="Are you sure you want to delete this record?"
                                id="outputFormatted13"
                                inlineStyle="font-weight:bold;"/>
          </af:dialog>
        </af:popup>
        <af:spacer width="10" height="20" id="spacer5"/>
        <af:panelStretchLayout id="panelStretchLayout7" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Dyed Yarn" id="outputFormatted21"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout2">
          <af:gridRow marginTop="5px" height="auto" id="gridRow2">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell3">
              <af:outputFormatted value="Dyed" id="outputFormatted11"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell4"
                         halign="center">
              <af:outputFormatted value="Color" id="outputFormatted15"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell5"
                         halign="center">
              <af:outputFormatted value="Ref Lot #" id="outputFormatted17"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell6"
                         halign="center">
              <af:outputFormatted value="Resultant" id="outputFormatted19"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow3">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell7">
              <af:selectBooleanCheckbox value="#{bindings.Dyed.inputValue}"
                                        label="#{bindings.Dyed.label}"
                                        shortDesc="#{bindings.Dyed.hints.tooltip}"
                                        id="sbc5" autoSubmit="true"
                                        simple="true"
                                        contentStyle="width:40px;"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell8">
              <af:inputText value="#{bindings.DyeColor.inputValue}"
                            label="#{bindings.DyeColor.hints.label}"
                            required="#{bindings.DyeColor.hints.mandatory}"
                            columns="#{bindings.DyeColor.hints.displayWidth}"
                            maximumLength="#{bindings.DyeColor.hints.precision}"
                            shortDesc="#{bindings.DyeColor.hints.tooltip}"
                            partialTriggers="itlov1" id="it20"
                            autoSubmit="true" simple="true" rendered="false">
                <f:validator binding="#{bindings.DyeColor.validator}"/>
              </af:inputText>
              <af:inputListOfValues id="itlov1"
                                    popupTitle="Search and Select: #{bindings.DyeColorNameTrans.hints.label}"
                                    value="#{bindings.DyeColorNameTrans.inputValue}"
                                    label="#{bindings.DyeColorNameTrans.hints.label}"
                                    model="#{bindings.DyeColorNameTrans.listOfValuesModel}"
                                    required="#{bindings.DyeColorNameTrans.hints.mandatory}"
                                    columns="#{bindings.DyeColorNameTrans.hints.displayWidth}"
                                    shortDesc="#{bindings.DyeColorNameTrans.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:120px;">
                <f:validator binding="#{bindings.DyeColorNameTrans.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc11">
              <af:inputText value="#{bindings.RefLotNum.inputValue}"
                            label="#{bindings.RefLotNum.hints.label}"
                            required="#{bindings.RefLotNum.hints.mandatory}"
                            columns="#{bindings.RefLotNum.hints.displayWidth}"
                            maximumLength="#{bindings.RefLotNum.hints.precision}"
                            shortDesc="#{bindings.RefLotNum.hints.tooltip}"
                            id="it21" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.RefLotNum.validator}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc12">
              <af:outputFormatted value="#{bindings.DyedResultant.inputValue}"
                                  id="of4" partialTriggers="sbc5 itlov1 it21"
                                  styleClass="width:250px;"/>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:spacer width="10" height="20" id="spacer9"/>
        <af:toolbar id="t4">
          <af:commandToolbarButton text="Add" id="ctb5"
                                   actionListener="#{ViewActions.insertMasterSpnItem}"
                                   binding="#{ViewActions.spnAddButtonProp}"
                                   partialTriggers="ctb5 ctb6 ctb7"/>
          <af:spacer width="10" height="10" id="s6"/>
          <af:commandToolbarButton text="Save" id="ctb6"
                                   actionListener="#{ViewActions.commitSpn}"/>
          <af:spacer width="10" height="10" id="s5"/>
          <af:commandToolbarButton text="Clear" id="ctb7"
                                   actionListener="#{ViewActions.rollbackSpn}"
                                   immediate="true">
            <af:resetActionListener/>
          </af:commandToolbarButton>
        </af:toolbar>
        <af:popup id="AddValPopup">
          <af:dialog id="d2" title="Add new value" contentWidth="300"
                     type="okCancel"
                     dialogListener="#{ViewActions.spnAddVsetVal}">
            <af:inputText label="Value" id="it17"
                          value="#{bindings.BindVsetVal.inputValue}" autoSubmit="true"/>
            <af:inputText label="Value Set" id="inputText3"
                          value="#{bindings.BindValueSet.inputValue}"
                          autoSubmit="true" rendered="false"/>
          </af:dialog>
        </af:popup>
      </af:panelFormLayout>
    </af:form>
  </af:document>
</f:view>