.class final Lcom/nuance/swype/inapp/CatalogManager$4;
.super Ljava/lang/Object;
.source "CatalogManager.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/inapp/CatalogManager;->downloadTheme(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/inapp/CatalogManager;

.field final synthetic val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

.field final synthetic val$sku:Ljava/lang/String;

.field final synthetic val$themeViewIndex:I


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/CatalogManager;Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/nuance/swype/inapp/CatalogManager;

    .prologue
    .line 886
    iput-object p1, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    iput-object p2, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    iput p4, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$themeViewIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final downloadComplete(Ljava/io/File;)Z
    .registers 21
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 933
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v5, "Download complete. File at: "

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 6120
    iget-object v2, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    .line 935
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 934
    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/inapp/CatalogManager;->installDownloadedFile$14e1ec69(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_164

    .line 937
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v5, "downloadComplete..installDownloadedFile....STATUS_SUCCESS."

    aput-object v5, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 7120
    iget-object v2, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    # invokes: Lcom/nuance/swype/inapp/CatalogManager;->installPath$7157d249(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/nuance/swype/inapp/CatalogManager;->access$1200$15392457(Lcom/nuance/swype/inapp/CatalogManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 940
    .local v18, "themeFile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/inapp/CatalogManager;->addWordListFromApk(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    .line 7136
    iget-object v0, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeCategories:Ljava/util/List;

    move-object/from16 v16, v0

    .line 944
    .local v16, "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v16, :cond_84

    .line 945
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .restart local v16    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    .line 7170
    iget-object v1, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeCategoryLabel:Ljava/lang/String;

    .line 946
    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    :cond_84
    if-eqz v16, :cond_119

    .line 949
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8a
    :goto_8a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_119

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 950
    .local v15, "category":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-virtual {v1}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v1

    invoke-interface {v1, v15}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 951
    .local v4, "categoryKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v17

    .line 952
    .local v17, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v17, :cond_f4

    .line 7239
    const/16 v1, 0x64

    move-object/from16 v0, v17

    iput v1, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->installingPercentage:I

    .line 954
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    .line 955
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    .line 956
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->mInstalledList:Lcom/nuance/swype/inapp/InstalledList;
    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$1300(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/InstalledList;

    move-result-object v1

    .line 8162
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 9036
    iget-object v3, v1, Lcom/nuance/swype/inapp/InstalledList;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 9037
    invoke-virtual {v1}, Lcom/nuance/swype/inapp/InstalledList;->loadAll()V

    .line 957
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$100(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/ThemeManager;->updateThemeStatus(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 961
    :cond_f4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v1

    if-eqz v1, :cond_8a

    .line 962
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$themeViewIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    sget-object v6, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    invoke-interface/range {v1 .. v6}, Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;->onCatalogItemStatusChanged(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    goto/16 :goto_8a

    .line 968
    .end local v4    # "categoryKey":Ljava/lang/String;
    .end local v15    # "category":Ljava/lang/String;
    .end local v17    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :cond_119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v1

    if-eqz v1, :cond_151

    .line 969
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-virtual {v1}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v2

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 970
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$themeViewIndex:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    sget-object v10, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    invoke-interface/range {v5 .. v10}, Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;->onCatalogItemStatusChanged(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 974
    .end local v8    # "key":Ljava/lang/String;
    :cond_151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->downloadLocation:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;
    invoke-static {v2}, Lcom/nuance/swype/inapp/CatalogManager;->access$1400(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->COMPLETED:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    # invokes: Lcom/nuance/swype/usagedata/UsageData;->recordDownloadEvent(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;Lcom/nuance/swype/usagedata/UsageData$DownloadResult;)V
    invoke-static {v1, v2, v3}, Lcom/nuance/swype/inapp/CatalogManager;->access$1500$6a1fb329(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;Lcom/nuance/swype/usagedata/UsageData$DownloadResult;)V

    .line 975
    const/4 v1, 0x1

    .line 988
    .end local v16    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "themeFile":Ljava/lang/String;
    :goto_163
    return v1

    .line 977
    :cond_164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v1

    if-eqz v1, :cond_1b9

    .line 978
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 979
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 9120
    iget-object v2, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    .line 978
    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v17

    .line 980
    .restart local v17    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$100(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    .line 981
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLING:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 10031
    invoke-static {v1, v2}, Lcom/nuance/swype/util/storage/ThemeData;->update(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)Z

    .line 983
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$themeViewIndex:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 10120
    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 984
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    sget-object v14, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLING:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 983
    invoke-interface/range {v9 .. v14}, Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;->onCatalogItemStatusChanged(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 987
    .end local v17    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :cond_1b9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->downloadLocation:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;
    invoke-static {v2}, Lcom/nuance/swype/inapp/CatalogManager;->access$1400(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->CANCELED:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    # invokes: Lcom/nuance/swype/usagedata/UsageData;->recordDownloadEvent(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;Lcom/nuance/swype/usagedata/UsageData$DownloadResult;)V
    invoke-static {v1, v2, v3}, Lcom/nuance/swype/inapp/CatalogManager;->access$1500$6a1fb329(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;Lcom/nuance/swype/usagedata/UsageData$DownloadResult;)V

    .line 988
    const/4 v1, 0x0

    goto :goto_163
.end method

.method public final downloadFailed(I)V
    .registers 9
    .param p1, "i"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1032
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Download failed: "

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1033
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    .line 13120
    iget-object v1, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 1033
    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v6

    .line 1035
    .local v6, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v6, :cond_2c

    .line 1036
    invoke-virtual {v6, v4}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    .line 13239
    iput v3, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->installingPercentage:I

    .line 1039
    :cond_2c
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$100(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    .line 1040
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLING:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 14031
    invoke-static {v0, v1}, Lcom/nuance/swype/util/storage/ThemeData;->update(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)Z

    .line 1042
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v0

    if-eqz v0, :cond_5d

    if-eqz v6, :cond_5d

    .line 1043
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$themeViewIndex:I

    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 14120
    iget-object v3, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 1044
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    sget-object v5, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLING:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 1043
    invoke-interface/range {v0 .. v5}, Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;->onCatalogItemStatusChanged(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 1047
    :cond_5d
    return-void
.end method

.method public final downloadPercentage(I)V
    .registers 10
    .param p1, "i"    # I

    .prologue
    .line 908
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Download %"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 909
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager;->showNoSpaceNotificationIfShortStorage()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 911
    :try_start_1d
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    iget v1, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$themeViewIndex:I

    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 912
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 3120
    iget-object v2, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 912
    iget-object v3, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    .line 911
    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/inapp/CatalogManager;->cancelDownloadTheme(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1d .. :try_end_2e} :catch_2f

    .line 929
    :cond_2e
    :goto_2e
    return-void

    .line 913
    :catch_2f
    move-exception v6

    .line 914
    .local v6, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "downloadPercentage...cancelDownloadTheme exception: "

    invoke-interface {v0, v1, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2e

    .line 918
    .end local v6    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :cond_39
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    .line 4120
    iget-object v1, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 918
    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v7

    .line 920
    .local v7, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v7, :cond_2e

    .line 4239
    iput p1, v7, Lcom/nuance/swype/util/storage/ThemeItemSeed;->installingPercentage:I

    .line 922
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 923
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$themeViewIndex:I

    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 5120
    iget-object v3, v7, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 924
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    sget-object v5, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLING:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 923
    invoke-interface/range {v0 .. v5}, Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;->onCatalogItemStatusChanged(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    goto :goto_2e
.end method

.method public final downloadStarted()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 889
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Starting download for: "

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 890
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    .line 1120
    iget-object v1, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 890
    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v6

    .line 892
    .local v6, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v6, :cond_46

    .line 893
    invoke-virtual {v6, v4}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    .line 1239
    iput v3, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->installingPercentage:I

    .line 899
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 900
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$themeViewIndex:I

    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 2120
    iget-object v3, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 901
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    sget-object v5, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLING:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 900
    invoke-interface/range {v0 .. v5}, Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;->onCatalogItemStatusChanged(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 904
    :cond_45
    :goto_45
    return-void

    .line 896
    :cond_46
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "Seed data not found when downloading."

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_45
.end method

.method public final downloadStopped(I)V
    .registers 9
    .param p1, "i"    # I

    .prologue
    const/4 v4, 0x0

    .line 999
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Download stopped. Reason: "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1000
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    .line 11120
    iget-object v1, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 1000
    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v6

    .line 1002
    .local v6, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v6, :cond_59

    .line 1003
    invoke-virtual {v6, v4}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    .line 1004
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$100(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    .line 1005
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALL_CANCELED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 12031
    invoke-static {v0, v1}, Lcom/nuance/swype/util/storage/ThemeData;->update(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)Z

    .line 1007
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1008
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->callbackListener:Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$themeViewIndex:I

    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 12120
    iget-object v3, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 1009
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    sget-object v5, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALL_CANCELED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 1008
    invoke-interface/range {v0 .. v5}, Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;->onCatalogItemStatusChanged(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 1013
    :cond_59
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$downloadingTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getType()I

    move-result v0

    sget-object v1, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v1}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_68

    .line 1028
    :goto_67
    return-void

    .line 1017
    :cond_68
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager;->showNoSpaceNotificationIfShortStorage()Z

    move-result v0

    if-nez v0, :cond_73

    const/4 v0, 0x6

    if-ne p1, v0, :cond_81

    .line 1019
    :cond_73
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->downloadLocation:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;
    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$1400(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->NO_SPACE:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    # invokes: Lcom/nuance/swype/usagedata/UsageData;->recordDownloadEvent(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;Lcom/nuance/swype/usagedata/UsageData$DownloadResult;)V
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/inapp/CatalogManager;->access$1500$6a1fb329(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;Lcom/nuance/swype/usagedata/UsageData$DownloadResult;)V

    goto :goto_67

    .line 1021
    :cond_81
    const/4 v0, 0x3

    if-ne p1, v0, :cond_92

    .line 1022
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->downloadLocation:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;
    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$1400(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->CANCELED:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    # invokes: Lcom/nuance/swype/usagedata/UsageData;->recordDownloadEvent(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;Lcom/nuance/swype/usagedata/UsageData$DownloadResult;)V
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/inapp/CatalogManager;->access$1500$6a1fb329(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;Lcom/nuance/swype/usagedata/UsageData$DownloadResult;)V

    goto :goto_67

    .line 1025
    :cond_92
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->val$sku:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager$4;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->downloadLocation:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;
    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$1400(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->NETWORK:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    # invokes: Lcom/nuance/swype/usagedata/UsageData;->recordDownloadEvent(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;Lcom/nuance/swype/usagedata/UsageData$DownloadResult;)V
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/inapp/CatalogManager;->access$1500$6a1fb329(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;Lcom/nuance/swype/usagedata/UsageData$DownloadResult;)V

    goto :goto_67
.end method
