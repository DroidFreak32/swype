.class public final Lcom/nuance/swype/input/DatabaseConfig;
.super Ljava/lang/Object;
.source "DatabaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;,
        Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;,
        Lcom/nuance/swype/input/DatabaseConfig$DbInfo;,
        Lcom/nuance/swype/input/DatabaseConfig$DbType;
    }
.end annotation


# static fields
.field private static final DATABASE_CONFIG_FILE_NAME:Ljava/lang/String; = "databases.conf"

.field public static EXTERNAL_LDB_DIRECTORY_ARRAY:[Ljava/lang/String; = null

.field private static final EXTRACT_DATABASE:Ljava/lang/String; = "_data_extract.txt"

.field private static configMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/nuance/swype/input/DatabaseConfig$DbType;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;",
            ">;>;"
        }
    .end annotation
.end field

.field private static deprecatedLanguageDbList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;",
            ">;>;"
        }
    .end annotation
.end field

.field private static languageDbList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;",
            ">;>;"
        }
    .end annotation
.end field

.field private static languageFlavorList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-string/jumbo v0, "DatabaseConfig"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 45
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "/data/hw_init/system/lang/swype/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "/system/lang/swype/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig;->EXTERNAL_LDB_DIRECTORY_ARRAY:[Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static build(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 35
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "refreshAllDatabase"    # Z
    .param p2, "languageToUpdate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "build...refreshAllDatabase.."

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 477
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    if-nez v4, :cond_0

    .line 478
    new-instance v4, Ljava/util/EnumMap;

    const-class v6, Lcom/nuance/swype/input/DatabaseConfig$DbType;

    invoke-direct {v4, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v4, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    .line 480
    :cond_0
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->clear()V

    .line 481
    invoke-static {}, Lcom/nuance/swype/input/DatabaseConfig$DbType;->values()[Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move-result-object v6

    array-length v7, v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v32, v6, v4

    .line 482
    .local v32, "type":Lcom/nuance/swype/input/DatabaseConfig$DbType;
    sget-object v8, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v8, v0, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 484
    .end local v32    # "type":Lcom/nuance/swype/input/DatabaseConfig$DbType;
    :cond_1
    new-instance v27, Lcom/nuance/swype/input/LanguageList;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;Z)V

    .line 485
    .local v27, "languageList":Lcom/nuance/swype/input/LanguageList;
    invoke-virtual/range {v27 .. v27}, Lcom/nuance/swype/input/LanguageList;->getLanguageList()Ljava/util/List;

    move-result-object v28

    .line 486
    .local v28, "languages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v26

    .line 487
    .local v26, "langToDbMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v18

    .line 488
    .local v18, "deprecatedLangToDbMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/nuance/swype/input/DatabaseConfig;->refreshCategoryDbs(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    .line 489
    new-instance v20, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;

    const-string/jumbo v4, "languagelist.xml"

    invoke-static {v4}, Lcom/nuance/swype/input/DatabaseConfig;->foundFileInExternalPath(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;-><init>(Landroid/content/Context;Z)V

    .line 490
    .local v20, "fileDetector":Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;
    invoke-virtual/range {v27 .. v27}, Lcom/nuance/swype/input/LanguageList;->getBuiltinLanguageList()Ljava/util/List;

    move-result-object v13

    .line 493
    .local v13, "builtinLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_2
    :goto_1
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 495
    .local v25, "lang":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 496
    .local v16, "dbsForLang":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-nez v16, :cond_3

    .line 497
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v6, "Language \'%s\' undefined."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v25, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 502
    :cond_3
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 503
    .local v24, "isUpdatingLanguage":Z
    const/16 v23, 0x0

    .line 504
    .local v23, "isLDBAdded":Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 505
    .local v14, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    if-nez v24, :cond_5

    .line 510
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 511
    move-object/from16 v0, v25

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    .line 512
    .local v22, "isBuiltIn":Z
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->fileExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    .line 513
    :goto_3
    if-eqz v4, :cond_5

    if-eqz v22, :cond_4

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->dbFileIsInApk(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->dbFileIsInExternalPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 523
    .end local v22    # "isBuiltIn":Z
    :cond_5
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getType()Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 525
    .local v12, "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 526
    .local v21, "found":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    if-eqz v21, :cond_6

    .line 527
    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v4

    if-nez v4, :cond_4

    .line 535
    :cond_6
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v4

    invoke-virtual {v12, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 536
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getType()Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move-result-object v4

    sget-object v7, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    if-ne v4, v7, :cond_4

    .line 538
    const/16 v23, 0x1

    goto :goto_2

    .line 512
    .end local v12    # "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v21    # "found":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .restart local v22    # "isBuiltIn":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 544
    .end local v14    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v22    # "isBuiltIn":Z
    :cond_8
    if-nez v23, :cond_2

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "_Std"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 548
    .local v15, "dbsForDeprecatedLang":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    const/16 v29, 0x0

    .line 549
    .local v29, "oldLDBExists":Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 550
    .restart local v14    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    sget-object v6, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getType()Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 551
    .restart local v12    # "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-nez v24, :cond_9

    .line 552
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 553
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v6

    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_9

    sget-object v6, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    if-eqz v6, :cond_9

    sget-object v6, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    .line 554
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 555
    const/16 v29, 0x1

    goto :goto_4

    .line 559
    .end local v12    # "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v14    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_a
    if-eqz v15, :cond_12

    if-nez v29, :cond_12

    .line 561
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 562
    .restart local v14    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, "nonUpgradedDbFileName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 564
    .local v17, "deprecatedDB":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    if-nez v24, :cond_e

    .line 570
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 572
    move-object/from16 v0, v25

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    .line 573
    .restart local v22    # "isBuiltIn":Z
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 574
    .local v31, "sdb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual/range {v31 .. v31}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 575
    invoke-static/range {v31 .. v31}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$000(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v5

    .line 576
    move-object/from16 v17, v31

    .line 584
    .end local v31    # "sdb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_d
    :goto_6
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->fileExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x1

    .line 585
    :goto_7
    if-eqz v4, :cond_e

    if-eqz v22, :cond_b

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->dbFileIsInApk(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 596
    .end local v22    # "isBuiltIn":Z
    :cond_e
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getType()Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 598
    .restart local v12    # "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 599
    .restart local v21    # "found":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    if-eqz v21, :cond_f

    .line 600
    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v4

    if-nez v4, :cond_b

    .line 609
    :cond_f
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "add alias db..."

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 610
    new-instance v3, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    invoke-static {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$100(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    move-result-object v4

    .line 611
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v6

    invoke-static {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$200(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$300(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;-><init>(Lcom/nuance/swype/input/DatabaseConfig$DbInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 612
    .local v3, "aliasDb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v4

    invoke-virtual {v12, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 614
    if-eqz v17, :cond_b

    .line 615
    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v12, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 616
    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    goto/16 :goto_5

    .line 578
    .end local v3    # "aliasDb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v12    # "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v21    # "found":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .restart local v22    # "isBuiltIn":Z
    .restart local v31    # "sdb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_10
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual/range {v31 .. v31}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 579
    invoke-static/range {v31 .. v31}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$000(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v5

    .line 580
    move-object/from16 v17, v31

    .line 581
    goto/16 :goto_6

    .line 584
    .end local v31    # "sdb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 624
    .end local v5    # "nonUpgradedDbFileName":Ljava/lang/String;
    .end local v14    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v17    # "deprecatedDB":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v22    # "isBuiltIn":Z
    :cond_12
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 625
    .restart local v14    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    sget-object v6, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getType()Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 628
    .restart local v12    # "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-nez v24, :cond_13

    .line 629
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 630
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v6

    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_13

    sget-object v6, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    if-eqz v6, :cond_13

    sget-object v6, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    .line 632
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 634
    invoke-virtual {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v9

    .line 635
    .local v9, "languageId":I
    new-instance v6, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    invoke-static {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$100(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    move-result-object v7

    sget-object v8, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    .line 636
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 637
    invoke-static {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$200(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v14}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$300(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;-><init>(Lcom/nuance/swype/input/DatabaseConfig$DbInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {v12, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    .line 645
    .end local v9    # "languageId":I
    .end local v12    # "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v14    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v15    # "dbsForDeprecatedLang":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v16    # "dbsForLang":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v23    # "isLDBAdded":Z
    .end local v24    # "isUpdatingLanguage":Z
    .end local v25    # "lang":Ljava/lang/String;
    .end local v29    # "oldLDBExists":Z
    :cond_14
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "begin to delete databases.conf"

    aput-object v8, v6, v7

    invoke-interface {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 647
    const-string/jumbo v4, "databases.conf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 648
    const-string/jumbo v4, "databases.conf"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v30

    .line 649
    .local v30, "out":Ljava/io/OutputStream;
    new-instance v33, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string/jumbo v6, "UTF-8"

    move-object/from16 v0, v30

    invoke-direct {v4, v0, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v6, 0x1000

    move-object/from16 v0, v33

    invoke-direct {v0, v4, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 651
    .local v33, "writer":Ljava/io/Writer;
    :try_start_0
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "write database.conf start."

    aput-object v8, v6, v7

    invoke-interface {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 652
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 653
    .local v19, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/swype/input/DatabaseConfig$DbType;Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    sget-object v7, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v10, "write section: "

    aput-object v10, v8, v4

    const/4 v10, 0x1

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/DatabaseConfig$DbType;

    iget-object v4, v4, Lcom/nuance/swype/input/DatabaseConfig$DbType;->section:Ljava/lang/String;

    aput-object v4, v8, v10

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 654
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v10, "write value: "

    aput-object v10, v7, v8

    const/4 v8, 0x1

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-interface {v4, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 655
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/DatabaseConfig$DbType;

    iget-object v7, v4, Lcom/nuance/swype/input/DatabaseConfig$DbType;->section:Ljava/lang/String;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-static {v7, v4, v0, v1}, Lcom/nuance/swype/input/DatabaseConfig;->writeSection(Ljava/lang/String;Landroid/util/SparseArray;Ljava/io/Writer;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    .line 660
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/swype/input/DatabaseConfig$DbType;Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    :catchall_0
    move-exception v4

    invoke-virtual/range {v33 .. v33}, Ljava/io/Writer;->close()V

    throw v4

    .line 657
    :cond_15
    const/16 v4, 0xa

    :try_start_1
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    .line 658
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "write database.conf done."

    aput-object v8, v6, v7

    invoke-interface {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    invoke-virtual/range {v33 .. v33}, Ljava/io/Writer;->close()V

    .line 661
    return-void
.end method

.method private static checkIfDatabaseNeedsRefresh(Landroid/content/Context;J)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buildDate"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 235
    invoke-static {p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v2

    .line 239
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->readBuildDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "oldBuildDate":Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 243
    .end local v1    # "oldBuildDate":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "ex":Ljava/io/IOException;
    sget-object v2, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1
    move v2, v3

    .line 246
    goto :goto_0

    .line 245
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static clearExternalDataBasePath()V
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->EXTERNAL_LDB_DIRECTORY_ARRAY:[Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method private static extractLanguageIdAndFileFromDatabaseConfig(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    sput-object v10, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    .line 149
    const/4 v8, 0x0

    .line 151
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_0
    const-string/jumbo v10, "databases.conf"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 152
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "file":Ljava/lang/String;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 157
    .local v3, "inLdbSection":Z
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 158
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 160
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x23

    if-eq v10, v11, :cond_0

    .line 164
    const-string/jumbo v10, "[ldb]"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 165
    const/4 v3, 0x1

    .line 166
    goto :goto_0

    .line 169
    :cond_1
    const-string/jumbo v10, "[[hwr_db_template]]"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "[cdb]"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 170
    :cond_2
    const/4 v3, 0x0

    .line 171
    goto :goto_0

    .line 173
    :cond_3
    if-eqz v3, :cond_0

    .line 175
    const-string/jumbo v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "parts":[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x2

    if-lt v10, v11, :cond_0

    .line 177
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 178
    .local v5, "languageId":I
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "languageFile":Ljava/lang/String;
    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "languageId: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " languageFile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 183
    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v10, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 188
    .end local v4    # "languageFile":Ljava/lang/String;
    .end local v5    # "languageId":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v8, v9

    .line 190
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "inLdbSection":Z
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v1, "ex":Ljava/io/IOException;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-interface {v10, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    if-eqz v8, :cond_4

    .line 194
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 201
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_4
    :goto_2
    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "oldLangugeIdAndLdbFileMappingTable: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 204
    return-void

    .line 194
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "file":Ljava/lang/String;
    .restart local v3    # "inLdbSection":Z
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v8, v9

    .line 198
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 196
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-interface {v10, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move-object v8, v9

    .line 199
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 196
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "inLdbSection":Z
    .end local v6    # "line":Ljava/lang/String;
    .restart local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 197
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-interface {v10, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_2

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 193
    :goto_3
    if-eqz v8, :cond_6

    .line 194
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 198
    :cond_6
    :goto_4
    throw v10

    .line 196
    :catch_3
    move-exception v0

    .line 197
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v11, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-interface {v11, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_4

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "file":Ljava/lang/String;
    .restart local v3    # "inLdbSection":Z
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 188
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "inLdbSection":Z
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method protected static filterLanguageDbList(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "langToDbs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .local p1, "languages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    .line 353
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 354
    .local v0, "filtered":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 355
    .local v1, "language":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 356
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-eqz v2, :cond_0

    .line 357
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 360
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    :cond_1
    return-object v0
.end method

.method public static foundFileInExternalPath(Ljava/lang/String;)Z
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 308
    sget-object v3, Lcom/nuance/swype/input/DatabaseConfig;->EXTERNAL_LDB_DIRECTORY_ARRAY:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 309
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 310
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 312
    const/4 v1, 0x1

    .line 317
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    return v1

    .line 308
    .restart local v0    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    const-string/jumbo v0, "databases.conf"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 321
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->deprecatedLanguageDbList:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 322
    sget v0, Lcom/nuance/swype/input/R$xml;->langfiles_deprecated:I

    invoke-static {p0, v0}, Lcom/nuance/swype/input/DatabaseConfig;->parseLanguageFiles(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig;->deprecatedLanguageDbList:Ljava/util/Map;

    .line 324
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->deprecatedLanguageDbList:Ljava/util/Map;

    return-object v0
.end method

.method public static getDeprecatedLanguageLDBID(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 720
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_Std"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 722
    .local v2, "langDBList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-nez v2, :cond_1

    .line 723
    const/4 v0, -0x1

    .line 732
    :cond_0
    :goto_0
    return v0

    .line 725
    :cond_1
    const/4 v0, -0x1

    .line 726
    .local v0, "LdbId":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 727
    .local v1, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 728
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v0

    .line 729
    goto :goto_0
.end method

.method public static getDeprecatedLanguageLDBName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 736
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 737
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_Std"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 738
    .local v2, "langDBList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-nez v2, :cond_0

    .line 739
    const-string/jumbo v3, ""

    .line 749
    :goto_0
    return-object v3

    .line 741
    :cond_0
    const/4 v0, 0x0

    .line 742
    .local v0, "bestMatch":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 743
    .local v1, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 744
    move-object v0, v1

    goto :goto_1

    .line 745
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 746
    :cond_3
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 749
    .end local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static getExternalDatabasePath(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    const-string/jumbo v0, "languagelist.xml"

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->foundFileInExternalPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->EXTERNAL_LDB_DIRECTORY_ARRAY:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "targetLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->languageDbList:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 330
    sget v0, Lcom/nuance/swype/input/R$xml;->langfiles:I

    invoke-static {p0, v0}, Lcom/nuance/swype/input/DatabaseConfig;->parseLanguageFiles(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig;->languageDbList:Ljava/util/Map;

    .line 333
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->languageDbList:Ljava/util/Map;

    .line 334
    invoke-static {v0, p1}, Lcom/nuance/swype/input/DatabaseConfig;->filterLanguageDbList(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->languageDbList:Ljava/util/Map;

    goto :goto_0
.end method

.method public static getLanguageFlavor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 338
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->languageFlavorList:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 339
    sget v0, Lcom/nuance/swype/input/R$xml;->langflavors:I

    invoke-static {p0, v0}, Lcom/nuance/swype/input/DatabaseConfig;->parseLanguageFlavors(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig;->languageFlavorList:Ljava/util/Map;

    .line 341
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->languageFlavorList:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 342
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->languageFlavorList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 344
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOldLanguageIdAndFileMappingTable(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->extractLanguageIdAndFileFromDatabaseConfig(Landroid/content/Context;)V

    .line 142
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static isPossibleDeprecatedLanguage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 714
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_Std"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 716
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUsingDeprecatedLanguageLDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v8, 0x0

    .line 665
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    .line 666
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_Std"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 667
    if-nez v7, :cond_0

    move v5, v8

    .line 710
    :goto_0
    return v5

    .line 670
    :cond_0
    sget-object v7, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v9, v13, [Ljava/lang/Object;

    const-string/jumbo v10, "isUsingDeprecatedLanguageLDB...enter.."

    aput-object v10, v9, v8

    invoke-interface {v7, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 671
    const/4 v5, 0x0

    .line 672
    .local v5, "returnVal":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v6, "targetLanguage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-static {p0, v6}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 675
    .local v4, "langToDbMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    sget-object v7, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    if-nez v7, :cond_1

    .line 677
    const/4 v7, 0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-static {p0, v7, v9}, Lcom/nuance/swype/input/DatabaseConfig;->build(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :cond_1
    :goto_1
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 683
    .local v1, "dbsForLang":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-eqz v1, :cond_5

    .line 684
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 685
    .local v0, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getType()Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move-result-object v7

    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    if-ne v7, v10, :cond_2

    .line 692
    sget-object v7, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    invoke-virtual {v7, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 694
    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 695
    .local v3, "found":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    if-eqz v3, :cond_2

    .line 696
    sget-object v7, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v10, v13, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "isUsingDeprecatedLanguageLDB...db name in configMap.."

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$000(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-interface {v7, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 697
    sget-object v7, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v10, v13, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "isUsingDeprecatedLanguageLDB...db name in Language DB list.."

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$000(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-interface {v7, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 698
    invoke-virtual {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 699
    :cond_4
    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$000(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$000(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$000(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "Std_"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 700
    const/4 v5, 0x1

    .line 701
    sget-object v7, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v9, v13, [Ljava/lang/Object;

    const-string/jumbo v10, "isUsingDeprecatedLanguageLDB...true"

    aput-object v10, v9, v8

    invoke-interface {v7, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 708
    .end local v0    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v3    # "found":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_5
    sget-object v7, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v9, v13, [Ljava/lang/Object;

    const-string/jumbo v10, "isUsingDeprecatedLanguageLDB...out.."

    aput-object v10, v9, v8

    invoke-interface {v7, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 678
    .end local v1    # "dbsForLang":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    :catch_0
    move-exception v2

    .line 679
    .local v2, "ex":Ljava/io/IOException;
    sget-object v7, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public static mockDeprecatedLanguageID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deprecatedLangId"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 753
    const/4 v5, 0x0

    .line 754
    .local v5, "isDeprecatedLanguage":Z
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 755
    .local v0, "databasesDeprecated":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    const/4 v2, 0x0

    .line 756
    .local v2, "deprecatedLangName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 757
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 758
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 759
    .local v1, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 760
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v10

    .line 1025
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    .line 760
    invoke-virtual {p1, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 761
    const/4 v5, 0x1

    .line 762
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "deprecatedLangName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 767
    .end local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .restart local v2    # "deprecatedLangName":Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_0

    .line 771
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    :cond_3
    if-nez v5, :cond_5

    .line 799
    .end local p1    # "deprecatedLangId":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object p1

    .line 774
    .restart local p1    # "deprecatedLangId":Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "_Std"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 775
    .local v4, "index":I
    const-string/jumbo v7, ""

    .line 776
    .local v7, "supportedLanguageName":Ljava/lang/String;
    const/4 v8, -0x1

    if-eq v4, v8, :cond_6

    .line 777
    invoke-virtual {v2, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 778
    sget-object v8, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "supportedLanguageName: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 780
    :cond_6
    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 784
    move-object v6, p1

    .line 785
    .local v6, "supportedLanguageId":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    .line 786
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 787
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 788
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 789
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 790
    .restart local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 791
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v8

    .line 2025
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .end local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    :cond_9
    move-object p1, v6

    .line 799
    goto :goto_0
.end method

.method protected static parseLanguageFiles(Landroid/content/Context;I)Ljava/util/Map;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 368
    .local v11, "xmlparser":Landroid/content/res/XmlResourceParser;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 370
    .local v9, "langToDbs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    const/4 v7, 0x0

    .line 371
    .local v7, "currentLangName":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    .local v8, "event":I
    const/4 v1, 0x1

    if-eq v8, v1, :cond_4

    .line 372
    const/4 v1, 0x2

    if-ne v8, v1, :cond_3

    .line 373
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 374
    .local v10, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 375
    .local v2, "dbInfo":Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    const-string/jumbo v1, "language"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    const/4 v1, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {v11, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v7, :cond_0

    .line 382
    const/4 v1, 0x0

    const-string/jumbo v5, "file"

    invoke-interface {v11, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "filename":Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v5, "id"

    invoke-interface {v11, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 384
    .local v4, "id":I
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v12, v0

    new-instance v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;-><init>(Lcom/nuance/swype/input/DatabaseConfig$DbInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 398
    .end local v2    # "dbInfo":Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "id":I
    .end local v8    # "event":I
    .end local v10    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v1

    if-eqz v11, :cond_1

    .line 399
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 402
    :cond_1
    :goto_2
    return-object v9

    .line 379
    .restart local v2    # "dbInfo":Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    .restart local v8    # "event":I
    .restart local v10    # "tag":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v10}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->fromTag(Ljava/lang/String;)Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    move-result-object v2

    goto :goto_1

    .line 386
    .end local v2    # "dbInfo":Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    .end local v10    # "tag":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x3

    if-ne v8, v1, :cond_0

    .line 387
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 388
    .restart local v10    # "tag":Ljava/lang/String;
    const-string/jumbo v1, "language"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const/4 v7, 0x0

    goto :goto_0

    .line 398
    .end local v10    # "tag":Ljava/lang/String;
    :cond_4
    if-eqz v11, :cond_1

    .line 399
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 398
    .end local v8    # "event":I
    :catch_1
    move-exception v1

    if-eqz v11, :cond_1

    .line 399
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 398
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_5

    .line 399
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    throw v1
.end method

.method protected static parseLanguageFlavors(Landroid/content/Context;I)Ljava/util/Map;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 407
    .local v5, "xmlparser":Landroid/content/res/XmlResourceParser;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 410
    .local v3, "langFlavors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, "event":I
    const/4 v6, 0x1

    if-eq v1, v6, :cond_2

    .line 411
    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    .line 412
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 413
    .local v4, "tag":Ljava/lang/String;
    const-string/jumbo v6, "language"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 414
    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    invoke-interface {v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "currentLangName":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v7, "flavor"

    invoke-interface {v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "flavor":Ljava/lang/String;
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 427
    .end local v0    # "currentLangName":Ljava/lang/String;
    .end local v1    # "event":I
    .end local v2    # "flavor":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v6

    if-eqz v5, :cond_1

    .line 428
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 431
    :cond_1
    :goto_1
    return-object v3

    .line 427
    .restart local v1    # "event":I
    :cond_2
    if-eqz v5, :cond_1

    .line 428
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 427
    .end local v1    # "event":I
    :catch_1
    move-exception v6

    if-eqz v5, :cond_1

    .line 428
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 427
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_3

    .line 428
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v6
.end method

.method protected static readBuildDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 250
    const-string/jumbo v3, "_data_extract.txt"

    invoke-virtual {p0, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 251
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 253
    .local v1, "reader":Ljava/io/Reader;
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v1    # "reader":Ljava/io/Reader;
    .local v2, "reader":Ljava/io/Reader;
    :try_start_1
    invoke-static {v2}, Lcom/nuance/swype/input/DatabaseConfig;->readBuildDate(Ljava/io/Reader;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 260
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 262
    .end local v2    # "reader":Ljava/io/Reader;
    .restart local v1    # "reader":Ljava/io/Reader;
    :goto_0
    return-object v3

    .end local v1    # "reader":Ljava/io/Reader;
    .restart local v2    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/Reader;
    .restart local v1    # "reader":Ljava/io/Reader;
    move-object v3, v4

    goto :goto_0

    .line 258
    :catch_1
    move-exception v3

    :goto_1
    if-eqz v1, :cond_0

    .line 260
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    move-object v3, v4

    .line 262
    goto :goto_0

    :catch_2
    move-exception v3

    move-object v3, v4

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 260
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 262
    :cond_1
    throw v3

    :catch_3
    move-exception v3

    move-object v3, v4

    goto :goto_0

    .line 258
    .end local v1    # "reader":Ljava/io/Reader;
    .restart local v2    # "reader":Ljava/io/Reader;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/Reader;
    .restart local v1    # "reader":Ljava/io/Reader;
    goto :goto_2

    .end local v1    # "reader":Ljava/io/Reader;
    .restart local v2    # "reader":Ljava/io/Reader;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/Reader;
    .restart local v1    # "reader":Ljava/io/Reader;
    goto :goto_1
.end method

.method protected static readBuildDate(Ljava/io/Reader;)Ljava/lang/String;
    .locals 3
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 272
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static refreshCategoryDbs(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "langToDbs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    new-instance v7, Lcom/nuance/swype/input/CategoryDBList;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v1}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;Z)V

    .line 440
    .local v7, "cdb":Lcom/nuance/swype/input/CategoryDBList;
    invoke-virtual {v7}, Lcom/nuance/swype/input/CategoryDBList;->getAvailableCatDbList()Ljava/util/Map;

    move-result-object v9

    .line 441
    .local v9, "cdbs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 442
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 444
    .local v15, "languageName":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 445
    .local v8, "cdbEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 446
    .local v14, "lang":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 447
    .local v16, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 449
    .local v17, "st":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, "filename":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v4

    .line 451
    .local v4, "id":I
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 452
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 453
    .local v11, "dbs":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    const/4 v13, 0x0

    .line 454
    .local v13, "isFound":Z
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 455
    .local v10, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v10}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isCatDB()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v10}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 456
    const/4 v13, 0x1

    .line 460
    .end local v10    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_4
    if-nez v13, :cond_2

    .line 461
    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "addCategoryDbFiles... add cdb filename: "

    aput-object v6, v2, v5

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " id: "

    aput-object v6, v2, v5

    const/4 v5, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 462
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ljava/util/List;

    new-instance v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    const-string/jumbo v2, "cdb"

    invoke-static {v2}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->fromTag(Ljava/lang/String;)Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;-><init>(Lcom/nuance/swype/input/DatabaseConfig$DbInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 470
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "id":I
    .end local v8    # "cdbEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v11    # "dbs":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .end local v13    # "isFound":Z
    .end local v14    # "lang":Ljava/lang/String;
    .end local v15    # "languageName":Ljava/lang/String;
    .end local v16    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "st":Ljava/lang/String;
    :cond_5
    return-object p1
.end method

.method public static refreshDatabaseConfig(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buildDate"    # J

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->isLoadExternalLDBEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-static {}, Lcom/nuance/swype/input/DatabaseConfig;->clearExternalDataBasePath()V

    .line 121
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/DatabaseConfig;->checkIfDatabaseNeedsRefresh(Landroid/content/Context;J)Z

    move-result v1

    .line 122
    if-eqz v1, :cond_1

    .line 124
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->extractLanguageIdAndFileFromDatabaseConfig(Landroid/content/Context;)V

    .line 127
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v2}, Lcom/nuance/swype/input/DatabaseConfig;->build(Landroid/content/Context;ZLjava/lang/String;)V

    .line 128
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/DatabaseConfig;->writeBuildDate(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized refreshDatabaseConfigInJNI(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    const-class v1, Lcom/nuance/swype/input/DatabaseConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "refreshDatabaseConfigInJNI..."

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 226
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v0

    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->refreshDatabaseConfigFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit v1

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static removeIncompatibleDBFiles(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 945
    const/4 v5, 0x0

    .line 946
    .local v5, "languageList":[Ljava/lang/String;
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 947
    const-string/jumbo v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 949
    const/4 v2, 0x0

    .line 950
    .local v2, "fileDeleted":Z
    array-length v10, v5

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_6

    aget-object v6, v5, v9

    .line 951
    .local v6, "languageName":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .local v7, "targetLanguage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    invoke-static {p0, v7}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 955
    .local v4, "languageDB":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-eqz v4, :cond_4

    .line 959
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 963
    invoke-virtual {v8}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 964
    .local v3, "fileName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v12, "/"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, "absoluteFileName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 967
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    .line 968
    if-nez v8, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 969
    :goto_2
    goto :goto_1

    .line 968
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 971
    .end local v0    # "absoluteFileName":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".mdf"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 972
    .restart local v0    # "absoluteFileName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 973
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    .line 974
    if-nez v8, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    const/4 v2, 0x1

    .line 950
    .end local v0    # "absoluteFileName":Ljava/lang/String;
    :cond_4
    :goto_3
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto/16 :goto_0

    .line 974
    .restart local v0    # "absoluteFileName":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 977
    .end local v0    # "absoluteFileName":Ljava/lang/String;
    .end local v4    # "languageDB":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v6    # "languageName":Ljava/lang/String;
    .end local v7    # "targetLanguage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    if-nez v2, :cond_8

    .line 1000
    .end local v2    # "fileDeleted":Z
    :cond_7
    :goto_4
    return-void

    .line 983
    :cond_8
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/nuance/swype/input/DatabaseConfig;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 986
    sget-object v8, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    if-eqz v8, :cond_9

    .line 987
    sget-object v8, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 988
    const/4 v8, 0x0

    sput-object v8, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    .line 990
    :cond_9
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->getOldLanguageIdAndFileMappingTable(Landroid/content/Context;)Landroid/util/SparseArray;

    .line 992
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 993
    .local v1, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->refreshInputMethods()V

    .line 996
    if-eqz v5, :cond_7

    .line 997
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v1, v8}, Lcom/nuance/swype/input/IMEApplication;->onUpdateLanguage(Ljava/lang/String;)V

    .line 998
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v8

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Lcom/nuance/swype/input/InputMethods;->getLanguageIdIntByLanguageName(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/nuance/swype/connect/Connect;->removeInvalidatedLanguage(I)V

    goto :goto_4
.end method

.method public static declared-synchronized updateLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 212
    const-class v2, Lcom/nuance/swype/input/DatabaseConfig;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/nuance/swype/input/DatabaseConfig;->build(Landroid/content/Context;ZLjava/lang/String;)V

    .line 214
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v1

    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->refreshDatabaseConfigFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :goto_0
    monitor-exit v2

    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected static writeBuildDate(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buildDate"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    const-string/jumbo v2, "_data_extract.txt"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 282
    .local v0, "out":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 284
    .local v1, "writer":Ljava/io/Writer;
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/nuance/swype/input/DatabaseConfig;->writeBuildDate(Ljava/io/Writer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v2
.end method

.method protected static writeBuildDate(Ljava/io/Writer;J)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "buildDate"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method private static writeSection(Ljava/lang/String;Landroid/util/SparseArray;Ljava/io/Writer;Landroid/content/Context;)V
    .locals 10
    .param p0, "tag"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;",
            ">;",
            "Ljava/io/Writer;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xa

    .line 805
    invoke-virtual {p2, v6}, Ljava/io/Writer;->write(I)V

    .line 806
    const/16 v3, 0x5b

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    .line 807
    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 808
    const/16 v3, 0x5d

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    .line 809
    invoke-virtual {p2, v6}, Ljava/io/Writer;->write(I)V

    .line 811
    const/4 v1, 0x0

    .local v1, "index":I
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 812
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 813
    .local v0, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 814
    sget-object v3, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "id: "

    aput-object v5, v4, v7

    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 815
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    .line 816
    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 817
    sget-object v3, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "name: "

    aput-object v5, v4, v7

    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 818
    invoke-virtual {p2, v6}, Ljava/io/Writer;->write(I)V

    .line 811
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 820
    .end local v0    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_0
    return-void
.end method
