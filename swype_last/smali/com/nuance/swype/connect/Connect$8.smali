.class Lcom/nuance/swype/connect/Connect$8;
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
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$8;->this$0:Lcom/nuance/swype/connect/Connect;

    iput-object p2, p0, Lcom/nuance/swype/connect/Connect$8;->val$manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private addSupportedLanguage(Ljava/io/File;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager;)V
    .registers 12
    .param p1, "ldbFile"    # Ljava/io/File;
    .param p2, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "sdkDownloadManager"    # Lcom/nuance/swype/connect/SDKDownloadManager;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1694
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "addSupportedLanguage "

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$8;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;
    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->access$1800(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "...ldbFile..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1695
    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1696
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "supported "

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$8;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;
    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->access$1800(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, " already installed"

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1698
    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p3, p2, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->addInstalledLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1704
    :goto_5e
    return-void

    .line 1700
    :cond_5f
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "supported "

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$8;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;
    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->access$1800(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, " is available for download"

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1702
    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->addInstallAvailable(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    goto :goto_5e
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/nuance/swype/input/InputMethods;)Ljava/lang/Boolean;
    .registers 40
    .param p1, "params"    # [Lcom/nuance/swype/input/InputMethods;

    .prologue
    .line 1451
    # getter for: Lcom/nuance/swype/connect/Connect;->trace:Lcom/nuance/swype/util/LogManager$Trace;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$1500()Lcom/nuance/swype/util/LogManager$Trace;

    .line 1452
    const/16 v28, 0x0

    .line 1453
    .local v28, "languageDownload":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    const/16 v33, 0x0

    aget-object v21, p1, v33

    .line 1456
    .local v21, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/Connect$8;->val$manager:Lcom/nuance/swypeconnect/ac/ACManager;

    move-object/from16 v33, v0

    const-string/jumbo v34, "LANGUAGE"

    invoke-virtual/range {v33 .. v34}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v33

    move-object/from16 v0, v33

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-object/from16 v28, v0
    :try_end_1c
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_9 .. :try_end_1c} :catch_7ea
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_1c} :catch_7e7

    .line 1460
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/Connect$8;->this$0:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v31

    .line 1461
    .local v31, "sdkDownloadManager":Lcom/nuance/swype/connect/SDKDownloadManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/Connect$8;->this$0:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v33, v0

    # getter for: Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;
    invoke-static/range {v33 .. v33}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v33

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v14

    .line 1462
    .local v14, "dbTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    new-instance v26, Lcom/nuance/swype/input/LanguageList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/Connect$8;->this$0:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v33, v0

    # getter for: Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;
    invoke-static/range {v33 .. v33}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;)V

    .line 1463
    .local v26, "langList":Lcom/nuance/swype/input/LanguageList;
    invoke-virtual/range {v26 .. v26}, Lcom/nuance/swype/input/LanguageList;->getBuiltinLanguageList()Ljava/util/List;

    move-result-object v9

    .line 1466
    .local v9, "builtInLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v26 .. v26}, Lcom/nuance/swype/input/LanguageList;->getLanguageList()Ljava/util/List;

    move-result-object v4

    .line 1467
    .local v4, "allLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1468
    .local v20, "firstProcessedLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v26 .. v26}, Lcom/nuance/swype/input/LanguageList;->getInstalledDeprecatedLanguages()Ljava/util/Map;

    move-result-object v15

    .line 1470
    .local v15, "deprecatedLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_5ee

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_5ee

    .line 1471
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-string/jumbo v36, "processing downloaded languages"

    aput-object v36, v34, v35

    invoke-interface/range {v33 .. v34}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/Connect$8;->this$0:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v33, v0

    # getter for: Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;
    invoke-static/range {v33 .. v33}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/nuance/swype/input/DatabaseConfig;->getOldLanguageIdAndFileMappingTable(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v30

    .line 1475
    .local v30, "oldFileMappings":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v30, :cond_8e

    invoke-virtual/range {v30 .. v30}, Landroid/util/SparseArray;->size()I

    move-result v33

    if-nez v33, :cond_98

    .line 1476
    :cond_8e
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const-string/jumbo v34, "oldFileMappings: is empty"

    invoke-interface/range {v33 .. v34}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 1479
    :cond_98
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_9c
    :goto_9c
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_5ee

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1480
    .local v27, "language":Ljava/lang/String;
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "setupSupportedLanguages: installedLanguageName: "

    aput-object v37, v35, v36

    const/16 v36, 0x1

    aput-object v27, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1482
    move-object/from16 v0, v27

    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    .line 1483
    .local v23, "isDeprecatedLang":Z
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputMethods;->findLanguageFromName(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v24

    .line 1485
    .local v24, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v24, :cond_fe

    if-eqz v23, :cond_fe

    .line 1486
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "processing deprecated language "

    aput-object v37, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1487
    invoke-virtual/range {v26 .. v27}, Lcom/nuance/swype/input/LanguageList;->getNonDeprecatedLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputMethods;->findLanguageFromName(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v24

    .line 1490
    :cond_fe
    if-nez v24, :cond_120

    .line 1491
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "unrecognized language: "

    aput-object v37, v35, v36

    const/16 v36, 0x1

    aput-object v27, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_9c

    .line 1495
    :cond_120
    invoke-virtual/range {v24 .. v24}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v10

    .line 1496
    .local v10, "coreId":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1498
    .local v17, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_1b3

    .line 1501
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/Connect$8;->this$0:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v35

    move-object/from16 v0, v27

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1502
    .local v25, "langFile":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_163

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->isFile()Z

    move-result v33

    if-eqz v33, :cond_163

    .line 1503
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1505
    :cond_163
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_9c

    if-eqz v28, :cond_9c

    .line 1506
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "updating deprecated language "

    aput-object v37, v35, v36

    const/16 v36, 0x1

    aput-object v27, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1508
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 1509
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 1518
    .end local v25    # "langFile":Ljava/io/File;
    :cond_1b3
    invoke-virtual/range {v24 .. v24}, Lcom/nuance/swype/input/InputMethods$Language;->getDictionaryList()Ljava/util/List;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_1bb
    :goto_1bb
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_1f8

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1519
    .local v18, "fileName":Ljava/lang/String;
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/Connect$8;->this$0:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1520
    .restart local v25    # "langFile":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v35

    if-eqz v35, :cond_1bb

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->isFile()Z

    move-result v35

    if-eqz v35, :cond_1bb

    .line 1521
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1bb

    .line 1525
    .end local v18    # "fileName":Ljava/lang/String;
    .end local v25    # "langFile":Ljava/io/File;
    :cond_1f8
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_3bc

    .line 1529
    move-object/from16 v0, v27

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_24a

    .line 1530
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v27, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, " is already updated"

    aput-object v37, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1531
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->addUpdatedLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1532
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 1534
    :cond_24a
    move-object/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 1535
    .local v13, "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    const/16 v22, 0x0

    .line 1536
    .local v22, "installedALM":Z
    const/4 v3, 0x0

    .line 1537
    .local v3, "ALMLDBSupported":Z
    const-string/jumbo v29, ""

    .line 1538
    .local v29, "ldbFile":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_25c
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_29a

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1539
    .local v16, "file":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_26c
    :goto_26c
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_25c

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 1540
    .local v11, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v11}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v36

    if-eqz v36, :cond_27f

    .line 1541
    const/4 v3, 0x1

    .line 1543
    :cond_27f
    invoke-virtual {v11}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_26c

    .line 1544
    invoke-virtual {v11}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v29

    .line 1545
    invoke-virtual {v11}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v36

    if-eqz v36, :cond_26c

    .line 1546
    const/16 v22, 0x1

    goto :goto_26c

    .line 1551
    .end local v11    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v16    # "file":Ljava/lang/String;
    :cond_29a
    if-eqz v22, :cond_321

    .line 1552
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v27, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, " already installed ALM LDB"

    aput-object v37, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1553
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->addInstalledLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1554
    if-eqz v28, :cond_9c

    .line 1555
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v27, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, " add existing language to languageDownload"

    aput-object v37, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1556
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 1557
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 1560
    :cond_321
    if-eqz v3, :cond_380

    .line 1561
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    aput-object v29, v33, v35

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->addBaseLineToALMUpdateLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1562
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v27, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, " already installed basic LDB, update is available"

    aput-object v37, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1567
    :goto_356
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 1568
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 1564
    :cond_380
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->addInstalledLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1565
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v27, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, " already installed LDB, language doesn\'t support ALM LDB"

    aput-object v37, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_356

    .line 1573
    .end local v3    # "ALMLDBSupported":Z
    .end local v13    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v22    # "installedALM":Z
    .end local v29    # "ldbFile":Ljava/lang/String;
    :cond_3bc
    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1574
    .restart local v29    # "ldbFile":Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 1575
    .restart local v13    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-eqz v29, :cond_9c

    .line 1576
    move-object/from16 v0, v27

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_515

    .line 1578
    const/16 v33, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move/from16 v2, v33

    invoke-virtual {v0, v1, v13, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->isALMUpdateAvailable(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v33

    if-eqz v33, :cond_439

    .line 1579
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v35, 0x6

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "baseline "

    aput-object v37, v35, v36

    const/16 v36, 0x1

    aput-object v27, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, "("

    aput-object v37, v35, v36

    const/16 v36, 0x3

    aput-object v29, v35, v36

    const/16 v36, 0x4

    const-string/jumbo v37, ")"

    aput-object v37, v35, v36

    const/16 v36, 0x5

    const-string/jumbo v37, " is available for update"

    aput-object v37, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1581
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    aput-object v29, v33, v35

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->addBaseLineToALMUpdateLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1602
    :cond_430
    :goto_430
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 1583
    :cond_439
    const/4 v3, 0x0

    .line 1584
    .restart local v3    # "ALMLDBSupported":Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_43e
    :goto_43e
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_452

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 1585
    invoke-virtual/range {v33 .. v33}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v33

    if-eqz v33, :cond_43e

    .line 1586
    const/4 v3, 0x1

    goto :goto_43e

    .line 1589
    :cond_452
    const-string/jumbo v33, ".mp3"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4c3

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v33, 0x0

    aput-object v29, v19, v33

    .line 1590
    .local v19, "files":[Ljava/lang/String;
    :goto_46b
    if-eqz v3, :cond_4ec

    .line 1591
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v27, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, " is builtin ALM"

    aput-object v37, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1592
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->addBuiltinLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1593
    if-eqz v28, :cond_430

    .line 1594
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v27, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, " add existing language to languageDownload"

    aput-object v37, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1595
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V

    goto/16 :goto_430

    .line 1589
    .end local v19    # "files":[Ljava/lang/String;
    :cond_4c3
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v33, 0x0

    aput-object v29, v19, v33

    const/16 v33, 0x1

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ".mp3"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v19, v33

    goto :goto_46b

    .line 1598
    .restart local v19    # "files":[Ljava/lang/String;
    :cond_4ec
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v27, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, " is builtin baseline and only support baseline"

    aput-object v37, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1599
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->addBuiltinLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    goto/16 :goto_430

    .line 1606
    .end local v3    # "ALMLDBSupported":Z
    .end local v19    # "files":[Ljava/lang/String;
    :cond_515
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/Connect$8;->this$0:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1607
    .restart local v25    # "langFile":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_9c

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->isFile()Z

    move-result v33

    if-eqz v33, :cond_9c

    .line 1608
    const/16 v33, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move/from16 v2, v33

    invoke-virtual {v0, v1, v13, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->isALMUpdateAvailable(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v33

    if-eqz v33, :cond_58b

    .line 1609
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "pre-apk baseline "

    aput-object v37, v35, v36

    const/16 v36, 0x1

    aput-object v27, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, " is available for update"

    aput-object v37, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1610
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    aput-object v29, v33, v35

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->addBaseLineToALMUpdateLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1623
    :goto_582
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 1613
    :cond_58b
    const/16 v33, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move/from16 v2, v33

    invoke-virtual {v0, v1, v13, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->isTraceLDBUpdateAvailable(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v33

    if-eqz v33, :cond_5af

    .line 1614
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    aput-object v29, v33, v35

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->addTraceLDBUpdateLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    goto :goto_582

    .line 1618
    :cond_5af
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v33

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "pre-apk ALM "

    aput-object v37, v35, v36

    const/16 v36, 0x1

    aput-object v27, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, " already installed"

    aput-object v37, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1619
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    .line 1620
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v33, v35

    .line 1619
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->addInstalledLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    goto :goto_582

    .line 1633
    .end local v10    # "coreId":I
    .end local v13    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v17    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "isDeprecatedLang":Z
    .end local v24    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v25    # "langFile":Ljava/io/File;
    .end local v27    # "language":Ljava/lang/String;
    .end local v29    # "ldbFile":Ljava/lang/String;
    .end local v30    # "oldFileMappings":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_5ee
    invoke-virtual/range {v26 .. v26}, Lcom/nuance/swype/input/LanguageList;->getSupportedLanguageList()Ljava/util/List;

    move-result-object v32

    .line 1634
    .local v32, "supportedLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v32, :cond_7e1

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_7e1

    .line 1635
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_5fe
    :goto_5fe
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_7e1

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1636
    .restart local v27    # "language":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_5fe

    .line 1640
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputMethods;->findLanguageFromName(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v24

    .line 1641
    .restart local v24    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    move-object/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 1643
    .restart local v13    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    const/4 v8, 0x0

    .line 1644
    .local v8, "baselineLDBFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 1646
    .local v6, "almLDBFile":Ljava/io/File;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_62a
    :goto_62a
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_67a

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 1647
    .local v12, "dbFile":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v12}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v35

    if-eqz v35, :cond_658

    .line 1648
    new-instance v8, Ljava/io/File;

    .end local v8    # "baselineLDBFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/Connect$8;->this$0:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v35

    invoke-virtual {v12}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v8    # "baselineLDBFile":Ljava/io/File;
    goto :goto_62a

    .line 1649
    :cond_658
    invoke-virtual {v12}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v35

    if-eqz v35, :cond_62a

    .line 1650
    new-instance v6, Ljava/io/File;

    .end local v6    # "almLDBFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/Connect$8;->this$0:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v35

    invoke-virtual {v12}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v6    # "almLDBFile":Ljava/io/File;
    goto :goto_62a

    .line 1654
    .end local v12    # "dbFile":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_67a
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v34

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "process supported language: "

    aput-object v37, v35, v36

    const/16 v36, 0x1

    aput-object v27, v35, v36

    invoke-interface/range {v34 .. v35}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1657
    if-eqz v8, :cond_795

    if-eqz v6, :cond_795

    .line 1658
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    .line 1659
    .local v7, "baseIn":Z
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    .line 1660
    .local v5, "almIn":Z
    if-eqz v7, :cond_6de

    .line 1662
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v34

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "supported "

    aput-object v37, v35, v36

    const/16 v36, 0x1

    aput-object v27, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, " is available for update"

    aput-object v37, v35, v36

    invoke-interface/range {v34 .. v35}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1663
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->addBaseLineToALMUpdateLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    goto/16 :goto_5fe

    .line 1664
    :cond_6de
    if-eqz v5, :cond_759

    .line 1665
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v34

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "supported "

    aput-object v37, v35, v36

    const/16 v36, 0x1

    aput-object v27, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, " already installed"

    aput-object v37, v35, v36

    invoke-interface/range {v34 .. v35}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1666
    if-eqz v28, :cond_73e

    .line 1667
    invoke-virtual/range {v24 .. v24}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v10

    .line 1668
    .restart local v10    # "coreId":I
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v34

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v27, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, " add existing language to languageDownload"

    aput-object v37, v35, v36

    invoke-interface/range {v34 .. v35}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1669
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 1671
    .end local v10    # "coreId":I
    :cond_73e
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->addInstalledLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    goto/16 :goto_5fe

    .line 1674
    :cond_759
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v34

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "supported "

    aput-object v37, v35, v36

    const/16 v36, 0x1

    aput-object v27, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, " is available for download"

    aput-object v37, v35, v36

    invoke-interface/range {v34 .. v35}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1675
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->addInstallAvailable(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    goto/16 :goto_5fe

    .line 1677
    .end local v5    # "almIn":Z
    .end local v7    # "baseIn":Z
    :cond_795
    if-eqz v8, :cond_7bc

    .line 1679
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v34

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v27, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, " add supported language for basic only languages."

    aput-object v37, v35, v36

    invoke-interface/range {v34 .. v35}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1680
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-direct {v0, v8, v1, v2}, Lcom/nuance/swype/connect/Connect$8;->addSupportedLanguage(Ljava/io/File;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager;)V

    goto/16 :goto_5fe

    .line 1683
    :cond_7bc
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v34

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v27, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, " add supported language for ALM only language."

    aput-object v37, v35, v36

    invoke-interface/range {v34 .. v35}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1684
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-direct {v0, v6, v1, v2}, Lcom/nuance/swype/connect/Connect$8;->addSupportedLanguage(Ljava/io/File;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager;)V

    goto/16 :goto_5fe

    .line 1688
    .end local v6    # "almLDBFile":Ljava/io/File;
    .end local v8    # "baselineLDBFile":Ljava/io/File;
    .end local v13    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v24    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v27    # "language":Ljava/lang/String;
    :cond_7e1
    # getter for: Lcom/nuance/swype/connect/Connect;->trace:Lcom/nuance/swype/util/LogManager$Trace;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$1500()Lcom/nuance/swype/util/LogManager$Trace;

    .line 1690
    sget-object v33, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v33

    .end local v4    # "allLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "builtInLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "dbTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .end local v15    # "deprecatedLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "firstProcessedLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "langList":Lcom/nuance/swype/input/LanguageList;
    .end local v31    # "sdkDownloadManager":Lcom/nuance/swype/connect/SDKDownloadManager;
    .end local v32    # "supportedLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_7e7
    move-exception v33

    goto/16 :goto_1c

    :catch_7ea
    move-exception v33

    goto/16 :goto_1c
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1447
    check-cast p1, [Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/Connect$8;->doInBackground([Lcom/nuance/swype/input/InputMethods;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1708
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1709
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$8;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSetupComplete()V

    .line 1711
    :cond_f
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1712
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1447
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/Connect$8;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
