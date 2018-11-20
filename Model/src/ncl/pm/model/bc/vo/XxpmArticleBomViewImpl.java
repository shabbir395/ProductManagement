package ncl.pm.model.bc.vo;

import java.sql.ResultSet;

import ncl.pm.model.bc.view.xxpmJC.ModelActions;

import oracle.jbo.Row;
import oracle.jbo.server.ViewObjectImpl;
import oracle.jbo.server.ViewRowImpl;
import oracle.jbo.server.ViewRowSetImpl;


// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Mon Aug 22 19:20:17 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmArticleBomViewImpl extends ViewObjectImpl {
    /**
     * This is the default constructor (do not remove).
     */
    public XxpmArticleBomViewImpl() {
    }

    ModelActions ma = new ModelActions();

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


    /**
     * Returns the variable value for BindArtBomId.
     * @return variable value for BindArtBomId
     */
    public Integer getBindArtBomId() {
        return (Integer)ensureVariableManager().getVariableValue("BindArtBomId");
    }

    /**
     * Sets <code>value</code> for variable BindArtBomId.
     * @param value value to bind as BindArtBomId
     */
    public void setBindArtBomId(Integer value) {
        ensureVariableManager().setVariableValue("BindArtBomId", value);
    }

    /**
     * Returns the variable value for BindArtBomNum.
     * @return variable value for BindArtBomNum
     */
    public String getBindArtBomNum() {
        return (String)ensureVariableManager().getVariableValue("BindArtBomNum");
    }

    /**
     * Sets <code>value</code> for variable BindArtBomNum.
     * @param value value to bind as BindArtBomNum
     */
    public void setBindArtBomNum(String value) {
        ensureVariableManager().setVariableValue("BindArtBomNum", value);
    }
}