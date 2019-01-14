package ncl.pm.model.bc.generic;

import oracle.jbo.CriteriaClauses;
import oracle.jbo.ViewCriteria;
import oracle.jbo.server.ViewObjectImpl;


public class GenericViewObjectImpl extends ViewObjectImpl {
    public GenericViewObjectImpl() {
        super();
    }

    @Override
    public CriteriaClauses buildViewCriteriaClauses(ViewCriteria viewCriteria) {
        viewCriteria.setUpperColumns(true);

        CriteriaClauses criteriaClauses =
            super.buildViewCriteriaClauses(viewCriteria);
        return criteriaClauses;
    }
}
