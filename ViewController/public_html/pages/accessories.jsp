<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<f:view>
  <af:document id="d1" title="Accessories Item Creation Form">
    <af:messages id="m1"/>
    <af:form id="f1" usesUpload="true">
      <af:panelStretchLayout id="psl1" startWidth="0px" endWidth="0px"
                             topHeight="0px" bottomHeight="0px"
                             dimensionsFrom="children">
        <f:facet name="center">
          <af:image source="/Images/Banners/Accessory.png" id="i1"
                    inlineStyle="color:white; font-weight:bold;"/>
        </f:facet>
      </af:panelStretchLayout>
      <af:panelStretchLayout id="panelStretchLayout31" startWidth="0px"
                             endWidth="0px" topHeight="0px" bottomHeight="0px"
                             inlineStyle="background-color:rgb(33,127,188); text-align:right;"
                             rendered="true" dimensionsFrom="children">
        <f:facet name="center">
          <af:panelGroupLayout layout="scroll"
                               xmlns:af="http://xmlns.oracle.com/adf/faces/rich"
                               id="panelGroupLayout3">
            <af:goLink text="Home" id="gl1"
                       destination="http://prodapp.nishat.net:8001/OA_HTML/OA.jsp?OAFunc=OAHOMEPAGE"
                       inlineStyle="color:white; font-weight:bold;"/>
          </af:panelGroupLayout>
        </f:facet>
      </af:panelStretchLayout>
      <af:panelGroupLayout id="pgl22" layout="vertical">
        <af:panelStretchLayout id="panelStretchLayout8" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Search Item" id="outputFormatted337"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:spacer width="10" height="10" id="spacer9"/>
        <af:panelGroupLayout id="panelGroupLayout2" layout="horizontal">
          <af:outputFormatted value="Item Description" id="of11"/>
          <af:spacer width="10" height="10" id="s7"/>
          <af:inputListOfValues popupTitle="Search and Result Dialog" id="ilov1"
                                simple="true"
                                value="#{bindings.BindDescAcc.inputValue}"
                                autoSubmit="true"
                                valueChangeListener="#{ViewActions.searchItemAccVCL}"
                                binding="#{ViewActions.searchLovAcc}"
                                model="#{bindings.AccDescriptionLov.listOfValuesModel}"
                                disabled="#{bindings.AccessoryItemDescViewIterator.estimatedRowCount < 1 ? true : false}"
                                partialTriggers="cb5 cb6"/>
          <af:spacer width="10" height="10" id="spacer7"/>
          <af:commandToolbarButton actionListener="#{ViewActions.searchItemAccButton}"
                                   text="Go"
                                   disabled="#{!bindings.ExecuteWithParams.enabled}"
                                   id="commandToolbarButton1" immediate="true"/>
        </af:panelGroupLayout>
        <af:spacer width="10" height="10" id="spacer8"/>
        <af:panelGroupLayout layout="horizontal" id="pgl1">
          <af:commandToolbarButton actionListener="#{bindings.First.execute}"
                                   text="First"
                                   disabled="#{!bindings.First.enabled}"
                                   partialSubmit="true" id="cb3"/>
          <af:spacer width="10" height="10" id="s3"/>
          <af:commandToolbarButton actionListener="#{bindings.Previous.execute}"
                                   text="Previous"
                                   disabled="#{!bindings.Previous.enabled}"
                                   partialSubmit="true" id="cb4"/>
          <af:spacer width="10" height="10" id="spacer1"/>
          <af:commandToolbarButton actionListener="#{bindings.Next.execute}"
                                   text="Next"
                                   disabled="#{!bindings.Next.enabled}"
                                   partialSubmit="true" id="cb2"/>
          <af:spacer width="10" height="10" id="spacer2"/>
          <af:commandToolbarButton actionListener="#{bindings.Last.execute}"
                                   text="Last"
                                   disabled="#{!bindings.Last.enabled}"
                                   partialSubmit="true" id="cb1"/>
          <af:spacer width="10" height="10" id="spacer6"/>
          <af:commandToolbarButton text="Copy Item" partialSubmit="true"
                                   id="commandToolbarButton5"
                                   actionListener="#{ViewActions.copyAccItem}"/>
          <af:spacer width="10" height="10" id="spacer3"/>
          <af:commandToolbarButton text="Attachments" partialSubmit="true"
                                   id="commandToolbarButton4"
                                   rendered="#{bindings.AccTypeValueDisplay.inputValue == null || bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                   partialTriggers="cb5">
            <af:showPopupBehavior popupId="attachmentPopup"
                                  triggerType="action"/>
          </af:commandToolbarButton>
          <af:popup id="attachmentPopup" contentDelivery="lazyUncached">
            <af:dialog id="attachmentDialog" type="ok" title="File Attachment"
                       contentWidth="300" contentHeight="200">
              <af:inputFile id="if1" autoSubmit="true" label="Upload File"
                            valueChangeListener="#{ViewActions.uploadFileAccVCL}"/>
              <af:table value="#{bindings.XxpmAttachmentsViewChildAcc.collectionModel}"
                        var="row"
                        rows="#{bindings.XxpmAttachmentsViewChildAcc.rangeSize}"
                        emptyText="#{bindings.XxpmAttachmentsViewChildAcc.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.XxpmAttachmentsViewChildAcc.rangeSize}"
                        rowBandingInterval="0"
                        selectedRowKeys="#{bindings.XxpmAttachmentsViewChildAcc.collectionModel.selectedRow}"
                        selectionListener="#{bindings.XxpmAttachmentsViewChildAcc.collectionModel.makeCurrent}"
                        rowSelection="single" id="t5"
                        styleClass="AFStretchWidth" partialTriggers="if1">
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildAcc.hints.AtchId.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildAcc.hints.AtchId.label}"
                           id="c23" rendered="false">
                  <af:outputFormatted value="#{row.bindings.AtchId.inputValue}"
                                      id="of3"/>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildAcc.hints.ImId.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildAcc.hints.ImId.label}"
                           id="c21" rendered="false">
                  <af:inputText value="#{row.bindings.ImId.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChildAcc.hints.ImId.label}"
                                required="#{bindings.XxpmAttachmentsViewChildAcc.hints.ImId.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChildAcc.hints.ImId.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChildAcc.hints.ImId.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChildAcc.hints.ImId.tooltip}"
                                id="inputText78">
                    <f:validator binding="#{row.bindings.ImId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmAttachmentsViewChildAcc.hints.ImId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildAcc.hints.FileCode.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildAcc.hints.FileCode.label}"
                           id="c20" rendered="false">
                  <af:inputText value="#{row.bindings.FileCode.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChildAcc.hints.FileCode.label}"
                                required="#{bindings.XxpmAttachmentsViewChildAcc.hints.FileCode.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChildAcc.hints.FileCode.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChildAcc.hints.FileCode.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChildAcc.hints.FileCode.tooltip}"
                                id="it15">
                    <f:validator binding="#{row.bindings.FileCode.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.XxpmAttachmentsViewChildAcc.hints.FileCode.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildAcc.hints.FileName.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildAcc.hints.FileName.label}"
                           id="c22" width="250" rendered="true" align="center">
                  <af:inputText value="#{row.bindings.FileName.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChildAcc.hints.FileName.label}"
                                required="#{bindings.XxpmAttachmentsViewChildAcc.hints.FileName.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChildAcc.hints.FileName.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChildAcc.hints.FileName.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChildAcc.hints.FileName.tooltip}"
                                id="inputText83" autoSubmit="true">
                    <f:validator binding="#{row.bindings.FileName.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.XxpmAttachmentsViewChildAcc.hints.Path.name}"
                           sortable="true"
                           headerText="#{bindings.XxpmAttachmentsViewChildAcc.hints.Path.label}"
                           id="c19" rendered="false">
                  <af:inputText value="#{row.bindings.Path.inputValue}"
                                label="#{bindings.XxpmAttachmentsViewChildAcc.hints.Path.label}"
                                required="#{bindings.XxpmAttachmentsViewChildAcc.hints.Path.mandatory}"
                                columns="#{bindings.XxpmAttachmentsViewChildAcc.hints.Path.displayWidth}"
                                maximumLength="#{bindings.XxpmAttachmentsViewChildAcc.hints.Path.precision}"
                                shortDesc="#{bindings.XxpmAttachmentsViewChildAcc.hints.Path.tooltip}"
                                id="it16">
                    <f:validator binding="#{row.bindings.Path.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column id="c24" headerText="Download" rendered="true"
                           width="60">
                  <af:commandLink text="Download" id="cl2">
                    <af:fileDownloadActionListener filename="#{row.bindings.FileName.inputValue}"
                                                   method="#{ViewActions.downloadFileAccListener}"/>
                  </af:commandLink>
                </af:column>
              </af:table>
            </af:dialog>
          </af:popup>
        </af:panelGroupLayout>
        <af:spacer width="10" height="10" id="spacer4"/>
        <af:panelStretchLayout id="panelStretchLayout1" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Category" id="outputFormatted5"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGroupLayout id="pgl21" layout="vertical">
          <af:selectOneChoice value="#{bindings.AccAccessoryType.inputValue}"
                              label="#{bindings.AccAccessoryType.label}"
                              required="#{bindings.AccAccessoryType.hints.mandatory}"
                              shortDesc="#{bindings.AccAccessoryType.hints.tooltip}"
                              id="soc38" simple="true" autoSubmit="true"
                              immediate="true"
                              valueChangeListener="#{ViewActions.accCategoryChangeVCL}">
            <f:selectItems value="#{bindings.AccAccessoryType.items}" id="si1"/>
          </af:selectOneChoice>
          <af:inputText value="#{bindings.AccTypeValueDisplay.inputValue}"
                        simple="true"
                        required="#{bindings.AccTypeValueDisplay.hints.mandatory}"
                        columns="#{bindings.AccTypeValueDisplay.hints.displayWidth}"
                        maximumLength="#{bindings.AccTypeValueDisplay.hints.precision}"
                        shortDesc="#{bindings.AccTypeValueDisplay.hints.tooltip}"
                        id="it110" autoSubmit="true" rendered="false">
            <f:validator binding="#{bindings.AccTypeValueDisplay.validator}"/>
          </af:inputText>
        </af:panelGroupLayout>
        <af:spacer width="10" height="10" id="spacer5"/>
        <af:panelStretchLayout id="panelStretchLayout3" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue != null  ? true : false}"
                               partialTriggers="it110"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Item Information" id="outputFormatted12"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="pgl19"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue != null  ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gr48">
            <af:gridCell width="150px" id="gc220" marginStart="5px"
                         marginEnd="0px">
              <af:outputFormatted value="Item Code" id="of1"/>
            </af:gridCell>
            <af:gridCell width="25%" id="gc221" marginStart="5px"
                         marginEnd="0px">
              <af:inputText label="#{bindings.Segment2.hints.label}" id="it111"
                            simple="true"
                            value="#{bindings.Segment2.inputValue}"
                            required="#{bindings.Segment2.hints.mandatory}"
                            columns="#{bindings.Segment2.hints.displayWidth}"
                            maximumLength="#{bindings.Segment2.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true"
                            disabled="true">
                <f:validator binding="#{bindings.Segment2.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr100" height="auto" marginTop="5px"
                      marginBottom="5px">
            <af:gridCell id="gc95" width="dontCare" marginStart="5px"
                         marginEnd="0px">
              <af:outputFormatted value="Item Description"
                                  id="outputFormatted336"/>
            </af:gridCell>
            <af:gridCell id="gc96" width="dontCare" marginEnd="0px"
                         marginStart="5px">
              <af:inputText value="#{bindings.Description.inputValue}"
                            simple="true"
                            required="#{bindings.Description.hints.mandatory}"
                            columns="#{bindings.Description.hints.displayWidth}"
                            maximumLength="#{bindings.Description.hints.precision}"
                            shortDesc="#{bindings.Description.hints.tooltip}"
                            id="it44" disabled="true"
                            contentStyle="width:1120px; color:Black;"
                            partialTriggers="it13">
                <f:validator binding="#{bindings.Description.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow257" height="auto" marginTop="5px"
                      marginBottom="5px">
            <af:gridCell id="gridCell517" width="dontCare" marginStart="5px"
                         marginEnd="0px">
              <af:outputFormatted value="Item Activation Status"
                                  id="outputFormatted398"/>
            </af:gridCell>
            <af:gridCell id="gridCell518" width="dontCare" marginEnd="0px"
                         marginStart="5px">
              <af:panelGroupLayout id="pgl7" layout="horizontal"
                                   partialTriggers="cb7">
                <af:inputText value="#{bindings.ItemStatusFlagTrans.inputValue}"
                              simple="true"
                              required="#{bindings.ItemStatusFlagTrans.hints.mandatory}"
                              columns="#{bindings.ItemStatusFlagTrans.hints.displayWidth}"
                              maximumLength="#{bindings.ItemStatusFlagTrans.hints.precision}"
                              shortDesc="#{bindings.ItemStatusFlagTrans.hints.tooltip}"
                              id="inputText160" disabled="true"
                              contentStyle="width:100px; color:Black;">
                  <f:validator binding="#{bindings.ItemStatusFlagTrans.validator}"/>
                </af:inputText>
                <af:spacer width="10" height="10" id="s1"/>
                <af:commandButton text="Change Status" id="cb7"
                                  partialSubmit="true"
                                  actionListener="#{ViewActions.changeItemStatusFlagValueBtn}"
                                  rendered="#{sessionScope.respID == '53095' ? true : false}"/>
              </af:panelGroupLayout>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout2" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Bags' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Bags" id="outputFormatted1"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:inputText value="#{bindings.Segment1.inputValue}"
                      label="#{bindings.Segment1.hints.label}"
                      required="#{bindings.Segment1.hints.mandatory}"
                      columns="#{bindings.Segment1.hints.displayWidth}"
                      maximumLength="#{bindings.Segment1.hints.precision}"
                      shortDesc="#{bindings.Segment1.hints.tooltip}" id="it86"
                      autoSubmit="true" rendered="false" simple="true">
          <f:validator binding="#{bindings.Segment1.validator}"/>
        </af:inputText>
        <af:panelGridLayout id="pgl2"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Bags' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gr12">
            <af:gridCell marginStart="5px" width="100px" id="gc40">
              <af:outputFormatted value="Item Status*" id="outputFormatted9"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc5">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.AccTypeValueDisplay.inputValue == 'Bags' ? true : false}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="soc58" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.Segment3.items}" id="si58"/>
              </af:selectOneChoice>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc25">
              <af:outputFormatted value="Button Material"
                                  id="outputFormatted20"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc50">
              <af:selectOneChoice value="#{bindings.BgBtnMaterial.inputValue}"
                                  label="#{bindings.BgBtnMaterial.label}"
                                  required="#{bindings.BgBtnMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.BgBtnMaterial.hints.tooltip}"
                                  id="soc36" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accBgBtnMaterial}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.BgBtnMaterial.items}"
                               id="si27"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton1"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccBgBtnMaterialVset}"
                                immediate="true" partialSubmit="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr3">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell399">
              <af:outputFormatted value="Item UOM" id="outputFormatted85"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell400">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice48" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems48"/>
              </af:selectOneChoice>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc14">
              <af:outputFormatted value="Button Color" id="outputFormatted21"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc29">
              <af:selectOneChoice value="#{bindings.BgBtnColor.inputValue}"
                                  label="#{bindings.BgBtnColor.label}"
                                  required="#{bindings.BgBtnColor.hints.mandatory}"
                                  shortDesc="#{bindings.BgBtnColor.hints.tooltip}"
                                  id="soc45" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accBgBtnColor}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.BgBtnColor.items}" id="si28"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton2"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccBgBtnColorVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr6">
            <af:gridCell marginStart="5px" width="dontCare" id="gc35">
              <af:outputFormatted value="Width" id="outputFormatted10"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc42">
              <af:inputText label="#{bindings.AccWidth.hints.label}"
                            id="inputText2" simple="true"
                            value="#{bindings.AccWidth.inputValue}"
                            required="#{bindings.AccWidth.hints.mandatory}"
                            columns="#{bindings.AccWidth.hints.displayWidth}"
                            maximumLength="#{bindings.AccWidth.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWidth.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccWidth.format}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc38">
              <af:outputFormatted value="Zip Size" id="outputFormatted22"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc39">
              <af:inputText value="#{bindings.BgZipSize.inputValue}"
                            label="#{bindings.BgZipSize.hints.label}"
                            required="#{bindings.BgZipSize.hints.mandatory}"
                            columns="#{bindings.BgZipSize.hints.displayWidth}"
                            maximumLength="#{bindings.BgZipSize.hints.precision}"
                            shortDesc="#{bindings.BgZipSize.hints.tooltip}"
                            id="it4" simple="true" contentStyle="width:100px;"
                            autoSubmit="true">
                <f:validator binding="#{bindings.BgZipSize.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr16">
            <af:gridCell marginStart="5px" width="dontCare" id="gc23">
              <af:outputFormatted value="Height" id="outputFormatted11"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc20">
              <af:inputText label="#{bindings.AccHeight.hints.label}"
                            id="inputText3" simple="true"
                            value="#{bindings.AccHeight.inputValue}"
                            required="#{bindings.AccHeight.hints.mandatory}"
                            columns="#{bindings.AccHeight.hints.displayWidth}"
                            maximumLength="#{bindings.AccHeight.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccHeight.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccHeight.format}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc33">
              <af:outputFormatted value="Zip Color" id="outputFormatted23"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc16">
              <af:selectOneChoice value="#{bindings.BgZipColor.inputValue}"
                                  label="#{bindings.BgZipColor.label}"
                                  required="#{bindings.BgZipColor.hints.mandatory}"
                                  shortDesc="#{bindings.BgZipColor.hints.tooltip}"
                                  id="soc26" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accBgZipColor}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.BgZipColor.items}" id="si41"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton3"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccBgZipColorVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr4">
            <af:gridCell marginStart="5px" width="dontCare" id="gc45">
              <af:outputFormatted value="Gusset" id="outputFormatted13"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc31">
              <af:inputText value="#{bindings.BgGusset.inputValue}"
                            label="#{bindings.BgGusset.hints.label}"
                            required="#{bindings.BgGusset.hints.mandatory}"
                            columns="#{bindings.BgGusset.hints.displayWidth}"
                            maximumLength="#{bindings.BgGusset.hints.precision}"
                            shortDesc="#{bindings.BgGusset.hints.tooltip}"
                            id="it10" simple="true" contentStyle="width:100px;"
                            autoSubmit="true">
                <f:validator binding="#{bindings.BgGusset.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.BgGusset.format}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc28">
              <af:outputFormatted value="Zip Material" id="outputFormatted24"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc12">
              <af:selectOneChoice value="#{bindings.BgZipMaterial.inputValue}"
                                  label="#{bindings.BgZipMaterial.label}"
                                  required="#{bindings.BgZipMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.BgZipMaterial.hints.tooltip}"
                                  id="soc57" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accBgZipMaterial}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.BgZipMaterial.items}"
                               id="si24"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton4"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccBgZipMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr7">
            <af:gridCell marginStart="5px" width="dontCare" id="gc46">
              <af:outputFormatted value="Flap" id="outputFormatted14"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc27">
              <af:inputText value="#{bindings.BgFlap.inputValue}"
                            label="#{bindings.BgFlap.hints.label}"
                            required="#{bindings.BgFlap.hints.mandatory}"
                            columns="#{bindings.BgFlap.hints.displayWidth}"
                            maximumLength="#{bindings.BgFlap.hints.precision}"
                            shortDesc="#{bindings.BgFlap.hints.tooltip}"
                            id="it39" simple="true" contentStyle="width:100px;"
                            autoSubmit="true">
                <f:validator binding="#{bindings.BgFlap.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.BgFlap.format}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc49">
              <af:outputFormatted value="Bag Material" id="outputFormatted25"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc48">
              <af:selectOneChoice value="#{bindings.BgBagMaterial.inputValue}"
                                  label="#{bindings.BgBagMaterial.label}"
                                  required="#{bindings.BgBagMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.BgBagMaterial.hints.tooltip}"
                                  id="soc37" partialTriggers="it110"
                                  simple="true" contentStyle="width:106px;"
                                  binding="#{ViewActions.accBgBagMaterial}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.BgBagMaterial.items}"
                               id="si44"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton6"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccBgBagMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr8">
            <af:gridCell marginStart="5px" width="dontCare" id="gc11">
              <af:outputFormatted value="Dimensions" id="outputFormatted15"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc17">
              <af:inputText value="#{bindings.BgBagDimensions.inputValue}"
                            label="#{bindings.BgBagDimensions.hints.label}"
                            required="#{bindings.BgBagDimensions.hints.mandatory}"
                            columns="#{bindings.BgBagDimensions.hints.displayWidth}"
                            maximumLength="#{bindings.BgBagDimensions.hints.precision}"
                            shortDesc="#{bindings.BgBagDimensions.hints.tooltip}"
                            id="it94" autoSubmit="true" simple="true"
                            contentStyle="width:100px;" rendered="false"
                            partialTriggers="ot1">
                <f:validator binding="#{bindings.BgBagDimensions.validator}"/>
              </af:inputText>
              <af:inputText value="#{bindings.BagDimensionsTrans.inputValue}"
                            id="ot1" simple="true" disabled="true"
                            contentStyle="width:100px;" autoSubmit="true"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc47">
              <af:outputFormatted value="Material Specs"
                                  id="outputFormatted26"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc44">
              <af:inputText value="#{bindings.BgMaterialSpecs.inputValue}"
                            label="#{bindings.BgMaterialSpecs.hints.label}"
                            required="#{bindings.BgMaterialSpecs.hints.mandatory}"
                            columns="#{bindings.BgMaterialSpecs.hints.displayWidth}"
                            maximumLength="#{bindings.BgMaterialSpecs.hints.precision}"
                            shortDesc="#{bindings.BgMaterialSpecs.hints.tooltip}"
                            id="it109" simple="true" contentStyle="width:100px;"
                            autoSubmit="true">
                <f:validator binding="#{bindings.BgMaterialSpecs.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr19">
            <af:gridCell marginStart="5px" width="dontCare" id="gc30">
              <af:outputFormatted value="Size" id="outputFormatted16"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc19">
              <af:selectOneChoice value="#{bindings.Segment5.inputValue}"
                                  label="#{bindings.Segment5.label}"
                                  required="#{bindings.Segment5.hints.mandatory}"
                                  shortDesc="#{bindings.Segment5.hints.tooltip}"
                                  id="soc59" simple="true"
                                  contentStyle="width:100px;" rendered="false">
                <f:selectItems value="#{bindings.Segment5.items}" id="si59"/>
              </af:selectOneChoice>
              <af:inputText value="#{bindings.BagSizeTrans.inputValue}"
                            id="inputText1" simple="true" disabled="true"
                            required="#{bindings.BagSizeTrans.hints.mandatory}"
                            columns="#{bindings.BagSizeTrans.hints.displayWidth}"
                            maximumLength="#{bindings.BagSizeTrans.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.BagSizeTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc13">
              <af:outputFormatted value="Material Guage"
                                  id="outputFormatted27"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc9">
              <af:inputText value="#{bindings.BgMaterialGuage.inputValue}"
                            label="#{bindings.BgMaterialGuage.hints.label}"
                            required="#{bindings.BgMaterialGuage.hints.mandatory}"
                            columns="#{bindings.BgMaterialGuage.hints.displayWidth}"
                            maximumLength="#{bindings.BgMaterialGuage.hints.precision}"
                            shortDesc="#{bindings.BgMaterialGuage.hints.tooltip}"
                            id="it82" simple="true" contentStyle="width:100px;"
                            autoSubmit="true">
                <f:validator binding="#{bindings.BgMaterialGuage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr14">
            <af:gridCell marginStart="5px" width="dontCare" id="gc10">
              <af:outputFormatted value="Program Name*" id="outputFormatted17"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc7">
              <af:inputListOfValues id="ilov70"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc32">
              <af:outputFormatted value="Pocket" id="outputFormatted28"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc6">
              <af:selectOneChoice value="#{bindings.BgBagPocket.inputValue}"
                                  label="#{bindings.BgBagPocket.label}"
                                  required="#{bindings.BgBagPocket.hints.mandatory}"
                                  shortDesc="#{bindings.BgBagPocket.hints.tooltip}"
                                  id="soc53" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  valueChangeListener="#{ViewActions.accBagPocketVCL}">
                <f:selectItems value="#{bindings.BgBagPocket.items}" id="si15"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr21">
            <af:gridCell marginStart="5px" width="dontCare" id="gc21">
              <af:outputFormatted value="Printed/Plain" id="outputFormatted18"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc18">
              <af:selectOneChoice value="#{bindings.BgPrintType.inputValue}"
                                  label="#{bindings.BgPrintType.label}"
                                  required="#{bindings.BgPrintType.hints.mandatory}"
                                  shortDesc="#{bindings.BgPrintType.hints.tooltip}"
                                  id="soc2" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accBgPrintType}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.BgPrintType.items}" id="si54"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton8"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccBgPrintTypeVset}"
                                immediate="true" rendered="false"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc22">
              <af:outputFormatted value="Bag Type" id="outputFormatted19"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc15">
              <af:selectOneChoice value="#{bindings.BgBagType.inputValue}"
                                  label="#{bindings.BgBagType.label}"
                                  required="#{bindings.BgBagType.hints.mandatory}"
                                  shortDesc="#{bindings.BgBagType.hints.tooltip}"
                                  id="soc25" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accBgBagType}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.BgBagType.items}" id="si55"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton9"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccBgBagTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr99" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc209" columnSpan="2" width="dontCare">
              <af:outputFormatted value="Front Pocket" id="outputFormatted2"
                                  inlineStyle="background-color: rgb(201, 210, 255);     border: thin outset Window;     width: 240px;     font-size: small;     font-weight: bold;"/>
            </af:gridCell>
            <af:gridCell id="gridCell393" columnSpan="2" width="dontCare">
              <af:outputFormatted value="Back Pocket" id="outputFormatted322"
                                  inlineStyle="background-color: rgb(201, 210, 255);     border: thin outset Window;     width: 240px;     font-size: small;     font-weight: bold;"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr2">
            <af:gridCell id="gc97" width="dontCare" marginStart="5px">
              <af:outputFormatted value="Length" id="outputFormatted29"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="200px" id="gc4"
                         marginEnd="50px">
              <af:inputText value="#{bindings.BgFpLength.inputValue}"
                            label="#{bindings.BgFpLength.hints.label}"
                            required="#{bindings.BgFpLength.hints.mandatory}"
                            columns="#{bindings.BgFpLength.hints.displayWidth}"
                            maximumLength="#{bindings.BgFpLength.hints.precision}"
                            shortDesc="#{bindings.BgFpLength.hints.tooltip}"
                            id="it62" simple="true" contentStyle="width:100px;"
                            disabled="#{bindings.BgBagPocket.attributeValue == 'Front Pocket' || bindings.BgBagPocket.attributeValue == 'F/B Pocket' ? false : true}"
                            partialTriggers="soc53" autoSubmit="true">
                <f:validator binding="#{bindings.BgFpLength.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.BgFpLength.format}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell id="gc98">
              <af:outputFormatted value="Length" id="outputFormatted30"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc3">
              <af:inputText value="#{bindings.BgBpLength.inputValue}"
                            label="#{bindings.BgBpLength.hints.label}"
                            required="#{bindings.BgBpLength.hints.mandatory}"
                            columns="#{bindings.BgBpLength.hints.displayWidth}"
                            maximumLength="#{bindings.BgBpLength.hints.precision}"
                            shortDesc="#{bindings.BgBpLength.hints.tooltip}"
                            id="it14" simple="true" contentStyle="width:100px;"
                            disabled="#{bindings.BgBagPocket.attributeValue == 'Back Pocket' || bindings.BgBagPocket.attributeValue == 'F/B Pocket' ? false : true}"
                            partialTriggers="soc53" autoSubmit="true">
                <f:validator binding="#{bindings.BgBpLength.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.BgBpLength.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto" id="gr1">
            <af:gridCell id="gc99" marginStart="5px">
              <af:outputFormatted value="Width" id="outputFormatted31"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc2">
              <af:inputText value="#{bindings.BgFpWidth.inputValue}"
                            label="#{bindings.BgFpWidth.hints.label}"
                            required="#{bindings.BgFpWidth.hints.mandatory}"
                            columns="#{bindings.BgFpWidth.hints.displayWidth}"
                            maximumLength="#{bindings.BgFpWidth.hints.precision}"
                            shortDesc="#{bindings.BgFpWidth.hints.tooltip}"
                            id="it30" simple="true" contentStyle="width:100px;"
                            disabled="#{bindings.BgBagPocket.attributeValue == 'Front Pocket' || bindings.BgBagPocket.attributeValue == 'F/B Pocket' ? false : true}"
                            partialTriggers="soc53" autoSubmit="true">
                <f:validator binding="#{bindings.BgFpWidth.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.BgFpWidth.format}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell id="gc100">
              <af:outputFormatted value="Width" id="outputFormatted32"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc1">
              <af:inputText value="#{bindings.BgBpWidth.inputValue}"
                            label="#{bindings.BgBpWidth.hints.label}"
                            required="#{bindings.BgBpWidth.hints.mandatory}"
                            columns="#{bindings.BgBpWidth.hints.displayWidth}"
                            maximumLength="#{bindings.BgBpWidth.hints.precision}"
                            shortDesc="#{bindings.BgBpWidth.hints.tooltip}"
                            id="it87" simple="true" contentStyle="width:100px;"
                            disabled="#{bindings.BgBagPocket.attributeValue == 'Back Pocket' || bindings.BgBagPocket.attributeValue == 'F/B Pocket' ? false : true}"
                            partialTriggers="soc53" autoSubmit="true">
                <f:validator binding="#{bindings.BgBpWidth.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.BgBpWidth.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow256"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell515">
              <af:outputFormatted value="UOM" id="outputFormatted397"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell516">
              <af:selectOneChoice value="#{bindings.AccWidthUom.inputValue}"
                                  label="#{bindings.AccWidthUom.label}"
                                  required="#{bindings.AccWidthUom.hints.mandatory}"
                                  shortDesc="#{bindings.AccWidthUom.hints.tooltip}"
                                  id="selectOneChoice83"
                                  contentStyle="width:106px;" simple="true"
                                  binding="#{ViewActions.accWidthUomBag}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.AccWidthUom.items}"
                               id="selectItems83"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton78"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccWidthUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr52">
            <af:gridCell marginStart="5px" width="dontCare" id="gc106">
              <af:outputFormatted value="List Price" id="outputFormatted33"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc107">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText7" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr51">
            <af:gridCell marginStart="5px" width="dontCare" id="gc102">
              <af:outputFormatted value="Wastage %" id="outputFormatted34"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc105">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText8" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow200">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell401">
              <af:outputFormatted value="MOQ" id="outputFormatted340"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell402">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText85" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelGridLayout id="pgl9"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Bags' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gr50">
            <af:gridCell marginStart="5px" width="100px" id="gc101">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted35"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc104">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText9" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" rows="2"
                            autoSubmit="true">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gr49">
            <af:gridCell marginStart="5px" width="dontCare" id="gc103">
              <af:outputFormatted value="Resultant" id="outputFormatted36"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="400px"
                         id="gc108">
              <af:inputText value="#{bindings.BagResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.BagResultantTrans.hints.mandatory}"
                            columns="#{bindings.BagResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.BagResultantTrans.hints.precision}"
                            shortDesc="#{bindings.BagResultantTrans.hints.tooltip}"
                            id="it13" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true"
                            partialTriggers="selectOneChoice83">
                <f:validator binding="#{bindings.BagResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout4" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Inserts' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Inserts" id="outputFormatted3"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="pgl4"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Inserts' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow id="gr53" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc109">
              <af:outputFormatted value="Item Status*" id="outputFormatted37"/>
            </af:gridCell>
            <af:gridCell id="gc110" width="200px" marginStart="5px"
                         marginEnd="50px">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice1" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems1"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow199" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell403">
              <af:outputFormatted value="Item UOM" id="outputFormatted341"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell404">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice52" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems52"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr28"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc60">
              <af:outputFormatted value="Insert Type" id="outputFormatted38"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc54">
              <af:selectOneChoice value="#{bindings.InsInsertType.inputValue}"
                                  label="#{bindings.InsInsertType.label}"
                                  required="#{bindings.InsInsertType.hints.mandatory}"
                                  shortDesc="#{bindings.InsInsertType.hints.tooltip}"
                                  id="soc18" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accInsInsertType}">
                <f:selectItems value="#{bindings.InsInsertType.items}"
                               id="si18"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton10"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccInsInsertTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr54" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc111">
              <af:outputFormatted value="Width" id="outputFormatted46"/>
            </af:gridCell>
            <af:gridCell id="gc112">
              <af:inputText label="#{bindings.AccWidth1.hints.label}"
                            id="inputText11" simple="true"
                            value="#{bindings.AccWidth1.inputValue}"
                            required="#{bindings.AccWidth1.hints.mandatory}"
                            columns="#{bindings.AccWidth1.hints.displayWidth}"
                            maximumLength="#{bindings.AccWidth1.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWidth1.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccWidth1.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr55" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc113">
              <af:outputFormatted value="Length" id="outputFormatted47"/>
            </af:gridCell>
            <af:gridCell id="gc114">
              <af:inputText label="#{bindings.AccLength1.hints.label}"
                            id="inputText12" simple="true"
                            value="#{bindings.AccLength1.inputValue}"
                            required="#{bindings.AccLength1.hints.mandatory}"
                            columns="#{bindings.AccLength1.hints.displayWidth}"
                            maximumLength="#{bindings.AccLength1.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccLength1.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccLength1.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr29"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc37">
              <af:outputFormatted value="Gusset" id="outputFormatted39"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc51">
              <af:inputText value="#{bindings.InsGusset.inputValue}"
                            label="#{bindings.InsGusset.hints.label}"
                            required="#{bindings.InsGusset.hints.mandatory}"
                            columns="#{bindings.InsGusset.hints.displayWidth}"
                            maximumLength="#{bindings.InsGusset.hints.precision}"
                            shortDesc="#{bindings.InsGusset.hints.tooltip}"
                            id="it98" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.InsGusset.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.InsGusset.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr57" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc115">
              <af:outputFormatted value="Length" id="outputFormatted48"/>
            </af:gridCell>
            <af:gridCell id="gc116">
              <af:inputText label="#{bindings.AccLength2.hints.label}"
                            id="inputText13" simple="true"
                            value="#{bindings.AccLength2.inputValue}"
                            required="#{bindings.AccLength2.hints.mandatory}"
                            columns="#{bindings.AccLength2.hints.displayWidth}"
                            maximumLength="#{bindings.AccLength2.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccLength2.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccLength2.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr56" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc117">
              <af:outputFormatted value="Width" id="outputFormatted49"/>
            </af:gridCell>
            <af:gridCell id="gc118">
              <af:inputText label="#{bindings.AccWidth2.hints.label}"
                            id="inputText14" simple="true"
                            value="#{bindings.AccWidth2.inputValue}"
                            required="#{bindings.AccWidth2.hints.mandatory}"
                            columns="#{bindings.AccWidth2.hints.displayWidth}"
                            maximumLength="#{bindings.AccWidth2.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWidth2.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccWidth2.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr11"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc55">
              <af:outputFormatted value="Dimensions" id="outputFormatted40"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc57">
              <af:inputText value="#{bindings.InsDimensions.inputValue}"
                            label="#{bindings.InsDimensions.hints.label}"
                            required="#{bindings.InsDimensions.hints.mandatory}"
                            columns="#{bindings.InsDimensions.hints.displayWidth}"
                            maximumLength="#{bindings.InsDimensions.hints.precision}"
                            shortDesc="#{bindings.InsDimensions.hints.tooltip}"
                            id="it27" autoSubmit="true" simple="true"
                            contentStyle="width:100px;" rendered="false">
                <f:validator binding="#{bindings.InsDimensions.validator}"/>
              </af:inputText>
              <af:inputText value="#{bindings.InsDimensionsTrans.inputValue}"
                            simple="true"
                            required="#{bindings.InsDimensionsTrans.hints.mandatory}"
                            columns="#{bindings.InsDimensionsTrans.hints.displayWidth}"
                            maximumLength="#{bindings.InsDimensionsTrans.hints.precision}"
                            shortDesc="#{bindings.InsDimensionsTrans.hints.tooltip}"
                            id="it21" contentStyle="width:100px;"
                            disabled="true" autoSubmit="true">
                <f:validator binding="#{bindings.InsDimensionsTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr58" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc119">
              <af:outputFormatted value="Size" id="outputFormatted50"/>
            </af:gridCell>
            <af:gridCell id="gc120">
              <af:selectOneChoice value="#{bindings.Segment5.inputValue}"
                                  label="#{bindings.Segment5.label}"
                                  required="#{bindings.Segment5.hints.mandatory}"
                                  shortDesc="#{bindings.Segment5.hints.tooltip}"
                                  id="selectOneChoice49" simple="true"
                                  rendered="false">
                <f:selectItems value="#{bindings.Segment5.items}"
                               id="selectItems49"/>
              </af:selectOneChoice>
              <af:inputText value="#{bindings.InsSizeTrans.inputValue}"
                            simple="true"
                            required="#{bindings.InsSizeTrans.hints.mandatory}"
                            columns="#{bindings.InsSizeTrans.hints.displayWidth}"
                            maximumLength="#{bindings.InsSizeTrans.hints.precision}"
                            shortDesc="#{bindings.InsSizeTrans.hints.tooltip}"
                            id="it37" disabled="true"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.InsSizeTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow249"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell501">
              <af:outputFormatted value="UOM" id="outputFormatted390"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell502">
              <af:selectOneChoice value="#{bindings.AccLengthUom.inputValue}"
                                  label="#{bindings.AccLengthUom.label}"
                                  required="#{bindings.AccLengthUom.hints.mandatory}"
                                  shortDesc="#{bindings.AccLengthUom.hints.tooltip}"
                                  id="selectOneChoice53" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accLengthUomIns}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.AccLengthUom.items}"
                               id="selectItems53"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton73"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccLengthUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr9" marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc59">
              <af:outputFormatted value="Material GSM" id="outputFormatted41"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc58">
              <af:selectOneChoice value="#{bindings.InsMaterialGsm.inputValue}"
                                  label="#{bindings.InsMaterialGsm.label}"
                                  required="#{bindings.InsMaterialGsm.hints.mandatory}"
                                  shortDesc="#{bindings.InsMaterialGsm.hints.tooltip}"
                                  id="soc22" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accInsMaterialGsm}">
                <f:selectItems value="#{bindings.InsMaterialGsm.items}"
                               id="si13"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton11"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccInsMaterialGsmVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr25"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc8">
              <af:outputFormatted value="Paper Type" id="outputFormatted42"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc43">
              <af:selectOneChoice value="#{bindings.InsPaperType.inputValue}"
                                  label="#{bindings.InsPaperType.label}"
                                  required="#{bindings.InsPaperType.hints.mandatory}"
                                  shortDesc="#{bindings.InsPaperType.hints.tooltip}"
                                  id="soc33" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accInsPaperType}">
                <f:selectItems value="#{bindings.InsPaperType.items}"
                               id="si43"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton12"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccInsPaperTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr30"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc53">
              <af:outputFormatted value="Lamination" id="outputFormatted43"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc26">
              <af:selectOneChoice value="#{bindings.InsLamination.inputValue}"
                                  label="#{bindings.InsLamination.label}"
                                  required="#{bindings.InsLamination.hints.mandatory}"
                                  shortDesc="#{bindings.InsLamination.hints.tooltip}"
                                  id="soc5" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accInsLamination}">
                <f:selectItems value="#{bindings.InsLamination.items}"
                               id="si51"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton13"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccInsLaminationVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr26"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc34">
              <af:outputFormatted value="Varnish" id="outputFormatted44"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc52">
              <af:selectOneChoice value="#{bindings.InsVarnish.inputValue}"
                                  label="#{bindings.InsVarnish.label}"
                                  required="#{bindings.InsVarnish.hints.mandatory}"
                                  shortDesc="#{bindings.InsVarnish.hints.tooltip}"
                                  id="soc24" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accInsVarnish}">
                <f:selectItems value="#{bindings.InsVarnish.items}" id="si50"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton14"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccInsVarnishVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gr27">
            <af:gridCell marginStart="5px" width="dontCare" id="gc56">
              <af:outputFormatted value="Embossing/Engraving"
                                  id="outputFormatted45"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc41">
              <af:selectOneChoice value="#{bindings.InsFixType.inputValue}"
                                  label="#{bindings.InsFixType.label}"
                                  required="#{bindings.InsFixType.hints.mandatory}"
                                  shortDesc="#{bindings.InsFixType.hints.tooltip}"
                                  id="soc52" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accInsFixType}">
                <f:selectItems value="#{bindings.InsFixType.items}" id="si20"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton15"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccInsFixTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr59" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc121">
              <af:outputFormatted value="Program Name*" id="outputFormatted51"/>
            </af:gridCell>
            <af:gridCell id="gc122">
              <af:inputListOfValues id="inputListOfValues1"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr60" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc123">
              <af:outputFormatted value="List Price" id="outputFormatted52"/>
            </af:gridCell>
            <af:gridCell id="gc124">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText17" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr257" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc519">
              <af:outputFormatted value="Text" id="of98"/>
            </af:gridCell>
            <af:gridCell id="gc518">
              <af:inputText label="#{bindings.InsText.hints.label}"
                            id="it160" simple="true"
                            value="#{bindings.InsText.inputValue}"
                            required="#{bindings.InsText.hints.mandatory}"
                            columns="#{bindings.InsText.hints.displayWidth}"
                            maximumLength="#{bindings.InsText.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.InsText.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr61" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc125">
              <af:outputFormatted value="Wastage %" id="outputFormatted53"/>
            </af:gridCell>
            <af:gridCell id="gc126">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText18" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow201">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell405">
              <af:outputFormatted value="MOQ" id="outputFormatted342"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell406">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText90" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr62" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc127">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted54"/>
            </af:gridCell>
            <af:gridCell id="gc128">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText19" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr63" height="auto" marginTop="5px"
                      marginBottom="5px">
            <af:gridCell id="gc129">
              <af:outputFormatted value="Resultant" id="outputFormatted55"/>
            </af:gridCell>
            <af:gridCell id="gc130">
              <af:inputText value="#{bindings.InsResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.InsResultantTrans.hints.mandatory}"
                            columns="#{bindings.InsResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.InsResultantTrans.hints.precision}"
                            shortDesc="#{bindings.InsResultantTrans.hints.tooltip}"
                            id="it38" contentStyle="width:600px;" rows="2"
                            disabled="true" autoSubmit="true"
                            partialTriggers="it160">
                <f:validator binding="#{bindings.InsResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout6" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Stiffeners' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Stiffeners" id="outputFormatted4"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="pgl5"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Stiffeners' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow id="gr64" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc131">
              <af:outputFormatted value="Item Status*" id="outputFormatted56"/>
            </af:gridCell>
            <af:gridCell id="gc132">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice2" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  partialTriggers="commandButton5 cb5 cb6"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems2"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow202" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell407">
              <af:outputFormatted value="Item UOM" id="outputFormatted343"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell408">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice58" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems58"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr34"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc70">
              <af:outputFormatted value="Type" id="outputFormatted58"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc67">
              <af:selectOneChoice value="#{bindings.StfStifnerType.inputValue}"
                                  label="#{bindings.StfStifnerType.label}"
                                  required="#{bindings.StfStifnerType.hints.mandatory}"
                                  shortDesc="#{bindings.StfStifnerType.hints.tooltip}"
                                  id="soc55" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accStfStifnerType}">
                <f:selectItems value="#{bindings.StfStifnerType.items}"
                               id="si46"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton16"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccStfStifnerTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr66" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc135">
              <af:outputFormatted value="Length" id="outputFormatted59"/>
            </af:gridCell>
            <af:gridCell id="gc136">
              <af:inputText label="#{bindings.AccLength1.hints.label}"
                            id="inputText21" simple="true"
                            value="#{bindings.AccLength1.inputValue}"
                            required="#{bindings.AccLength1.hints.mandatory}"
                            columns="#{bindings.AccLength1.hints.displayWidth}"
                            maximumLength="#{bindings.AccLength1.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccLength1.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccLength1.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr32"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc69">
              <af:outputFormatted value="Gusset" id="outputFormatted60"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc64">
              <af:inputText value="#{bindings.StfGusset1.inputValue}"
                            label="#{bindings.StfGusset1.hints.label}"
                            required="#{bindings.StfGusset1.hints.mandatory}"
                            columns="#{bindings.StfGusset1.hints.displayWidth}"
                            maximumLength="#{bindings.StfGusset1.hints.precision}"
                            shortDesc="#{bindings.StfGusset1.hints.tooltip}"
                            id="it96" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.StfGusset1.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.StfGusset1.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr67" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc137">
              <af:outputFormatted value="Length" id="outputFormatted61"/>
            </af:gridCell>
            <af:gridCell id="gc138">
              <af:inputText label="#{bindings.AccLength2.hints.label}"
                            id="inputText22" simple="true"
                            value="#{bindings.AccLength2.inputValue}"
                            required="#{bindings.AccLength2.hints.mandatory}"
                            columns="#{bindings.AccLength2.hints.displayWidth}"
                            maximumLength="#{bindings.AccLength2.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccLength2.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccLength2.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr35"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc61">
              <af:outputFormatted value="Gusset" id="outputFormatted62"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc66">
              <af:inputText value="#{bindings.StfGusset2.inputValue}"
                            label="#{bindings.StfGusset2.hints.label}"
                            required="#{bindings.StfGusset2.hints.mandatory}"
                            columns="#{bindings.StfGusset2.hints.displayWidth}"
                            maximumLength="#{bindings.StfGusset2.hints.precision}"
                            shortDesc="#{bindings.StfGusset2.hints.tooltip}"
                            id="it8" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.StfGusset2.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.StfGusset2.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr68" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc139">
              <af:outputFormatted value="Width" id="outputFormatted63"/>
            </af:gridCell>
            <af:gridCell id="gc140">
              <af:inputText label="#{bindings.AccWidth.hints.label}"
                            id="inputText23" simple="true"
                            value="#{bindings.AccWidth.inputValue}"
                            required="#{bindings.AccWidth.hints.mandatory}"
                            columns="#{bindings.AccWidth.hints.displayWidth}"
                            maximumLength="#{bindings.AccWidth.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWidth.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccWidth.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow1" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell1">
              <af:outputFormatted value="Size" id="outputFormatted64"/>
            </af:gridCell>
            <af:gridCell id="gridCell2">
              <af:selectOneChoice value="#{bindings.Segment5.inputValue}"
                                  label="#{bindings.Segment5.label}"
                                  required="#{bindings.Segment5.hints.mandatory}"
                                  shortDesc="#{bindings.Segment5.hints.tooltip}"
                                  id="selectOneChoice50" simple="true"
                                  rendered="false">
                <f:selectItems value="#{bindings.Segment5.items}"
                               id="selectItems50"/>
              </af:selectOneChoice>
              <af:inputText value="#{bindings.StfSizeTrans.inputValue}"
                            simple="true"
                            required="#{bindings.StfSizeTrans.hints.mandatory}"
                            columns="#{bindings.StfSizeTrans.hints.displayWidth}"
                            maximumLength="#{bindings.StfSizeTrans.hints.precision}"
                            shortDesc="#{bindings.StfSizeTrans.hints.tooltip}"
                            id="it57" contentStyle="width:100px;"
                            disabled="true" autoSubmit="true">
                <f:validator binding="#{bindings.StfSizeTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow250"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell503">
              <af:outputFormatted value="UOM" id="outputFormatted391"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell504">
              <af:selectOneChoice value="#{bindings.AccLengthUom.inputValue}"
                                  label="#{bindings.AccLengthUom.label}"
                                  required="#{bindings.AccLengthUom.hints.mandatory}"
                                  shortDesc="#{bindings.AccLengthUom.hints.tooltip}"
                                  id="selectOneChoice54" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accLengthUomStf}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.AccLengthUom.items}"
                               id="selectItems54"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton74"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccLengthUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr31"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc62">
              <af:outputFormatted value="Ply" id="outputFormatted65"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc68">
              <af:selectOneChoice value="#{bindings.StfPly.inputValue}"
                                  label="#{bindings.StfPly.label}"
                                  required="#{bindings.StfPly.hints.mandatory}"
                                  shortDesc="#{bindings.StfPly.hints.tooltip}"
                                  id="soc4" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accStfPly}">
                <f:selectItems value="#{bindings.StfPly.items}" id="si5"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton17"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccStfPlyVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gr33">
            <af:gridCell marginStart="5px" width="dontCare" id="gc63">
              <af:outputFormatted value="Material" id="outputFormatted66"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc65">
              <af:selectOneChoice value="#{bindings.StfMaterial.inputValue}"
                                  label="#{bindings.StfMaterial.label}"
                                  required="#{bindings.StfMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.StfMaterial.hints.tooltip}"
                                  id="soc19" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accStfMaterial}">
                <f:selectItems value="#{bindings.StfMaterial.items}" id="si25"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton18"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccStfMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow2" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell3">
              <af:outputFormatted value="Program Name*" id="outputFormatted67"/>
            </af:gridCell>
            <af:gridCell id="gridCell4">
              <af:inputListOfValues id="inputListOfValues2"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow3" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell5">
              <af:outputFormatted value="List Price" id="outputFormatted68"/>
            </af:gridCell>
            <af:gridCell id="gridCell6">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText26" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow4" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell7">
              <af:outputFormatted value="Wastage %" id="outputFormatted69"/>
            </af:gridCell>
            <af:gridCell id="gridCell8">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText27" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow203">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell409">
              <af:outputFormatted value="MOQ" id="outputFormatted344"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell410">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText100" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow5" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell9">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted70"/>
            </af:gridCell>
            <af:gridCell id="gridCell10">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText28" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow6" height="auto" marginTop="5px"
                      marginBottom="5px">
            <af:gridCell id="gridCell11">
              <af:outputFormatted value="Resultant" id="outputFormatted71"/>
            </af:gridCell>
            <af:gridCell id="gridCell12">
              <af:inputText value="#{bindings.StfResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.StfResultantTrans.hints.mandatory}"
                            columns="#{bindings.StfResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.StfResultantTrans.hints.precision}"
                            shortDesc="#{bindings.StfResultantTrans.hints.tooltip}"
                            id="it71" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true">
                <f:validator binding="#{bindings.StfResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout7" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Cartons' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Cartons" id="outputFormatted6"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="pgl6" partialTriggers="it110"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Cartons' ? true : false}">
          <af:gridRow id="gr65" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc133">
              <af:outputFormatted value="Item Status*" id="outputFormatted57"/>
            </af:gridCell>
            <af:gridCell id="gc134">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice3" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  partialTriggers="commandButton5 cb5 cb6"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems3"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow204" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell411">
              <af:outputFormatted value="Item UOM" id="outputFormatted345"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell412">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice59" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems59"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr36">
            <af:gridCell marginStart="5px" width="dontCare" id="gc74">
              <af:outputFormatted value="Carton Type" id="outputFormatted7"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc72">
              <af:selectOneChoice value="#{bindings.CrtCartonType.inputValue}"
                                  label="#{bindings.CrtCartonType.label}"
                                  required="#{bindings.CrtCartonType.hints.mandatory}"
                                  shortDesc="#{bindings.CrtCartonType.hints.tooltip}"
                                  id="soc64" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accCrtCartonType}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.CrtCartonType.items}"
                               id="si64"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton19"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccCrtCartonTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gr37">
            <af:gridCell marginStart="5px" width="dontCare" id="gc71">
              <af:outputFormatted value="Printed Type" id="outputFormatted335"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc73">
              <af:selectOneChoice value="#{bindings.CrtPrintedType.inputValue}"
                                  label="#{bindings.CrtPrintedType.label}"
                                  required="#{bindings.CrtPrintedType.hints.mandatory}"
                                  shortDesc="#{bindings.CrtPrintedType.hints.tooltip}"
                                  id="soc7" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accCrtPrintedType}">
                <f:selectItems value="#{bindings.CrtPrintedType.items}"
                               id="si19"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton20"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccCrtPrintedTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow197">
            <af:gridCell id="gridCell394" columnSpan="2" width="dontCare">
              <af:outputFormatted value="Outer Dimensions"
                                  id="outputFormatted333"
                                  inlineStyle="background-color: rgb(201, 210, 255);     border: thin outset Window;     width: 240px;     font-size: small;     font-weight: bold;"/>
            </af:gridCell>
            <af:gridCell id="gridCell395" columnSpan="2" width="dontCare">
              <af:outputFormatted value="Inner Dimensions"
                                  id="outputFormatted334"
                                  inlineStyle="background-color: rgb(201, 210, 255);     border: thin outset Window;     width: 240px;     font-size: small;     font-weight: bold;"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr42">
            <af:gridCell marginStart="5px" width="dontCare" id="gc77">
              <af:outputFormatted value="Width" id="outputFormatted323"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc76">
              <af:inputText value="#{bindings.CrtOutWidth.inputValue}"
                            label="#{bindings.CrtOutWidth.hints.label}"
                            required="#{bindings.CrtOutWidth.hints.mandatory}"
                            columns="#{bindings.CrtOutWidth.hints.displayWidth}"
                            maximumLength="#{bindings.CrtOutWidth.hints.precision}"
                            shortDesc="#{bindings.CrtOutWidth.hints.tooltip}"
                            id="it81" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.CrtOutWidth.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.CrtOutWidth.format}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell id="gc210">
              <af:outputFormatted value="Width" id="outputFormatted324"/>
            </af:gridCell>
            <af:gridCell id="gc211">
              <af:inputText value="#{bindings.CrtInnWidth.inputValue}"
                            label="#{bindings.CrtInnWidth.hints.label}"
                            required="#{bindings.CrtInnWidth.hints.mandatory}"
                            columns="#{bindings.CrtInnWidth.hints.displayWidth}"
                            maximumLength="#{bindings.CrtInnWidth.hints.precision}"
                            shortDesc="#{bindings.CrtInnWidth.hints.tooltip}"
                            id="it40" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.CrtInnWidth.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.CrtInnWidth.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr44">
            <af:gridCell marginStart="5px" width="dontCare" id="gc78">
              <af:outputFormatted value="Length" id="outputFormatted325"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc85">
              <af:inputText value="#{bindings.CrtOutLength.inputValue}"
                            label="#{bindings.CrtOutLength.hints.label}"
                            required="#{bindings.CrtOutLength.hints.mandatory}"
                            columns="#{bindings.CrtOutLength.hints.displayWidth}"
                            maximumLength="#{bindings.CrtOutLength.hints.precision}"
                            shortDesc="#{bindings.CrtOutLength.hints.tooltip}"
                            id="it55" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.CrtOutLength.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.CrtOutLength.format}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell id="gc212">
              <af:outputFormatted value="Length" id="outputFormatted326"/>
            </af:gridCell>
            <af:gridCell id="gc213">
              <af:inputText value="#{bindings.CrtInnLength.inputValue}"
                            label="#{bindings.CrtInnLength.hints.label}"
                            required="#{bindings.CrtInnLength.hints.mandatory}"
                            columns="#{bindings.CrtInnLength.hints.displayWidth}"
                            maximumLength="#{bindings.CrtInnLength.hints.precision}"
                            shortDesc="#{bindings.CrtInnLength.hints.tooltip}"
                            id="it2" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.CrtInnLength.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.CrtInnLength.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr43">
            <af:gridCell marginStart="5px" width="dontCare" id="gc91">
              <af:outputFormatted value="Height" id="outputFormatted327"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc93">
              <af:inputText value="#{bindings.CrtOutHeight.inputValue}"
                            label="#{bindings.CrtOutHeight.hints.label}"
                            required="#{bindings.CrtOutHeight.hints.mandatory}"
                            columns="#{bindings.CrtOutHeight.hints.displayWidth}"
                            maximumLength="#{bindings.CrtOutHeight.hints.precision}"
                            shortDesc="#{bindings.CrtOutHeight.hints.tooltip}"
                            id="it20" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.CrtOutHeight.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.CrtOutHeight.format}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell id="gc214">
              <af:outputFormatted value="Height" id="outputFormatted328"/>
            </af:gridCell>
            <af:gridCell id="gc215">
              <af:inputText value="#{bindings.CrtInnHeight.inputValue}"
                            label="#{bindings.CrtInnHeight.hints.label}"
                            required="#{bindings.CrtInnHeight.hints.mandatory}"
                            columns="#{bindings.CrtInnHeight.hints.displayWidth}"
                            maximumLength="#{bindings.CrtInnHeight.hints.precision}"
                            shortDesc="#{bindings.CrtInnHeight.hints.tooltip}"
                            id="it83" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.CrtInnHeight.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.CrtInnHeight.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr39">
            <af:gridCell marginStart="5px" width="dontCare" id="gc79">
              <af:outputFormatted value="Cm/Inch" id="outputFormatted329"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc86">
              <af:selectOneChoice value="#{bindings.CrtOutUom.inputValue}"
                                  label="#{bindings.CrtOutUom.label}"
                                  required="#{bindings.CrtOutUom.hints.mandatory}"
                                  shortDesc="#{bindings.CrtOutUom.hints.tooltip}"
                                  id="soc10" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accCrtOutUom}">
                <f:selectItems value="#{bindings.CrtOutUom.items}" id="si57"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton21"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccCrtOutUomVset}"
                                immediate="true"/>
            </af:gridCell>
            <af:gridCell id="gc216">
              <af:outputFormatted value="Cm/Inch" id="outputFormatted330"/>
            </af:gridCell>
            <af:gridCell id="gc217">
              <af:selectOneChoice value="#{bindings.CrtInnUom.inputValue}"
                                  label="#{bindings.CrtInnUom.label}"
                                  required="#{bindings.CrtInnUom.hints.mandatory}"
                                  shortDesc="#{bindings.CrtInnUom.hints.tooltip}"
                                  id="soc49" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accCrtInnUom}">
                <f:selectItems value="#{bindings.CrtInnUom.items}" id="si3"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton22"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccCrtInnUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr41">
            <af:gridCell marginStart="5px" width="dontCare" id="gc89">
              <af:outputFormatted value="Dimensions" id="outputFormatted331"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc80">
              <af:inputText value="#{bindings.CrtOutDimensions.inputValue}"
                            label="#{bindings.CrtOutDimensions.hints.label}"
                            required="#{bindings.CrtOutDimensions.hints.mandatory}"
                            columns="#{bindings.CrtOutDimensions.hints.displayWidth}"
                            maximumLength="#{bindings.CrtOutDimensions.hints.precision}"
                            shortDesc="#{bindings.CrtOutDimensions.hints.tooltip}"
                            id="it17" autoSubmit="true" simple="true"
                            contentStyle="width:100px;" rendered="false">
                <f:validator binding="#{bindings.CrtOutDimensions.validator}"/>
              </af:inputText>
              <af:inputText value="#{bindings.CrtOutDimensionTrans.inputValue}"
                            simple="true"
                            required="#{bindings.CrtOutDimensionTrans.hints.mandatory}"
                            columns="#{bindings.CrtOutDimensionTrans.hints.displayWidth}"
                            maximumLength="#{bindings.CrtOutDimensionTrans.hints.precision}"
                            shortDesc="#{bindings.CrtOutDimensionTrans.hints.tooltip}"
                            id="inputText5" contentStyle="width:100px;"
                            disabled="true" autoSubmit="true">
                <f:validator binding="#{bindings.CrtOutDimensionTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell id="gc218">
              <af:outputFormatted value="Dimensions" id="outputFormatted332"/>
            </af:gridCell>
            <af:gridCell id="gc219">
              <af:inputText value="#{bindings.CrtInnDimensions.inputValue}"
                            label="#{bindings.CrtInnDimensions.hints.label}"
                            required="#{bindings.CrtInnDimensions.hints.mandatory}"
                            columns="#{bindings.CrtInnDimensions.hints.displayWidth}"
                            maximumLength="#{bindings.CrtInnDimensions.hints.precision}"
                            shortDesc="#{bindings.CrtInnDimensions.hints.tooltip}"
                            id="it3" autoSubmit="true" simple="true"
                            contentStyle="width:100px;" rendered="false">
                <f:validator binding="#{bindings.CrtInnDimensions.validator}"/>
              </af:inputText>
              <af:inputText value="#{bindings.CrtInDimensionTrans.inputValue}"
                            simple="true"
                            required="#{bindings.CrtInDimensionTrans.hints.mandatory}"
                            columns="#{bindings.CrtInDimensionTrans.hints.displayWidth}"
                            maximumLength="#{bindings.CrtInDimensionTrans.hints.precision}"
                            shortDesc="#{bindings.CrtInDimensionTrans.hints.tooltip}"
                            id="inputText6" contentStyle="width:100px;"
                            disabled="true" autoSubmit="true">
                <f:validator binding="#{bindings.CrtInDimensionTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr69" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc141">
              <af:outputFormatted value="Size" id="outputFormatted72"/>
            </af:gridCell>
            <af:gridCell id="gc142">
              <af:selectOneChoice value="#{bindings.Segment5.inputValue}"
                                  label="#{bindings.Segment5.label}"
                                  required="#{bindings.Segment5.hints.mandatory}"
                                  shortDesc="#{bindings.Segment5.hints.tooltip}"
                                  id="selectOneChoice51" simple="true"
                                  rendered="false">
                <f:selectItems value="#{bindings.Segment5.items}"
                               id="selectItems51"/>
              </af:selectOneChoice>
              <af:inputText value="#{bindings.CrtSizeTrans.inputValue}"
                            simple="true"
                            required="#{bindings.CrtSizeTrans.hints.mandatory}"
                            columns="#{bindings.CrtSizeTrans.hints.displayWidth}"
                            maximumLength="#{bindings.CrtSizeTrans.hints.precision}"
                            shortDesc="#{bindings.CrtSizeTrans.hints.tooltip}"
                            id="inputText4" contentStyle="width:200px;"
                            disabled="true" autoSubmit="true">
                <f:validator binding="#{bindings.CrtSizeTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr47">
            <af:gridCell marginStart="5px" width="dontCare" id="gc75">
              <af:outputFormatted value="Ply" id="outputFormatted73"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc81">
              <af:selectOneChoice value="#{bindings.CrtPly.inputValue}"
                                  label="#{bindings.CrtPly.label}"
                                  required="#{bindings.CrtPly.hints.mandatory}"
                                  shortDesc="#{bindings.CrtPly.hints.tooltip}"
                                  id="soc17" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accCrtPly}">
                <f:selectItems value="#{bindings.CrtPly.items}" id="si8"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton23"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccCrtPlyVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr46">
            <af:gridCell marginStart="5px" width="dontCare" id="gc82">
              <af:outputFormatted value="Material" id="outputFormatted74"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc84">
              <af:selectOneChoice value="#{bindings.CrtMaterial.inputValue}"
                                  label="#{bindings.CrtMaterial.label}"
                                  required="#{bindings.CrtMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.CrtMaterial.hints.tooltip}"
                                  id="soc8" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accCrtMaterial}">
                <f:selectItems value="#{bindings.CrtMaterial.items}" id="si49"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton24"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccCrtMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr38">
            <af:gridCell marginStart="5px" width="dontCare" id="gc92">
              <af:outputFormatted value="Printing" id="outputFormatted75"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc88">
              <af:selectOneChoice value="#{bindings.CrtPrintType.inputValue}"
                                  label="#{bindings.CrtPrintType.label}"
                                  required="#{bindings.CrtPrintType.hints.mandatory}"
                                  shortDesc="#{bindings.CrtPrintType.hints.tooltip}"
                                  id="soc6" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accCrtPrintType}">
                <f:selectItems value="#{bindings.CrtPrintType.items}"
                               id="si37"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton25"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccCrtPrintTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr45">
            <af:gridCell marginStart="5px" width="dontCare" id="gc83">
              <af:outputFormatted value="ECT" id="outputFormatted76"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc87">
              <af:inputText value="#{bindings.CrtEct.inputValue}"
                            label="#{bindings.CrtEct.hints.label}"
                            required="#{bindings.CrtEct.hints.mandatory}"
                            columns="#{bindings.CrtEct.hints.displayWidth}"
                            maximumLength="#{bindings.CrtEct.hints.precision}"
                            shortDesc="#{bindings.CrtEct.hints.tooltip}"
                            id="it68" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.CrtEct.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gr40">
            <af:gridCell marginStart="5px" width="dontCare" id="gc90">
              <af:outputFormatted value="Busting" id="outputFormatted77"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc94">
              <af:inputText value="#{bindings.CrtBusting.inputValue}"
                            label="#{bindings.CrtBusting.hints.label}"
                            required="#{bindings.CrtBusting.hints.mandatory}"
                            columns="#{bindings.CrtBusting.hints.displayWidth}"
                            maximumLength="#{bindings.CrtBusting.hints.precision}"
                            shortDesc="#{bindings.CrtBusting.hints.tooltip}"
                            id="it76" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.CrtBusting.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr70" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc143">
              <af:outputFormatted value="Program Name*" id="outputFormatted78"/>
            </af:gridCell>
            <af:gridCell id="gc144">
              <af:inputListOfValues id="inputListOfValues3"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow7" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell13">
              <af:outputFormatted value="List Price" id="outputFormatted79"/>
            </af:gridCell>
            <af:gridCell id="gridCell14">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText31" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr259" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gc517">
              <af:outputFormatted value="Text" id="of398"/>
            </af:gridCell>
            <af:gridCell id="gc24">
              <af:inputText label="#{bindings.CrtText.hints.label}" id="it12"
                            simple="true" value="#{bindings.CrtText.inputValue}"
                            required="#{bindings.CrtText.hints.mandatory}"
                            columns="#{bindings.CrtText.hints.displayWidth}"
                            maximumLength="#{bindings.CrtText.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.CrtText.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow8" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell15">
              <af:outputFormatted value="Wastage %" id="outputFormatted80"/>
            </af:gridCell>
            <af:gridCell id="gridCell16">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText32" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow205">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell413">
              <af:outputFormatted value="MOQ" id="outputFormatted346"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell414">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText107" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelGridLayout id="pgl8" partialTriggers="it110"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Cartons' ? true : false}">
          <af:gridRow id="gridRow9" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell17">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted81"/>
            </af:gridCell>
            <af:gridCell id="gridCell18">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText33" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow10" height="auto" marginTop="5px"
                      marginBottom="5px">
            <af:gridCell id="gridCell19">
              <af:outputFormatted value="Resultant" id="outputFormatted82"/>
            </af:gridCell>
            <af:gridCell id="gridCell20">
              <af:inputText value="#{bindings.CrtResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.CrtResultantTrans.hints.mandatory}"
                            columns="#{bindings.CrtResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.CrtResultantTrans.hints.precision}"
                            shortDesc="#{bindings.CrtResultantTrans.hints.tooltip}"
                            id="inputText10" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true"
                            partialTriggers="it12">
                <f:validator binding="#{bindings.CrtResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout9" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Labels' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Lables" id="outputFormatted8"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="pgl11"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Labels' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gr72">
            <af:gridCell marginStart="5px" width="100px" id="gc146">
              <af:outputFormatted value="Item Status*" id="outputFormatted83"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="50px" width="dontCare"
                         id="gc145">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice5" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems5"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow206" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell415">
              <af:outputFormatted value="Item UOM" id="outputFormatted347"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell416">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice60" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems60"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gr71">
            <af:gridCell marginStart="5px" width="dontCare" id="gc148">
              <af:outputFormatted value="Type" id="outputFormatted84"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc147">
              <af:selectOneChoice value="#{bindings.LblLableType.inputValue}"
                                  label="#{bindings.LblLableType.label}"
                                  required="#{bindings.LblLableType.hints.mandatory}"
                                  shortDesc="#{bindings.LblLableType.hints.tooltip}"
                                  id="soc23" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accLblLableType}">
                <f:selectItems value="#{bindings.LblLableType.items}"
                               id="si38"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton26"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccLblLableTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow198" height="auto" marginTop="5px"
                      marginBottom="0px">
            <af:gridCell id="gridCell397" columnSpan="2" width="dontCare"
                         marginStart="0px" marginEnd="120px">
              <af:outputFormatted value="Plain Dimensions"
                                  id="outputFormatted338"
                                  inlineStyle="background-color: rgb(201, 210, 255);     border: thin outset Window;     width: 240px;     font-size: small;     font-weight: bold;"/>
            </af:gridCell>
            <af:gridCell id="gridCell398" columnSpan="2" width="dontCare">
              <af:outputFormatted value="Fold Dimensions"
                                  id="outputFormatted339"
                                  inlineStyle="background-color: rgb(201, 210, 255);     border: thin outset Window;     width: 240px;     font-size: small;     font-weight: bold;"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr74"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell396">
              <af:outputFormatted value="Length" id="outputFormatted86"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc150">
              <af:inputText value="#{bindings.LblPlainLength.inputValue}"
                            label="#{bindings.LblPlainLength.hints.label}"
                            required="#{bindings.LblPlainLength.hints.mandatory}"
                            columns="#{bindings.LblPlainLength.hints.displayWidth}"
                            maximumLength="#{bindings.LblPlainLength.hints.precision}"
                            shortDesc="#{bindings.LblPlainLength.hints.tooltip}"
                            id="it107" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.LblPlainLength.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.LblPlainLength.format}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="100px" id="gc157">
              <af:outputFormatted value="Length" id="outputFormatted87"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc152">
              <af:inputText value="#{bindings.LblFoldLength.inputValue}"
                            label="#{bindings.LblFoldLength.hints.label}"
                            required="#{bindings.LblFoldLength.hints.mandatory}"
                            columns="#{bindings.LblFoldLength.hints.displayWidth}"
                            maximumLength="#{bindings.LblFoldLength.hints.precision}"
                            shortDesc="#{bindings.LblFoldLength.hints.tooltip}"
                            id="it67" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.LblFoldLength.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.LblFoldLength.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr73"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc154"
                         marginEnd="0px">
              <af:outputFormatted value="Width" id="outputFormatted88"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc164">
              <af:inputText value="#{bindings.LblPlainWidth.inputValue}"
                            label="#{bindings.LblPlainWidth.hints.label}"
                            required="#{bindings.LblPlainWidth.hints.mandatory}"
                            columns="#{bindings.LblPlainWidth.hints.displayWidth}"
                            maximumLength="#{bindings.LblPlainWidth.hints.precision}"
                            shortDesc="#{bindings.LblPlainWidth.hints.tooltip}"
                            id="it28" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.LblPlainWidth.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.LblPlainWidth.format}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc155">
              <af:outputFormatted value="Width" id="outputFormatted89"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc149">
              <af:inputText value="#{bindings.LblFoldWidth.inputValue}"
                            label="#{bindings.LblFoldWidth.hints.label}"
                            required="#{bindings.LblFoldWidth.hints.mandatory}"
                            columns="#{bindings.LblFoldWidth.hints.displayWidth}"
                            maximumLength="#{bindings.LblFoldWidth.hints.precision}"
                            shortDesc="#{bindings.LblFoldWidth.hints.tooltip}"
                            id="it22" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.LblFoldWidth.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.LblFoldWidth.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr76"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc156"
                         marginEnd="0px">
              <af:outputFormatted value="Sewing Margin" id="outputFormatted90"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc151">
              <af:inputText value="#{bindings.LblPlainSwingMargin.inputValue}"
                            label="#{bindings.LblPlainSwingMargin.hints.label}"
                            required="#{bindings.LblPlainSwingMargin.hints.mandatory}"
                            columns="#{bindings.LblPlainSwingMargin.hints.displayWidth}"
                            maximumLength="#{bindings.LblPlainSwingMargin.hints.precision}"
                            shortDesc="#{bindings.LblPlainSwingMargin.hints.tooltip}"
                            id="it9" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.LblPlainSwingMargin.validator}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc162">
              <af:outputFormatted value="Sewing Margin" id="outputFormatted91"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc158">
              <af:inputText value="#{bindings.LblFoldSwingMargin.inputValue}"
                            label="#{bindings.LblFoldSwingMargin.hints.label}"
                            required="#{bindings.LblFoldSwingMargin.hints.mandatory}"
                            columns="#{bindings.LblFoldSwingMargin.hints.displayWidth}"
                            maximumLength="#{bindings.LblFoldSwingMargin.hints.precision}"
                            shortDesc="#{bindings.LblFoldSwingMargin.hints.tooltip}"
                            id="it34" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.LblFoldSwingMargin.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gr75">
            <af:gridCell marginStart="5px" width="dontCare" id="gc163">
              <af:outputFormatted value="Size" id="outputFormatted92"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc159">
              <af:inputText value="#{bindings.LblPlainSize.inputValue}"
                            label="#{bindings.LblPlainSize.hints.label}"
                            required="#{bindings.LblPlainSize.hints.mandatory}"
                            columns="#{bindings.LblPlainSize.hints.displayWidth}"
                            maximumLength="#{bindings.LblPlainSize.hints.precision}"
                            shortDesc="#{bindings.LblPlainSize.hints.tooltip}"
                            id="it49" autoSubmit="true" simple="true"
                            contentStyle="width:100px;" rendered="false">
                <f:validator binding="#{bindings.LblPlainSize.validator}"/>
              </af:inputText>
              <af:inputText value="#{bindings.LblPlainSizeTrans.inputValue}"
                            simple="true"
                            required="#{bindings.LblPlainSizeTrans.hints.mandatory}"
                            columns="#{bindings.LblPlainSizeTrans.hints.displayWidth}"
                            maximumLength="#{bindings.LblPlainSizeTrans.hints.precision}"
                            shortDesc="#{bindings.LblPlainSizeTrans.hints.tooltip}"
                            id="inputText15" contentStyle="width:100px;"
                            autoSubmit="true" disabled="true">
                <f:validator binding="#{bindings.LblPlainSizeTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gc161">
              <af:outputFormatted value="Size" id="outputFormatted93"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc153">
              <af:inputText value="#{bindings.LblFoldSize.inputValue}"
                            label="#{bindings.LblFoldSize.hints.label}"
                            required="#{bindings.LblFoldSize.hints.mandatory}"
                            columns="#{bindings.LblFoldSize.hints.displayWidth}"
                            maximumLength="#{bindings.LblFoldSize.hints.precision}"
                            shortDesc="#{bindings.LblFoldSize.hints.tooltip}"
                            id="it61" autoSubmit="true" simple="true"
                            contentStyle="width:100px;" rendered="false">
                <f:validator binding="#{bindings.LblFoldSize.validator}"/>
              </af:inputText>
              <af:inputText value="#{bindings.LblFoldSizeTrans.inputValue}"
                            simple="true"
                            required="#{bindings.LblFoldSizeTrans.hints.mandatory}"
                            columns="#{bindings.LblFoldSizeTrans.hints.displayWidth}"
                            maximumLength="#{bindings.LblFoldSizeTrans.hints.precision}"
                            shortDesc="#{bindings.LblFoldSizeTrans.hints.tooltip}"
                            id="inputText16" contentStyle="width:100px;"
                            autoSubmit="true" disabled="true">
                <f:validator binding="#{bindings.LblFoldSizeTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow255"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell513">
              <af:outputFormatted value="UOM" id="outputFormatted396"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell514">
              <af:selectOneChoice value="#{bindings.AccWidthUom.inputValue}"
                                  label="#{bindings.AccWidthUom.label}"
                                  required="#{bindings.AccWidthUom.hints.mandatory}"
                                  shortDesc="#{bindings.AccWidthUom.hints.tooltip}"
                                  id="selectOneChoice82"
                                  contentStyle="width:106px;" simple="true"
                                  binding="#{ViewActions.accWidthUomLbl}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.AccWidthUom.items}"
                               id="selectItems82"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton77"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccWidthUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr78"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc174">
              <af:outputFormatted value="Size" id="outputFormatted94"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc173">
              <af:inputText id="it7" simple="true"
                            value="#{bindings.AccSize.inputValue}"
                            label="#{bindings.AccSize.hints.label}"
                            required="#{bindings.AccSize.hints.mandatory}"
                            columns="#{bindings.AccSize.hints.displayWidth}"
                            maximumLength="#{bindings.AccSize.hints.precision}"
                            shortDesc="#{bindings.AccSize.hints.tooltip}"
                            autoSubmit="true" contentStyle="width:100px;"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr83"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc180">
              <af:outputFormatted value="Fold/Plain" id="outputFormatted95"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc171">
              <af:selectOneChoice value="#{bindings.LblFoldingType.inputValue}"
                                  label="#{bindings.LblFoldingType.label}"
                                  required="#{bindings.LblFoldingType.hints.mandatory}"
                                  shortDesc="#{bindings.LblFoldingType.hints.tooltip}"
                                  id="soc56" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accLblFoldingType}">
                <f:selectItems value="#{bindings.LblFoldingType.items}"
                               id="si21"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton27"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccLblFoldingTypeVset}"
                                immediate="true" rendered="false"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr81"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc172">
              <af:outputFormatted value="Material" id="outputFormatted96"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc169">
              <af:selectOneChoice value="#{bindings.LblMaterial.inputValue}"
                                  label="#{bindings.LblMaterial.label}"
                                  required="#{bindings.LblMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.LblMaterial.hints.tooltip}"
                                  id="soc29" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accLblMaterial}">
                <f:selectItems value="#{bindings.LblMaterial.items}" id="si26"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton28"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccLblMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow11" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell21" marginStart="5px" marginEnd="5px"
                         width="dontCare">
              <af:outputFormatted value="Program Name*" id="outputFormatted97"/>
            </af:gridCell>
            <af:gridCell id="gridCell22" width="dontCare" marginStart="5px"
                         marginEnd="0px">
              <af:inputListOfValues id="inputListOfValues4"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow12" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell23" marginStart="5px" marginEnd="5px"
                         width="dontCare">
              <af:outputFormatted value="List Price" id="outputFormatted98"/>
            </af:gridCell>
            <af:gridCell id="gridCell24" width="dontCare" marginStart="5px"
                         marginEnd="0px">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText37" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow13" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell25" marginStart="5px" marginEnd="5px"
                         width="dontCare">
              <af:outputFormatted value="Wastage %" id="outputFormatted99"/>
            </af:gridCell>
            <af:gridCell id="gridCell26" width="dontCare" marginStart="5px"
                         marginEnd="0px">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText38" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow207">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell417">
              <af:outputFormatted value="MOQ" id="outputFormatted348"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell418">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText109" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow14" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell27" marginStart="5px" marginEnd="5px"
                         width="dontCare">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted100"/>
            </af:gridCell>
            <af:gridCell id="gridCell28" columnSpan="3" width="dontCare"
                         marginStart="5px" marginEnd="0px">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText39" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr77" height="auto" marginTop="5px"
                      marginBottom="5px">
            <af:gridCell id="gc165" marginStart="5px" marginEnd="5px"
                         width="dontCare">
              <af:outputFormatted value="Resultant" id="outputFormatted101"/>
            </af:gridCell>
            <af:gridCell id="gc166" columnSpan="3" width="dontCare"
                         marginStart="5px" marginEnd="0px">
              <af:inputText value="#{bindings.LblResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.LblResultantTrans.hints.mandatory}"
                            columns="#{bindings.LblResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.LblResultantTrans.hints.precision}"
                            shortDesc="#{bindings.LblResultantTrans.hints.tooltip}"
                            id="inputText20" contentStyle="width:400px;"
                            disabled="true" rows="2" autoSubmit="true"
                            partialTriggers="inputText15 inputText16 it7">
                <f:validator binding="#{bindings.LblResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout11" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Zipper' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Zipper" id="outputFormatted102"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="pgl13"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Zipper' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow15"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell29">
              <af:outputFormatted value="Item Status*" id="outputFormatted103"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell30">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice6" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems6"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow208" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell419">
              <af:outputFormatted value="Item UOM" id="outputFormatted349"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell420">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice61" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems61"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow16" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell31">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted104"/>
            </af:gridCell>
            <af:gridCell id="gridCell32">
              <af:inputListOfValues id="inputListOfValues5"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr79"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc168">
              <af:outputFormatted value="Material Type"
                                  id="outputFormatted105"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc176">
              <af:selectOneChoice value="#{bindings.ZipMaterialType.inputValue}"
                                  label="#{bindings.ZipMaterialType.label}"
                                  required="#{bindings.ZipMaterialType.hints.mandatory}"
                                  shortDesc="#{bindings.ZipMaterialType.hints.tooltip}"
                                  id="soc1" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accZipMaterialType}">
                <f:selectItems value="#{bindings.ZipMaterialType.items}"
                               id="si32"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton29"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccZipMaterialTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow17" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell33">
              <af:outputFormatted value="Size" id="outputFormatted106"/>
            </af:gridCell>
            <af:gridCell id="gridCell34">
              <af:inputText id="inputText146" simple="true"
                            value="#{bindings.AccSize.inputValue}"
                            label="#{bindings.AccSize.hints.label}"
                            required="#{bindings.AccSize.hints.mandatory}"
                            columns="#{bindings.AccSize.hints.displayWidth}"
                            maximumLength="#{bindings.AccSize.hints.precision}"
                            shortDesc="#{bindings.AccSize.hints.tooltip}"
                            autoSubmit="true" contentStyle="width:100px;"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr80"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc177">
              <af:outputFormatted value="Teeth Type" id="outputFormatted107"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc178">
              <af:selectOneChoice value="#{bindings.ZipTeethType.inputValue}"
                                  label="#{bindings.ZipTeethType.label}"
                                  required="#{bindings.ZipTeethType.hints.mandatory}"
                                  shortDesc="#{bindings.ZipTeethType.hints.tooltip}"
                                  id="soc11" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accZipTeethType}">
                <f:selectItems value="#{bindings.ZipTeethType.items}"
                               id="si56"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton30"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccZipTeethTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr84"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc170">
              <af:outputFormatted value="Cm/Inch" id="outputFormatted108"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc167">
              <af:selectOneChoice value="#{bindings.ZipUom.inputValue}"
                                  label="#{bindings.ZipUom.label}"
                                  required="#{bindings.ZipUom.hints.mandatory}"
                                  shortDesc="#{bindings.ZipUom.hints.tooltip}"
                                  id="soc61" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accZipUom}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.ZipUom.items}" id="si61"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton31"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccZipUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow18" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell35">
              <af:outputFormatted value="Length" id="outputFormatted110"/>
            </af:gridCell>
            <af:gridCell id="gridCell36">
              <af:inputText label="#{bindings.AccLength.hints.label}"
                            id="inputText43" simple="true"
                            value="#{bindings.AccLength.inputValue}"
                            required="#{bindings.AccLength.hints.mandatory}"
                            columns="#{bindings.AccLength.hints.displayWidth}"
                            maximumLength="#{bindings.AccLength.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccLength.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccLength.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow19" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell37">
              <af:outputFormatted value="List Price" id="outputFormatted111"/>
            </af:gridCell>
            <af:gridCell id="gridCell38">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText44" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow20" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell39">
              <af:outputFormatted value="Wastage %" id="outputFormatted112"/>
            </af:gridCell>
            <af:gridCell id="gridCell40">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText45" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow209">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell421">
              <af:outputFormatted value="MOQ" id="outputFormatted350"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell422">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText114" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow21" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell41">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted113"/>
            </af:gridCell>
            <af:gridCell id="gridCell42">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText46" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gr82">
            <af:gridCell marginStart="5px" width="dontCare" id="gc175">
              <af:outputFormatted value="Resultant" id="outputFormatted109"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc179">
              <af:inputText value="#{bindings.ZipResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.ZipResultantTrans.hints.mandatory}"
                            columns="#{bindings.ZipResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.ZipResultantTrans.hints.precision}"
                            shortDesc="#{bindings.ZipResultantTrans.hints.tooltip}"
                            id="inputText24" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true"
                            partialTriggers="inputText146">
                <f:validator binding="#{bindings.ZipResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout12" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Threads' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Threads" id="outputFormatted114"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="pgl14"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Threads' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow22"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell43">
              <af:outputFormatted value="Item Status*" id="outputFormatted115"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell44">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice7" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  partialTriggers="commandButton5 cb5 cb6"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems7"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow210" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell423">
              <af:outputFormatted value="Item UOM" id="outputFormatted351"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell424">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice62" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems62"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr87"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc186">
              <af:outputFormatted value="Usage" id="outputFormatted116"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc182">
              <af:selectOneChoice value="#{bindings.ThrThreadUsage.inputValue}"
                                  label="#{bindings.ThrThreadUsage.label}"
                                  required="#{bindings.ThrThreadUsage.hints.mandatory}"
                                  shortDesc="#{bindings.ThrThreadUsage.hints.tooltip}"
                                  id="soc46" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accThrThreadUsage}">
                <f:selectItems value="#{bindings.ThrThreadUsage.items}"
                               id="si9"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton32"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccThrThreadUsageVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr89"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc189">
              <af:outputFormatted value="Type" id="outputFormatted117"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc183">
              <af:selectOneChoice value="#{bindings.ThrThreadType.inputValue}"
                                  label="#{bindings.ThrThreadType.label}"
                                  required="#{bindings.ThrThreadType.hints.mandatory}"
                                  shortDesc="#{bindings.ThrThreadType.hints.tooltip}"
                                  id="soc9" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accThrThreadType}">
                <f:selectItems value="#{bindings.ThrThreadType.items}"
                               id="si11"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton33"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccThrThreadTypeVset}"
                                immediate="true" rendered="false"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr88"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc181">
              <af:outputFormatted value="Material" id="outputFormatted118"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc190">
              <af:selectOneChoice value="#{bindings.ThrMaterial.inputValue}"
                                  label="#{bindings.ThrMaterial.label}"
                                  required="#{bindings.ThrMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.ThrMaterial.hints.tooltip}"
                                  id="soc40" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accThrMaterial}">
                <f:selectItems value="#{bindings.ThrMaterial.items}" id="si47"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton34"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccThrMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow23" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell45">
              <af:outputFormatted value="Length UOM" id="outputFormatted121"/>
            </af:gridCell>
            <af:gridCell id="gridCell46">
              <af:selectOneChoice value="#{bindings.AccLengthUom.inputValue}"
                                  label="#{bindings.AccLengthUom.label}"
                                  required="#{bindings.AccLengthUom.hints.mandatory}"
                                  shortDesc="#{bindings.AccLengthUom.hints.tooltip}"
                                  id="soc62" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true">
                <f:selectItems value="#{bindings.AccLengthUom.items}"
                               id="si62"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton35"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccLengthUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow28" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell55">
              <af:outputFormatted value="Length" id="outputFormatted126"/>
            </af:gridCell>
            <af:gridCell id="gridCell56">
              <af:inputText label="#{bindings.AccLength.hints.label}"
                            id="inputText53" simple="true"
                            value="#{bindings.AccLength.inputValue}"
                            required="#{bindings.AccLength.hints.mandatory}"
                            columns="#{bindings.AccLength.hints.displayWidth}"
                            maximumLength="#{bindings.AccLength.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccLength.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccLength.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr85"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc185">
              <af:outputFormatted value="Tex Size/Ply" id="outputFormatted119"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc184">
              <af:inputText value="#{bindings.ThrTexSizePly.inputValue}"
                            label="#{bindings.ThrTexSizePly.hints.label}"
                            required="#{bindings.ThrTexSizePly.hints.mandatory}"
                            columns="#{bindings.ThrTexSizePly.hints.displayWidth}"
                            maximumLength="#{bindings.ThrTexSizePly.hints.precision}"
                            shortDesc="#{bindings.ThrTexSizePly.hints.tooltip}"
                            id="it85" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.ThrTexSizePly.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow24" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell47">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted122"/>
            </af:gridCell>
            <af:gridCell id="gridCell48">
              <af:inputListOfValues id="inputListOfValues6"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow25" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell49">
              <af:outputFormatted value="List Price" id="outputFormatted123"/>
            </af:gridCell>
            <af:gridCell id="gridCell50">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText50" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow26" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell51">
              <af:outputFormatted value="Wastage %" id="outputFormatted124"/>
            </af:gridCell>
            <af:gridCell id="gridCell52">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText51" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow211">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell425">
              <af:outputFormatted value="MOQ" id="outputFormatted352"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell426">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText84" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow27" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell53">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted125"/>
            </af:gridCell>
            <af:gridCell id="gridCell54">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText52" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gr86">
            <af:gridCell marginStart="5px" width="dontCare" id="gc187">
              <af:outputFormatted value="Resultant" id="outputFormatted120"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc188">
              <af:inputText value="#{bindings.ThrResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.ThrResultantTrans.hints.mandatory}"
                            columns="#{bindings.ThrResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.ThrResultantTrans.hints.precision}"
                            shortDesc="#{bindings.ThrResultantTrans.hints.tooltip}"
                            id="inputText25" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true">
                <f:validator binding="#{bindings.ThrResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout13" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Elastic' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Elastic" id="outputFormatted127"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="pgl15"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Elastic' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow30"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell59">
              <af:outputFormatted value="Item Status*" id="outputFormatted129"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell60">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice8" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems8"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow212" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell427">
              <af:outputFormatted value="Item UOM" id="outputFormatted353"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell428">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice63" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems63"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow29" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell57">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted128"/>
            </af:gridCell>
            <af:gridCell id="gridCell58">
              <af:inputListOfValues id="inputListOfValues7"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr92"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc198">
              <af:outputFormatted value="Type" id="outputFormatted130"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc191">
              <af:selectOneChoice value="#{bindings.ElsElasticType.inputValue}"
                                  label="#{bindings.ElsElasticType.label}"
                                  required="#{bindings.ElsElasticType.hints.mandatory}"
                                  shortDesc="#{bindings.ElsElasticType.hints.tooltip}"
                                  id="soc51" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accElsElasticType}">
                <f:selectItems value="#{bindings.ElsElasticType.items}"
                               id="si53"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton36"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccElsElasticTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow31"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell61">
              <af:outputFormatted value="Width" id="outputFormatted131"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell62">
              <af:inputText label="#{bindings.AccWidth.hints.label}"
                            id="inputText56" simple="true"
                            value="#{bindings.AccWidth.inputValue}"
                            required="#{bindings.AccWidth.hints.mandatory}"
                            columns="#{bindings.AccWidth.hints.displayWidth}"
                            maximumLength="#{bindings.AccWidth.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWidth.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccWidth.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow248"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell499">
              <af:outputFormatted value="UOM" id="outputFormatted389"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell500">
              <af:selectOneChoice value="#{bindings.AccWidthUom.inputValue}"
                                  label="#{bindings.AccWidthUom.label}"
                                  required="#{bindings.AccWidthUom.hints.mandatory}"
                                  shortDesc="#{bindings.AccWidthUom.hints.tooltip}"
                                  id="selectOneChoice81"
                                  contentStyle="width:106px;" simple="true"
                                  binding="#{ViewActions.accWidthUomEls}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.AccWidthUom.items}"
                               id="selectItems56"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton7"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccWidthUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr90"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc192">
              <af:outputFormatted value="Cord/No. of Rubbers "
                                  id="outputFormatted132"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc194">
              <af:inputText value="#{bindings.ElsCordType.inputValue}"
                            label="#{bindings.ElsCordType.hints.label}"
                            required="#{bindings.ElsCordType.hints.mandatory}"
                            columns="#{bindings.ElsCordType.hints.displayWidth}"
                            maximumLength="#{bindings.ElsCordType.hints.precision}"
                            shortDesc="#{bindings.ElsCordType.hints.tooltip}"
                            id="it77" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.ElsCordType.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr93"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc196">
              <af:outputFormatted value="Strength/Elasticity Ratio"
                                  id="outputFormatted133"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc193">
              <af:inputText value="#{bindings.ElsRatio.inputValue}"
                            label="#{bindings.ElsRatio.hints.label}"
                            required="#{bindings.ElsRatio.hints.mandatory}"
                            columns="#{bindings.ElsRatio.hints.displayWidth}"
                            maximumLength="#{bindings.ElsRatio.hints.precision}"
                            shortDesc="#{bindings.ElsRatio.hints.tooltip}"
                            id="it26" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.ElsRatio.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow32" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell63">
              <af:outputFormatted value="List Price" id="outputFormatted135"/>
            </af:gridCell>
            <af:gridCell id="gridCell64">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText57" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow33" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell65">
              <af:outputFormatted value="Wastage %" id="outputFormatted136"/>
            </af:gridCell>
            <af:gridCell id="gridCell66">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText58" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow213">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell429">
              <af:outputFormatted value="MOQ" id="outputFormatted354"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell430">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText89" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow34" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell67">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted137"/>
            </af:gridCell>
            <af:gridCell id="gridCell68">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText59" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gr91">
            <af:gridCell marginStart="5px" width="dontCare" id="gc197">
              <af:outputFormatted value="Resultant" id="outputFormatted134"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc195">
              <af:inputText value="#{bindings.ElsResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.ElsResultantTrans.hints.mandatory}"
                            columns="#{bindings.ElsResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.ElsResultantTrans.hints.precision}"
                            shortDesc="#{bindings.ElsResultantTrans.hints.tooltip}"
                            id="inputText29" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true">
                <f:validator binding="#{bindings.ElsResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout14" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Cord, Twill Tape, Curtain Tape' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Cord, Twill Tape, Curtian Tape"
                                id="outputFormatted143"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="pgl16"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Cord, Twill Tape, Curtain Tape' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow35"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell69">
              <af:outputFormatted value="Item Status*" id="outputFormatted138"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell70">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice9" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  partialTriggers="commandButton5 cb5 cb6"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems9"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow215" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell433">
              <af:outputFormatted value="Item UOM" id="outputFormatted356"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell434">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice64" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems64"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr96"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc204">
              <af:outputFormatted value="Item" id="outputFormatted144"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc203">
              <af:selectOneChoice value="#{bindings.CtcItemType.inputValue}"
                                  label="#{bindings.CtcItemType.label}"
                                  required="#{bindings.CtcItemType.hints.mandatory}"
                                  shortDesc="#{bindings.CtcItemType.hints.tooltip}"
                                  id="soc13" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accCtcItemType}">
                <f:selectItems value="#{bindings.CtcItemType.items}" id="si6"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton37"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccCtcItemTypeVset}"
                                immediate="true" rendered="false"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow36" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell71">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted139"/>
            </af:gridCell>
            <af:gridCell id="gridCell72">
              <af:inputListOfValues id="inputListOfValues8"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr95"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc200">
              <af:outputFormatted value="Material" id="outputFormatted145"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc202">
              <af:selectOneChoice value="#{bindings.CtcMaterial.inputValue}"
                                  label="#{bindings.CtcMaterial.label}"
                                  required="#{bindings.CtcMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.CtcMaterial.hints.tooltip}"
                                  id="soc35" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accCtcMaterial}">
                <f:selectItems value="#{bindings.CtcMaterial.items}" id="si14"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton38"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccCtcMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gr94">
            <af:gridCell marginStart="5px" width="dontCare" id="gc201">
              <af:outputFormatted value="Dia/Thickness/Width"
                                  id="outputFormatted146"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc199">
              <af:inputText value="#{bindings.CtcDiaThickness.inputValue}"
                            label="#{bindings.CtcDiaThickness.hints.label}"
                            required="#{bindings.CtcDiaThickness.hints.mandatory}"
                            columns="#{bindings.CtcDiaThickness.hints.displayWidth}"
                            maximumLength="#{bindings.CtcDiaThickness.hints.precision}"
                            shortDesc="#{bindings.CtcDiaThickness.hints.tooltip}"
                            id="it95" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.CtcDiaThickness.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow37" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell73">
              <af:outputFormatted value="List Price" id="outputFormatted140"/>
            </af:gridCell>
            <af:gridCell id="gridCell74">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText62" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow38" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell75">
              <af:outputFormatted value="Wastage %" id="outputFormatted141"/>
            </af:gridCell>
            <af:gridCell id="gridCell76">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText63" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow214">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell431">
              <af:outputFormatted value="MOQ" id="outputFormatted355"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell432">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText99" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow39" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell77">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted142"/>
            </af:gridCell>
            <af:gridCell id="gridCell78">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText64" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow40">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell79">
              <af:outputFormatted value="Resultant" id="outputFormatted147"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell80">
              <af:inputText value="#{bindings.CtcResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.CtcResultantTrans.hints.mandatory}"
                            columns="#{bindings.CtcResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.CtcResultantTrans.hints.precision}"
                            shortDesc="#{bindings.CtcResultantTrans.hints.tooltip}"
                            id="inputText30" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true">
                <f:validator binding="#{bindings.CtcResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout15" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Fusing' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Fusing" id="outputFormatted148"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="pgl17"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Fusing' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow41"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell81">
              <af:outputFormatted value="Item Status*" id="outputFormatted149"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell82">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice57" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems57"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow216" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell435">
              <af:outputFormatted value="Item UOM" id="outputFormatted357"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell436">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice65" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems65"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow42" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell83">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted150"/>
            </af:gridCell>
            <af:gridCell id="gridCell84">
              <af:inputListOfValues id="inputListOfValues9"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gr97"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gc205">
              <af:outputFormatted value="Material" id="outputFormatted151"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc208">
              <af:selectOneChoice value="#{bindings.FusMaterial.inputValue}"
                                  label="#{bindings.FusMaterial.label}"
                                  required="#{bindings.FusMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.FusMaterial.hints.tooltip}"
                                  id="soc16" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accFusMaterial}">
                <f:selectItems value="#{bindings.FusMaterial.items}" id="si10"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton39"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccFusMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow162"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell323">
              <af:outputFormatted value="Width" id="outputFormatted284"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell324">
              <af:inputText label="#{bindings.AccWidth.hints.label}"
                            id="inputText71" simple="true"
                            value="#{bindings.AccWidth.inputValue}"
                            required="#{bindings.AccWidth.hints.mandatory}"
                            columns="#{bindings.AccWidth.hints.displayWidth}"
                            maximumLength="#{bindings.AccWidth.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWidth.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccWidth.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gr98">
            <af:gridCell marginStart="5px" width="dontCare" id="gc207">
              <af:outputFormatted value="GSM" id="outputFormatted152"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gc206">
              <af:inputText value="#{bindings.FusGsm.inputValue}"
                            label="#{bindings.FusGsm.hints.label}"
                            required="#{bindings.FusGsm.hints.mandatory}"
                            columns="#{bindings.FusGsm.hints.displayWidth}"
                            maximumLength="#{bindings.FusGsm.hints.precision}"
                            shortDesc="#{bindings.FusGsm.hints.tooltip}"
                            id="it6" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.FusGsm.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow43" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell85">
              <af:outputFormatted value="List Price" id="outputFormatted153"/>
            </af:gridCell>
            <af:gridCell id="gridCell86">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText67" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow44" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell87">
              <af:outputFormatted value="Wastage %" id="outputFormatted154"/>
            </af:gridCell>
            <af:gridCell id="gridCell88">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText68" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow217">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell437">
              <af:outputFormatted value="MOQ" id="outputFormatted358"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell438">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText103" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow45" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell89">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted155"/>
            </af:gridCell>
            <af:gridCell id="gridCell90">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText69" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow46">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell91">
              <af:outputFormatted value="Resultant" id="outputFormatted156"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell92">
              <af:inputText value="#{bindings.FusResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.FusResultantTrans.hints.mandatory}"
                            columns="#{bindings.FusResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.FusResultantTrans.hints.precision}"
                            shortDesc="#{bindings.FusResultantTrans.hints.tooltip}"
                            id="inputText34" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true">
                <f:validator binding="#{bindings.FusResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout16" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Non-Wooven' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Non-Woven" id="outputFormatted157"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="pgl18"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Non-Wooven' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow47"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell93">
              <af:outputFormatted value="Item Status*" id="outputFormatted158"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell94">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice10" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  partialTriggers="commandButton5 cb5 cb6"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems10"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow219" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell441">
              <af:outputFormatted value="Item UOM" id="outputFormatted360"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell442">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice66" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems66"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow48" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell95">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted159"/>
            </af:gridCell>
            <af:gridCell id="gridCell96">
              <af:inputListOfValues id="inputListOfValues10"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow50">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell99">
              <af:outputFormatted value="GSM" id="outputFormatted161"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell100">
              <af:inputText value="#{bindings.NwvGsm.inputValue}"
                            label="#{bindings.NwvGsm.hints.label}"
                            required="#{bindings.NwvGsm.hints.mandatory}"
                            columns="#{bindings.NwvGsm.hints.displayWidth}"
                            maximumLength="#{bindings.NwvGsm.hints.precision}"
                            shortDesc="#{bindings.NwvGsm.hints.tooltip}"
                            id="it100" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.NwvGsm.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow55"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell109">
              <af:outputFormatted value="Width" id="outputFormatted166"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell110">
              <af:inputText label="#{bindings.AccWidth.hints.label}"
                            id="inputText72" simple="true"
                            value="#{bindings.AccWidth.inputValue}"
                            required="#{bindings.AccWidth.hints.mandatory}"
                            columns="#{bindings.AccWidth.hints.displayWidth}"
                            maximumLength="#{bindings.AccWidth.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWidth.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccWidth.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow49"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell97">
              <af:outputFormatted value="Material" id="outputFormatted160"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell98">
              <af:selectOneChoice value="#{bindings.NwvMaterial.inputValue}"
                                  label="#{bindings.NwvMaterial.label}"
                                  required="#{bindings.NwvMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.NwvMaterial.hints.tooltip}"
                                  id="soc50" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accNwvMateria}">
                <f:selectItems value="#{bindings.NwvMaterial.items}" id="si45"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton40"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccNwvMateriaVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow51" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell101">
              <af:outputFormatted value="List Price" id="outputFormatted162"/>
            </af:gridCell>
            <af:gridCell id="gridCell102">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText73" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow52" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell103">
              <af:outputFormatted value="Wastage %" id="outputFormatted163"/>
            </af:gridCell>
            <af:gridCell id="gridCell104">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText74" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow218">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell439">
              <af:outputFormatted value="MOQ" id="outputFormatted359"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell440">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText108" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow53" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell105">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted164"/>
            </af:gridCell>
            <af:gridCell id="gridCell106">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText75" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow54">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell107">
              <af:outputFormatted value="Resultant" id="outputFormatted165"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell108">
              <af:inputText value="#{bindings.NwvResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.NwvResultantTrans.hints.mandatory}"
                            columns="#{bindings.NwvResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.NwvResultantTrans.hints.precision}"
                            shortDesc="#{bindings.NwvResultantTrans.hints.tooltip}"
                            id="inputText35" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true">
                <f:validator binding="#{bindings.NwvResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout17" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Wadding' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Wadding" id="outputFormatted167"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout1"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Wadding' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow56"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell111">
              <af:outputFormatted value="Item Status*" id="outputFormatted168"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell112">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice11" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems11"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow220" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell443">
              <af:outputFormatted value="Item UOM" id="outputFormatted361"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell444">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice67" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems67"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow57" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell113">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted169"/>
            </af:gridCell>
            <af:gridCell id="gridCell114">
              <af:inputListOfValues id="inputListOfValues11"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow58">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell115">
              <af:outputFormatted value="GSM" id="outputFormatted170"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell116">
              <af:inputText value="#{bindings.WdGsm.inputValue}"
                            label="#{bindings.WdGsm.hints.label}"
                            required="#{bindings.WdGsm.hints.mandatory}"
                            columns="#{bindings.WdGsm.hints.displayWidth}"
                            maximumLength="#{bindings.WdGsm.hints.precision}"
                            shortDesc="#{bindings.WdGsm.hints.tooltip}"
                            id="it54" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.WdGsm.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow59"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell117">
              <af:outputFormatted value="Width" id="outputFormatted171"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell118">
              <af:inputText label="#{bindings.AccWidth.hints.label}"
                            id="inputText79" simple="true"
                            value="#{bindings.AccWidth.inputValue}"
                            required="#{bindings.AccWidth.hints.mandatory}"
                            columns="#{bindings.AccWidth.hints.displayWidth}"
                            maximumLength="#{bindings.AccWidth.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWidth.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccWidth.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow65">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell129">
              <af:outputFormatted value="Loaft" id="outputFormatted177"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell130">
              <af:inputText value="#{bindings.WdLoaft.inputValue}"
                            label="#{bindings.WdLoaft.hints.label}"
                            required="#{bindings.WdLoaft.hints.mandatory}"
                            columns="#{bindings.WdLoaft.hints.displayWidth}"
                            maximumLength="#{bindings.WdLoaft.hints.precision}"
                            shortDesc="#{bindings.WdLoaft.hints.tooltip}"
                            id="it91" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.WdLoaft.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow60"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell119">
              <af:outputFormatted value="Material" id="outputFormatted172"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell120">
              <af:selectOneChoice value="#{bindings.WdMaterial.inputValue}"
                                  label="#{bindings.WdMaterial.label}"
                                  required="#{bindings.WdMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.WdMaterial.hints.tooltip}"
                                  id="soc3" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accWdMaterial}">
                <f:selectItems value="#{bindings.WdMaterial.items}" id="si34"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton41"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccWdMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow66"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell131">
              <af:outputFormatted value="Ratio" id="outputFormatted178"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell132">
              <af:inputText value="#{bindings.WdRatio.inputValue}"
                            label="#{bindings.WdRatio.hints.label}"
                            required="#{bindings.WdRatio.hints.mandatory}"
                            columns="#{bindings.WdRatio.hints.displayWidth}"
                            maximumLength="#{bindings.WdRatio.hints.precision}"
                            shortDesc="#{bindings.WdRatio.hints.tooltip}"
                            id="it35" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.WdRatio.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow61" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell121">
              <af:outputFormatted value="List Price" id="outputFormatted173"/>
            </af:gridCell>
            <af:gridCell id="gridCell122">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText80" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow62" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell123">
              <af:outputFormatted value="Wastage %" id="outputFormatted174"/>
            </af:gridCell>
            <af:gridCell id="gridCell124">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText81" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow221">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell445">
              <af:outputFormatted value="MOQ" id="outputFormatted362"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell446">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText110" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow63" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell125">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted175"/>
            </af:gridCell>
            <af:gridCell id="gridCell126">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText82" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow64">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell127">
              <af:outputFormatted value="Resultant" id="outputFormatted176"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell128">
              <af:inputText value="#{bindings.WdResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.WdResultantTrans.hints.mandatory}"
                            columns="#{bindings.WdResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.WdResultantTrans.hints.precision}"
                            shortDesc="#{bindings.WdResultantTrans.hints.tooltip}"
                            id="inputText36" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true">
                <f:validator binding="#{bindings.WdResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout18" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Ball Fiber' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Ball Fiber" id="outputFormatted179"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout2"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Ball Fiber' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow67"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell133">
              <af:outputFormatted value="Item Status*" id="outputFormatted180"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell134">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice12" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  partialTriggers="commandButton5 cb5 cb6"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems12"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow223" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell449">
              <af:outputFormatted value="Item UOM" id="outputFormatted364"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell450">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice68" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems68"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow68" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell135">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted181"/>
            </af:gridCell>
            <af:gridCell id="gridCell136">
              <af:inputListOfValues id="inputListOfValues12"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow71"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell141">
              <af:outputFormatted value="Material" id="outputFormatted184"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell142">
              <af:selectOneChoice value="#{bindings.BfMaterial.inputValue}"
                                  label="#{bindings.BfMaterial.label}"
                                  required="#{bindings.BfMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.BfMaterial.hints.tooltip}"
                                  id="soc34" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accBfMaterial}">
                <f:selectItems value="#{bindings.BfMaterial.items}" id="si31"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton42"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccBfMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow69">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell137">
              <af:outputFormatted value="Type" id="outputFormatted182"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell138">
              <af:selectOneChoice value="#{bindings.BfMaterialType.inputValue}"
                                  label="#{bindings.BfMaterialType.label}"
                                  required="#{bindings.BfMaterialType.hints.mandatory}"
                                  shortDesc="#{bindings.BfMaterialType.hints.tooltip}"
                                  id="soc39" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accBfMaterialType}">
                <f:selectItems value="#{bindings.BfMaterialType.items}"
                               id="si39"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton43"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccBfMaterialTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow72" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell143">
              <af:outputFormatted value="List Price" id="outputFormatted185"/>
            </af:gridCell>
            <af:gridCell id="gridCell144">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText86" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow73" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell145">
              <af:outputFormatted value="Wastage %" id="outputFormatted186"/>
            </af:gridCell>
            <af:gridCell id="gridCell146">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText87" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow222">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell447">
              <af:outputFormatted value="MOQ" id="outputFormatted363"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell448">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText115" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow74" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell147">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted187"/>
            </af:gridCell>
            <af:gridCell id="gridCell148">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText88" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow75">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell149">
              <af:outputFormatted value="Resultant" id="outputFormatted188"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell150">
              <af:inputText value="#{bindings.BfResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.BfResultantTrans.hints.mandatory}"
                            columns="#{bindings.BfResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.BfResultantTrans.hints.precision}"
                            shortDesc="#{bindings.BfResultantTrans.hints.tooltip}"
                            id="inputText40" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true">
                <f:validator binding="#{bindings.BfResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout19" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Buttons' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Buttons" id="outputFormatted183"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout3" partialTriggers="it110"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Buttons' ? true : false}">
          <af:gridRow marginTop="5px" height="auto" id="gridRow70"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell139">
              <af:outputFormatted value="Item Status*" id="outputFormatted189"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell140">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice13" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems13"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow224" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell451">
              <af:outputFormatted value="Item UOM" id="outputFormatted365"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell452">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice69" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems69"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow76" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell151">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted190"/>
            </af:gridCell>
            <af:gridCell id="gridCell152">
              <af:inputListOfValues id="inputListOfValues13"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow77">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell153">
              <af:outputFormatted value="Size Measurment"
                                  id="outputFormatted191"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell154">
              <af:inputText value="#{bindings.BtnButtonSize.inputValue}"
                                  label="#{bindings.BtnButtonSize.label}"
                                  required="#{bindings.BtnButtonSize.hints.mandatory}"
                                  shortDesc="#{bindings.BtnButtonSize.hints.tooltip}"
                                  contentStyle="width:100px;"
                                  simple="true" autoSubmit="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow78"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell155">
              <af:outputFormatted value="No. of Holes" id="outputFormatted192"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell156">
              <af:inputText value="#{bindings.BtnHolesNum.inputValue}"
                            label="#{bindings.BtnHolesNum.hints.label}"
                            required="#{bindings.BtnHolesNum.hints.mandatory}"
                            columns="#{bindings.BtnHolesNum.hints.displayWidth}"
                            maximumLength="#{bindings.BtnHolesNum.hints.precision}"
                            shortDesc="#{bindings.BtnHolesNum.hints.tooltip}"
                            id="it5" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.BtnHolesNum.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow79">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell157">
              <af:outputFormatted value="Type" id="outputFormatted193"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell158">
              <af:selectOneChoice value="#{bindings.BtnButtonType.inputValue}"
                                  label="#{bindings.BtnButtonType.label}"
                                  required="#{bindings.BtnButtonType.hints.mandatory}"
                                  shortDesc="#{bindings.BtnButtonType.hints.tooltip}"
                                  id="soc54" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accBtnButtonType}">
                <f:selectItems value="#{bindings.BtnButtonType.items}"
                               id="si2"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton44"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccBtnButtonTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow80"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell159">
              <af:outputFormatted value="Material" id="outputFormatted194"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell160">
              <af:selectOneChoice value="#{bindings.BtnButtonMaterial.inputValue}"
                                  label="#{bindings.BtnButtonMaterial.label}"
                                  required="#{bindings.BtnButtonMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.BtnButtonMaterial.hints.tooltip}"
                                  id="soc21" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accBtnButtonMaterial}">
                <f:selectItems value="#{bindings.BtnButtonMaterial.items}"
                               id="si33"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton45"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccBtnButtonMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow81"
                      marginBottom="1px" rendered="false">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell161">
              <af:outputFormatted value="Color" id="outputFormatted195"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell162">
              <af:selectOneChoice value="#{bindings.BtnButtonColor.inputValue}"
                                  label="#{bindings.BtnButtonColor.label}"
                                  required="#{bindings.BtnButtonColor.hints.mandatory}"
                                  shortDesc="#{bindings.BtnButtonColor.hints.tooltip}"
                                  id="soc42" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accBtnButtonColor}">
                <f:selectItems value="#{bindings.BtnButtonColor.items}"
                               id="si35"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton46"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccBtnButtonColorVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow82" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell163">
              <af:outputFormatted value="List Price" id="outputFormatted196"/>
            </af:gridCell>
            <af:gridCell id="gridCell164">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText93" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow83" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell165">
              <af:outputFormatted value="Wastage %" id="outputFormatted197"/>
            </af:gridCell>
            <af:gridCell id="gridCell166">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText94" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow225">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell453">
              <af:outputFormatted value="MOQ" id="outputFormatted366"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell454">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText119" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow84" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell167">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted198"/>
            </af:gridCell>
            <af:gridCell id="gridCell168">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText95" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow85">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell169">
              <af:outputFormatted value="Resultant" id="outputFormatted199"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell170">
              <af:inputText value="#{bindings.BtnResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.BtnResultantTrans.hints.mandatory}"
                            columns="#{bindings.BtnResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.BtnResultantTrans.hints.precision}"
                            shortDesc="#{bindings.BtnResultantTrans.hints.tooltip}"
                            id="inputText41" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true">
                <f:validator binding="#{bindings.BtnResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout20" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Paper' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Paper" id="outputFormatted200"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout4"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Paper' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow86"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell171">
              <af:outputFormatted value="Item Status*" id="outputFormatted201"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell172">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice14" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  partialTriggers="commandButton5 cb5 cb6"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems14"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow227" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell457">
              <af:outputFormatted value="Item UOM" id="outputFormatted368"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell458">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice70" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems70"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow87" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell173">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted202"/>
            </af:gridCell>
            <af:gridCell id="gridCell174">
              <af:inputListOfValues id="inputListOfValues14"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow88">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell175">
              <af:outputFormatted value="Length" id="outputFormatted203"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell176">
              <af:inputText label="#{bindings.AccLength.hints.label}"
                            id="inputText91" simple="true"
                            value="#{bindings.AccLength.inputValue}"
                            required="#{bindings.AccLength.hints.mandatory}"
                            columns="#{bindings.AccLength.hints.displayWidth}"
                            maximumLength="#{bindings.AccLength.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccLength.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccLength.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow89"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell177">
              <af:outputFormatted value="Width" id="outputFormatted204"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell178">
              <af:inputText label="#{bindings.AccWidth.hints.label}"
                            id="inputText92" simple="true"
                            value="#{bindings.AccWidth.inputValue}"
                            required="#{bindings.AccWidth.hints.mandatory}"
                            columns="#{bindings.AccWidth.hints.displayWidth}"
                            maximumLength="#{bindings.AccWidth.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWidth.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccWidth.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow254"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell511">
              <af:outputFormatted value="UOM" id="outputFormatted395"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell512">
              <af:selectOneChoice value="#{bindings.AccWidthUom.inputValue}"
                                  label="#{bindings.AccWidthUom.label}"
                                  required="#{bindings.AccWidthUom.hints.mandatory}"
                                  shortDesc="#{bindings.AccWidthUom.hints.tooltip}"
                                  id="selectOneChoice56"
                                  contentStyle="width:106px;" simple="true"
                                  binding="#{ViewActions.accWidthUomPpr}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.AccWidthUom.items}"
                               id="selectItems81"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton76"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccWidthUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow92"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell183">
              <af:outputFormatted value="Color" id="outputFormatted207"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell184">
              <af:selectOneChoice value="#{bindings.PprPaperColor.inputValue}"
                                  label="#{bindings.PprPaperColor.label}"
                                  required="#{bindings.PprPaperColor.hints.mandatory}"
                                  shortDesc="#{bindings.PprPaperColor.hints.tooltip}"
                                  id="soc65" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accPprPaperColor}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.PprPaperColor.items}"
                               id="si65"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton47"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccPprPaperColorVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow91"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell181">
              <af:outputFormatted value="Material" id="outputFormatted206"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell182">
              <af:selectOneChoice value="#{bindings.PprPaperMaterial.inputValue}"
                                  label="#{bindings.PprPaperMaterial.label}"
                                  required="#{bindings.PprPaperMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.PprPaperMaterial.hints.tooltip}"
                                  id="soc27" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accPprPaperMaterial}">
                <f:selectItems value="#{bindings.PprPaperMaterial.items}"
                               id="si40"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton48"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccPprPaperMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow93" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell185">
              <af:outputFormatted value="List Price" id="outputFormatted208"/>
            </af:gridCell>
            <af:gridCell id="gridCell186">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText96" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow94" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell187">
              <af:outputFormatted value="Wastage %" id="outputFormatted209"/>
            </af:gridCell>
            <af:gridCell id="gridCell188">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText97" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow226">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell455">
              <af:outputFormatted value="MOQ" id="outputFormatted367"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell456">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText120" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow95" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell189">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted210"/>
            </af:gridCell>
            <af:gridCell id="gridCell190">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText98" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow96">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell191">
              <af:outputFormatted value="Resultant" id="outputFormatted211"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell192">
              <af:inputText value="#{bindings.PprResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.PprResultantTrans.hints.mandatory}"
                            columns="#{bindings.PprResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.PprResultantTrans.hints.precision}"
                            shortDesc="#{bindings.PprResultantTrans.hints.tooltip}"
                            id="inputText42" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true"
                            partialTriggers="selectOneChoice56">
                <f:validator binding="#{bindings.PprResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout21" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Stickers' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:panelGroupLayout layout="scroll"
                                 xmlns:af="http://xmlns.oracle.com/adf/faces/rich"
                                 id="pgl3">
              <af:outputFormatted value="Stickers" id="outputFormatted205"
                                  inlineStyle="font-size:small; vertical-align:top;"/>
            </af:panelGroupLayout>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout5"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Stickers' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow90"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell179">
              <af:outputFormatted value="Item Status*" id="outputFormatted212"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell180">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice15" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems15"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow228" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell459">
              <af:outputFormatted value="Item UOM" id="outputFormatted369"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell460">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice71" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems71"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow97" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell193">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted213"/>
            </af:gridCell>
            <af:gridCell id="gridCell194">
              <af:inputListOfValues id="inputListOfValues15"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow109"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell217">
              <af:outputFormatted value="Type" id="outputFormatted225"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell218">
              <af:selectOneChoice value="#{bindings.StkStickerType.inputValue}"
                                  label="#{bindings.StkStickerType.label}"
                                  required="#{bindings.StkStickerType.hints.mandatory}"
                                  shortDesc="#{bindings.StkStickerType.hints.tooltip}"
                                  id="soc43" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accStkStickerType}">
                <f:selectItems value="#{bindings.StkStickerType.items}"
                               id="si4"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton49"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccStkStickerTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow101"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell201">
              <af:outputFormatted value="Material" id="outputFormatted217"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell202">
              <af:selectOneChoice value="#{bindings.StkMaterial.inputValue}"
                                  label="#{bindings.StkMaterial.label}"
                                  required="#{bindings.StkMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.StkMaterial.hints.tooltip}"
                                  id="soc41" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accStkMaterial}">
                <f:selectItems value="#{bindings.StkMaterial.items}" id="si48"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton50"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccStkMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow110"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell219">
              <af:outputFormatted value="Peelable/Non-Peelable"
                                  id="outputFormatted226"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell220">
              <af:selectOneChoice value="#{bindings.StkPeelableType.inputValue}"
                                  label="#{bindings.StkPeelableType.label}"
                                  required="#{bindings.StkPeelableType.hints.mandatory}"
                                  shortDesc="#{bindings.StkPeelableType.hints.tooltip}"
                                  id="soc14" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accStkPeelableType}">
                <f:selectItems value="#{bindings.StkPeelableType.items}"
                               id="si12"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton51"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccStkPeelableTypeVset}"
                                immediate="true" rendered="false"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow111"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell221">
              <af:outputFormatted value="Perforated/Non-Perforated"
                                  id="outputFormatted227"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell222">
              <af:selectOneChoice value="#{bindings.StkPerforatedType.inputValue}"
                                  label="#{bindings.StkPerforatedType.label}"
                                  required="#{bindings.StkPerforatedType.hints.mandatory}"
                                  shortDesc="#{bindings.StkPerforatedType.hints.tooltip}"
                                  id="soc44" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accStkPerforatedType}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.StkPerforatedType.items}"
                               id="si42"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton52"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccStkPerforatedTypeVset}"
                                immediate="true" rendered="false"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow98">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell195">
              <af:outputFormatted value="Length" id="outputFormatted214"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell196">
              <af:inputText label="#{bindings.AccLength.hints.label}"
                            id="inputText101" simple="true"
                            value="#{bindings.AccLength.inputValue}"
                            required="#{bindings.AccLength.hints.mandatory}"
                            columns="#{bindings.AccLength.hints.displayWidth}"
                            maximumLength="#{bindings.AccLength.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccLength.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccLength.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow99"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell197">
              <af:outputFormatted value="Width" id="outputFormatted215"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell198">
              <af:inputText label="#{bindings.AccWidth.hints.label}"
                            id="inputText102" simple="true"
                            value="#{bindings.AccWidth.inputValue}"
                            required="#{bindings.AccWidth.hints.mandatory}"
                            columns="#{bindings.AccWidth.hints.displayWidth}"
                            maximumLength="#{bindings.AccWidth.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWidth.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccWidth.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow106"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell211">
              <af:outputFormatted value="Diameter" id="outputFormatted222"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell212">
              <af:inputText value="#{bindings.AccDiameter.inputValue}"
                            label="#{bindings.AccDiameter.hints.label}"
                            required="#{bindings.AccDiameter.hints.mandatory}"
                            columns="#{bindings.AccDiameter.hints.displayWidth}"
                            maximumLength="#{bindings.AccDiameter.hints.precision}"
                            shortDesc="#{bindings.AccDiameter.hints.tooltip}"
                            id="it102" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.AccDiameter.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccDiameter.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow107"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell213">
              <af:outputFormatted value="UOM" id="outputFormatted223"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell214">
              <af:selectOneChoice label="#{bindings.AccDiameterUom.label}"
                                  id="soc63" simple="true"
                                  value="#{bindings.AccDiameterUom.inputValue}"
                                  shortDesc="#{bindings.AccDiameterUom.hints.tooltip}"
                                  required="#{bindings.AccDiameterUom.hints.mandatory}"
                                  autoSubmit="true" contentStyle="width:106px;"
                                  binding="#{ViewActions.accDiameterUomStrcker}">
                <f:selectItems value="#{bindings.AccDiameterUom.items}"
                               id="si63"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton53"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccDiameterUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow100"
                      marginBottom="1px" rendered="false">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell199">
              <af:outputFormatted value="Color" id="outputFormatted216"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell200">
              <af:selectOneChoice value="#{bindings.StkColor.inputValue}"
                                  label="#{bindings.StkColor.label}"
                                  required="#{bindings.StkColor.hints.mandatory}"
                                  shortDesc="#{bindings.StkColor.hints.tooltip}"
                                  id="soc66" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accStkColor}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.StkColor.items}" id="si66"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton54"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccStkColorVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow108"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell215">
              <af:outputFormatted value="Text" id="outputFormatted224"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell216">
              <af:inputText value="#{bindings.StkText.inputValue}"
                            label="#{bindings.StkText.hints.label}"
                            required="#{bindings.StkText.hints.mandatory}"
                            columns="#{bindings.StkText.hints.displayWidth}"
                            maximumLength="#{bindings.StkText.hints.precision}"
                            shortDesc="#{bindings.StkText.hints.tooltip}"
                            id="it19" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.StkText.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow102" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell203">
              <af:outputFormatted value="List Price" id="outputFormatted218"/>
            </af:gridCell>
            <af:gridCell id="gridCell204">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText104" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow103" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell205">
              <af:outputFormatted value="Wastage %" id="outputFormatted219"/>
            </af:gridCell>
            <af:gridCell id="gridCell206">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText105" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow229">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell461">
              <af:outputFormatted value="MOQ" id="outputFormatted370"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell462">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText124" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow104" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell207">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted220"/>
            </af:gridCell>
            <af:gridCell id="gridCell208">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText106" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow105">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell209">
              <af:outputFormatted value="Resultant" id="outputFormatted221"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell210">
              <af:inputText value="#{bindings.StkResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.StkResultantTrans.hints.mandatory}"
                            columns="#{bindings.StkResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.StkResultantTrans.hints.precision}"
                            shortDesc="#{bindings.StkResultantTrans.hints.tooltip}"
                            id="inputText47" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true">
                <f:validator binding="#{bindings.StkResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout22" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Silica Gel' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Silica Gel" id="outputFormatted228"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout6"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Silica Gel' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow112"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell223">
              <af:outputFormatted value="Item Status*" id="outputFormatted229"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell224">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice16" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  partialTriggers="commandButton5 cb5 cb6"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems16"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow231" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell465">
              <af:outputFormatted value="Item UOM" id="outputFormatted372"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell466">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice72" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems72"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow113" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell225">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted230"/>
            </af:gridCell>
            <af:gridCell id="gridCell226">
              <af:inputListOfValues id="inputListOfValues16"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow114">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell227">
              <af:outputFormatted value="Item" id="outputFormatted231"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell228">
              <af:selectOneChoice value="#{bindings.SgItem.inputValue}"
                                  label="#{bindings.SgItem.label}"
                                  required="#{bindings.SgItem.hints.mandatory}"
                                  shortDesc="#{bindings.SgItem.hints.tooltip}"
                                  id="soc48" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accSgItem}">
                <f:selectItems value="#{bindings.SgItem.items}" id="si36"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton55"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccSgItemVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow115"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell229">
              <af:outputFormatted value="Weight" id="outputFormatted232"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell230">
              <af:inputText value="#{bindings.SgWeight.inputValue}"
                            label="#{bindings.SgWeight.hints.label}"
                            required="#{bindings.SgWeight.hints.mandatory}"
                            columns="#{bindings.SgWeight.hints.displayWidth}"
                            maximumLength="#{bindings.SgWeight.hints.precision}"
                            shortDesc="#{bindings.SgWeight.hints.tooltip}"
                            id="it60" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.SgWeight.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.SgWeight.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow251"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell505">
              <af:outputFormatted value="UOM" id="outputFormatted392"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell506">
              <af:selectOneChoice value="#{bindings.AccLengthUom.inputValue}"
                                  label="#{bindings.AccLengthUom.label}"
                                  required="#{bindings.AccLengthUom.hints.mandatory}"
                                  shortDesc="#{bindings.AccLengthUom.hints.tooltip}"
                                  id="selectOneChoice55" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accLengthUomSg}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.AccLengthUom.items}"
                               id="selectItems55"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton75"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccLengthUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow118" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell235">
              <af:outputFormatted value="List Price" id="outputFormatted235"/>
            </af:gridCell>
            <af:gridCell id="gridCell236">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText111" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow119" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell237">
              <af:outputFormatted value="Wastage %" id="outputFormatted236"/>
            </af:gridCell>
            <af:gridCell id="gridCell238">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText112" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow230">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell463">
              <af:outputFormatted value="MOQ" id="outputFormatted371"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell464">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText125" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow120" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell239">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted237"/>
            </af:gridCell>
            <af:gridCell id="gridCell240">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText113" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow121">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell241">
              <af:outputFormatted value="Resultant" id="outputFormatted238"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell242">
              <af:inputText value="#{bindings.SgResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.SgResultantTrans.hints.mandatory}"
                            columns="#{bindings.SgResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.SgResultantTrans.hints.precision}"
                            shortDesc="#{bindings.SgResultantTrans.hints.tooltip}"
                            id="inputText48" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true">
                <f:validator binding="#{bindings.SgResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout23" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Tag Pins' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Tag pins" id="outputFormatted233"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout7"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Tag Pins' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow116"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell231">
              <af:outputFormatted value="Item Status*" id="outputFormatted234"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell232">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice17" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems17"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow232" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell467">
              <af:outputFormatted value="Item UOM" id="outputFormatted373"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell468">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice73" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems73"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow117" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell233">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted239"/>
            </af:gridCell>
            <af:gridCell id="gridCell234">
              <af:inputListOfValues id="inputListOfValues17"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow123"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell245">
              <af:outputFormatted value="Size" id="outputFormatted241"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell246">
              <af:inputText id="inputText150" simple="true"
                            value="#{bindings.AccSize.inputValue}"
                            label="#{bindings.AccSize.hints.label}"
                            required="#{bindings.AccSize.hints.mandatory}"
                            columns="#{bindings.AccSize.hints.displayWidth}"
                            maximumLength="#{bindings.AccSize.hints.precision}"
                            shortDesc="#{bindings.AccSize.hints.tooltip}"
                            autoSubmit="true" contentStyle="width:100px;"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow124"
                      marginBottom="1px" rendered="false">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell247">
              <af:outputFormatted value="Color" id="outputFormatted242"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell248">
              <af:selectOneChoice value="#{bindings.TpColor.inputValue}"
                                  label="#{bindings.TpColor.label}"
                                  required="#{bindings.TpColor.hints.mandatory}"
                                  shortDesc="#{bindings.TpColor.hints.tooltip}"
                                  id="soc67" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accTpColor}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.TpColor.items}" id="si67"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton56"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccTpColorVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow125"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell249">
              <af:outputFormatted value="Type/Material"
                                  id="outputFormatted243"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell250">
              <af:selectOneChoice value="#{bindings.TpMaterialType.inputValue}"
                                  label="#{bindings.TpMaterialType.label}"
                                  required="#{bindings.TpMaterialType.hints.mandatory}"
                                  shortDesc="#{bindings.TpMaterialType.hints.tooltip}"
                                  id="soc30" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accTpMaterialType}">
                <f:selectItems value="#{bindings.TpMaterialType.items}"
                               id="si7"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton57"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccTpMaterialTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow126" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell251">
              <af:outputFormatted value="List Price" id="outputFormatted244"/>
            </af:gridCell>
            <af:gridCell id="gridCell252">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText116" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow127" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell253">
              <af:outputFormatted value="Wastage %" id="outputFormatted245"/>
            </af:gridCell>
            <af:gridCell id="gridCell254">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText117" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow233">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell469">
              <af:outputFormatted value="MOQ" id="outputFormatted374"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell470">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText126" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow128" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell255">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted246"/>
            </af:gridCell>
            <af:gridCell id="gridCell256">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText118" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow129">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell257">
              <af:outputFormatted value="Resultant" id="outputFormatted247"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell258">
              <af:inputText value="#{bindings.TpResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.TpResultantTrans.hints.mandatory}"
                            columns="#{bindings.TpResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.TpResultantTrans.hints.precision}"
                            shortDesc="#{bindings.TpResultantTrans.hints.tooltip}"
                            id="inputText49" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true"
                            partialTriggers="inputText150">
                <f:validator binding="#{bindings.TpResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout24" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Tag Gun' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Tag Gun" id="outputFormatted240"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout8"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Tag Gun' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow122"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell243">
              <af:outputFormatted value="Item Status*" id="outputFormatted248"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell244">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice18" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  partialTriggers="commandButton5 cb5 cb6"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems18"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow235" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell473">
              <af:outputFormatted value="Item UOM" id="outputFormatted376"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell474">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice74" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems74"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow130" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell259">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted249"/>
            </af:gridCell>
            <af:gridCell id="gridCell260">
              <af:inputListOfValues id="inputListOfValues18"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow253" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell509">
              <af:outputFormatted value="Description" id="outputFormatted394"/>
            </af:gridCell>
            <af:gridCell id="gridCell510">
              <af:inputText value="#{bindings.AccCustVal.inputValue}"
                            label="#{bindings.AccCustVal.hints.label}"
                            required="#{bindings.AccCustVal.hints.mandatory}"
                            columns="#{bindings.AccCustVal.hints.displayWidth}"
                            maximumLength="#{bindings.AccCustVal.hints.precision}"
                            shortDesc="#{bindings.AccCustVal.hints.tooltip}"
                            id="inputText158" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.AccCustVal.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow131"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell261">
              <af:outputFormatted value="Size" id="outputFormatted250"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell262">
              <af:inputText id="inputText152" simple="true"
                            value="#{bindings.AccSize.inputValue}"
                            label="#{bindings.AccSize.hints.label}"
                            required="#{bindings.AccSize.hints.mandatory}"
                            columns="#{bindings.AccSize.hints.displayWidth}"
                            maximumLength="#{bindings.AccSize.hints.precision}"
                            shortDesc="#{bindings.AccSize.hints.tooltip}"
                            autoSubmit="true" contentStyle="width:100px;"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow134" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell267">
              <af:outputFormatted value="List Price" id="outputFormatted253"/>
            </af:gridCell>
            <af:gridCell id="gridCell268">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText121" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow135" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell269">
              <af:outputFormatted value="Wastage %" id="outputFormatted254"/>
            </af:gridCell>
            <af:gridCell id="gridCell270">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText122" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow234">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell471">
              <af:outputFormatted value="MOQ" id="outputFormatted375"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell472">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText130" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow136" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell271">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted255"/>
            </af:gridCell>
            <af:gridCell id="gridCell272">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText123" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow137">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell273">
              <af:outputFormatted value="Resultant" id="outputFormatted256"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell274">
              <af:inputText value="#{bindings.TgResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.TgResultantTrans.hints.mandatory}"
                            columns="#{bindings.TgResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.TgResultantTrans.hints.precision}"
                            shortDesc="#{bindings.TgResultantTrans.hints.tooltip}"
                            id="inputText54" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true"
                            partialTriggers="inputText152 inputText158">
                <f:validator binding="#{bindings.TgResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout25" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Laces' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Laces" id="outputFormatted251"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout9"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Laces' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow132"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell263">
              <af:outputFormatted value="Item Status*" id="outputFormatted252"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell264">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice19" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems19"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow236" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell475">
              <af:outputFormatted value="Item UOM" id="outputFormatted377"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell476">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice75" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems75"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow133" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell265">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted257"/>
            </af:gridCell>
            <af:gridCell id="gridCell266">
              <af:inputListOfValues id="inputListOfValues19"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow140">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell279">
              <af:outputFormatted value="Type" id="outputFormatted260"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell280">
              <af:selectOneChoice value="#{bindings.LacType.inputValue}"
                                  label="#{bindings.LacType.label}"
                                  required="#{bindings.LacType.hints.mandatory}"
                                  shortDesc="#{bindings.LacType.hints.tooltip}"
                                  id="soc28" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accLacType}">
                <f:selectItems value="#{bindings.LacType.items}" id="si29"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton58"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccLacTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow141"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell281">
              <af:outputFormatted value="Material" id="outputFormatted261"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell282">
              <af:selectOneChoice value="#{bindings.LacMaterial.inputValue}"
                                  label="#{bindings.LacMaterial.label}"
                                  required="#{bindings.LacMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.LacMaterial.hints.tooltip}"
                                  id="soc12" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accLacMaterial}">
                <f:selectItems value="#{bindings.LacMaterial.items}" id="si17"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton59"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccLacMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow138">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell275">
              <af:outputFormatted value="Size" id="outputFormatted258"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell276">
              <af:inputText id="inputText156" simple="true"
                            value="#{bindings.AccSize.inputValue}"
                            label="#{bindings.AccSize.hints.label}"
                            required="#{bindings.AccSize.hints.mandatory}"
                            columns="#{bindings.AccSize.hints.displayWidth}"
                            maximumLength="#{bindings.AccSize.hints.precision}"
                            shortDesc="#{bindings.AccSize.hints.tooltip}"
                            autoSubmit="true" contentStyle="width:100px;"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow139"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell277">
              <af:outputFormatted value="UOM" id="outputFormatted259"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell278">
              <af:selectOneChoice value="#{bindings.LacUom.inputValue}"
                                  label="#{bindings.LacUom.label}"
                                  required="#{bindings.LacUom.hints.mandatory}"
                                  shortDesc="#{bindings.LacUom.hints.tooltip}"
                                  id="soc70" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accLacUom}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.LacUom.items}" id="si70"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton60"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccLacUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow142"
                      marginBottom="1px" rendered="false">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell283">
              <af:outputFormatted value="Color" id="outputFormatted262"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell284">
              <af:selectOneChoice value="#{bindings.LacColor.inputValue}"
                                  label="#{bindings.LacColor.label}"
                                  required="#{bindings.LacColor.hints.mandatory}"
                                  shortDesc="#{bindings.LacColor.hints.tooltip}"
                                  id="soc68" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accLacColor}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.LacColor.items}" id="si68"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton61"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccLacColorVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow143" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell285">
              <af:outputFormatted value="List Price" id="outputFormatted263"/>
            </af:gridCell>
            <af:gridCell id="gridCell286">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText127" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow144" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell287">
              <af:outputFormatted value="Wastage %" id="outputFormatted264"/>
            </af:gridCell>
            <af:gridCell id="gridCell288">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText128" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow237">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell477">
              <af:outputFormatted value="MOQ" id="outputFormatted378"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell478">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText132" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow145" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell289">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted265"/>
            </af:gridCell>
            <af:gridCell id="gridCell290">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText129" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow146">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell291">
              <af:outputFormatted value="Resultant" id="outputFormatted266"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell292">
              <af:inputText value="#{bindings.LacResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.LacResultantTrans.hints.mandatory}"
                            columns="#{bindings.LacResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.LacResultantTrans.hints.precision}"
                            shortDesc="#{bindings.LacResultantTrans.hints.tooltip}"
                            id="inputText55" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true"
                            partialTriggers="inputText156">
                <f:validator binding="#{bindings.LacResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout26" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Eyelets' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Eyelets" id="outputFormatted267"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout10"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Eyelets' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow147"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell293">
              <af:outputFormatted value="Item Status*" id="outputFormatted268"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell294">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice20" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  partialTriggers="commandButton5 cb5 cb6"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems20"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow239" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell481">
              <af:outputFormatted value="Item UOM" id="outputFormatted380"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell482">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice76" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems76"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow148" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell295">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted269"/>
            </af:gridCell>
            <af:gridCell id="gridCell296">
              <af:inputListOfValues id="inputListOfValues20"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow153"
                      marginBottom="1px" rendered="false">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell305">
              <af:outputFormatted value="Color" id="outputFormatted274"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell306">
              <af:selectOneChoice value="#{bindings.EyColor.inputValue}"
                                  label="#{bindings.EyColor.label}"
                                  required="#{bindings.EyColor.hints.mandatory}"
                                  shortDesc="#{bindings.EyColor.hints.tooltip}"
                                  id="soc69" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accEyColor}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.EyColor.items}" id="si69"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton62"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccEyColorVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow150"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell299">
              <af:outputFormatted value="Material" id="outputFormatted271"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell300">
              <af:selectOneChoice value="#{bindings.EyMaterial.inputValue}"
                                  label="#{bindings.EyMaterial.label}"
                                  required="#{bindings.EyMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.EyMaterial.hints.tooltip}"
                                  id="soc47" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accEyMaterial}">
                <f:selectItems value="#{bindings.EyMaterial.items}" id="si30"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton63"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccEyMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow149">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell297">
              <af:outputFormatted value="Finish" id="outputFormatted270"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell298">
              <af:selectOneChoice value="#{bindings.EyFinish.inputValue}"
                                  label="#{bindings.EyFinish.label}"
                                  required="#{bindings.EyFinish.hints.mandatory}"
                                  shortDesc="#{bindings.EyFinish.hints.tooltip}"
                                  id="soc15" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accEyFinish}">
                <f:selectItems value="#{bindings.EyFinish.items}" id="si16"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton64"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccEyFinishVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow151">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell301">
              <af:outputFormatted value="Diameter in Inches"
                                  id="outputFormatted272"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell302">
              <af:inputText label="#{bindings.AccDiameter.hints.label}"
                            id="inputText131" simple="true"
                            value="#{bindings.AccDiameter.inputValue}"
                            required="#{bindings.AccDiameter.hints.mandatory}"
                            columns="#{bindings.AccDiameter.hints.displayWidth}"
                            maximumLength="#{bindings.AccDiameter.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccDiameter.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccDiameter.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow154" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell307">
              <af:outputFormatted value="List Price" id="outputFormatted275"/>
            </af:gridCell>
            <af:gridCell id="gridCell308">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText134" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow155" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell309">
              <af:outputFormatted value="Wastage %" id="outputFormatted276"/>
            </af:gridCell>
            <af:gridCell id="gridCell310">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText135" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow238">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell479">
              <af:outputFormatted value="MOQ" id="outputFormatted379"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell480">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText133" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow156" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell311">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted277"/>
            </af:gridCell>
            <af:gridCell id="gridCell312">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText136" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow157">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell313">
              <af:outputFormatted value="Resultant" id="outputFormatted278"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell314">
              <af:inputText value="#{bindings.EyResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.EyResultantTrans.hints.mandatory}"
                            columns="#{bindings.EyResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.EyResultantTrans.hints.precision}"
                            shortDesc="#{bindings.EyResultantTrans.hints.tooltip}"
                            id="inputText60" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true">
                <f:validator binding="#{bindings.EyResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout27" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Hangers' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Hangers" id="outputFormatted273"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout11"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Hangers' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow152"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell303">
              <af:outputFormatted value="Item Status*" id="outputFormatted279"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell304">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice21" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6"
                                  required="true">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems21"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow240" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell483">
              <af:outputFormatted value="Item UOM" id="outputFormatted381"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell484">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice77" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems77"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow158" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell315">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted280"/>
            </af:gridCell>
            <af:gridCell id="gridCell316">
              <af:inputListOfValues id="inputListOfValues21"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow159"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell317">
              <af:outputFormatted value="Material Combinations"
                                  id="outputFormatted281"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell318">
              <af:inputText value="#{bindings.HngMaterialCombination.inputValue}"
                            label="#{bindings.HngMaterialCombination.hints.label}"
                            required="#{bindings.HngMaterialCombination.hints.mandatory}"
                            columns="#{bindings.HngMaterialCombination.hints.displayWidth}"
                            maximumLength="#{bindings.HngMaterialCombination.hints.precision}"
                            shortDesc="#{bindings.HngMaterialCombination.hints.tooltip}"
                            id="it90" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.HngMaterialCombination.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow160"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell319">
              <af:outputFormatted value="Height" id="outputFormatted282"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell320">
              <af:inputText label="#{bindings.AccHeight.hints.label}"
                            id="inputText149" simple="true"
                            value="#{bindings.AccHeight.inputValue}"
                            required="#{bindings.AccHeight.hints.mandatory}"
                            columns="#{bindings.AccHeight.hints.displayWidth}"
                            maximumLength="#{bindings.AccHeight.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true"
                            valueChangeListener="#{ViewActions.accHeightVCL}">
                <f:validator binding="#{bindings.AccHeight.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccHeight.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow161"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell321">
              <af:outputFormatted value="UOM" id="outputFormatted283"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell322">
              <af:selectOneChoice value="#{bindings.AccHeightUom.inputValue}"
                                  label="#{bindings.AccHeightUom.label}"
                                  required="#{bindings.AccHeightUom.hints.mandatory}"
                                  shortDesc="#{bindings.AccHeightUom.hints.tooltip}"
                                  id="soc71" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accHeightUom}"
                                  autoSubmit="true"
                                  disabled="#{bindings.AccHeight.inputValue == null ? true : false}">
                <f:selectItems value="#{bindings.AccHeightUom.items}"
                               id="si71"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton65"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccHeightUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow163">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell325">
              <af:outputFormatted value="Length" id="outputFormatted285"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell326">
              <af:inputText label="#{bindings.AccLength.hints.label}"
                            id="inputText137" simple="true"
                            value="#{bindings.AccLength.inputValue}"
                            required="#{bindings.AccLength.hints.mandatory}"
                            columns="#{bindings.AccLength.hints.displayWidth}"
                            maximumLength="#{bindings.AccLength.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true"
                            valueChangeListener="#{ViewActions.accLengthVCL}">
                <f:validator binding="#{bindings.AccLength.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccLength.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow164"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell327">
              <af:outputFormatted value="UOM" id="outputFormatted286"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell328">
              <af:selectOneChoice value="#{bindings.AccLengthUom.inputValue}"
                                  label="#{bindings.AccLengthUom.label}"
                                  required="#{bindings.AccLengthUom.hints.mandatory}"
                                  shortDesc="#{bindings.AccLengthUom.hints.tooltip}"
                                  id="soc72" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accLengthUom}"
                                  autoSubmit="true"
                                  disabled="#{bindings.AccLength.inputValue == null ? true : false}">
                <f:selectItems value="#{bindings.AccLengthUom.items}"
                               id="si72"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton66"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccLengthUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow173">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell345">
              <af:outputFormatted value="Thickness" id="outputFormatted295"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell346">
              <af:inputText value="#{bindings.HngThickness.inputValue}"
                            label="#{bindings.HngThickness.hints.label}"
                            required="#{bindings.HngThickness.hints.mandatory}"
                            columns="#{bindings.HngThickness.hints.displayWidth}"
                            maximumLength="#{bindings.HngThickness.hints.precision}"
                            shortDesc="#{bindings.HngThickness.hints.tooltip}"
                            id="it59" autoSubmit="true" simple="true"
                            contentStyle="width:100px;"
                            valueChangeListener="#{ViewActions.accThicknessVCL}">
                <f:validator binding="#{bindings.HngThickness.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.HngThickness.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow174"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell347">
              <af:outputFormatted value="UOM" id="outputFormatted296"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell348">
              <af:selectOneChoice value="#{bindings.HngThicknessUom.inputValue}"
                                  label="#{bindings.HngThicknessUom.label}"
                                  required="#{bindings.HngThicknessUom.hints.mandatory}"
                                  shortDesc="#{bindings.HngThicknessUom.hints.tooltip}"
                                  id="soc74" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accHngThicknessUom}"
                                  autoSubmit="true"
                                  disabled="#{bindings.HngThickness.inputValue == null ? true : false}">
                <f:selectItems value="#{bindings.HngThicknessUom.items}"
                               id="si74"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton67"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccHngThicknessUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow165"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell329">
              <af:outputFormatted value="Diameter of Hook"
                                  id="outputFormatted287"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell330">
              <af:inputText value="#{bindings.AccDiameter.inputValue}"
                            label="#{bindings.AccDiameter.hints.label}"
                            required="#{bindings.AccDiameter.hints.mandatory}"
                            columns="#{bindings.AccDiameter.hints.displayWidth}"
                            maximumLength="#{bindings.AccDiameter.hints.precision}"
                            shortDesc="#{bindings.AccDiameter.hints.tooltip}"
                            id="inputText139" autoSubmit="true" simple="true"
                            contentStyle="width:100px;"
                            valueChangeListener="#{ViewActions.accDiameterVCL}">
                <f:validator binding="#{bindings.AccDiameter.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccDiameter.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow166"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell331">
              <af:outputFormatted value="UOM" id="outputFormatted288"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell332">
              <af:selectOneChoice value="#{bindings.AccDiameterUom.inputValue}"
                                  label="#{bindings.AccDiameterUom.label}"
                                  required="#{bindings.AccDiameterUom.hints.mandatory}"
                                  shortDesc="#{bindings.AccDiameterUom.hints.tooltip}"
                                  id="soc73" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accDiameterUom}"
                                  autoSubmit="true"
                                  disabled="#{bindings.AccDiameter.inputValue == null ? true : false}">
                <f:selectItems value="#{bindings.AccDiameterUom.items}"
                               id="si73"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton68"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccDiameterUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow168"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell335">
              <af:outputFormatted value="Hook Type" id="outputFormatted290"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell336">
              <af:selectOneChoice value="#{bindings.HngHookType.inputValue}"
                                  label="#{bindings.HngHookType.label}"
                                  required="#{bindings.HngHookType.hints.mandatory}"
                                  shortDesc="#{bindings.HngHookType.hints.tooltip}"
                                  id="soc32" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  binding="#{ViewActions.accHngHookType}">
                <f:selectItems value="#{bindings.HngHookType.items}" id="si52"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton69"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccHngHookTypeVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow169" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell337">
              <af:outputFormatted value="List Price" id="outputFormatted291"/>
            </af:gridCell>
            <af:gridCell id="gridCell338">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText143" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow170" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell339">
              <af:outputFormatted value="Wastage %" id="outputFormatted292"/>
            </af:gridCell>
            <af:gridCell id="gridCell340">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText144" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow241">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell485">
              <af:outputFormatted value="MOQ" id="outputFormatted382"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell486">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText138" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow171" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell341">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted293"/>
            </af:gridCell>
            <af:gridCell id="gridCell342">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText145" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow172">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell343">
              <af:outputFormatted value="Resultant" id="outputFormatted294"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell344">
              <af:inputText value="#{bindings.HngResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.HngResultantTrans.hints.mandatory}"
                            columns="#{bindings.HngResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.HngResultantTrans.hints.precision}"
                            shortDesc="#{bindings.HngResultantTrans.hints.tooltip}"
                            id="inputText61" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true"
                            partialTriggers="inputText145">
                <f:validator binding="#{bindings.HngResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout28" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Pullers-Medellions' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Pullers-Medellions"
                                id="outputFormatted289"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout12"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Pullers-Medellions' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow167"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell333">
              <af:outputFormatted value="Item Status*" id="outputFormatted297"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell334">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice22" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  partialTriggers="commandButton5 cb5 cb6"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems22"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow243" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell489">
              <af:outputFormatted value="Item UOM" id="outputFormatted384"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell490">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice78" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems78"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow175" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell349">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted298"/>
            </af:gridCell>
            <af:gridCell id="gridCell350">
              <af:inputListOfValues id="inputListOfValues22"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow252" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell507">
              <af:outputFormatted value="Description" id="outputFormatted393"/>
            </af:gridCell>
            <af:gridCell id="gridCell508">
              <af:inputText value="#{bindings.AccCustVal.inputValue}"
                            label="#{bindings.AccCustVal.hints.label}"
                            required="#{bindings.AccCustVal.hints.mandatory}"
                            columns="#{bindings.AccCustVal.hints.displayWidth}"
                            maximumLength="#{bindings.AccCustVal.hints.precision}"
                            shortDesc="#{bindings.AccCustVal.hints.tooltip}"
                            id="inputText157" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.AccCustVal.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow178" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell355">
              <af:outputFormatted value="List Price" id="outputFormatted301"/>
            </af:gridCell>
            <af:gridCell id="gridCell356">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText147" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow179" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell357">
              <af:outputFormatted value="Wastage %" id="outputFormatted302"/>
            </af:gridCell>
            <af:gridCell id="gridCell358">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText148" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow242">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell487">
              <af:outputFormatted value="MOQ" id="outputFormatted383"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell488">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText140" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow180" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell359">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted303"/>
            </af:gridCell>
            <af:gridCell id="gridCell360">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText151" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow181">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell361">
              <af:outputFormatted value="Resultant" id="outputFormatted304"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell362">
              <af:inputText value="#{bindings.PmResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.PmResultantTrans.hints.mandatory}"
                            columns="#{bindings.PmResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.PmResultantTrans.hints.precision}"
                            shortDesc="#{bindings.PmResultantTrans.hints.tooltip}"
                            id="inputText65" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true"
                            partialTriggers="inputText157">
                <f:validator binding="#{bindings.PmResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout29" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Security Tags-RFID' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Security Tags-RFID"
                                id="outputFormatted299"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout13"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Security Tags-RFID' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow176"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell351">
              <af:outputFormatted value="Item Status*" id="outputFormatted300"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell352">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice23" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  partialTriggers="commandButton5 cb5 cb6"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems23"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow244" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell491">
              <af:outputFormatted value="Item UOM" id="outputFormatted385"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell492">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice79" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems79"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow177" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell353">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted305"/>
            </af:gridCell>
            <af:gridCell id="gridCell354">
              <af:inputListOfValues id="inputListOfValues23"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow186" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell371">
              <af:outputFormatted value="Description" id="outputFormatted310"/>
            </af:gridCell>
            <af:gridCell id="gridCell372">
              <af:inputText value="#{bindings.StrDescription.inputValue}"
                            label="#{bindings.StrDescription.hints.label}"
                            required="#{bindings.StrDescription.hints.mandatory}"
                            columns="#{bindings.StrDescription.hints.displayWidth}"
                            maximumLength="#{bindings.StrDescription.hints.precision}"
                            shortDesc="#{bindings.StrDescription.hints.tooltip}"
                            id="it97" autoSubmit="true" simple="true"
                            contentStyle="width:100px;">
                <f:validator binding="#{bindings.StrDescription.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow182" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell363">
              <af:outputFormatted value="List Price" id="outputFormatted306"/>
            </af:gridCell>
            <af:gridCell id="gridCell364">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText153" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow183" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell365">
              <af:outputFormatted value="Wastage %" id="outputFormatted307"/>
            </af:gridCell>
            <af:gridCell id="gridCell366">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText154" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow245">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell493">
              <af:outputFormatted value="MOQ" id="outputFormatted386"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell494">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText141" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow184" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell367">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted308"/>
            </af:gridCell>
            <af:gridCell id="gridCell368">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText155" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow185">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell369">
              <af:outputFormatted value="Resultant" id="outputFormatted309"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell370">
              <af:inputText value="#{bindings.StrResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.StrResultantTrans.hints.mandatory}"
                            columns="#{bindings.StrResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.StrResultantTrans.hints.precision}"
                            shortDesc="#{bindings.StrResultantTrans.hints.tooltip}"
                            id="inputText66" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true">
                <f:validator binding="#{bindings.StrResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:panelStretchLayout id="panelStretchLayout30" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               partialTriggers="it110"
                               rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Tapes' ? true : false}"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Tapes" id="outputFormatted311"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGridLayout id="panelGridLayout14"
                            rendered="#{bindings.AccTypeValueDisplay.inputValue == 'Tapes' ? true : false}"
                            partialTriggers="it110">
          <af:gridRow marginTop="5px" height="auto" id="gridRow187"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell373">
              <af:outputFormatted value="Item Status*" id="outputFormatted312"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell374">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice24" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems24"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow247" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell497">
              <af:outputFormatted value="Item UOM" id="outputFormatted388"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell498">
              <af:selectOneChoice value="#{bindings.AccItemUom.inputValue}"
                                  label="#{bindings.AccItemUom.label}"
                                  required="#{bindings.AccItemUom.hints.mandatory}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice80" simple="true"
                                  contentStyle="width:106px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  partialTriggers="commandButton5 cb5 cb6">
                <f:selectItems value="#{bindings.AccItemUom.items}"
                               id="selectItems80"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow188" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell375">
              <af:outputFormatted value="Program Name*"
                                  id="outputFormatted313"/>
            </af:gridCell>
            <af:gridCell id="gridCell376">
              <af:inputListOfValues id="inputListOfValues24"
                                    popupTitle="Search and Select: #{bindings.ProgramNameDesc.hints.label}"
                                    value="#{bindings.ProgramNameDesc.inputValue}"
                                    label="#{bindings.ProgramNameDesc.hints.label}"
                                    model="#{bindings.ProgramNameDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.ProgramNameDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.ProgramNameDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:100px;"
                                    disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                    partialTriggers="commandButton5 cb5 cb6">
                <f:validator binding="#{bindings.ProgramNameDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow192"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell383">
              <af:outputFormatted value="Material" id="outputFormatted317"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell384">
              <af:selectOneChoice value="#{bindings.TapMaterial.inputValue}"
                                  label="#{bindings.TapMaterial.label}"
                                  required="#{bindings.TapMaterial.hints.mandatory}"
                                  shortDesc="#{bindings.TapMaterial.hints.tooltip}"
                                  id="soc20" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accTapMaterial}">
                <f:selectItems value="#{bindings.TapMaterial.items}" id="si23"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton70"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccTapMaterialVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="1px" height="auto"
                      id="gridRow189">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell377">
              <af:outputFormatted value="Printing Text"
                                  id="outputFormatted314"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell378">
              <af:selectOneChoice value="#{bindings.TapPrintText.inputValue}"
                                  label="#{bindings.TapPrintText.label}"
                                  required="#{bindings.TapPrintText.hints.mandatory}"
                                  shortDesc="#{bindings.TapPrintText.hints.tooltip}"
                                  id="soc31" autoSubmit="true" simple="true"
                                  contentStyle="width:106px;"
                                  binding="#{ViewActions.accTapPrintText}">
                <f:selectItems value="#{bindings.TapPrintText.items}"
                               id="si22"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton71"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccTapPrintTextVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow190"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell379">
              <af:outputFormatted value="Width" id="outputFormatted315"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell380">
              <af:inputText label="#{bindings.AccWidth.hints.label}"
                            id="inputText159" simple="true"
                            value="#{bindings.AccWidth.inputValue}"
                            required="#{bindings.AccWidth.hints.mandatory}"
                            columns="#{bindings.AccWidth.hints.displayWidth}"
                            maximumLength="#{bindings.AccWidth.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWidth.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.AccWidth.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow191"
                      marginBottom="1px">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell381">
              <af:outputFormatted value="UOM" id="outputFormatted316"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell382">
              <af:selectOneChoice value="#{bindings.AccWidthUom.inputValue}"
                                  label="#{bindings.AccWidthUom.label}"
                                  required="#{bindings.AccWidthUom.hints.mandatory}"
                                  shortDesc="#{bindings.AccWidthUom.hints.tooltip}"
                                  id="soc75" contentStyle="width:106px;"
                                  simple="true"
                                  binding="#{ViewActions.accWidthUom}"
                                  autoSubmit="true">
                <f:selectItems value="#{bindings.AccWidthUom.items}" id="si75"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton72"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addAccWidthUomVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow193" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell385">
              <af:outputFormatted value="List Price" id="outputFormatted318"/>
            </af:gridCell>
            <af:gridCell id="gridCell386">
              <af:inputText label="#{bindings.AccListPrice.hints.label}"
                            id="inputText161" simple="true"
                            value="#{bindings.AccListPrice.inputValue}"
                            required="#{bindings.AccListPrice.hints.mandatory}"
                            columns="#{bindings.AccListPrice.hints.displayWidth}"
                            maximumLength="#{bindings.AccListPrice.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccListPrice.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow194" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell387">
              <af:outputFormatted value="Wastage %" id="outputFormatted319"/>
            </af:gridCell>
            <af:gridCell id="gridCell388">
              <af:inputText label="#{bindings.AccWastage.hints.label}"
                            id="inputText162" simple="true"
                            value="#{bindings.AccWastage.inputValue}"
                            required="#{bindings.AccWastage.hints.mandatory}"
                            columns="#{bindings.AccWastage.hints.displayWidth}"
                            maximumLength="#{bindings.AccWastage.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.AccWastage.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" height="auto" id="gridRow246">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell495">
              <af:outputFormatted value="MOQ" id="outputFormatted387"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell496">
              <af:inputText label="#{bindings.MinOrderQty.hints.label}"
                            id="inputText142" simple="true"
                            value="#{bindings.MinOrderQty.inputValue}"
                            required="#{bindings.MinOrderQty.hints.mandatory}"
                            columns="#{bindings.MinOrderQty.hints.displayWidth}"
                            maximumLength="#{bindings.MinOrderQty.hints.precision}"
                            contentStyle="width:100px;" autoSubmit="true">
                <f:validator binding="#{bindings.MinOrderQty.validator}"/>
                <af:convertNumber groupingUsed="false"
                                  pattern="#{bindings.MinOrderQty.format}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow195" height="auto" marginTop="5px"
                      marginBottom="1px">
            <af:gridCell id="gridCell389">
              <af:outputFormatted value="Special Instructions"
                                  id="outputFormatted320"/>
            </af:gridCell>
            <af:gridCell id="gridCell390">
              <af:inputText label="#{bindings.AccRemarks.hints.label}"
                            id="inputText163" simple="true"
                            value="#{bindings.AccRemarks.inputValue}"
                            required="#{bindings.AccRemarks.hints.mandatory}"
                            columns="#{bindings.AccRemarks.hints.displayWidth}"
                            maximumLength="#{bindings.AccRemarks.hints.precision}"
                            contentStyle="width:400px;" autoSubmit="true"
                            rows="2">
                <f:validator binding="#{bindings.AccRemarks.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow196">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell391">
              <af:outputFormatted value="Resultant" id="outputFormatted321"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" marginEnd="5px" width="dontCare"
                         id="gridCell392">
              <af:inputText value="#{bindings.TapResultantTrans.inputValue}"
                            simple="true"
                            required="#{bindings.TapResultantTrans.hints.mandatory}"
                            columns="#{bindings.TapResultantTrans.hints.displayWidth}"
                            maximumLength="#{bindings.TapResultantTrans.hints.precision}"
                            shortDesc="#{bindings.TapResultantTrans.hints.tooltip}"
                            id="inputText70" contentStyle="width:600px;"
                            disabled="true" rows="2" autoSubmit="true">
                <f:validator binding="#{bindings.TapResultantTrans.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:inputText value="#{bindings.AccHeightUom.inputValue}"
                      label="#{bindings.AccHeightUom.hints.label}"
                      required="#{bindings.AccHeightUom.hints.mandatory}"
                      columns="#{bindings.AccHeightUom.hints.displayWidth}"
                      maximumLength="#{bindings.AccHeightUom.hints.precision}"
                      shortDesc="#{bindings.AccHeightUom.hints.tooltip}"
                      id="it104" autoSubmit="true" simple="true"
                      rendered="false">
          <f:validator binding="#{bindings.AccHeightUom.validator}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccLength.inputValue}"
                      label="#{bindings.AccLength.hints.label}"
                      required="#{bindings.AccLength.hints.mandatory}"
                      columns="#{bindings.AccLength.hints.displayWidth}"
                      maximumLength="#{bindings.AccLength.hints.precision}"
                      shortDesc="#{bindings.AccLength.hints.tooltip}" id="it66"
                      autoSubmit="true" simple="true" rendered="false">
          <f:validator binding="#{bindings.AccLength.validator}"/>
          <af:convertNumber groupingUsed="false"
                            pattern="#{bindings.AccLength.format}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccLength1.inputValue}"
                      label="#{bindings.AccLength1.hints.label}"
                      required="#{bindings.AccLength1.hints.mandatory}"
                      columns="#{bindings.AccLength1.hints.displayWidth}"
                      maximumLength="#{bindings.AccLength1.hints.precision}"
                      shortDesc="#{bindings.AccLength1.hints.tooltip}" id="it46"
                      autoSubmit="true" simple="true" rendered="false">
          <f:validator binding="#{bindings.AccLength1.validator}"/>
          <af:convertNumber groupingUsed="false"
                            pattern="#{bindings.AccLength1.format}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccLength1Uom.inputValue}"
                      label="#{bindings.AccLength1Uom.hints.label}"
                      required="#{bindings.AccLength1Uom.hints.mandatory}"
                      columns="#{bindings.AccLength1Uom.hints.displayWidth}"
                      maximumLength="#{bindings.AccLength1Uom.hints.precision}"
                      shortDesc="#{bindings.AccLength1Uom.hints.tooltip}"
                      id="it79" autoSubmit="true" simple="true"
                      rendered="false">
          <f:validator binding="#{bindings.AccLength1Uom.validator}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccLength2.inputValue}"
                      label="#{bindings.AccLength2.hints.label}"
                      required="#{bindings.AccLength2.hints.mandatory}"
                      columns="#{bindings.AccLength2.hints.displayWidth}"
                      maximumLength="#{bindings.AccLength2.hints.precision}"
                      shortDesc="#{bindings.AccLength2.hints.tooltip}" id="it88"
                      autoSubmit="true" simple="true" rendered="false">
          <f:validator binding="#{bindings.AccLength2.validator}"/>
          <af:convertNumber groupingUsed="false"
                            pattern="#{bindings.AccLength2.format}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccLength2Uom.inputValue}"
                      label="#{bindings.AccLength2Uom.hints.label}"
                      required="#{bindings.AccLength2Uom.hints.mandatory}"
                      columns="#{bindings.AccLength2Uom.hints.displayWidth}"
                      maximumLength="#{bindings.AccLength2Uom.hints.precision}"
                      shortDesc="#{bindings.AccLength2Uom.hints.tooltip}"
                      id="it74" autoSubmit="true" simple="true"
                      rendered="false">
          <f:validator binding="#{bindings.AccLength2Uom.validator}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccLengthUom.inputValue}"
                      label="#{bindings.AccLengthUom.hints.label}"
                      required="#{bindings.AccLengthUom.hints.mandatory}"
                      columns="#{bindings.AccLengthUom.hints.displayWidth}"
                      maximumLength="#{bindings.AccLengthUom.hints.precision}"
                      shortDesc="#{bindings.AccLengthUom.hints.tooltip}"
                      id="it23" autoSubmit="true" simple="true"
                      rendered="false">
          <f:validator binding="#{bindings.AccLengthUom.validator}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccListPrice.inputValue}"
                      label="#{bindings.AccListPrice.hints.label}"
                      required="#{bindings.AccListPrice.hints.mandatory}"
                      columns="#{bindings.AccListPrice.hints.displayWidth}"
                      maximumLength="#{bindings.AccListPrice.hints.precision}"
                      shortDesc="#{bindings.AccListPrice.hints.tooltip}"
                      id="it43" autoSubmit="true" simple="true"
                      rendered="false">
          <f:validator binding="#{bindings.AccListPrice.validator}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccRemarks.inputValue}"
                      label="#{bindings.AccRemarks.hints.label}"
                      required="#{bindings.AccRemarks.hints.mandatory}"
                      columns="#{bindings.AccRemarks.hints.displayWidth}"
                      maximumLength="#{bindings.AccRemarks.hints.precision}"
                      shortDesc="#{bindings.AccRemarks.hints.tooltip}" id="it93"
                      autoSubmit="true" simple="true" rendered="false">
          <f:validator binding="#{bindings.AccRemarks.validator}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccWastage.inputValue}"
                      label="#{bindings.AccWastage.hints.label}"
                      required="#{bindings.AccWastage.hints.mandatory}"
                      columns="#{bindings.AccWastage.hints.displayWidth}"
                      maximumLength="#{bindings.AccWastage.hints.precision}"
                      shortDesc="#{bindings.AccWastage.hints.tooltip}"
                      id="it106" autoSubmit="true" simple="true"
                      rendered="false">
          <f:validator binding="#{bindings.AccWastage.validator}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccWidth1.inputValue}"
                      label="#{bindings.AccWidth1.hints.label}"
                      required="#{bindings.AccWidth1.hints.mandatory}"
                      columns="#{bindings.AccWidth1.hints.displayWidth}"
                      maximumLength="#{bindings.AccWidth1.hints.precision}"
                      shortDesc="#{bindings.AccWidth1.hints.tooltip}" id="it11"
                      autoSubmit="true" simple="true" rendered="false">
          <f:validator binding="#{bindings.AccWidth1.validator}"/>
          <af:convertNumber groupingUsed="false"
                            pattern="#{bindings.AccWidth1.format}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccWidth1Uom.inputValue}"
                      label="#{bindings.AccWidth1Uom.hints.label}"
                      required="#{bindings.AccWidth1Uom.hints.mandatory}"
                      columns="#{bindings.AccWidth1Uom.hints.displayWidth}"
                      maximumLength="#{bindings.AccWidth1Uom.hints.precision}"
                      shortDesc="#{bindings.AccWidth1Uom.hints.tooltip}"
                      id="it1" autoSubmit="true" simple="true" rendered="false">
          <f:validator binding="#{bindings.AccWidth1Uom.validator}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccWidth2.inputValue}"
                      label="#{bindings.AccWidth2.hints.label}"
                      required="#{bindings.AccWidth2.hints.mandatory}"
                      columns="#{bindings.AccWidth2.hints.displayWidth}"
                      maximumLength="#{bindings.AccWidth2.hints.precision}"
                      shortDesc="#{bindings.AccWidth2.hints.tooltip}" id="it70"
                      autoSubmit="true" simple="true" rendered="false">
          <f:validator binding="#{bindings.AccWidth2.validator}"/>
          <af:convertNumber groupingUsed="false"
                            pattern="#{bindings.AccWidth2.format}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccWidth2Uom.inputValue}"
                      label="#{bindings.AccWidth2Uom.hints.label}"
                      required="#{bindings.AccWidth2Uom.hints.mandatory}"
                      columns="#{bindings.AccWidth2Uom.hints.displayWidth}"
                      maximumLength="#{bindings.AccWidth2Uom.hints.precision}"
                      shortDesc="#{bindings.AccWidth2Uom.hints.tooltip}"
                      id="it80" autoSubmit="true" simple="true"
                      rendered="false">
          <f:validator binding="#{bindings.AccWidth2Uom.validator}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccWidthUom.inputValue}"
                      label="#{bindings.AccWidthUom.hints.label}"
                      required="#{bindings.AccWidthUom.hints.mandatory}"
                      columns="#{bindings.AccWidthUom.hints.displayWidth}"
                      maximumLength="#{bindings.AccWidthUom.hints.precision}"
                      shortDesc="#{bindings.AccWidthUom.hints.tooltip}"
                      id="it108" autoSubmit="true" simple="true"
                      rendered="false">
          <f:validator binding="#{bindings.AccWidthUom.validator}"/>
        </af:inputText>
        <af:inputText value="#{bindings.Segment4.inputValue}"
                      label="#{bindings.Segment4.hints.label}"
                      required="#{bindings.Segment4.hints.mandatory}"
                      columns="#{bindings.Segment4.hints.displayWidth}"
                      maximumLength="#{bindings.Segment4.hints.precision}"
                      shortDesc="#{bindings.Segment4.hints.tooltip}" id="it45"
                      autoSubmit="true" rendered="false" simple="true">
          <f:validator binding="#{bindings.Segment4.validator}"/>
        </af:inputText>
        <af:inputText value="#{bindings.Segment6.inputValue}"
                      label="#{bindings.Segment6.hints.label}"
                      required="#{bindings.Segment6.hints.mandatory}"
                      columns="#{bindings.Segment6.hints.displayWidth}"
                      maximumLength="#{bindings.Segment6.hints.precision}"
                      shortDesc="#{bindings.Segment6.hints.tooltip}" id="it101"
                      autoSubmit="true" rendered="false" simple="true">
          <f:validator binding="#{bindings.Segment6.validator}"/>
        </af:inputText>
        <af:inputText value="#{bindings.ImId.inputValue}"
                      label="#{bindings.ImId.hints.label}"
                      required="#{bindings.ImId.hints.mandatory}"
                      columns="#{bindings.ImId.hints.displayWidth}"
                      maximumLength="#{bindings.ImId.hints.precision}"
                      shortDesc="#{bindings.ImId.hints.tooltip}" id="it84"
                      autoSubmit="true" rendered="false" simple="true">
          <f:validator binding="#{bindings.ImId.validator}"/>
        </af:inputText>
        <af:inputText value="#{bindings.Segment2.inputValue}"
                      label="#{bindings.Segment2.hints.label}"
                      required="#{bindings.Segment2.hints.mandatory}"
                      columns="#{bindings.Segment2.hints.displayWidth}"
                      maximumLength="#{bindings.Segment2.hints.precision}"
                      shortDesc="#{bindings.Segment2.hints.tooltip}" id="it63"
                      autoSubmit="true" simple="true" rendered="false">
          <f:validator binding="#{bindings.Segment2.validator}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccWidth.inputValue}"
                      label="#{bindings.AccWidth.hints.label}"
                      required="#{bindings.AccWidth.hints.mandatory}"
                      columns="#{bindings.AccWidth.hints.displayWidth}"
                      maximumLength="#{bindings.AccWidth.hints.precision}"
                      shortDesc="#{bindings.AccWidth.hints.tooltip}" id="it72"
                      autoSubmit="true" simple="true" rendered="false">
          <f:validator binding="#{bindings.AccWidth.validator}"/>
          <af:convertNumber groupingUsed="false"
                            pattern="#{bindings.AccWidth.format}"/>
        </af:inputText>
        <af:inputText value="#{bindings.AccHeight.inputValue}"
                      label="#{bindings.AccHeight.hints.label}"
                      required="#{bindings.AccHeight.hints.mandatory}"
                      columns="#{bindings.AccHeight.hints.displayWidth}"
                      maximumLength="#{bindings.AccHeight.hints.precision}"
                      shortDesc="#{bindings.AccHeight.hints.tooltip}" id="it53"
                      autoSubmit="true" simple="true" rendered="false">
          <f:validator binding="#{bindings.AccHeight.validator}"/>
          <af:convertNumber groupingUsed="false"
                            pattern="#{bindings.AccHeight.format}"/>
        </af:inputText>
        <af:inputText value="#{bindings.Segment5.inputValue}"
                      label="#{bindings.Segment5.hints.label}"
                      required="#{bindings.Segment5.hints.mandatory}"
                      columns="#{bindings.Segment5.hints.displayWidth}"
                      maximumLength="#{bindings.Segment5.hints.precision}"
                      shortDesc="#{bindings.Segment5.hints.tooltip}" id="it25"
                      autoSubmit="true" simple="true" rendered="false">
          <f:validator binding="#{bindings.Segment5.validator}"/>
        </af:inputText>
        <af:inputText value="#{bindings.Segment7.inputValue}"
                      label="#{bindings.Segment7.hints.label}"
                      required="#{bindings.Segment7.hints.mandatory}"
                      columns="#{bindings.Segment7.hints.displayWidth}"
                      maximumLength="#{bindings.Segment7.hints.precision}"
                      shortDesc="#{bindings.Segment7.hints.tooltip}" id="it69"
                      autoSubmit="true" simple="true" rendered="false">
          <f:validator binding="#{bindings.Segment7.validator}"/>
        </af:inputText>
        <af:toolbar id="t1">
          <af:commandButton actionListener="#{ViewActions.insertAcc}" text="Add"
                            id="commandButton5"/>
          <af:commandButton actionListener="#{ViewActions.commitAcc}"
                            text="Save" disabled="false" id="cb5"/>
          <af:commandButton actionListener="#{ViewActions.rollbackAcc}"
                            text="Clear" immediate="true" id="cb6">
            <af:resetActionListener/>
          </af:commandButton>
        </af:toolbar>
        <af:popup id="AddValPopup">
          <af:dialog id="d2" title="Add new value" contentWidth="300"
                     type="okCancel"
                     dialogListener="#{ViewActions.accAddVsetVal}">
            <af:inputText label="Value" id="inputText76"
                          value="#{bindings.BindVsetVal.inputValue}"
                          autoSubmit="true"/>
            <af:inputText label="Value Set" id="inputText77"
                          value="#{bindings.BindValueSet.inputValue}"
                          autoSubmit="true" rendered="false"/>
          </af:dialog>
        </af:popup>
      </af:panelGroupLayout>
    </af:form>
  </af:document>
</f:view>