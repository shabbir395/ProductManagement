<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<f:view>
  <af:document id="d1" title="Dyeing Item Creation Form">
    <af:messages id="m1"/>
    <af:form id="f1">
      <af:panelStretchLayout id="psl1" startWidth="0px" endWidth="0px"
                             topHeight="0px" bottomHeight="0px"
                             dimensionsFrom="children">
        <f:facet name="center">
          <af:image source="/Images/Banners/Dyeing.png" id="i1"/>
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
                          binding="#{ViewActions.dyMainPanelFormLayout}">
        <af:panelStretchLayout id="panelStretchLayout1" startWidth="0px"
                               endWidth="0px" topHeight="0px" bottomHeight="0px"
                               dimensionsFrom="children">
          <f:facet name="center">
            <af:outputFormatted value="Search Item" id="outputFormatted5"
                                inlineStyle="font-size:small; vertical-align:top;"/>
          </f:facet>
        </af:panelStretchLayout>
        <af:panelGroupLayout id="panelGroupLayout1">
          <af:outputFormatted value="Item Description" id="of3"/>
          <af:spacer width="10" height="10" id="spacer5"/>
          <af:inputListOfValues popupTitle="Search and Result Dialog" id="ilov1"
                                simple="true" autoSubmit="true"
                                value="#{bindings.BindDescDy.inputValue}"
                                model="#{bindings.DyDescriptionLov.listOfValuesModel}"
                                disabled="#{bindings.DyeingItemDescViewIterator.estimatedRowCount < 1 ? true : false}"
                                partialTriggers="commandToolbarButton1 ctb2"
                                binding="#{ViewActions.searchLovDy}"
                                valueChangeListener="#{ViewActions.searchItemDyVCL}"/>
          <af:spacer width="10" height="10" id="spacer6"/>
          <af:commandButton actionListener="#{ViewActions.searchItemDyButton}"
                            text="Go"
                            disabled="#{!bindings.ExecuteWithParams.enabled}"
                            id="cb1"/>
        </af:panelGroupLayout>
        <af:toolbar id="t3">
          <af:commandToolbarButton actionListener="#{bindings.First.execute}"
                                   text="First"
                                   disabled="#{!bindings.First.enabled}"
                                   partialSubmit="true"
                                   id="commandToolbarButton2"/>
          <af:spacer width="10" height="10" id="spacer3"/>
          <af:commandToolbarButton actionListener="#{bindings.Previous.execute}"
                                   text="Previous"
                                   disabled="#{!bindings.Previous.enabled}"
                                   partialSubmit="true"
                                   id="commandToolbarButton3"/>
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
          <af:spacer width="10" height="10" id="spacer4"/>
          <af:commandToolbarButton text="Copy Item" partialSubmit="true"
                                   id="commandToolbarButton5"
                                   actionListener="#{ViewActions.copyDyItem}"/>
          <af:spacer width="10" height="10" id="spacer8"/>
          <af:commandToolbarButton text="Update Status" partialSubmit="true"
                                   id="commandToolbarButton6"
                                   actionListener="#{ViewActions.copyDyItemUpdateStatus}"/>
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
        <af:spacer width="10" height="20" id="spacer1"/>
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
              <af:inputListOfValues id="ilov4"
                                    popupTitle="Search and Select: #{bindings.WvDescription.hints.label}"
                                    value="#{bindings.WvDescription.inputValue}"
                                    label="#{bindings.WvDescription.hints.label}"
                                    model="#{bindings.WvDescription.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.WvDescription.hints.displayWidth}"
                                    shortDesc="#{bindings.WvDescription.hints.tooltip}"
                                    simple="true" autoSubmit="true"
                                    contentStyle="width:600px;">
                <f:validator binding="#{bindings.WvDescription.validator}"/>
              </af:inputListOfValues>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow11">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell20">
              <af:outputFormatted value="Color*" id="outputFormatted14"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell21"
                         columnSpan="1">
              <af:inputListOfValues id="ilov2"
                                    popupTitle="Search and Select: #{bindings.DyColor.hints.label}"
                                    value="#{bindings.DyColor.inputValue}"
                                    label="#{bindings.DyColor.hints.label}"
                                    model="#{bindings.DyColor.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.DyColor.hints.displayWidth}"
                                    shortDesc="#{bindings.DyColor.hints.tooltip}"
                                    autoSubmit="true"
                                    contentStyle="width:175px;" simple="true"
                                    binding="#{ViewActions.dyColor}">
                <f:validator binding="#{bindings.DyColor.validator}"/>
              </af:inputListOfValues>
              <af:commandButton id="cb2" icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addDyColorVset}"
                                immediate="true"/>
              <af:inputText value="#{bindings.ImId.inputValue}" simple="true"
                            required="#{bindings.ImId.hints.mandatory}"
                            columns="#{bindings.ImId.hints.displayWidth}"
                            maximumLength="#{bindings.ImId.hints.precision}"
                            shortDesc="#{bindings.ImId.hints.tooltip}" id="it1"
                            rendered="false" autoSubmit="true">
                <f:validator binding="#{bindings.ImId.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr3" height="auto" marginTop="5px" marginBottom="5px">
            <af:gridCell id="gc2">
              <af:outputFormatted value="Standard" id="outputFormatted7"/>
            </af:gridCell>
            <af:gridCell id="gc3">
              <af:selectOneChoice value="#{bindings.DyeStandard.inputValue}"
                                  label="#{bindings.DyeStandard.label}"
                                  required="#{bindings.DyeStandard.hints.mandatory}"
                                  shortDesc="#{bindings.DyeStandard.hints.tooltip}"
                                  id="soc1" autoSubmit="true" simple="true"
                                  contentStyle="width:200px;"
                                  binding="#{ViewActions.dyStandard}">
                <f:selectItems value="#{bindings.DyeStandard.items}" id="si1"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton4"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addDyStandardVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr4" height="auto" marginTop="5px" marginBottom="5px">
            <af:gridCell id="gc6">
              <af:outputFormatted value="Code" id="outputFormatted8"/>
            </af:gridCell>
            <af:gridCell id="gc11">
              <af:inputText value="#{bindings.DyeCode.inputValue}" simple="true"
                            required="#{bindings.DyeCode.hints.mandatory}"
                            columns="#{bindings.DyeCode.hints.displayWidth}"
                            maximumLength="#{bindings.DyeCode.hints.precision}"
                            shortDesc="#{bindings.DyeCode.hints.tooltip}"
                            id="it3" autoSubmit="true"
                            contentStyle="width:192px;">
                <f:validator binding="#{bindings.DyeCode.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow2" height="auto" marginTop="5px"
                      marginBottom="5px">
            <af:gridCell id="gridCell4">
              <af:outputFormatted value="Color Resultant" id="outputFormatted9"/>
            </af:gridCell>
            <af:gridCell id="gridCell5">
              <af:inputText value="#{bindings.ColorResultant.inputValue}"
                            simple="true"
                            required="#{bindings.ColorResultant.hints.mandatory}"
                            columns="#{bindings.ColorResultant.hints.displayWidth}"
                            maximumLength="#{bindings.ColorResultant.hints.precision}"
                            shortDesc="#{bindings.ColorResultant.hints.tooltip}"
                            id="it4" contentStyle="width:192px;"
                            autoSubmit="true" disabled="true"
                            partialTriggers="ilov2 soc1 it3">
                <f:validator binding="#{bindings.ColorResultant.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gr1" height="auto" marginTop="5px" marginBottom="5px">
            <af:gridCell id="gc1">
              <af:outputFormatted value="Finish" id="outputFormatted2"/>
            </af:gridCell>
            <af:gridCell id="gridCell1">
              <af:selectOneChoice value="#{bindings.FinishType.inputValue}"
                                  label="#{bindings.FinishType.label}"
                                  required="#{bindings.FinishType.hints.mandatory}"
                                  shortDesc="#{bindings.FinishType.hints.tooltip}"
                                  id="soc3" simple="true" autoSubmit="true"
                                  contentStyle="width:200px;"
                                  binding="#{ViewActions.dyFinish}">
                <f:selectItems value="#{bindings.FinishType.items}" id="si3"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton1"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addDyFinishVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow id="gridRow1" height="auto" marginTop="5px"
                      marginBottom="5px">
            <af:gridCell id="gridCell2">
              <af:outputFormatted value="Category" id="outputFormatted6"/>
            </af:gridCell>
            <af:gridCell id="gridCell3">
              <af:selectOneChoice value="#{bindings.Category.inputValue}"
                                  label="#{bindings.Category.label}"
                                  required="#{bindings.Category.hints.mandatory}"
                                  shortDesc="#{bindings.FinishType.hints.tooltip}"
                                  id="soc2" simple="true"
                                  autoSubmit="true" contentStyle="width:200px;"
                                  binding="#{ViewActions.dyCategory}">
                <f:selectItems value="#{bindings.Category.items}"
                               id="selectItems1"/>
              </af:selectOneChoice>
              <af:commandButton id="commandButton2"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addDyCategoryVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow12">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell22">
              <af:outputFormatted value="Finish Width*" id="outputFormatted16"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell23"
                         columnSpan="1">
              <af:inputListOfValues id="ilov3"
                                    popupTitle="Search and Select: #{bindings.DyFinishWidthDesc.hints.label}"
                                    value="#{bindings.DyFinishWidthDesc.inputValue}"
                                    label="#{bindings.DyFinishWidthDesc.hints.label}"
                                    model="#{bindings.DyFinishWidthDesc.listOfValuesModel}"
                                    required="true"
                                    columns="#{bindings.DyFinishWidthDesc.hints.displayWidth}"
                                    shortDesc="#{bindings.DyFinishWidthDesc.hints.tooltip}"
                                    autoSubmit="true" simple="true"
                                    binding="#{ViewActions.dyFinishWidth}"
                                    contentStyle="width:175px;">
                <f:validator binding="#{bindings.DyFinishWidthDesc.validator}"/>
              </af:inputListOfValues>
              <af:commandButton id="commandButton3"
                                icon="/Images/add-icon 12x12.png"
                                actionListener="#{ViewActions.addDyFinishWidthVset}"
                                immediate="true"/>
            </af:gridCell>
          </af:gridRow>
          <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                      id="gridRow14">
            <af:gridCell marginStart="5px" width="dontCare" id="gridCell26">
              <af:outputFormatted value="Resultant" id="outputFormatted20"
                                  inlineStyle="font-weight:bold;"/>
            </af:gridCell>
            <af:gridCell marginStart="5px" width="460px" id="gridCell27">
              <af:inputText value="#{bindings.DyeingResultant.inputValue}"
                            simple="true"
                            required="#{bindings.DyeingResultant.hints.mandatory}"
                            columns="#{bindings.DyeingResultant.hints.displayWidth}"
                            maximumLength="#{bindings.DyeingResultant.hints.precision}"
                            shortDesc="#{bindings.DyeingResultant.hints.tooltip}"
                            id="it2" disabled="true"
                            partialTriggers="ilov2 ilov4 soc1 soc2 soc3 it3 ilov3 it4"
                            contentStyle="width:600px;" autoSubmit="true">
                <f:validator binding="#{bindings.DyeingResultant.validator}"/>
              </af:inputText>
            </af:gridCell>
          </af:gridRow>
        </af:panelGridLayout>
        <af:popup id="AddValPopup">
          <af:dialog id="d2" title="Add new value" contentWidth="300"
                     type="okCancel"
                     dialogListener="#{ViewActions.dyAddVsetVal}">
            <af:inputText label="Value" id="it17"
                          value="#{bindings.BindVsetVal.inputValue}"
                          autoSubmit="true"/>
            <af:inputText label="Value Set" id="inputText3"
                          value="#{bindings.BindValueSet.inputValue}"
                          autoSubmit="true" rendered="false"/>
          </af:dialog>
        </af:popup>
        <af:spacer width="10" height="20" id="spacer7"/>
        <af:toolbar id="t1">
          <af:commandToolbarButton text="Add" id="ctb1"
                                   actionListener="#{ViewActions.insertMasterDyItem}"/>
          <af:spacer width="10" height="10" id="s1"/>
          <af:commandToolbarButton text="Save" id="ctb2"
                                   actionListener="#{ViewActions.commitDy}"/>
          <af:spacer width="10" height="10" id="s2"/>
          <af:commandToolbarButton text="Clear" id="commandToolbarButton1"
                                   immediate="true"
                                   actionListener="#{ViewActions.rollbackDy}"/>
        </af:toolbar>
      </af:panelFormLayout>
    </af:form>
  </af:document>
</f:view>