.class public Lcom/nuance/swype/input/LanguageList;
.super Ljava/lang/Object;
.source "LanguageList.java"


# static fields
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
    .line 34
    const-string v0, "LanguageList"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 35
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/LanguageList;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRefresh"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v7, p0, Lcom/nuance/swype/input/LanguageList;->isFakeDefaultLanguage:Z

    .line 67
    sget-object v4, Lcom/nuance/swype/input/LanguageList;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LanguageList...isRefresh: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 71
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const-string v4, "default_language"

    invoke-virtual {v0, v4, v6}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/LanguageList;->defaultLanguage:Ljava/lang/String;

    .line 72
    const-string v4, "builtin_languages"

    invoke-virtual {v0, v4, v6}, Lcom/nuance/swype/input/AppPreferences;->getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    .line 73
    const-string v4, "available_languages"

    invoke-virtual {v0, v4, v6}, Lcom/nuance/swype/input/AppPreferences;->getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    .line 74
    const-string v4, "supported_languages"

    invoke-virtual {v0, v4, v6}, Lcom/nuance/swype/input/AppPreferences;->getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/LanguageList;->supportedLanguages:Ljava/util/List;

    .line 76
    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->defaultLanguage:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->supportedLanguages:Ljava/util/List;

    if-nez v4, :cond_2

    .line 77
    :cond_0
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/LanguageList;->updateLanguageList(Lcom/nuance/swype/input/AppPreferences;)V

    .line 116
    :cond_1
    :goto_0
    sget-object v4, Lcom/nuance/swype/input/LanguageList;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LanguageList...isRefresh: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    return-void

    .line 78
    :cond_2
    if-eqz p2, :cond_1

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    .local v2, "languagesDownloaded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 86
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 88
    invoke-direct {p0, p1, v2}, Lcom/nuance/swype/input/LanguageList;->checkLanguageFiles(Landroid/content/Context;Ljava/util/List;)V

    .line 92
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/LanguageList;->defaultLanguage:Ljava/lang/String;

    .line 95
    .local v3, "oldDefaultLang":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/LanguageList;->updateLanguageList(Lcom/nuance/swype/input/AppPreferences;)V

    .line 98
    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/LanguageList;->removeDuplicates(Ljava/util/List;)V

    .line 102
    const-string v4, "_Std"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 103
    .local v1, "index":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    .line 104
    invoke-virtual {v3, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 105
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nuance/swype/input/LanguageList;->isFakeDefaultLanguage:Z

    .line 106
    sget-object v4, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "oldDefaultLang Name:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 109
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 112
    iput-object v3, p0, Lcom/nuance/swype/input/LanguageList;->defaultLanguage:Ljava/lang/String;

    .line 114
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
    .line 332
    .local p2, "downloadedLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swype/input/IMEApplication;->getPrivateFiles()Ljava/util/Set;

    move-result-object v13

    .line 333
    .local v13, "privateFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v14, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v15, "checkLanguageFiles"

    invoke-virtual {v14, v15}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 334
    invoke-static/range {p1 .. p2}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 337
    .local v2, "databasesNeeded":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/DatabaseConfig;->getOldLanguageIdAndFileMappingTable(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v12

    .line 339
    .local v12, "oldLanguageIdFileTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v1, "addedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 341
    .local v4, "deprecatedDatabases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 342
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    sget-object v15, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v14, "language key..."

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 343
    const/4 v10, 0x0

    .line 344
    .local v10, "ldbFound":Z
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 345
    .local v3, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v3}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getId()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 350
    :cond_2
    const/4 v10, 0x1

    .line 354
    .end local v3    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_3
    if-nez v10, :cond_0

    .line 356
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 357
    sget-object v15, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v14, "remove language from list..."

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 362
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "ldbFound":Z
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 363
    .local v9, "language":Ljava/lang/String;
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 364
    if-eqz v14, :cond_5

    .line 365
    const-string v14, "_Std"

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 373
    .local v8, "index":I
    const/4 v14, -0x1

    if-eq v8, v14, :cond_5

    .line 374
    const/4 v14, 0x0

    invoke-virtual {v9, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 375
    .local v11, "ldbName":Ljava/lang/String;
    sget-object v14, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v15, "checkLanguageFiles"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "deprecated LDB Name:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 377
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v14, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "add deprecated language to list..."

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_1

    .line 382
    .end local v8    # "index":I
    .end local v9    # "language":Ljava/lang/String;
    .end local v11    # "ldbName":Ljava/lang/String;
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    .line 383
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 385
    :cond_7
    return-void
.end method

.method public static composeLanguageEnabledSPKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "languageName"    # Ljava/lang/String;

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private persist()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string v1, "available_languages"

    iget-object v2, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setStrings(Ljava/lang/String;Ljava/util/List;)V

    .line 201
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
    .line 123
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v0, "copy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 125
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    return-void
.end method

.method private updateLanguageList(Lcom/nuance/swype/input/AppPreferences;)V
    .locals 16
    .param p1, "appPrefs"    # Lcom/nuance/swype/input/AppPreferences;

    .prologue
    .line 213
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v11, "languagesDownloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    if-eqz v14, :cond_0

    .line 215
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "languagesDownloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 217
    .restart local v11    # "languagesDownloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    .line 220
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 222
    .local v1, "am":Landroid/content/res/AssetManager;
    const/4 v6, 0x0

    .line 224
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    const-string v14, "languagelist.xml"

    invoke-virtual {v1, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 225
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 226
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->setValidating(Z)V

    .line 227
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 228
    .local v13, "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v14, Ljava/io/BufferedInputStream;

    const/16 v15, 0x2000

    invoke-direct {v14, v6, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 229
    :cond_1
    :goto_0
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "event":I
    const/4 v14, 0x1

    if-eq v3, v14, :cond_8

    .line 230
    const/4 v14, 0x2

    if-ne v3, v14, :cond_1

    .line 231
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 232
    .local v12, "tag":Ljava/lang/String;
    const-string v14, "Language"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 233
    const/4 v14, 0x0

    const-string v15, "language"

    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 234
    .local v9, "langName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    const/4 v14, 0x0

    const-string v15, "enabled"

    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 236
    .local v7, "isEnabled":Z
    invoke-static {v9}, Lcom/nuance/swype/input/LanguageList;->composeLanguageEnabledSPKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, "langEnableKey":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/nuance/swype/input/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 238
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 246
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "isEnabled":Z
    .end local v8    # "langEnableKey":Ljava/lang/String;
    .end local v9    # "langName":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v14

    if-eqz v6, :cond_2

    .line 247
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v14
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 250
    :catch_0
    move-exception v14

    .line 258
    :cond_3
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v2, "buildConfiguredLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 264
    :try_start_2
    const-string v14, "languagelist_supported.xml"

    invoke-virtual {v1, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 265
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 266
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->setValidating(Z)V

    .line 267
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 268
    .restart local v13    # "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v14, Ljava/io/BufferedInputStream;

    const/16 v15, 0x2000

    invoke-direct {v14, v6, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 269
    :cond_4
    :goto_2
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .restart local v3    # "event":I
    const/4 v14, 0x1

    if-eq v3, v14, :cond_9

    .line 270
    const/4 v14, 0x2

    if-ne v3, v14, :cond_4

    .line 271
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 272
    .restart local v12    # "tag":Ljava/lang/String;
    const-string v14, "Language"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 273
    const/4 v14, 0x0

    const-string v15, "language"

    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 274
    .restart local v9    # "langName":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 279
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v9    # "langName":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v14

    if-eqz v6, :cond_5

    .line 280
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v14
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 283
    :catch_1
    move-exception v14

    .line 289
    :cond_6
    :goto_3
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    .line 291
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nuance/swype/input/LanguageList;->supportedLanguages:Ljava/util/List;

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v14

    .line 293
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 294
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 295
    .local v10, "languageToCheck":Ljava/lang/String;
    sget-object v14, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v15, "language to see if is just supported:"

    invoke-virtual {v14, v15, v10}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 298
    sget-object v14, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v15, "language is supported:"

    invoke-virtual {v14, v15, v10}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/LanguageList;->supportedLanguages:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 240
    .end local v2    # "buildConfiguredLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v10    # "languageToCheck":Ljava/lang/String;
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_7
    :try_start_4
    const-string v14, "InputMethods"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 241
    const/4 v14, 0x0

    const-string v15, "defaultLanguage"

    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nuance/swype/input/LanguageList;->defaultLanguage:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 246
    .end local v12    # "tag":Ljava/lang/String;
    :cond_8
    if-eqz v6, :cond_3

    .line 247
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 252
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v13    # "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v14

    goto/16 :goto_1

    .line 279
    .restart local v2    # "buildConfiguredLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v13    # "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    if-eqz v6, :cond_6

    .line 280
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 285
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v13    # "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v14

    goto :goto_3

    .line 301
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v10    # "languageToCheck":Ljava/lang/String;
    :cond_a
    sget-object v14, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v15, "language was not configured in build: "

    invoke-virtual {v14, v15, v10}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 307
    .end local v10    # "languageToCheck":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 309
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_c

    .line 311
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/nuance/swype/input/LanguageList;->checkLanguageFiles(Landroid/content/Context;Ljava/util/List;)V

    .line 315
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nuance/swype/input/LanguageList;->removeDuplicates(Ljava/util/List;)V

    .line 318
    invoke-direct/range {p0 .. p1}, Lcom/nuance/swype/input/LanguageList;->updateListToAppPreferences(Lcom/nuance/swype/input/AppPreferences;)V

    .line 319
    return-void
.end method

.method private updateListToAppPreferences(Lcom/nuance/swype/input/AppPreferences;)V
    .locals 2
    .param p1, "appPrefs"    # Lcom/nuance/swype/input/AppPreferences;

    .prologue
    .line 322
    const-string v0, "available_languages"

    iget-object v1, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStrings(Ljava/lang/String;Ljava/util/List;)V

    .line 323
    const-string v0, "builtin_languages"

    iget-object v1, p0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStrings(Ljava/lang/String;Ljava/util/List;)V

    .line 324
    const-string v0, "default_language"

    iget-object v1, p0, Lcom/nuance/swype/input/LanguageList;->defaultLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v0, "supported_languages"

    iget-object v1, p0, Lcom/nuance/swype/input/LanguageList;->supportedLanguages:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStrings(Ljava/lang/String;Ljava/util/List;)V

    .line 326
    return-void
.end method


# virtual methods
.method public addDownloadedLanguage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/LanguageList;->removeDuplicates(Ljava/util/List;)V

    .line 157
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-direct {p0}, Lcom/nuance/swype/input/LanguageList;->persist()V

    .line 166
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Std"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Std"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 163
    invoke-direct {p0}, Lcom/nuance/swype/input/LanguageList;->persist()V

    .line 164
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
    .line 141
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->defaultLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getHdbName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 408
    iget-object v5, p0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 409
    .local v0, "databases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    const-string v3, ""

    .line 410
    .local v3, "hdbName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 411
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 412
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 413
    .local v1, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isHDB()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 414
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 421
    .end local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    :cond_2
    return-object v3
.end method

.method public getInstalledDeprecatedLanguages()Ljava/util/Map;
    .locals 8
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
    .line 429
    sget-object v5, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "getInstalledDeprecatedLanguages()"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 430
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 431
    .local v1, "deprecates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 433
    .local v3, "language":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/LanguageList;->isDeprecatedLang(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 434
    sget-object v5, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "processing deprecated language: "

    invoke-virtual {v5, v6, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 435
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/LanguageList;->getNonDeprecatedLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, "nonDeprecatedLanguage":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 437
    iget-object v5, p0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageLDBName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "deprecatedLdb":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/input/LanguageList;->builtinLanguages:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 440
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v5, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "adding "

    const-string v7, " "

    invoke-virtual {v5, v6, v3, v7, v0}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 446
    .end local v0    # "deprecatedLdb":Ljava/lang/String;
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "nonDeprecatedLanguage":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getLanguageFlavor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 425
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
    .line 137
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    return-object v0
.end method

.method public getNonDeprecatedLanguageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "deprecatedLanguage"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/LanguageList;->isDeprecatedLang(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const-string v2, "_Std"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "language":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    const/4 v0, 0x0

    .line 455
    :cond_0
    return-object v0

    .line 450
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
    .line 145
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageList;->supportedLanguages:Ljava/util/List;

    return-object v0
.end method

.method public isDeprecatedLang(Ljava/lang/String;)Z
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 459
    const-string v0, "_Std"

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
    .line 134
    iget-boolean v0, p0, Lcom/nuance/swype/input/LanguageList;->isFakeDefaultLanguage:Z

    return v0
.end method

.method public isHdbShared(Ljava/lang/String;)Z
    .locals 8
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-object v6, p0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 392
    .local v0, "databases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/LanguageList;->getHdbName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "hdbName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 395
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 396
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 397
    .local v1, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isHDB()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 398
    const/4 v6, 0x1

    .line 404
    .end local v1    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public removeDownloadedLanguage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v3, p0, Lcom/nuance/swype/input/LanguageList;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageDBList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 179
    .local v0, "databasesSuppressed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    const/4 v2, 0x0

    .line 180
    .local v2, "isSuppressedLanguage":Z
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    const/4 v2, 0x1

    goto :goto_0

    .line 185
    :cond_1
    sget-object v3, Lcom/nuance/swype/input/LanguageList;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "removeDownloadedLanguage...languageName..."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..isSuppressedLanguage.."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 186
    if-eqz v2, :cond_2

    .line 187
    const/4 v3, 0x0

    .line 193
    :goto_1
    return v3

    .line 189
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/LanguageList;->removeDuplicates(Ljava/util/List;)V

    .line 190
    iget-object v3, p0, Lcom/nuance/swype/input/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    invoke-direct {p0}, Lcom/nuance/swype/input/LanguageList;->persist()V

    .line 193
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method
