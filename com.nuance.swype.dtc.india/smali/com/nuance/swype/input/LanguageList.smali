.class public Lcom/nuance/swype/input/LanguageList;
.super Ljava/lang/Object;
.source "LanguageList.java"


# static fields
.field public static final LANGUAGE_LIST_FILE:Ljava/lang/String; = "languagelist.xml"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field protected static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private builtinLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private defaultLanguage:Ljava/lang/String;

.field private isFakeDefaultLanguage:Z

.field private languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supportedLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "LanguageList"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 38
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/LanguageList;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRefresh"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v8, p0, Lcom/nuance/swype/input/LanguageList;->isFakeDefaultLanguage:Z

    .line 73
    iput-object p1, p0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    .line 75
    invoke-static {p1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 76
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const-string/jumbo v4, "default_language"

    invoke-virtual {v0, v4, v5}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/LanguageList;->defaultLanguage:Ljava/lang/String;

    .line 77
    const-string/jumbo v4, "builtin_languages"

    invoke-virtual {v0, v4, v5}, Lcom/nuance/swype/input/AppPreferences;->getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    .line 78
    const-string/jumbo v4, "available_languages"

    invoke-virtual {v0, v4, v5}, Lcom/nuance/swype/input/AppPreferences;->getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    .line 79
    const-string/jumbo v4, "supported_languages"

    invoke-virtual {v0, v4, v5}, Lcom/nuance/swype/input/AppPreferences;->getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/LanguageList;->supportedLanguages:Ljava/util/List;

    .line 81
    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->defaultLanguage:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->supportedLanguages:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    .line 82
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->defaultLanguage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->supportedLanguages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    :cond_0
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/LanguageList;->updateLanguageList(Lcom/nuance/swype/input/AppPreferences;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    invoke-static {}, Lcom/nuance/swype/input/DatabaseConfig;->clearExternalDataBasePath()V

    .line 86
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/LanguageList;->updateLanguageList(Lcom/nuance/swype/input/AppPreferences;)Z

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    if-eqz p2, :cond_1

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    .local v2, "languagesDownloaded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 96
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 98
    invoke-direct {p0, p1, v2}, Lcom/nuance/swype/input/LanguageList;->checkLanguageFiles(Landroid/content/Context;Ljava/util/List;)V

    .line 102
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/LanguageList;->defaultLanguage:Ljava/lang/String;

    .line 105
    .local v3, "oldDefaultLang":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/LanguageList;->updateLanguageList(Lcom/nuance/swype/input/AppPreferences;)Z

    .line 108
    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/LanguageList;->removeDuplicates(Ljava/util/List;)V

    .line 112
    const-string/jumbo v4, "_Std"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, "index":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    .line 114
    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 115
    iput-boolean v6, p0, Lcom/nuance/swype/input/LanguageList;->isFakeDefaultLanguage:Z

    .line 116
    sget-object v4, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "oldDefaultLang Name:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 119
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 122
    iput-object v3, p0, Lcom/nuance/swype/input/LanguageList;->defaultLanguage:Ljava/lang/String;

    .line 124
    :cond_5
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/LanguageList;->updateListToAppPreferences(Lcom/nuance/swype/input/AppPreferences;)V

    goto :goto_0
.end method

.method private checkLanguageFiles(Landroid/content/Context;Ljava/util/List;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p2, "downloadedLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->getPrivateFiles()Ljava/util/Set;

    move-result-object v11

    .line 365
    .local v11, "privateFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v12, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "checkLanguageFiles"

    aput-object v15, v13, v14

    invoke-interface {v12, v13}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 366
    invoke-static/range {p1 .. p2}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 369
    .local v2, "databasesNeeded":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/DatabaseConfig;->getOldLanguageIdAndFileMappingTable(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v10

    .line 371
    .local v10, "oldLanguageIdFileTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v1, "addedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 373
    .local v4, "deprecatedDatabases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 374
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    sget-object v14, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "language key..."

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v15, v16

    invoke-interface {v14, v15}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 375
    const/4 v8, 0x0

    .line 376
    .local v8, "ldbFound":Z
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 377
    .local v3, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 378
    invoke-virtual {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 379
    invoke-virtual {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 382
    :cond_2
    const/4 v8, 0x1

    .line 386
    .end local v3    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_3
    if-nez v8, :cond_0

    .line 388
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 389
    sget-object v14, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "remove language from list..."

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v15, v16

    invoke-interface {v14, v15}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 394
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .end local v8    # "ldbFound":Z
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 395
    .local v7, "language":Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 396
    if-eqz v12, :cond_5

    .line 404
    const-string/jumbo v12, "_Std"

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 405
    .local v6, "index":I
    const/4 v12, -0x1

    if-eq v6, v12, :cond_5

    .line 406
    const/4 v12, 0x0

    invoke-virtual {v7, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 407
    .local v9, "ldbName":Ljava/lang/String;
    sget-object v12, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "checkLanguageFiles"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "deprecated LDB Name:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v12, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 408
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 409
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v12, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "add deprecated language to list..."

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v12, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_1

    .line 414
    .end local v6    # "index":I
    .end local v7    # "language":Ljava/lang/String;
    .end local v9    # "ldbName":Ljava/lang/String;
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 415
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    :cond_7
    return-void
.end method

.method public static composeLanguageEnabledSPKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "languageName"    # Ljava/lang/String;

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private persist()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string/jumbo v1, "available_languages"

    iget-object v2, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setStrings(Ljava/lang/String;Ljava/util/List;)V

    .line 211
    return-void
.end method

.method private removeDuplicates(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 134
    .local v0, "copy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 135
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    return-void
.end method

.method private updateLanguageList(Lcom/nuance/swype/input/AppPreferences;)Z
    .locals 24
    .param p1, "appPrefs"    # Lcom/nuance/swype/input/AppPreferences;

    .prologue
    .line 223
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v14, "languagesDownloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 225
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "languagesDownloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 227
    .restart local v14    # "languagesDownloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 232
    .local v2, "am":Landroid/content/res/AssetManager;
    const/4 v9, 0x0

    .line 234
    .local v9, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 235
    .local v6, "externalLanguageListFile":Ljava/io/File;
    :try_start_0
    const-string/jumbo v19, "languagelist.xml"

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/input/DatabaseConfig;->foundFileInExternalPath(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    const/16 v16, 0x1

    .line 237
    .local v16, "readAssetLanguageList":Z
    :goto_0
    if-nez v16, :cond_1

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/input/DatabaseConfig;->getExternalDatabasePath(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v20

    .line 239
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    aget-object v15, v20, v19

    .line 240
    .local v15, "path":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_5

    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "languagelist.xml"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v15, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 241
    new-instance v7, Ljava/io/File;

    const-string/jumbo v19, "languagelist.xml"

    move-object/from16 v0, v19

    invoke-direct {v7, v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "externalLanguageListFile":Ljava/io/File;
    .local v7, "externalLanguageListFile":Ljava/io/File;
    move-object v6, v7

    .line 246
    .end local v7    # "externalLanguageListFile":Ljava/io/File;
    .end local v15    # "path":Ljava/lang/String;
    .restart local v6    # "externalLanguageListFile":Ljava/io/File;
    :cond_1
    if-eqz v16, :cond_6

    const-string/jumbo v19, "languagelist.xml"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 248
    :goto_2
    if-eqz v9, :cond_8

    .line 249
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    .line 250
    .local v8, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setValidating(Z)V

    .line 251
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 252
    .local v18, "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v19, Ljava/io/BufferedInputStream;

    const/16 v20, 0x2000

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v9, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 254
    :cond_2
    :goto_3
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "event":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v4, v0, :cond_8

    .line 255
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v4, v0, :cond_2

    .line 256
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 257
    .local v17, "tag":Ljava/lang/String;
    const-string/jumbo v19, "Language"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 258
    const/16 v19, 0x0

    const-string/jumbo v20, "language"

    invoke-interface/range {v18 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 259
    .local v12, "langName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    const/16 v19, 0x0

    const-string/jumbo v20, "enabled"

    invoke-interface/range {v18 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "true"

    .line 261
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 262
    .local v10, "isEnabled":Z
    invoke-static {v12}, Lcom/nuance/swype/input/LanguageList;->composeLanguageEnabledSPKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 263
    .local v11, "langEnableKey":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/nuance/swype/input/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 264
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 274
    .end local v4    # "event":I
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "isEnabled":Z
    .end local v11    # "langEnableKey":Ljava/lang/String;
    .end local v12    # "langName":Ljava/lang/String;
    .end local v16    # "readAssetLanguageList":Z
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v19

    if-eqz v9, :cond_3

    .line 275
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v19
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 278
    :catch_0
    move-exception v5

    .line 279
    .local v5, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v19, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 280
    const/16 v19, 0x0

    .line 350
    .end local v5    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    return v19

    .line 235
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 239
    .restart local v15    # "path":Ljava/lang/String;
    .restart local v16    # "readAssetLanguageList":Z
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 246
    .end local v15    # "path":Ljava/lang/String;
    :cond_6
    :try_start_2
    new-instance v19, Ljava/io/BufferedInputStream;

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v19 .. v20}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v9, v19

    goto/16 :goto_2

    .line 266
    .restart local v4    # "event":I
    .restart local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_7
    const-string/jumbo v19, "InputMethods"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 267
    const/16 v19, 0x0

    const-string/jumbo v20, "defaultLanguage"

    .line 268
    invoke-interface/range {v18 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/LanguageList;->defaultLanguage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 274
    .end local v4    # "event":I
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    if-eqz v9, :cond_9

    .line 275
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 288
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v3, "buildConfiguredLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 294
    :try_start_4
    const-string/jumbo v19, "languagelist_supported.xml"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 295
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    .line 296
    .restart local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setValidating(Z)V

    .line 297
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 298
    .restart local v18    # "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v19, Ljava/io/BufferedInputStream;

    const/16 v20, 0x2000

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v9, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 299
    :cond_a
    :goto_5
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .restart local v4    # "event":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v4, v0, :cond_d

    .line 300
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v4, v0, :cond_a

    .line 301
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 302
    .restart local v17    # "tag":Ljava/lang/String;
    const-string/jumbo v19, "Language"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 303
    const/16 v19, 0x0

    const-string/jumbo v20, "language"

    invoke-interface/range {v18 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 304
    .restart local v12    # "langName":Ljava/lang/String;
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 309
    .end local v4    # "event":I
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v12    # "langName":Ljava/lang/String;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v19

    if-eqz v9, :cond_b

    .line 310
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_b
    throw v19
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 317
    :catch_1
    move-exception v19

    .line 319
    :cond_c
    :goto_6
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    .line 321
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/LanguageList;->supportedLanguages:Ljava/util/List;

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v19

    .line 323
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 324
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 325
    .local v13, "languageToCheck":Ljava/lang/String;
    sget-object v19, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "language to see if is just supported:"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v13, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 327
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 328
    sget-object v19, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "language is supported:"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v13, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/LanguageList;->supportedLanguages:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 281
    .end local v3    # "buildConfiguredLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "languageToCheck":Ljava/lang/String;
    .end local v16    # "readAssetLanguageList":Z
    :catch_2
    move-exception v5

    .line 282
    .local v5, "ex":Ljava/io/IOException;
    sget-object v19, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 283
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 309
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v3    # "buildConfiguredLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "event":I
    .restart local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v16    # "readAssetLanguageList":Z
    .restart local v18    # "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_d
    if-eqz v9, :cond_c

    .line 310
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_6

    .end local v4    # "event":I
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v18    # "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v19

    goto/16 :goto_6

    .line 331
    .restart local v13    # "languageToCheck":Ljava/lang/String;
    :cond_e
    sget-object v19, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "language was not configured in build: "

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v13, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 337
    .end local v13    # "languageToCheck":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 339
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_10

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14}, Lcom/nuance/swype/input/LanguageList;->checkLanguageFiles(Landroid/content/Context;Ljava/util/List;)V

    .line 345
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/LanguageList;->removeDuplicates(Ljava/util/List;)V

    .line 348
    invoke-direct/range {p0 .. p1}, Lcom/nuance/swype/input/LanguageList;->updateListToAppPreferences(Lcom/nuance/swype/input/AppPreferences;)V

    .line 350
    const/16 v19, 0x1

    goto/16 :goto_4
.end method

.method private updateListToAppPreferences(Lcom/nuance/swype/input/AppPreferences;)V
    .locals 2
    .param p1, "appPrefs"    # Lcom/nuance/swype/input/AppPreferences;

    .prologue
    .line 354
    const-string/jumbo v0, "available_languages"

    iget-object v1, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStrings(Ljava/lang/String;Ljava/util/List;)V

    .line 355
    const-string/jumbo v0, "builtin_languages"

    iget-object v1, p0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStrings(Ljava/lang/String;Ljava/util/List;)V

    .line 356
    const-string/jumbo v0, "default_language"

    iget-object v1, p0, Lcom/nuance/swype/input/LanguageList;->defaultLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v0, "supported_languages"

    iget-object v1, p0, Lcom/nuance/swype/input/LanguageList;->supportedLanguages:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStrings(Ljava/lang/String;Ljava/util/List;)V

    .line 358
    return-void
.end method


# virtual methods
.method public addDownloadedLanguage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/LanguageList;->removeDuplicates(Ljava/util/List;)V

    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-direct {p0}, Lcom/nuance/swype/input/LanguageList;->persist()V

    .line 176
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_Std"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_Std"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 173
    invoke-direct {p0}, Lcom/nuance/swype/input/LanguageList;->persist()V

    .line 174
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBuiltinLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->defaultLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getHdbName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 440
    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 441
    .local v0, "databases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    const-string/jumbo v3, ""

    .line 442
    .local v3, "hdbName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 443
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 444
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 445
    .local v1, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isHDB()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 453
    .end local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    :cond_2
    return-object v3
.end method

.method public getInstalledDeprecatedLanguages()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 461
    sget-object v4, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "getInstalledDeprecatedLanguages()"

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 462
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 463
    .local v1, "deprecates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 465
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/LanguageList;->isDeprecatedLang(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 466
    sget-object v5, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "processing deprecated language: "

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 467
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/LanguageList;->getNonDeprecatedLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "nonDeprecatedLanguage":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 469
    iget-object v5, p0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageLDBName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "deprecatedLdb":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 472
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v5, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "adding "

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    const-string/jumbo v7, " "

    aput-object v7, v6, v10

    const/4 v7, 0x3

    aput-object v0, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 478
    .end local v0    # "deprecatedLdb":Ljava/lang/String;
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "nonDeprecatedLanguage":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getLanguageFlavor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageFlavor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    return-object v0
.end method

.method public getNonDeprecatedLanguageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "deprecatedLanguage"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/LanguageList;->isDeprecatedLang(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const-string/jumbo v2, "_Std"

    .line 483
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 482
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "language":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    const/4 v0, 0x0

    .line 487
    :cond_0
    return-object v0

    .line 482
    .end local v0    # "language":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportedLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->supportedLanguages:Ljava/util/List;

    return-object v0
.end method

.method public isDeprecatedLang(Ljava/lang/String;)Z
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 491
    const-string/jumbo v0, "_Std"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFakeDefaultLanguage()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/nuance/swype/input/LanguageList;->isFakeDefaultLanguage:Z

    return v0
.end method

.method public isHdbShared(Ljava/lang/String;)Z
    .locals 7
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 423
    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 425
    .local v0, "databases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/LanguageList;->getHdbName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "hdbName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 427
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 428
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 429
    .local v1, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isHDB()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 431
    const/4 v4, 0x1

    .line 436
    .end local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public removeDownloadedLanguage(Ljava/lang/String;)Z
    .locals 8
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    iget-object v2, p0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 189
    .local v0, "databasesSuppressed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    const/4 v1, 0x0

    .line 190
    .local v1, "isSuppressedLanguage":Z
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const/4 v1, 0x1

    goto :goto_0

    .line 195
    :cond_1
    sget-object v2, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "removeDownloadedLanguage...languageName..."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "..isSuppressedLanguage.."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {v2, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 196
    if-eqz v1, :cond_2

    move v2, v3

    .line 203
    :goto_1
    return v2

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/LanguageList;->removeDuplicates(Ljava/util/List;)V

    .line 200
    iget-object v2, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    invoke-direct {p0}, Lcom/nuance/swype/input/LanguageList;->persist()V

    :cond_3
    move v2, v4

    .line 203
    goto :goto_1
.end method
