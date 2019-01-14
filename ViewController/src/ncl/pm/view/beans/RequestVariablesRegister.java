package ncl.pm.view.beans;

import java.util.logging.Logger;

public class RequestVariablesRegister {
    Logger logger = Logger.getLogger(this.getClass().getName());

    public RequestVariablesRegister() {
        //super();
    }
    private String artBomId = null;
    private String artBomNum = null;

    public void setArtBomId(String artBomId) {
        this.artBomId = artBomId;
    }

    public String getArtBomId() {
        return artBomId;
    }

    public void setArtBomNum(String artBomId) {
        logger.warning("artBomId = " + artBomId);
        this.artBomNum = artBomId;
    }

    public String getArtBomNum() {
        return artBomNum;
    }
}
