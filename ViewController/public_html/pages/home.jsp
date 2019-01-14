<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<f:view>
<af:document id="d1">
        <af:messages id="m1"/>
        <af:form id="f1">
            <af:panelStretchLayout id="psl1" startWidth="0px" endWidth="0px"
                                   topHeight="0px" bottomHeight="0px"
                                   inlineStyle="height:40px;">
                <f:facet name="center">
                    <af:image source="/Images/TitleTemplate.jpg" id="i1"/>
                </f:facet>
            </af:panelStretchLayout>
            <af:panelStretchLayout id="psl3" startWidth="0px" endWidth="0px"
                                   topHeight="0px" bottomHeight="0px"
                                   inlineStyle="background-color:rgb(33,127,188); text-align:right;"
                                   dimensionsFrom="children">
                <f:facet name="bottom"/>
                <f:facet name="center">
                    <af:panelGroupLayout id="pgl4" layout="scroll">
                        <af:goLink text="Home" id="gl1"
                                   destination="http://prodapp.nishat.net:8001/OA_HTML/OA.jsp?OAFunc=OAHOMEPAGE"
                                   inlineStyle="color:white; font-weight:bold;"/>
                    </af:panelGroupLayout>
                </f:facet>
                <f:facet name="start"/>
                <f:facet name="end"/>
                <f:facet name="top"/>
            </af:panelStretchLayout>
            <af:panelGroupLayout id="pgl2" layout="horizontal" valign="top">
                <af:toolbar id="t1">
                    <af:panelGroupLayout id="pgl1" layout="vertical">
                        <af:commandLink text="Spinning Item Creation Form"
                                        id="commandLink1" action="spinning"
                                        visible="false"/>
                        <af:spacer width="10" height="10" id="s2"
                                   visible="false"/>
                        <af:commandLink text="Weaving Item Creation Form"
                                        id="commandLink2" action="weaving"
                                        visible="false"/>
                        <af:spacer width="10" height="10" id="s3"
                                   visible="false"/>
                        <af:commandLink text="Dyeing Item Creation Form"
                                        id="commandLink3" action="dyeing"
                                        visible="false"/>
                        <af:spacer width="10" height="10" id="s4"
                                   visible="false"/>
                        <af:commandLink text="Printing Item Creation Form"
                                        id="commandLink8" action="printing"
                                        visible="false"/>
                        <af:spacer width="10" height="10" id="s5"
                                   visible="false"/>
                        <af:commandLink text="Accessories Item Creation Form"
                                        id="commandLink4" action="accessories"
                                        visible="false"/>
                        <af:spacer width="10" height="10" id="s6"
                                   visible="false"/>
                        <af:commandLink text="Program Creation Form"
                                        id="commandLink5"
                                        action="programCreation"
                                        visible="false"/>
                        <af:spacer width="10" height="10" id="s7"
                                   visible="false"/>
                        <af:commandLink text="Set BOM Creation Form"
                                        id="commandLink6" visible="false"/>
                        <af:spacer width="10" height="10" id="s8"
                                   visible="false"/>
                        <af:commandLink text="Article Master BOM Creation Form"
                                        id="commandLink7"
                                        action="executeWithParamsArticleBom"
                                        rendered="#{sessionScope.respID == '53095' ? true : false}">
                            <af:setActionListener from="!@#$%^&*()_+-="
                                                  to="#{RequestVariablesRegister.artBomNum}"/>
                        </af:commandLink>
                        <af:separator id="s10"/>
                        <af:commandButton text="Madeup Details Report" id="cb1"
                                          partialSubmit="true"
                                          action="articlesReport"
                                          styleClass="AFStretchWidth"/>
                        <af:separator id="separator1"/>
                        <af:commandButton text="Accessories Details Report"
                                          id="commandButton1"
                                          partialSubmit="true"
                                          action="accessoriesReport"
                                          styleClass="AFStretchWidth"/>
                        <af:separator id="separator2"/>
                        <af:commandButton text="PO Receiving Status Report"
                                          id="commandButton2"
                                          partialSubmit="true"
                                          action="poRcvStatus"
                                          styleClass="AFStretchWidth"/>
                    </af:panelGroupLayout>
                </af:toolbar>
                <af:spacer width="30" height="10" id="s1"/>
                <af:panelStretchLayout id="psl2" dimensionsFrom="children"
                                       startWidth="0" endWidth="0"
                                       topHeight="0" bottomHeight="0">
                    <f:facet name="center">
                        <af:panelGroupLayout layout="horizontal"
                                             xmlns:af="http://xmlns.oracle.com/adf/faces/rich"
                                             id="pgl3">
                            <af:panelCollection id="pc1"
                                                rendered="#{bindings.ArticleBomApprovalView.estimatedRowCount > 0 ? true : false}"
                                                styleClass="AFStretchWidth">
                                <f:facet name="menus"/>
                                <f:facet name="toolbar">
                                    <af:toolbar id="t3">
                                        <af:commandToolbarButton id="ctb3"
                                                                 icon="/Images/refresh 12x12.png"
                                                                 actionListener="#{ViewActions.refreshAbApprovalAL}"/>
                                    </af:toolbar>
                                </f:facet>
                                <f:facet name="statusbar"/>
                                <af:table value="#{bindings.ArticleBomApprovalView.collectionModel}"
                                          var="row"
                                          rows="#{bindings.ArticleBomApprovalView.rangeSize}"
                                          fetchSize="#{bindings.ArticleBomApprovalView.rangeSize}"
                                          rowBandingInterval="0"
                                          filterModel="#{bindings.ArticleBomApprovalViewQuery.queryDescriptor}"
                                          queryListener="#{bindings.ArticleBomApprovalViewQuery.processQuery}"
                                          filterVisible="true" varStatus="vs"
                                          selectedRowKeys="#{bindings.ArticleBomApprovalView.collectionModel.selectedRow}"
                                          selectionListener="#{bindings.ArticleBomApprovalView.collectionModel.makeCurrent}"
                                          rowSelection="single" id="t2"
                                          styleClass="AFStretchWidth"
                                          columnStretching="column:c1"
                                          contentDelivery="immediate"
                                          autoHeightRows="#{bindings.ArticleBomApprovalView.estimatedRowCount}">
                                    <af:column sortProperty="#{bindings.ArticleBomApprovalView.hints.UserName.name}"
                                               filterable="true" sortable="true"
                                               headerText="#{bindings.ArticleBomApprovalView.hints.UserName.label}"
                                               id="c5" align="center">
                                        <af:outputFormatted value="#{row.bindings.UserName.inputValue}"
                                                            id="outputFormatted1"/>
                                    </af:column>
                                    <af:column sortProperty="#{bindings.ArticleBomApprovalView.hints.ArtBomNum.name}"
                                               filterable="true" sortable="true"
                                               headerText="#{bindings.ArticleBomApprovalView.hints.ArtBomNum.label}"
                                               id="c4" align="center"
                                               rendered="false">
                                        <af:inputText value="#{row.bindings.ArtBomNum.inputValue}"
                                                      label="#{bindings.ArticleBomApprovalView.hints.ArtBomNum.label}"
                                                      required="#{bindings.ArticleBomApprovalView.hints.ArtBomNum.mandatory}"
                                                      columns="#{bindings.ArticleBomApprovalView.hints.ArtBomNum.displayWidth}"
                                                      maximumLength="#{bindings.ArticleBomApprovalView.hints.ArtBomNum.precision}"
                                                      shortDesc="#{bindings.ArticleBomApprovalView.hints.ArtBomNum.tooltip}"
                                                      id="it1">
                                            <f:validator binding="#{row.bindings.ArtBomNum.validator}"/>
                                        </af:inputText>
                                    </af:column>
                                    <af:column sortProperty="#{bindings.ArticleBomApprovalView.hints.Subject.name}"
                                               filterable="true" sortable="true"
                                               headerText="#{bindings.ArticleBomApprovalView.hints.Subject.label}"
                                               id="c1" align="center"
                                               width="450"
                                               inlineStyle="text-align:left;">
                                        <af:switcher id="s9"
                                                     defaultFacet="output"
                                                     facetName="#{row.bindings.Tseq.inputValue != '1' ? 'articleBom' : 'articleBomApproval'}">
                                            <f:facet name="articleBomApproval">
                                                <af:commandLink text="#{row.bindings.Subject.inputValue}"
                                                                id="cl1"
                                                                action="executeWithParamsApproval">
                                                    <af:setActionListener from="#{row.bindings.ArtBomId.inputValue}"
                                                                          to="#{RequestVariablesRegister.artBomId}"/>
                                                </af:commandLink>
                                            </f:facet>
                                            <f:facet name="output"/>
                                            <f:facet name="articleBom">
                                                <af:commandLink text="#{row.bindings.Subject.inputValue}"
                                                                id="cl2"
                                                                action="executeWithParamsArticleBom">
                                                    <af:setActionListener from="#{row.bindings.ArtBomNum.inputValue}"
                                                                          to="#{RequestVariablesRegister.artBomNum}"/>
                                                </af:commandLink>
                                            </f:facet>
                                        </af:switcher>
                                    </af:column>
                                    <af:column sortProperty="#{bindings.ArticleBomApprovalView.hints.Dated.name}"
                                               filterable="true" sortable="true"
                                               headerText="#{bindings.ArticleBomApprovalView.hints.Dated.label}"
                                               id="c2" align="center">
                                        <f:facet name="filter">
                                            <af:inputDate value="#{vs.filterCriteria.ReqApprDate}"
                                                          id="id1"/>
                                        </f:facet>
                                        <af:inputDate value="#{row.bindings.Dated.inputValue}"
                                                      label="#{bindings.ArticleBomApprovalView.hints.Dated.label}"
                                                      required="#{bindings.ArticleBomApprovalView.hints.Dated.mandatory}"
                                                      shortDesc="#{bindings.ArticleBomApprovalView.hints.Dated.tooltip}"
                                                      id="id2" disabled="true"
                                                      rendered="false">
                                            <f:validator binding="#{row.bindings.Dated.validator}"/>
                                            <af:convertDateTime pattern="#{bindings.ArticleBomApprovalView.hints.Dated.format}"/>
                                        </af:inputDate>
                                        <af:outputFormatted value="#{row.bindings.Dated.inputValue}"
                                                            id="outputFormatted2"/>
                                    </af:column>
                                    <af:column sortProperty="#{bindings.ArticleBomApprovalView.hints.ArtBomId.name}"
                                               filterable="true" sortable="true"
                                               headerText="#{bindings.ArticleBomApprovalView.hints.ArtBomId.label}"
                                               id="c6" align="center"
                                               rendered="false">
                                        <af:inputText value="#{row.bindings.ArtBomId.inputValue}"
                                                      label="#{bindings.ArticleBomApprovalView.hints.ArtBomId.label}"
                                                      required="#{bindings.ArticleBomApprovalView.hints.ArtBomId.mandatory}"
                                                      columns="#{bindings.ArticleBomApprovalView.hints.ArtBomId.displayWidth}"
                                                      maximumLength="#{bindings.ArticleBomApprovalView.hints.ArtBomId.precision}"
                                                      shortDesc="#{bindings.ArticleBomApprovalView.hints.ArtBomId.tooltip}"
                                                      id="it2">
                                            <f:validator binding="#{row.bindings.ArtBomId.validator}"/>
                                            <af:convertNumber groupingUsed="false"
                                                              pattern="#{bindings.ArticleBomApprovalView.hints.ArtBomId.format}"/>
                                        </af:inputText>
                                    </af:column>
                                    <af:column sortProperty="#{bindings.ArticleBomApprovalView.hints.UserId.name}"
                                               filterable="true" sortable="true"
                                               headerText="#{bindings.ArticleBomApprovalView.hints.UserId.label}"
                                               id="c3" align="center"
                                               rendered="false">
                                        <af:inputText value="#{row.bindings.UserId.inputValue}"
                                                      label="#{bindings.ArticleBomApprovalView.hints.UserId.label}"
                                                      required="#{bindings.ArticleBomApprovalView.hints.UserId.mandatory}"
                                                      columns="#{bindings.ArticleBomApprovalView.hints.UserId.displayWidth}"
                                                      maximumLength="#{bindings.ArticleBomApprovalView.hints.UserId.precision}"
                                                      shortDesc="#{bindings.ArticleBomApprovalView.hints.UserId.tooltip}"
                                                      id="it3">
                                            <f:validator binding="#{row.bindings.UserId.validator}"/>
                                            <af:convertNumber groupingUsed="false"
                                                              pattern="#{bindings.ArticleBomApprovalView.hints.UserId.format}"/>
                                        </af:inputText>
                                    </af:column>
                                </af:table>
                            </af:panelCollection>
                        </af:panelGroupLayout>
                    </f:facet>
                </af:panelStretchLayout>
            </af:panelGroupLayout>
        </af:form>
    </af:document>
</f:view>