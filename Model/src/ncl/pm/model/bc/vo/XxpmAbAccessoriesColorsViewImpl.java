package ncl.pm.model.bc.vo;

import java.sql.ResultSet;

import oracle.jbo.Row;
import oracle.jbo.server.RowQualifier;
import oracle.jbo.server.ViewObjectImpl;
import oracle.jbo.server.ViewRowImpl;
import oracle.jbo.server.ViewRowSetImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Aug 26 11:19:34 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmAbAccessoriesColorsViewImpl extends ViewObjectImpl {
    /**
     * This is the default constructor (do not remove).
     */
    public XxpmAbAccessoriesColorsViewImpl() {
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
}
