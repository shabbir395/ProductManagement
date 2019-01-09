package ncl.pm.model.bc.am.common;

import oracle.jbo.ApplicationModule;
import oracle.jbo.ViewObject;

// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Mon Jan 18 20:38:22 PKT 2016
// ---------------------------------------------------------------------
public interface XxpmAppModule extends ApplicationModule {
    void blankSpnPage();

    void blankWvPage();

    void blankDyPage();


    int getMaxAtchCode(int type);


    int chkSpnItmUsage(String vId);

    void setXxpmAttachmentsSpn(int fileCode, String name, String path,
                               String ext);

    void setXxpmAttachmentsWv(int fileCode, String name, String path,
                              String ext);


    void copySpnItem();

    void blankPrnPage();

    void blankAccPage();

    void copyWvItem();

    void copyDyItem();

    void copyPrnItem();

    int addVsetVal(String prefix, String vSet, String value);

    int copyEBSItemUpdateStatus(String imId, String s3);


    void delMadeupSetArticle(int articleId);

    String createMadeupItemInEBS(String pid);

    void setXxpmAttachmentsProg(int fileCode, String name, String path,
                                String ext);

    void blankMadeupPage();

    void setXxpmAttachmentsAcc(int fileCode, String name, String path,
                               String ext);

    int chkCustSeg2VAlidity(String seg2);


    void updateArticleBomDetails(String bomId);


    int articleBomProc(String bomId);


    void copyAccItem();

    void blankPoPage();

    void insertPoLines(Integer prog, Integer hid, Integer poId,
                       Integer transType);

    void insetArticleIntoSetBom(Integer progId, Integer setId,
                                Integer setBomId, String s4, String s5);

    int createSetBom(String bomId);

    void blankSetBomPage();

    void deleteMadeupCombs();

    void copymadeupSetItem();

    void genMadeupComb(String pid, String artId);

    void generatePO(Integer phId);

    String getActiveUserAgent();

    void executePoLinesAccCatQuery(String accCat);

    void blankArtBomPage();

    void blankMadeupCombsReportPage();

    void blankAccessoriesReportPage();

    Integer getDefaultVendorSiteId(Integer vendorId);

    void updateRemarksIntoPoLine(String lineId, String remarks);

    int setBomProc(String bomId);


    Integer saleOrderBomsStatus(Integer hid);

    Integer createArticleBomVersion(String boms, String versionDesc);
}
