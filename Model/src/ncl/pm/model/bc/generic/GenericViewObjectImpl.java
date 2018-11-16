package ncl.pm.model.bc.generic;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ncl.pm.model.bc.view.xxpmJC.Logger;

import oracle.jbo.CriteriaClauses;
import oracle.jbo.ViewCriteria;
import oracle.jbo.server.QueryCollection;
import oracle.jbo.server.SQLBuilder;
import oracle.jbo.server.ViewObjectImpl;
import oracle.jbo.server.ViewRowImpl;
import oracle.jbo.server.ViewRowSetImpl;


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
