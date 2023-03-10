package ncl.pm.model.bc.vo;

import java.sql.ResultSet;

import ncl.pm.model.bc.view.xxpmJC.ModelActions;

import oracle.jbo.Row;
import oracle.jbo.ViewObject;
import oracle.jbo.server.RowQualifier;
import oracle.jbo.server.ViewObjectImpl;
import oracle.jbo.server.ViewRowImpl;
import oracle.jbo.server.ViewRowSetImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue Jun 21 14:06:40 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmMadeupSetsViewImpl extends ViewObjectImpl {
    /**
     * This is the default constructor (do not remove).
     */
    public XxpmMadeupSetsViewImpl() {
    }

    /**
     * executeQueryForCollection - overridden for custom java data source support.
     */
    protected void executeQueryForCollection(Object qc, Object[] params,
                                             int noUserParams) {
        super.executeQueryForCollection(qc, params, noUserParams);
    }

    /**
     * hasNextForCollection - overridden for custom java data source support.
     */
    protected boolean hasNextForCollection(Object qc) {
        boolean bRet = super.hasNextForCollection(qc);
        return bRet;
    }

    /**
     * createRowFromResultSet - overridden for custom java data source support.
     */
    protected ViewRowImpl createRowFromResultSet(Object qc,
                                                 ResultSet resultSet) {
        ViewRowImpl value = super.createRowFromResultSet(qc, resultSet);
        if (value != null) {
            ////////////////
//            String s4 = (String)value.getAttribute("Segment4");
//            ViewObjectImpl itmColorVo =
//                (ViewObjectImpl)this.getApplicationModule().findViewObject("ItemColorsLov");
//            RowQualifier itmColorRQ = new RowQualifier("Value = '" + s4 + "'");
//            Row[] itmColorRows = itmColorVo.getFilteredRows(itmColorRQ);
//            Row itmColorRow = null;
//            for (int i = 0; i < itmColorRows.length; i++) {
//                itmColorRow = itmColorRows[i];
//                value.setAttribute("MadeupSetColor",
//                                   itmColorRow.getAttribute("Display"));
//            }
//            ////////////////
//            String s5 = (String)value.getAttribute("Segment5");
//            ViewObjectImpl itmSizeVo =
//                (ViewObjectImpl)this.getApplicationModule().findViewObject("ItemSizeLov");
//            RowQualifier itmSizeRQ = new RowQualifier("Value = '" + s5 + "'");
//            Row[] itmSizeRows = itmSizeVo.getFilteredRows(itmSizeRQ);
//            Row itmSizeRow = null;
//            for (int i = 0; i < itmSizeRows.length; i++) {
//                itmSizeRow = itmSizeRows[i];
//                value.setAttribute("MadeupSetSize",
//                                   itmSizeRow.getAttribute("Display"));
//            }

            value.setAttribute("ConcateSegments",
                               ma.getItemConcateSegments(this.getDBTransaction(),
                                                         new Integer(String.valueOf(value.getAttribute("SetId"))),
                                                         (String)value.getAttribute("Segment1"),
                                                         (String)value.getAttribute("Segment3")));
        }
        return value;
    }

    /**
     * getQueryHitCount - overridden for custom java data source support.
     */
    public long getQueryHitCount(ViewRowSetImpl viewRowSet) {
        long value = super.getQueryHitCount(viewRowSet);
        return value;
    }

    public void insertRow(Row row) {
        Row lastRow = this.last();
        if (lastRow != null) {
            int indx = this.getRangeIndexOf(lastRow) + 1;
            this.insertRowAtRangeIndex(indx, row);
            this.setCurrentRow(row);
        } else
            super.insertRow(row);
    }
    ModelActions ma = new ModelActions();
}
