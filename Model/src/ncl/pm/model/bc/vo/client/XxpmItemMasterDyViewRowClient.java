package ncl.pm.model.bc.vo.client;

import ncl.pm.model.bc.vo.common.XxpmItemMasterDyViewRow;

import oracle.jbo.client.remote.RowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Jun 10 14:31:43 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmItemMasterDyViewRowClient extends RowImpl implements XxpmItemMasterDyViewRow {
    /**
     * This is the default constructor (do not remove).
     */
    public XxpmItemMasterDyViewRowClient() {
    }

    public void updateDyLovsAccessor() {
        Object _ret =
            getApplicationModuleProxy().riInvokeExportedMethod(this,"updateDyLovsAccessor",null,null);
        return;
    }
}
