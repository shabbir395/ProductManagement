package ncl.pm.model.bc.vo.client;

import ncl.pm.model.bc.vo.common.XxpmMadeupArticlesViewRow;

import oracle.jbo.client.remote.RowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue Nov 01 17:09:00 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmMadeupArticlesViewRowClient extends RowImpl implements XxpmMadeupArticlesViewRow {
    /**
     * This is the default constructor (do not remove).
     */
    public XxpmMadeupArticlesViewRowClient() {
    }

    public void updateMadeupArticleLovsAccessor() {
        Object _ret =
            getApplicationModuleProxy().riInvokeExportedMethod(this,"updateMadeupArticleLovsAccessor",null,null);
        return;
    }
}
