package ncl.pm.model.bc.vo.lov;

import ncl.pm.model.bc.generic.GenericViewObjectImpl;

import oracle.jbo.server.ViewObjectImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue Aug 09 17:47:53 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class MadeupProgramDescLovImpl extends GenericViewObjectImpl {
    /**
     * This is the default constructor (do not remove).
     */
    public MadeupProgramDescLovImpl() {
    }

    /**
     * Returns the variable value for BindUserId.
     * @return variable value for BindUserId
     */
    public String getBindUserId() {
        return (String)ensureVariableManager().getVariableValue("BindUserId");
    }

    /**
     * Sets <code>value</code> for variable BindUserId.
     * @param value value to bind as BindUserId
     */
    public void setBindUserId(String value) {
        ensureVariableManager().setVariableValue("BindUserId", value);
    }
}
