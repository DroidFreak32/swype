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
    .locals 1

    .prologue
    .line 43
    const-string v0, "DatabaseConfig"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 44
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static build(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 39
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "refreshAllDatabase"    # Z
    .param p2, "languageToUpdate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "build...refreshAllDatabase.."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 434
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    if-nez v4, :cond_0

    .line 435
    new-instance v4, Ljava/util/EnumMap;

    const-class v6, Lcom/nuance/swype/input/DatabaseConfig$DbType;

    invoke-direct {v4, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v4, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    .line 437
    :cond_0
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->clear()V

    .line 438
    invoke-static {}, Lcom/nuance/swype/input/DatabaseConfig$DbType;->values()[Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move-result-object v12

    .local v12, "arr$":[Lcom/nuance/swype/input/DatabaseConfig$DbType;
    array-length v0, v12

    move/from16 v33, v0

    .local v33, "len$":I
    const/16 v23, 0x0

    .local v23, "i$":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v33

    if-ge v0, v1, :cond_1

    aget-object v37, v12, v23

    .line 439
    .local v37, "type":Lcom/nuance/swype/input/DatabaseConfig$DbType;
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v4, v0, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 441
    .end local v37    # "type":Lcom/nuance/swype/input/DatabaseConfig$DbType;
    :cond_1
    new-instance v31, Lcom/nuance/swype/input/LanguageList;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;Z)V

    .line 442
    .local v31, "languageList":Lcom/nuance/swype/input/LanguageList;
    invoke-virtual/range {v31 .. v31}, Lcom/nuance/swype/input/LanguageList;->getLanguageList()Ljava/util/List;

    move-result-object v32

    .line 443
    .local v32, "languages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v30

    .line 444
    .local v30, "langToDbMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v19

    .line 445
    .local v19, "deprecatedLangToDbMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/nuance/swype/input/DatabaseConfig;->refreshCategoryDbs(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    .line 446
    new-instance v21, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;-><init>(Landroid/content/Context;)V

    .line 447
    .local v21, "fileDetector":Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;
    invoke-virtual/range {v31 .. v31}, Lcom/nuance/swype/input/LanguageList;->getBuiltinLanguageList()Ljava/util/List;

    move-result-object v14

    .line 450
    .local v14, "builtinLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .end local v23    # "i$":I
    :cond_2
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 452
    .local v29, "lang":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    .line 453
    .local v17, "dbsForLang":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-nez v17, :cond_3

    .line 454
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "Language \'%s\' undefined."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v29, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 459
    :cond_3
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    .line 460
    .local v28, "isUpdatingLanguage":Z
    const/16 v27, 0x0

    .line 461
    .local v27, "isLDBAdded":Z
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 462
    .local v15, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    if-nez v28, :cond_5

    .line 467
    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 468
    move-object/from16 v0, v29

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    .line 469
    .local v26, "isBuiltIn":Z
    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->fileExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    .line 470
    :goto_3
    if-eqz v4, :cond_5

    if-eqz v26, :cond_4

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->dbFileIsInApk(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 471
    .end local v26    # "isBuiltIn":Z
    :cond_5
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getType()Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 482
    .local v13, "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 483
    .local v22, "found":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    if-eqz v22, :cond_6

    .line 484
    invoke-virtual/range {v22 .. v22}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v4

    if-nez v4, :cond_4

    .line 486
    :cond_6
    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v4

    invoke-virtual {v13, v4, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 493
    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getType()Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move-result-object v4

    sget-object v6, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    if-ne v4, v6, :cond_4

    .line 495
    const/16 v27, 0x1

    goto :goto_2

    .line 469
    .end local v13    # "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v22    # "found":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .restart local v26    # "isBuiltIn":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 501
    .end local v15    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v26    # "isBuiltIn":Z
    :cond_8
    if-nez v27, :cond_2

    .line 503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_Std"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 505
    .local v16, "dbsForDeprecatedLang":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    const/16 v34, 0x0

    .line 506
    .local v34, "oldLDBExists":Z
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_9
    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 507
    .restart local v15    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getType()Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 508
    .restart local v13    # "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-nez v28, :cond_9

    .line 509
    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    if-eqz v4, :cond_9

    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 512
    const/16 v34, 0x1

    goto :goto_4

    .line 516
    .end local v13    # "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v15    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_a
    if-eqz v16, :cond_12

    if-nez v34, :cond_12

    .line 518
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .end local v24    # "i$":Ljava/util/Iterator;
    :cond_b
    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 519
    .restart local v15    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 520
    .local v5, "nonUpgradedDbFileName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 521
    .local v18, "deprecatedDB":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    if-nez v28, :cond_e

    .line 527
    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 529
    move-object/from16 v0, v29

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    .line 530
    .restart local v26    # "isBuiltIn":Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 531
    .local v36, "sdb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual/range {v36 .. v36}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 532
    invoke-static/range {v36 .. v36}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$000(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v5

    .line 533
    move-object/from16 v18, v36

    .line 541
    .end local v36    # "sdb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_d
    :goto_6
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->fileExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x1

    .line 542
    :goto_7
    if-eqz v4, :cond_e

    if-eqz v26, :cond_b

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/nuance/swype/input/DatabaseConfig$DbFileDetector;->dbFileIsInApk(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 543
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "isBuiltIn":Z
    :cond_e
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getType()Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 555
    .restart local v13    # "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 556
    .restart local v22    # "found":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    if-eqz v22, :cond_f

    .line 557
    invoke-virtual/range {v22 .. v22}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v4

    if-nez v4, :cond_b

    .line 560
    :cond_f
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "add alias db..."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 567
    new-instance v3, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    invoke-static {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$100(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    move-result-object v4

    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v6

    invoke-static {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$200(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$300(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;-><init>(Lcom/nuance/swype/input/DatabaseConfig$DbInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 569
    .local v3, "aliasDb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v4

    invoke-virtual {v13, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 571
    if-eqz v18, :cond_b

    .line 572
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v13, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 573
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    goto/16 :goto_5

    .line 535
    .end local v3    # "aliasDb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v13    # "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v22    # "found":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v26    # "isBuiltIn":Z
    .restart local v36    # "sdb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_10
    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {v36 .. v36}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 536
    invoke-static/range {v36 .. v36}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$000(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v5

    .line 537
    move-object/from16 v18, v36

    .line 538
    goto/16 :goto_6

    .line 541
    .end local v36    # "sdb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 581
    .end local v5    # "nonUpgradedDbFileName":Ljava/lang/String;
    .end local v15    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v18    # "deprecatedDB":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "isBuiltIn":Z
    .restart local v24    # "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_13
    :goto_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 582
    .restart local v15    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getType()Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 585
    .restart local v13    # "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-nez v28, :cond_13

    .line 586
    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_13

    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    if-eqz v4, :cond_13

    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 591
    invoke-virtual {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v9

    .line 592
    .local v9, "languageId":I
    new-instance v6, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    invoke-static {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$100(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    move-result-object v7

    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$200(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v15}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$300(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;-><init>(Lcom/nuance/swype/input/DatabaseConfig$DbInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    .line 602
    .end local v9    # "languageId":I
    .end local v13    # "arrayOfDbs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v15    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v16    # "dbsForDeprecatedLang":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v17    # "dbsForLang":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v27    # "isLDBAdded":Z
    .end local v28    # "isUpdatingLanguage":Z
    .end local v29    # "lang":Ljava/lang/String;
    .end local v34    # "oldLDBExists":Z
    :cond_14
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "begin to delete databases.conf"

    invoke-virtual {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 604
    const-string v4, "databases.conf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 605
    const-string v4, "databases.conf"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v35

    .line 606
    .local v35, "out":Ljava/io/OutputStream;
    new-instance v38, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    move-object/from16 v0, v35

    invoke-direct {v4, v0, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v6, 0x1000

    move-object/from16 v0, v38

    invoke-direct {v0, v4, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 608
    .local v38, "writer":Ljava/io/Writer;
    :try_start_0
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "write database.conf start."

    invoke-virtual {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 609
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 610
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/swype/input/DatabaseConfig$DbType;Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    sget-object v6, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v7, "write section: "

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/DatabaseConfig$DbType;

    iget-object v4, v4, Lcom/nuance/swype/input/DatabaseConfig$DbType;->section:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 611
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "write value: "

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 612
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/DatabaseConfig$DbType;

    iget-object v6, v4, Lcom/nuance/swype/input/DatabaseConfig$DbType;->section:Ljava/lang/String;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-static {v6, v4, v0, v1}, Lcom/nuance/swype/input/DatabaseConfig;->writeSection(Ljava/lang/String;Landroid/util/SparseArray;Ljava/io/Writer;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    .line 617
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/swype/input/DatabaseConfig$DbType;Landroid/util/SparseArray<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .end local v23    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    invoke-virtual/range {v38 .. v38}, Ljava/io/Writer;->close()V

    throw v4

    .line 614
    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_15
    const/16 v4, 0xa

    :try_start_1
    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    .line 615
    sget-object v4, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "write database.conf done."

    invoke-virtual {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    invoke-virtual/range {v38 .. v38}, Ljava/io/Writer;->close()V

    .line 618
    return-void
.end method

.method private static checkIfDatabaseNeedsRefresh(Landroid/content/Context;J)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buildDate"    # J

    .prologue
    const/4 v2, 0x1

    .line 218
    :try_start_0
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->readBuildDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "oldBuildDate":Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 225
    .end local v1    # "oldBuildDate":Ljava/lang/String;
    :goto_0
    return v2

    .line 219
    .restart local v1    # "oldBuildDate":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 222
    .end local v1    # "oldBuildDate":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "ex":Ljava/io/IOException;
    sget-object v3, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 220
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private static extractLanguageIdAndFileFromDatabaseConfig(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 139
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    sput-object v10, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    .line 140
    const/4 v8, 0x0

    .line 142
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_0
    const-string v10, "databases.conf"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "file":Ljava/lang/String;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 148
    .local v3, "inLdbSection":Z
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 149
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 151
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x23

    if-eq v10, v11, :cond_0

    .line 152
    const-string v10, "[ldb]"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 156
    const/4 v3, 0x1

    .line 157
    goto :goto_0

    .line 160
    :cond_1
    const-string v10, "[[hwr_db_template]]"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "[cdb]"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 161
    :cond_2
    const/4 v3, 0x0

    .line 162
    goto :goto_0

    .line 164
    :cond_3
    if-eqz v3, :cond_0

    .line 166
    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "parts":[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x2

    if-lt v10, v11, :cond_0

    .line 168
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 169
    .local v5, "languageId":I
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "languageFile":Ljava/lang/String;
    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "languageId: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " languageFile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 174
    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v10, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 179
    .end local v4    # "languageFile":Ljava/lang/String;
    .end local v5    # "languageId":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v8, v9

    .line 181
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "inLdbSection":Z
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v1, "ex":Ljava/io/IOException;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v10, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    if-eqz v8, :cond_4

    .line 185
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 192
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_4
    :goto_2
    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "oldLangugeIdAndLdbFileMappingTable: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 194
    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 195
    return-void

    .line 184
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

    .line 189
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 187
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v10, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move-object v8, v9

    .line 190
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "inLdbSection":Z
    .end local v6    # "line":Ljava/lang/String;
    .restart local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 188
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v10, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_2

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 184
    :goto_3
    if-eqz v8, :cond_6

    .line 185
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 189
    :cond_6
    :goto_4
    throw v10

    .line 187
    :catch_3
    move-exception v0

    .line 188
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v11, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v11, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_4

    .line 183
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

    .line 179
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
    .line 309
    .local p0, "langToDbs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .local p1, "languages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 311
    .local v0, "filtered":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 312
    .local v2, "language":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 313
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-eqz v3, :cond_0

    .line 314
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 317
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    :cond_1
    return-object v0
.end method

.method public static getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    const-string v0, "databases.conf"

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
    .line 278
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->deprecatedLanguageDbList:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 279
    sget v0, Lcom/nuance/swype/input/R$xml;->langfiles_deprecated:I

    invoke-static {p0, v0}, Lcom/nuance/swype/input/DatabaseConfig;->parseLanguageFiles(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig;->deprecatedLanguageDbList:Ljava/util/Map;

    .line 281
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->deprecatedLanguageDbList:Ljava/util/Map;

    return-object v0
.end method

.method public static getDeprecatedLanguageLDBID(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 681
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Std"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 682
    .local v3, "langDBList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-nez v3, :cond_1

    .line 683
    const/4 v0, -0x1

    .line 692
    :cond_0
    :goto_0
    return v0

    .line 685
    :cond_1
    const/4 v0, -0x1

    .line 686
    .local v0, "LdbId":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 687
    .local v1, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 688
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v0

    .line 689
    goto :goto_0
.end method

.method public static getDeprecatedLanguageLDBName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 696
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 697
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Std"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 698
    .local v3, "langDBList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-nez v3, :cond_0

    .line 699
    const-string v4, ""

    .line 709
    :goto_0
    return-object v4

    .line 701
    :cond_0
    const/4 v0, 0x0

    .line 702
    .local v0, "bestMatch":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 703
    .local v1, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 704
    move-object v0, v1

    goto :goto_1

    .line 705
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 706
    :cond_3
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 709
    .end local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    const-string v4, ""

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
    .line 286
    .local p1, "targetLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->languageDbList:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 287
    sget v0, Lcom/nuance/swype/input/R$xml;->langfiles:I

    invoke-static {p0, v0}, Lcom/nuance/swype/input/DatabaseConfig;->parseLanguageFiles(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig;->languageDbList:Ljava/util/Map;

    .line 290
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->languageDbList:Ljava/util/Map;

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
    .line 295
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->languageFlavorList:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 296
    sget v0, Lcom/nuance/swype/input/R$xml;->langflavors:I

    invoke-static {p0, v0}, Lcom/nuance/swype/input/DatabaseConfig;->parseLanguageFlavors(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/DatabaseConfig;->languageFlavorList:Ljava/util/Map;

    .line 298
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->languageFlavorList:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 299
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->languageFlavorList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
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
    .line 129
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->extractLanguageIdAndFileFromDatabaseConfig(Landroid/content/Context;)V

    .line 133
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static isPossibleDeprecatedLanguage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 671
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Std"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 673
    if-nez v0, :cond_0

    .line 674
    const/4 v0, 0x0

    .line 676
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isUsingDeprecatedLanguageLDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 622
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v8

    .line 623
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_Std"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 624
    if-nez v8, :cond_0

    .line 625
    const/4 v6, 0x0

    .line 667
    :goto_0
    return v6

    .line 627
    :cond_0
    sget-object v8, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v9, "isUsingDeprecatedLanguageLDB...enter.."

    invoke-virtual {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 628
    const/4 v6, 0x0

    .line 629
    .local v6, "returnVal":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v7, "targetLanguage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    invoke-static {p0, v7}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 632
    .local v5, "langToDbMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    sget-object v8, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    if-nez v8, :cond_1

    .line 634
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-static {p0, v8, v9}, Lcom/nuance/swype/input/DatabaseConfig;->build(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :cond_1
    :goto_1
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 640
    .local v1, "dbsForLang":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-eqz v1, :cond_5

    .line 641
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 642
    .local v0, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getType()Lcom/nuance/swype/input/DatabaseConfig$DbType;

    move-result-object v8

    sget-object v9, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    if-ne v8, v9, :cond_2

    .line 643
    sget-object v8, Lcom/nuance/swype/input/DatabaseConfig;->configMap:Ljava/util/EnumMap;

    sget-object v9, Lcom/nuance/swype/input/DatabaseConfig$DbType;->LDB:Lcom/nuance/swype/input/DatabaseConfig$DbType;

    invoke-virtual {v8, v9}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 651
    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 652
    .local v3, "found":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    if-eqz v3, :cond_2

    .line 653
    sget-object v8, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isUsingDeprecatedLanguageLDB...db name in configMap.."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$000(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 654
    sget-object v8, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isUsingDeprecatedLanguageLDB...db name in Language DB list.."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$000(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 655
    invoke-virtual {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isRegularLDB()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 656
    :cond_4
    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$000(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$000(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->access$000(Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Std_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 657
    const/4 v6, 0x1

    .line 658
    sget-object v8, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v9, "isUsingDeprecatedLanguageLDB...true"

    invoke-virtual {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 665
    .end local v0    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v3    # "found":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    sget-object v8, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v9, "isUsingDeprecatedLanguageLDB...out.."

    invoke-virtual {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 635
    .end local v1    # "dbsForLang":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    :catch_0
    move-exception v2

    .line 636
    .local v2, "ex":Ljava/io/IOException;
    sget-object v8, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public static mockDeprecatedLanguageID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deprecatedLangId"    # Ljava/lang/String;

    .prologue
    .line 713
    const/4 v7, 0x0

    .line 714
    .local v7, "isDeprecatedLanguage":Z
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 715
    .local v0, "databasesDeprecated":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    const/4 v2, 0x0

    .line 716
    .local v2, "deprecatedLangName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 717
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 718
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 719
    .local v1, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 720
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 721
    const/4 v7, 0x1

    .line 722
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "deprecatedLangName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 727
    .end local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .restart local v2    # "deprecatedLangName":Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_0

    .line 728
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    if-nez v7, :cond_5

    .line 759
    .end local p1    # "deprecatedLangId":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object p1

    .line 734
    .restart local p1    # "deprecatedLangId":Ljava/lang/String;
    :cond_5
    const-string v10, "_Std"

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 735
    .local v6, "index":I
    const-string v9, ""

    .line 736
    .local v9, "supportedLanguageName":Ljava/lang/String;
    const/4 v10, -0x1

    if-eq v6, v10, :cond_6

    .line 737
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 738
    sget-object v10, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "supportedLanguageName: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 740
    :cond_6
    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 744
    move-object v8, p1

    .line 745
    .local v8, "supportedLanguageId":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {p0, v10}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v10

    .line 746
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 747
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 748
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 749
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 750
    .restart local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 751
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .end local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    :cond_9
    move-object p1, v8

    .line 759
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
    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 325
    .local v11, "xmlparser":Landroid/content/res/XmlResourceParser;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v9, "langToDbs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    const/4 v7, 0x0

    .line 328
    .local v7, "currentLangName":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    .local v8, "event":I
    const/4 v1, 0x1

    if-eq v8, v1, :cond_4

    .line 329
    const/4 v1, 0x2

    if-ne v8, v1, :cond_3

    .line 330
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 331
    .local v10, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 332
    .local v2, "dbInfo":Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    const-string v1, "language"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    const/4 v1, 0x0

    const-string v5, "name"

    invoke-interface {v11, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v7, :cond_0

    .line 339
    const/4 v1, 0x0

    const-string v5, "file"

    invoke-interface {v11, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "filename":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v5, "id"

    invoke-interface {v11, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 341
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

    .line 350
    .end local v2    # "dbInfo":Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "id":I
    .end local v8    # "event":I
    .end local v10    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 355
    if-eqz v11, :cond_1

    .line 356
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 359
    :cond_1
    :goto_2
    return-object v9

    .line 336
    .restart local v2    # "dbInfo":Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    .restart local v8    # "event":I
    .restart local v10    # "tag":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v10}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->fromTag(Ljava/lang/String;)Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    move-result-object v2

    goto :goto_1

    .line 343
    .end local v2    # "dbInfo":Lcom/nuance/swype/input/DatabaseConfig$DbInfo;
    .end local v10    # "tag":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x3

    if-ne v8, v1, :cond_0

    .line 344
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 345
    .restart local v10    # "tag":Ljava/lang/String;
    const-string v1, "language"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    const/4 v7, 0x0

    goto :goto_0

    .line 355
    .end local v10    # "tag":Ljava/lang/String;
    :cond_4
    if-eqz v11, :cond_1

    .line 356
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 352
    .end local v8    # "event":I
    :catch_1
    move-exception v1

    .line 355
    if-eqz v11, :cond_1

    .line 356
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 355
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_5

    .line 356
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
    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 364
    .local v5, "xmlparser":Landroid/content/res/XmlResourceParser;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 366
    .local v3, "langFlavors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 367
    .local v0, "currentLangName":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, "event":I
    const/4 v6, 0x1

    if-eq v1, v6, :cond_2

    .line 368
    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    .line 369
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "tag":Ljava/lang/String;
    const-string v6, "language"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 371
    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    const/4 v6, 0x0

    const-string v7, "flavor"

    invoke-interface {v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "flavor":Ljava/lang/String;
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 379
    .end local v1    # "event":I
    .end local v2    # "flavor":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 384
    if-eqz v5, :cond_1

    .line 385
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 388
    :cond_1
    :goto_1
    return-object v3

    .line 384
    .restart local v1    # "event":I
    :cond_2
    if-eqz v5, :cond_1

    .line 385
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 381
    .end local v1    # "event":I
    :catch_1
    move-exception v6

    .line 384
    if-eqz v5, :cond_1

    .line 385
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 384
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_3

    .line 385
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

    .line 229
    const-string v3, "_data_extract.txt"

    invoke-virtual {p0, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 230
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 232
    .local v1, "reader":Ljava/io/Reader;
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .end local v1    # "reader":Ljava/io/Reader;
    .local v2, "reader":Ljava/io/Reader;
    :try_start_1
    invoke-static {v2}, Lcom/nuance/swype/input/DatabaseConfig;->readBuildDate(Ljava/io/Reader;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 237
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 241
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

    .line 235
    :catch_1
    move-exception v3

    :goto_1
    if-eqz v1, :cond_0

    .line 239
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    move-object v3, v4

    .line 241
    goto :goto_0

    :catch_2
    move-exception v3

    move-object v3, v4

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 239
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 241
    :cond_1
    throw v3

    :catch_3
    move-exception v3

    move-object v3, v4

    goto :goto_0

    .line 237
    .end local v1    # "reader":Ljava/io/Reader;
    .restart local v2    # "reader":Ljava/io/Reader;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/Reader;
    .restart local v1    # "reader":Ljava/io/Reader;
    goto :goto_2

    .line 235
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
    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 251
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static refreshCategoryDbs(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 24
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
    .line 396
    .local p1, "langToDbs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    new-instance v8, Lcom/nuance/swype/input/CategoryDBList;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;Z)V

    .line 397
    .local v8, "cdb":Lcom/nuance/swype/input/CategoryDBList;
    invoke-virtual {v8}, Lcom/nuance/swype/input/CategoryDBList;->getAvailableCatDbList()Ljava/util/Map;

    move-result-object v10

    .line 398
    .local v10, "cdbs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 399
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 401
    .local v20, "languageName":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 402
    .local v9, "cdbEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 403
    .local v19, "lang":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    .line 404
    .local v21, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 406
    .local v22, "st":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, "filename":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v5

    .line 408
    .local v5, "id":I
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 409
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 410
    .local v12, "dbs":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    const/16 v18, 0x0

    .line 411
    .local v18, "isFound":Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 412
    .local v11, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v11}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isCatDB()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v11}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 413
    const/16 v18, 0x1

    .line 417
    .end local v11    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_4
    if-nez v18, :cond_2

    .line 418
    sget-object v2, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "addCategoryDbFiles... add cdb filename: "

    const-string v6, " id: "

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Ljava/util/List;

    new-instance v2, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    const-string v3, "cdb"

    invoke-static {v3}, Lcom/nuance/swype/input/DatabaseConfig$DbInfo;->fromTag(Ljava/lang/String;)Lcom/nuance/swype/input/DatabaseConfig$DbInfo;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;-><init>(Lcom/nuance/swype/input/DatabaseConfig$DbInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 427
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "id":I
    .end local v9    # "cdbEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "dbs":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "isFound":Z
    .end local v19    # "lang":Ljava/lang/String;
    .end local v20    # "languageName":Ljava/lang/String;
    .end local v21    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "st":Ljava/lang/String;
    :cond_5
    return-object p1
.end method

.method public static refreshDatabaseConfig(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buildDate"    # J

    .prologue
    .line 110
    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 112
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/DatabaseConfig;->checkIfDatabaseNeedsRefresh(Landroid/content/Context;J)Z

    move-result v1

    .line 113
    if-eqz v1, :cond_0

    .line 115
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->extractLanguageIdAndFileFromDatabaseConfig(Landroid/content/Context;)V

    .line 118
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v2}, Lcom/nuance/swype/input/DatabaseConfig;->build(Landroid/content/Context;ZLjava/lang/String;)V

    .line 119
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/DatabaseConfig;->writeBuildDate(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 126
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static removeIncompatibleDBFiles(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 895
    const-string v13, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 897
    .local v9, "languageList":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 898
    .local v4, "fileDeleted":Z
    move-object v3, v9

    .local v3, "arr$":[Ljava/lang/String;
    array-length v11, v9

    .local v11, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .local v7, "i$":I
    :goto_0
    if-ge v7, v11, :cond_3

    aget-object v10, v3, v7

    .line 899
    .local v10, "languageName":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .local v12, "targetLanguage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 903
    .local v8, "languageDB":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-eqz v8, :cond_2

    .line 904
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v7    # "i$":I
    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 911
    invoke-virtual {v13}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 912
    .local v5, "fileName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, "absoluteFileName":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v13

    .line 916
    if-eqz v13, :cond_0

    const/4 v4, 0x1

    .line 917
    :cond_0
    goto :goto_1

    .line 919
    .end local v1    # "absoluteFileName":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".mdf"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 920
    .restart local v1    # "absoluteFileName":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v13

    .line 922
    if-eqz v13, :cond_2

    const/4 v4, 0x1

    .line 898
    .end local v1    # "absoluteFileName":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v6, v7, 0x1

    .local v6, "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto/16 :goto_0

    .line 925
    .end local v8    # "languageDB":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v10    # "languageName":Ljava/lang/String;
    .end local v12    # "targetLanguage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    if-nez v4, :cond_4

    .line 946
    :goto_2
    return-void

    .line 930
    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/nuance/swype/input/DatabaseConfig;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 933
    sget-object v13, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    if-eqz v13, :cond_5

    .line 934
    sget-object v13, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    .line 935
    const/4 v13, 0x0

    sput-object v13, Lcom/nuance/swype/input/DatabaseConfig;->oldLangugeIdAndLdbFileMappingTable:Landroid/util/SparseArray;

    .line 937
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/DatabaseConfig;->getOldLanguageIdAndFileMappingTable(Landroid/content/Context;)Landroid/util/SparseArray;

    .line 939
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 940
    .local v2, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->refreshInputMethods()V

    .line 943
    const/4 v13, 0x0

    aget-object v13, v9, v13

    invoke-virtual {v2, v13}, Lcom/nuance/swype/input/IMEApplication;->onUpdateLanguage(Ljava/lang/String;)V

    .line 945
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v13

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v9, v15

    invoke-virtual {v14, v15}, Lcom/nuance/swype/input/InputMethods;->getLanguageIdIntByLanguageName(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/nuance/swype/connect/Connect;->removeInvalidatedLanguage(I)V

    goto :goto_2
.end method

.method public static declared-synchronized updateLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 203
    const-class v2, Lcom/nuance/swype/input/DatabaseConfig;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/nuance/swype/input/DatabaseConfig;->build(Landroid/content/Context;ZLjava/lang/String;)V

    .line 205
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

    .line 209
    :goto_0
    monitor-exit v2

    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
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
    .line 260
    const-string v2, "_data_extract.txt"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 261
    .local v0, "out":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 263
    .local v1, "writer":Ljava/io/Writer;
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/nuance/swype/input/DatabaseConfig;->writeBuildDate(Ljava/io/Writer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 266
    return-void

    .line 265
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
    .line 270
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method private static writeSection(Ljava/lang/String;Landroid/util/SparseArray;Ljava/io/Writer;Landroid/content/Context;)V
    .locals 7
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
    const/16 v6, 0xa

    .line 765
    invoke-virtual {p2, v6}, Ljava/io/Writer;->write(I)V

    .line 766
    const/16 v3, 0x5b

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    .line 767
    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 768
    const/16 v3, 0x5d

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    .line 769
    invoke-virtual {p2, v6}, Ljava/io/Writer;->write(I)V

    .line 771
    const/4 v1, 0x0

    .local v1, "index":I
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 772
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 773
    .local v0, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 774
    sget-object v3, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "id: "

    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 775
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    .line 776
    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 777
    sget-object v3, Lcom/nuance/swype/input/DatabaseConfig;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "name: "

    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 778
    invoke-virtual {p2, v6}, Ljava/io/Writer;->write(I)V

    .line 771
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 780
    .end local v0    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_0
    return-void
.end method
