package ncl.pm.model.bc.view.xxpmJC;

import java.util.ListResourceBundle;

public class CustomMessageBundle extends ListResourceBundle {
    private static final Object[][] sMessageStrings = new String[][] {{ "20001","Error"}};

    /**Return String Identifiers and corresponding Messages in a two-dimensional array.
     */
    protected Object[][] getContents() {
        return sMessageStrings;
    }
}
