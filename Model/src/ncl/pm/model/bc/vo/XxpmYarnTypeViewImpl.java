package ncl.pm.model.bc.vo;

import oracle.jbo.Row;
import oracle.jbo.server.ViewObjectImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue Jan 19 18:39:57 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmYarnTypeViewImpl extends ViewObjectImpl {
    /**
     * This is the default constructor (do not remove).
     */
    public XxpmYarnTypeViewImpl() {
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
