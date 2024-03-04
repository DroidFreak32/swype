.class Lcom/nuance/swype/connect/Connect$7;
.super Landroid/os/AsyncTask;
.source "Connect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/connect/Connect;->setupSupportedLanguages(Lcom/nuance/swypeconnect/ac/ACManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/nuance/swype/input/InputMethods;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/Connect;

.field final synthetic val$manager:Lcom/nuance/swypeconnect/ac/ACManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 0

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    iput-object p2, p0, Lcom/nuance/swype/connect/Connect$7;->val$manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private addSupportedLanguage(Ljava/io/File;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager;)V
    .locals 7
    .param p1, "ldbFile"    # Ljava/io/File;
    .param p2, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "sdkDownloadManager"    # Lcom/nuance/swype/connect/SDKDownloadManager;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1457
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "addSupportedLanguage "

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->access$1600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "...ldbFile..."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1458
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1459
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "supported "

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->access$1600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v2

    const-string v3, " already installed"

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1461
    new-array v0, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p3, p2, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->addInstalledLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1467
    :goto_0
    return-void

    .line 1463
    :cond_0
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "supported "

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->access$1600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v2

    const-string v3, " is available for download"

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1465
    new-array v0, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p3, p2, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->addInstallAvailable(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/nuance/swype/input/InputMethods;)Ljava/lang/Boolean;
    .locals 41
    .param p1, "params"    # [Lcom/nuance/swype/input/InputMethods;

    .prologue
    .line 1222
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$1400()Lcom/nuance/swype/util/LogManager$Trace;

    .line 1223
    const/16 v37, 0x0

    .line 1224
    .local v37, "languageDownload":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    const/4 v3, 0x0

    aget-object v31, p1, v3

    .line 1227
    .local v31, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/Connect$7;->val$manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v4, "LANGUAGE"

    invoke-virtual {v3, v4}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-object/from16 v37, v0
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v39

    .line 1233
    .local v39, "sdkDownloadManager":Lcom/nuance/swype/connect/SDKDownloadManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v21

    .line 1234
    .local v21, "dbTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    new-instance v36, Lcom/nuance/swype/input/LanguageList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;)V

    .line 1235
    .local v36, "langList":Lcom/nuance/swype/input/LanguageList;
    invoke-virtual/range {v36 .. v36}, Lcom/nuance/swype/input/LanguageList;->getBuiltinLanguageList()Ljava/util/List;

    move-result-object v16

    .line 1238
    .local v16, "builtInLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v36 .. v36}, Lcom/nuance/swype/input/LanguageList;->getLanguageList()Ljava/util/List;

    move-result-object v11

    .line 1239
    .local v11, "allLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    .local v27, "firstProcessedLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v36 .. v36}, Lcom/nuance/swype/input/LanguageList;->getInstalledDeprecatedLanguages()Ljava/util/Map;

    move-result-object v22

    .line 1242
    .local v22, "deprecatedLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_19

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_19

    .line 1243
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, "processing downloaded languages"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/DatabaseConfig;->getOldLanguageIdAndFileMappingTable(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v38

    .line 1247
    .local v38, "oldFileMappings":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v38, :cond_0

    invoke-virtual/range {v38 .. v38}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1248
    :cond_0
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, "oldFileMappings: is empty"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 1251
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_2
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1252
    .local v5, "language":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, "setupSupportedLanguages: installedLanguageName: "

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1254
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v33

    .line 1255
    .local v33, "isDeprecatedLang":Z
    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/InputMethods;->findLanguageFromName(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v34

    .line 1257
    .local v34, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v34, :cond_3

    if-eqz v33, :cond_3

    .line 1258
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, "processing deprecated language "

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1259
    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/LanguageList;->getNonDeprecatedLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/InputMethods;->findLanguageFromName(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v34

    .line 1262
    :cond_3
    if-nez v34, :cond_4

    .line 1263
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, "unrecognized language: "

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1267
    :cond_4
    invoke-virtual/range {v34 .. v34}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v17

    .line 1268
    .local v17, "coreId":I
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1270
    .local v24, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v33, :cond_6

    .line 1273
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1274
    .local v35, "langFile":Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1275
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    :cond_5
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    if-eqz v37, :cond_2

    .line 1278
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, "updating deprecated language "

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1280
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-interface {v0, v4, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 1281
    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1290
    .end local v35    # "langFile":Ljava/io/File;
    :cond_6
    invoke-virtual/range {v34 .. v34}, Lcom/nuance/swype/input/InputMethods$Language;->getDictionaryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 1291
    .local v25, "fileName":Ljava/lang/String;
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1292
    .restart local v35    # "langFile":Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1293
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1297
    .end local v25    # "fileName":Ljava/lang/String;
    .end local v35    # "langFile":Ljava/io/File;
    :cond_8
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 1301
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1302
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, " is already updated"

    invoke-virtual {v3, v5, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1303
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->addUpdatedLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1304
    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1306
    :cond_9
    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 1307
    .local v20, "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    const/16 v32, 0x0

    .line 1308
    .local v32, "installedALM":Z
    const/4 v10, 0x0

    .line 1309
    .local v10, "ALMLDBSupported":Z
    const-string v7, ""

    .line 1310
    .local v7, "ldbFile":Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .end local v29    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1311
    .local v23, "file":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 1312
    .local v18, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1313
    const/4 v10, 0x1

    .line 1315
    :cond_c
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1316
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v7

    .line 1317
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1318
    const/16 v32, 0x1

    goto :goto_3

    .line 1323
    .end local v18    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v23    # "file":Ljava/lang/String;
    .end local v30    # "i$":Ljava/util/Iterator;
    :cond_d
    if-eqz v32, :cond_e

    .line 1324
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, " already installed ALM LDB"

    invoke-virtual {v3, v5, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1325
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->addInstalledLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1326
    if-eqz v37, :cond_2

    .line 1327
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, " add existing language to languageDownload"

    invoke-virtual {v3, v5, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1328
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-interface {v0, v4, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 1329
    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1332
    :cond_e
    if-eqz v10, :cond_f

    .line 1333
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->addBaseLineToALMUpdateLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1334
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, " already installed basic LDB, update is available"

    invoke-virtual {v3, v5, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1339
    :goto_4
    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1336
    :cond_f
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->addInstalledLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1337
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, " already installed LDB, language doesn\'t support ALM LDB"

    invoke-virtual {v3, v5, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 1344
    .end local v7    # "ldbFile":Ljava/lang/String;
    .end local v10    # "ALMLDBSupported":Z
    .end local v20    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v32    # "installedALM":Z
    .restart local v29    # "i$":Ljava/util/Iterator;
    :cond_10
    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1345
    .restart local v7    # "ldbFile":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 1346
    .restart local v20    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-eqz v7, :cond_2

    .line 1347
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1349
    const/4 v3, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->isALMUpdateAvailable(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1350
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, "baseline "

    const-string v6, "("

    const-string v8, ")"

    const-string v9, " is available for update"

    invoke-virtual/range {v3 .. v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1352
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->addBaseLineToALMUpdateLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1373
    :cond_11
    :goto_5
    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1354
    :cond_12
    const/4 v10, 0x0

    .line 1355
    .restart local v10    # "ALMLDBSupported":Z
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_13
    :goto_6
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 1356
    invoke-virtual {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1357
    const/4 v10, 0x1

    goto :goto_6

    .line 1360
    :cond_14
    const-string v3, ".mp3"

    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v3, 0x0

    aput-object v7, v26, v3

    .line 1361
    .local v26, "files":[Ljava/lang/String;
    :goto_7
    if-eqz v10, :cond_16

    .line 1362
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, " is builtin ALM"

    invoke-virtual {v3, v5, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1363
    move-object/from16 v0, v39

    move-object/from16 v1, v34

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->addBuiltinLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1364
    if-eqz v37, :cond_11

    .line 1365
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, " add existing language to languageDownload"

    invoke-virtual {v3, v5, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1366
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-interface {v0, v3, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V

    goto :goto_5

    .line 1360
    .end local v26    # "files":[Ljava/lang/String;
    :cond_15
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v3, 0x0

    aput-object v7, v26, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".mp3"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v26, v3

    goto :goto_7

    .line 1369
    .restart local v26    # "files":[Ljava/lang/String;
    :cond_16
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, " is builtin baseline and only support baseline"

    invoke-virtual {v3, v5, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1370
    move-object/from16 v0, v39

    move-object/from16 v1, v34

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->addBuiltinLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1377
    .end local v10    # "ALMLDBSupported":Z
    .end local v26    # "files":[Ljava/lang/String;
    :cond_17
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-direct {v0, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1378
    .restart local v35    # "langFile":Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1379
    const/4 v3, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->isALMUpdateAvailable(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1380
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, "pre-apk baseline "

    const-string v6, " is available for update"

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1381
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->addBaseLineToALMUpdateLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1386
    :goto_8
    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1383
    :cond_18
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, "pre-apk ALM "

    const-string v6, " already installed"

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1384
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->addInstalledLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    goto :goto_8

    .line 1396
    .end local v5    # "language":Ljava/lang/String;
    .end local v7    # "ldbFile":Ljava/lang/String;
    .end local v17    # "coreId":I
    .end local v20    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v24    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v33    # "isDeprecatedLang":Z
    .end local v34    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v35    # "langFile":Ljava/io/File;
    .end local v38    # "oldFileMappings":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_19
    invoke-virtual/range {v36 .. v36}, Lcom/nuance/swype/input/LanguageList;->getSupportedLanguageList()Ljava/util/List;

    move-result-object v40

    .line 1397
    .local v40, "supportedLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v40, :cond_23

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 1398
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_1a
    :goto_9
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1399
    .restart local v5    # "language":Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1401
    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/InputMethods;->findLanguageFromName(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v34

    .line 1404
    .restart local v34    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 1406
    .restart local v20    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    const/4 v15, 0x0

    .line 1407
    .local v15, "baselineLDBFile":Ljava/io/File;
    const/4 v13, 0x0

    .line 1409
    .local v13, "almLDBFile":Ljava/io/File;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .restart local v29    # "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_a
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 1410
    .local v19, "dbFile":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1411
    new-instance v15, Ljava/io/File;

    .end local v15    # "baselineLDBFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v15    # "baselineLDBFile":Ljava/io/File;
    goto :goto_a

    .line 1412
    :cond_1c
    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1413
    new-instance v13, Ljava/io/File;

    .end local v13    # "almLDBFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v13    # "almLDBFile":Ljava/io/File;
    goto :goto_a

    .line 1417
    .end local v19    # "dbFile":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_1d
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, "process supported language: "

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1420
    if-eqz v15, :cond_21

    if-eqz v13, :cond_21

    .line 1421
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v14

    .line 1422
    .local v14, "baseIn":Z
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v12

    .line 1423
    .local v12, "almIn":Z
    if-eqz v14, :cond_1e

    .line 1425
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, "supported "

    const-string v6, " is available for update"

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1426
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->addBaseLineToALMUpdateLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1427
    :cond_1e
    if-eqz v12, :cond_20

    .line 1428
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, "supported "

    const-string v6, " already installed"

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1429
    if-eqz v37, :cond_1f

    .line 1430
    invoke-virtual/range {v34 .. v34}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v17

    .line 1431
    .restart local v17    # "coreId":I
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, " add existing language to languageDownload"

    invoke-virtual {v3, v5, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1432
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    move-object/from16 v0, v37

    invoke-interface {v0, v3, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 1434
    .end local v17    # "coreId":I
    :cond_1f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->addInstalledLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1437
    :cond_20
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, "supported "

    const-string v6, " is available for download"

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1438
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->addInstallAvailable(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1440
    .end local v12    # "almIn":Z
    .end local v14    # "baseIn":Z
    :cond_21
    if-eqz v15, :cond_22

    .line 1442
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, " add supported language for basic only languages."

    invoke-virtual {v3, v5, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1443
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v39

    invoke-direct {v0, v15, v1, v2}, Lcom/nuance/swype/connect/Connect$7;->addSupportedLanguage(Ljava/io/File;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager;)V

    goto/16 :goto_9

    .line 1446
    :cond_22
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, " add supported language for ALM only language."

    invoke-virtual {v3, v5, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1447
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v39

    invoke-direct {v0, v13, v1, v2}, Lcom/nuance/swype/connect/Connect$7;->addSupportedLanguage(Ljava/io/File;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager;)V

    goto/16 :goto_9

    .line 1451
    .end local v5    # "language":Ljava/lang/String;
    .end local v13    # "almLDBFile":Ljava/io/File;
    .end local v15    # "baselineLDBFile":Ljava/io/File;
    .end local v20    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v34    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_23
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$1400()Lcom/nuance/swype/util/LogManager$Trace;

    .line 1453
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v3

    .end local v11    # "allLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "builtInLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "dbTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .end local v22    # "deprecatedLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27    # "firstProcessedLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "langList":Lcom/nuance/swype/input/LanguageList;
    .end local v39    # "sdkDownloadManager":Lcom/nuance/swype/connect/SDKDownloadManager;
    .end local v40    # "supportedLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 1230
    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1218
    check-cast p1, [Lcom/nuance/swype/input/InputMethods;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/Connect$7;->doInBackground([Lcom/nuance/swype/input/InputMethods;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1471
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSetupComplete()V

    .line 1474
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1475
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1218
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/Connect$7;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
