package ncl.pm.view.beans;

import ncl.pm.model.bc.view.xxpmJC.Logger;

public class RequestVariablesRegister {
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
        Logger.adfLogger.warning("artBomId = " + artBomId);
        this.artBomNum = artBomId;
    }

    public String getArtBomNum() {
        return artBomNum;
    }
}
