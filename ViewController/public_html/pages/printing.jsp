<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<f:view>
<af:document id="d1" title="Printing Item Creation Form">
    <af:messages id="m1"/>
    <af:form id="f1">
      <af:panelStretchLayout id="psl1" startWidth="0px" endWidth="0px"
                           topHeight="0px" bottomHeight="0px"
                             dimensionsFrom="children">
      <f:facet name="center">
        <af:image source="/Images/Banners/Printing.png" id="i1"/>
      </f:facet>
    </af:panelStretchLayout>
      <af:panelStretchLayout id="panelStretchLayout4" startWidth="0px"
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
                          binding="#{ViewActions.prnMainPanelFormLayout}">
        <af:panelStretchLayout id="panelStretchLayout1" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Search Item" id="outputFormatted8"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGroupLayout id="pgl5" layout="horizontal">
          <af:outputFormatted value="Item Description" id="outputFormatted9"/>
          <af:spacer width="10" height="10" id="spacer4"/>
          <af:inputListOfValues popupTitle="Search and Result Dialog" id="ilov1"
                                simple="true"
                                value="#{bindings.BindDescPrn.inputValue}"
                                model="#{bindings.PrnDescriptionLov.listOfValuesModel}"
                                disabled="#{bindings.PrintingItemDescViewIterator.estimatedRowCount < 1 ? true : false}"
                                partialTriggers="commandToolbarButton1 ctb2"
                                binding="#{ViewActions.searchLovPrn}"
                                autoSubmit="true"
                                valueChangeListener="#{ViewActions.searchItemPrnVCL}"/>
          <af:spacer width="10" height="10" id="spacer7"/>
          <af:commandButton actionListener="#{ViewActions.searchItemPrnButton}"
                            text="Go"
                            disabled="#{!bindings.ExecuteWithParams.enabled}"
                            id="cb1"/>
        </af:panelGroupLayout>
        <af:toolbar id="t3">
          <af:commandToolbarButton text="First"
                                   disabled="#{!bindings.First.enabled}"
                                   partialSubmit="true"
                                   id="commandToolbarButton2"
                                   actionListener="#{bindings.First.execute}"/>
          <af:spacer width="10" height="10" id="spacer3"/>
          <af:commandToolbarButton text="Previous"
                                   disabled="#{!bindings.Previous.enabled}"
                                   partialSubmit="true"
                                   id="commandToolbarButton3"
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
          <af:spacer width="10" height="10" id="spacer1"/>
          <af:commandToolbarButton text="Copy Item" partialSubmit="true"
                                   id="commandToolbarButton5"
                                   actionListener="#{ViewActions.copyPrnItem}"/>
          <af:spacer width="10" height="10" id="spacer8"/>
          <af:commandToolbarButton text="Update Status" partialSubmit="true"
                                   id="commandToolbarButton6"
                                   actionListener="#{ViewActions.copyPrnItemUpdateStatus}"/>
        </af:toolbar>
        <af:spacer width="10" height="20" id="spacer2"/>
        <af:panelStretchLayout id="panelStretchLayout2" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               dimensionsFrom="children">
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
                            label="#{bindings.Segment2.hints.label}"
                            required="#{bindings.Segment2.hints.mandatory}"
                            columns="#{bindings.Segment2.hints.displayWidth}"
                            maximumLength="#{bindings.Segment2.hints.precision}"
                            shortDesc="#{bindings.Segment2.hints.tooltip}"
                            id="it44" autoSubmit="true" simple="true"
                            contentStyle="width:70px; color:Black;"
                            disabled="true">
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
            <af:gridCell id="gc10" columnSpan="2">
              <af:selectOneChoice value="#{bindings.Segment3.inputValue}"
                                  label="#{bindings.Segment3.label}"
                                  shortDesc="#{bindings.Segment3.hints.tooltip}"
                                  id="selectOneChoice2" simple="true"
                                  contentStyle="width:150px;" autoSubmit="true"
                                  disabled="#{bindings.RowStatus.inputValue == 0 || bindings.RowStatus.inputValue == -1 ? false : true}"
                                  required="#{bindings.Segment3.hints.mandatory}"
                                  partialTriggers="ctb1 ctb2 commandToolbarButton1">
                <f:selectItems value="#{bindings.Segment3.items}"
                               id="selectItems2"/>
              </af:selectOneChoice>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:spacer width="10" height="20" id="spacer5"/>
        <af:panelStretchLayout id="panelStretchLayout3" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
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
              <af:outputFormatted value="Weaving Item*" id="outputFormatted12"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="630px" id="gridCell19">
              <af:inputListOfValues id="transWeavingDescId"
                                    popupTitle="Search and Select: #{bindings.TransWeavingDesc.hints.label}"
                                    value="#{bindings.TransWeavingDesc.inputValue}"
                                    label="#{bindings.TransWeavingDesc.hints.label}"
                                    model="#{bindings.TransWeavingDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.TransWeavingDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.TransWeavingDesc.hints.tooltip}"
                                    simple="true" autoSubmit="true"
                                    contentStyle="width:1100px;">
                <f:validator binding="#{bindings.TransWeavingDesc.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow11">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell20">
              <af:outputFormatted value="Finish Width*" id="outputFormatted14"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell21"
                         columnSpan="1">
              <af:inputText value="#{bindings.ImId.inputValue}" simple="true"
                            required="#{bindings.ImId.hints.mandatory}"
                            columns="#{bindings.ImId.hints.displayWidth}"
                            maximumLength="#{bindings.ImId.hints.precision}"
                            shortDesc="#{bindings.ImId.hints.tooltip}" id="it1"
                            rendered="false" autoSubmit="true">
                <f:validator binding="#{bindings.ImId.validator}"/>
              </af:inputText>
              <af:inputListOfValues id="ilov2"
                                    popupTitle="Search and Select: #{bindings.PrnFinishWidthDesc.hints.label}"
                                    value="#{bindings.PrnFinishWidthDesc.inputValue}"
                                    label="#{bindings.PrnFinishWidthDesc.hints.label}"
                                    model="#{bindings.PrnFinishWidthDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.PrnFinishWidthDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.PrnFinishWidthDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:175px;"
                                    binding="#{ViewActions.prnFinishWidth}">
                <f:validator binding="#{bindings.PrnFinishWidthDesc.validator}"/>
              </af:inputListOfValues>
              <af:commandButton id="cb2" icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addPrnFinishWidthVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr1" height="auto" marginTop="5px" marginBottom="5px">
            <af:gridCell id="gc1">
              <af:outputFormatted value="Design Name*" id="outputFormatted2"/>
            </af:gridCell>
            <af:gridCell id="gridCell1">
              <af:inputListOfValues id="ilov3"
                                    popupTitle="Search and Select: #{bindings.PrnColor.hints.label}"
                                    value="#{bindings.PrnColor.inputValue}"
                                    label="#{bindings.PrnColor.hints.label}"
                                    model="#{bindings.PrnColor.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.PrnColor.hints.displayWidth}"
                                    shortDesc="#{bindings.PrnColor.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    contentStyle="width:175px;"
                                    binding="#{ViewActions.prnColor}">
                <f:validator binding="#{bindings.PrnColor.validator}"/>
              </af:inputListOfValues>
              <af:commandButton id="commandButton1"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addPrnColorVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow2" height="auto" marginTop="5px"
                      marginBottom="5px">
            <af:gridCell id="gridCell4">
              <af:outputFormatted value="Engraved #/Ref#" id="outputFormatted6"/>
            </af:gridCell>
            <af:gridCell id="gridCell5">
              <af:inputText value="#{bindings.EngravedNum.inputValue}"
                            simple="true"
                            required="#{bindings.EngravedNum.hints.mandatory}"
                            columns="#{bindings.EngravedNum.hints.displayWidth}"
                            maximumLength="#{bindings.EngravedNum.hints.precision}"
                            shortDesc="#{bindings.EngravedNum.hints.tooltip}"
                            id="it3" autoSubmit="true"
                            contentStyle="width:200px;">
                <f:validator binding="#{bindings.EngravedNum.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow12">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell22">
              <af:outputFormatted value="Finish" id="outputFormatted16"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell23"
                         columnSpan="1">
              <af:selectOneChoice value="#{bindings.FinishType.inputValue}"
                                  label="#{bindings.FinishType.label}"
                                  required="#{bindings.FinishType.hints.mandatory}"
                                  shortDesc="#{bindings.FinishType.hints.tooltip}"
                                  id="soc2" simple="true" autoSubmit="true"
                                  contentStyle="width:200px;"
                                  binding="#{ViewActions.prnFinishType}">
                <f:selectItems value="#{bindings.FinishType.items}" id="si2"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton2"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addPrnFinishVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow3">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell6">
              <af:outputFormatted value="Category" id="outputFormatted7"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell7"
                         columnSpan="1">
              <af:selectOneChoice value="#{bindings.Category.inputValue}"
                                  label="#{bindings.Category.label}"
                                  required="#{bindings.Category.hints.mandatory}"
                                  shortDesc="#{bindings.Category.hints.tooltip}"
                                  id="soc4" simple="true" autoSubmit="true"
                                  contentStyle="width:200px;"
                                  binding="#{ViewActions.prnCategory}">
                <f:selectItems value="#{bindings.Category.items}" id="si4"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton3"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addPrnCategoryVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow1" rendered="false">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell2">
              <af:outputFormatted value="Base Dye" id="outputFormatted5"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell3"
                         columnSpan="1">
              <af:selectBooleanCheckbox value="#{bindings.BaseDye.inputValue}"
                                        label="#{bindings.BaseDye.label}"
                                        shortDesc="#{bindings.BaseDye.hints.tooltip}"
                                        id="sbc1" simple="true"
                                        autoSubmit="true" immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow14">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell26">
              <af:outputFormatted value="Resultant" id="outputFormatted20"
                                  inlineStyle="font-weight:bold;"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="460px" id="gridCell27">
              <af:inputText value="#{bindings.PrintingResultant.inputValue}"
                            simple="true"
                            required="#{bindings.PrintingResultant.hints.mandatory}"
                            columns="#{bindings.PrintingResultant.hints.displayWidth}"
                            maximumLength="#{bindings.PrintingResultant.hints.precision}"
                            shortDesc="#{bindings.PrintingResultant.hints.tooltip}"
                            id="it2" disabled="true"
                            contentStyle="width:1100px;" autoSubmit="true"
                            partialTriggers="transWeavingDescId ilov2 ilov3 it3 soc2 soc4 sbc1">
                <f:validator binding="#{bindings.PrintingResultant.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:spacer width="10" height="20" id="spacer6"/>
        <af:toolbar id="t1">
          <af:commandToolbarButton text="Add" id="ctb1"
                                   actionListener="#{ViewActions.insertMasterPrnItem}"/>
          <af:spacer width="10" height="10" id="s1"/>
          <af:commandToolbarButton text="Save" id="ctb2"
                                   actionListener="#{ViewActions.commitPrn}"/>
          <af:spacer width="10" height="10" id="s2"/>
          <af:commandToolbarButton text="Clear" id="commandToolbarButton1"
                                   actionListener="#{ViewActions.rollbackPrn}"
                                   immediate="true"/>
        </af:toolbar>
        <af:popup id="AddValPopup">
          <af:dialog id="d2" title="Add new value" contentWidth="300"
                     type="okCancel"
                     dialogListener="#{ViewActions.prnAddVsetVal}">
            <af:inputText label="Value" id="it17"
                          value="#{bindings.BindVsetVal.inputValue}"
                          autoSubmit="true"/>
            <af:inputText label="Value Set" id="inputText3"
                          value="#{bindings.BindValueSet.inputValue}"
                          autoSubmit="true" rendered="false"/>
          </af:dialog>
        </af:popup>
      </af:panelFormLayout>
    </af:form>
</af:document>
</f:view>
