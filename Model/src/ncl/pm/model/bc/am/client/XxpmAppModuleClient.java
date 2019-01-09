package ncl.pm.model.bc.am.client;

import ncl.pm.model.bc.am.common.XxpmAppModule;

import oracle.jbo.ViewObject;
import oracle.jbo.client.remote.ApplicationModuleImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Mon Jan 18 20:38:22 PKT 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class XxpmAppModuleClient extends ApplicationModuleImpl implements XxpmAppModule {
    /**
     * This is the default constructor (do not remove).
     */
    public XxpmAppModuleClient() {
    }


    public Integer createArticleBomVersion() {
        Object _ret =
            this.riInvokeExportedMethod(this, "createArticleBomVersion", null,
                                        null);
        return (Integer)_ret;
    }


    public void blankSpnPage() {
        Object _ret = this.riInvokeExportedMethod(this,"blankSpnPage",null,null);
        return;
    }

    public void blankWvPage() {
        Object _ret = this.riInvokeExportedMethod(this,"blankWvPage",null,null);
        return;
    }

    public void blankDyPage() {
        Object _ret = this.riInvokeExportedMethod(this,"blankDyPage",null,null);
        return;
    }

    public int getMaxAtchCode(int type) {
        Object _ret =
            this.riInvokeExportedMethod(this,"getMaxAtchCode",new String [] {"int"},new Object[] {new Integer(type)});
        return ((Integer)_ret).intValue();
    }

    public int chkSpnItmUsage(String vId) {
        Object _ret =
            this.riInvokeExportedMethod(this,"chkSpnItmUsage",new String [] {"java.lang.String"},new Object[] {vId});
        return ((Integer)_ret).intValue();
    }

    public void setXxpmAttachmentsSpn(int fileCode, String name, String path,
                                      String ext) {
        Object _ret =
            this.riInvokeExportedMethod(this,"setXxpmAttachmentsSpn",new String [] {"int","java.lang.String","java.lang.String","java.lang.String"},new Object[] {new Integer(fileCode), name, path, ext});
        return;
    }

    public void setXxpmAttachmentsWv(int fileCode, String name, String path,
                                     String ext) {
        Object _ret =
            this.riInvokeExportedMethod(this,"setXxpmAttachmentsWv",new String [] {"int","java.lang.String","java.lang.String","java.lang.String"},new Object[] {new Integer(fileCode), name, path, ext});
        return;
    }

    public void copySpnItem() {
        Object _ret = this.riInvokeExportedMethod(this,"copySpnItem",null,null);
        return;
    }

    public void blankPrnPage() {
        Object _ret = this.riInvokeExportedMethod(this,"blankPrnPage",null,null);
        return;
    }

    public void blankAccPage() {
        Object _ret = this.riInvokeExportedMethod(this,"blankAccPage",null,null);
        return;
    }

    public void copyWvItem() {
        Object _ret = this.riInvokeExportedMethod(this,"copyWvItem",null,null);
        return;
    }

    public void copyDyItem() {
        Object _ret = this.riInvokeExportedMethod(this,"copyDyItem",null,null);
        return;
    }

    public void copyPrnItem() {
        Object _ret = this.riInvokeExportedMethod(this,"copyPrnItem",null,null);
        return;
    }

    public int addVsetVal(String prefix, String vSet, String value) {
        Object _ret =
            this.riInvokeExportedMethod(this,"addVsetVal",new String [] {"java.lang.String","java.lang.String","java.lang.String"},new Object[] {prefix, vSet, value});
        return ((Integer)_ret).intValue();
    }

    public int copyEBSItemUpdateStatus(String imId, String s3) {
        Object _ret =
            this.riInvokeExportedMethod(this,"copyEBSItemUpdateStatus",new String [] {"java.lang.String","java.lang.String"},new Object[] {imId, s3});
        return ((Integer)_ret).intValue();
    }

    public void delMadeupSetArticle(int articleId) {
        Object _ret =
            this.riInvokeExportedMethod(this,"delMadeupSetArticle",new String [] {"int"},new Object[] {new Integer(articleId)});
        return;
    }

    public String createMadeupItemInEBS(String pid) {
        Object _ret =
            this.riInvokeExportedMethod(this,"createMadeupItemInEBS",new String [] {"java.lang.String"},new Object[] {pid});
        return (String)_ret;
    }

    public void setXxpmAttachmentsProg(int fileCode, String name, String path,
                                       String ext) {
        Object _ret =
            this.riInvokeExportedMethod(this,"setXxpmAttachmentsProg",new String [] {"int","java.lang.String","java.lang.String","java.lang.String"},new Object[] {new Integer(fileCode), name, path, ext});
        return;
    }

    public void blankMadeupPage() {
        Object _ret =
            this.riInvokeExportedMethod(this,"blankMadeupPage",null,null);
        return;
    }

    public void setXxpmAttachmentsAcc(int fileCode, String name, String path,
                                      String ext) {
        Object _ret =
            this.riInvokeExportedMethod(this,"setXxpmAttachmentsAcc",new String [] {"int","java.lang.String","java.lang.String","java.lang.String"},new Object[] {new Integer(fileCode), name, path, ext});
        return;
    }

    public int chkCustSeg2VAlidity(String seg2) {
        Object _ret =
            this.riInvokeExportedMethod(this,"chkCustSeg2VAlidity",new String [] {"java.lang.String"},new Object[] {seg2});
        return ((Integer)_ret).intValue();
    }

    public void updateArticleBomDetails(String bomId) {
        Object _ret =
            this.riInvokeExportedMethod(this,"updateArticleBomDetails",new String [] {"java.lang.String"},new Object[] {bomId});
        return;
    }

    public int articleBomProc(String bomId) {
        Object _ret =
            this.riInvokeExportedMethod(this,"articleBomProc",new String [] {"java.lang.String"},new Object[] {bomId});
        return ((Integer)_ret).intValue();
    }

    public void copyAccItem() {
        Object _ret = this.riInvokeExportedMethod(this,"copyAccItem",null,null);
        return;
    }

    public void blankPoPage() {
        Object _ret = this.riInvokeExportedMethod(this,"blankPoPage",null,null);
        return;
    }

    public void insertPoLines(Integer prog, Integer hid, Integer poId,
                              Integer transType) {
        Object _ret =
            this.riInvokeExportedMethod(this,"insertPoLines",new String [] {"java.lang.Integer","java.lang.Integer","java.lang.Integer","java.lang.Integer"},new Object[] {prog, hid, poId, transType});
        return;
    }

    public void insetArticleIntoSetBom(Integer progId, Integer setId,
                                       Integer setBomId, String s4,
                                       String s5) {
        Object _ret =
            this.riInvokeExportedMethod(this,"insetArticleIntoSetBom",new String [] {"java.lang.Integer","java.lang.Integer","java.lang.Integer","java.lang.String","java.lang.String"},new Object[] {progId, setId, setBomId, s4, s5});
        return;
    }

    public int createSetBom(String bomId) {
        Object _ret =
            this.riInvokeExportedMethod(this,"createSetBom",new String [] {"java.lang.String"},new Object[] {bomId});
        return ((Integer)_ret).intValue();
    }

    public void blankSetBomPage() {
        Object _ret =
            this.riInvokeExportedMethod(this,"blankSetBomPage",null,null);
        return;
    }

    public void deleteMadeupCombs() {
        Object _ret =
            this.riInvokeExportedMethod(this,"deleteMadeupCombs",null,null);
        return;
    }

    public void copymadeupSetItem() {
        Object _ret =
            this.riInvokeExportedMethod(this,"copymadeupSetItem",null,null);
        return;
    }

    public void genMadeupComb(String pid, String artId) {
        Object _ret =
            this.riInvokeExportedMethod(this,"genMadeupComb",new String [] {"java.lang.String","java.lang.String"},new Object[] {pid, artId});
        return;
    }

    public void generatePO(Integer phId) {
        Object _ret =
            this.riInvokeExportedMethod(this,"generatePO",new String [] {"java.lang.Integer"},new Object[] {phId});
        return;
    }

    public String getActiveUserAgent() {
        Object _ret =
            this.riInvokeExportedMethod(this,"getActiveUserAgent",null,null);
        return (String)_ret;
    }

    public void executePoLinesAccCatQuery(String accCat) {
        Object _ret =
            this.riInvokeExportedMethod(this,"executePoLinesAccCatQuery",new String [] {"java.lang.String"},new Object[] {accCat});
        return;
    }

    public void blankArtBomPage() {
        Object _ret =
            this.riInvokeExportedMethod(this,"blankArtBomPage",null,null);
        return;
    }

    public void blankMadeupCombsReportPage() {
        Object _ret =
            this.riInvokeExportedMethod(this,"blankMadeupCombsReportPage",null,null);
        return;
    }

    public void blankAccessoriesReportPage() {
        Object _ret =
            this.riInvokeExportedMethod(this,"blankAccessoriesReportPage",null,null);
        return;
    }

    public Integer getDefaultVendorSiteId(Integer vendorId) {
        Object _ret =
            this.riInvokeExportedMethod(this,"getDefaultVendorSiteId",new String [] {"java.lang.Integer"},new Object[] {vendorId});
        return (Integer)_ret;
    }

    public void updateRemarksIntoPoLine(String lineId, String remarks) {
        Object _ret =
            this.riInvokeExportedMethod(this,"updateRemarksIntoPoLine",new String [] {"java.lang.String","java.lang.String"},new Object[] {lineId, remarks});
        return;
    }

    public int setBomProc(String bomId) {
        Object _ret =
            this.riInvokeExportedMethod(this,"setBomProc",new String [] {"java.lang.String"},new Object[] {bomId});
        return ((Integer)_ret).intValue();
    }

    public Integer saleOrderBomsStatus(Integer hid) {
        Object _ret =
            this.riInvokeExportedMethod(this,"saleOrderBomsStatus",new String [] {"java.lang.Integer"},new Object[] {hid});
        return (Integer)_ret;
    }

    public Integer createArticleBomVersion(String boms, String versionDesc) {
        Object _ret =
            this.riInvokeExportedMethod(this,"createArticleBomVersion",new String [] {"java.lang.String","java.lang.String"},new Object[] {boms, versionDesc});
        return (Integer)_ret;
    }
}
