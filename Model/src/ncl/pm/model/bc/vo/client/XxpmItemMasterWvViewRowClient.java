package ncl.pm.model.bc.vo.client;

import ncl.pm.model.bc.vo.common.XxpmItemMasterWvViewRow;

import oracle.jbo.client.remote.RowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Mon May 02 19:24:54 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmItemMasterWvViewRowClient extends RowImpl implements XxpmItemMasterWvViewRow {
    /**
     * This is the default constructor (do not remove).
     */
    public XxpmItemMasterWvViewRowClient() {
    }

    public void updateWvLovsAccessor() {
        Object _ret =
            getApplicationModuleProxy().riInvokeExportedMethod(this,"updateWvLovsAccessor",null,null);
        return;
    }
}
