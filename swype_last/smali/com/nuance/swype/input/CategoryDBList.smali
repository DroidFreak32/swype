.class public Lcom/nuance/swype/input/CategoryDBList;
.super Ljava/lang/Object;
.source "CategoryDBList.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field appPrefs:Lcom/nuance/swype/input/AppPreferences;

.field private chineseLangNames:Ljava/util/List;
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string/jumbo v0, "CategoryDBList"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/CategoryDBList;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRefresh"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/nuance/swype/input/CategoryDBList;->context:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/CategoryDBList;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/CategoryDBList;->chineseLangNames:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/CategoryDBList;->chineseLangNames:Ljava/util/List;

    const-string/jumbo v1, "Chinese_CN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/CategoryDBList;->chineseLangNames:Ljava/util/List;

    const-string/jumbo v1, "Chinese_HK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/CategoryDBList;->chineseLangNames:Ljava/util/List;

    const-string/jumbo v1, "Chinese_TW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method private deleteFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 263
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized getCatDBs()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v0, "catDBs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/nuance/swype/input/CategoryDBList;->chineseLangNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, "lang":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/CategoryDBList;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "available_categorydbs"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/AppPreferences;->getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "cdbList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_c

    .line 54
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_35

    goto :goto_c

    .line 49
    .end local v0    # "catDBs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "cdbList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "lang":Ljava/lang/String;
    :catchall_35
    move-exception v3

    monitor-exit p0

    throw v3

    .line 57
    .restart local v0    # "catDBs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_38
    monitor-exit p0

    return-object v0
.end method

.method private getSelectedCatDBCount(Lcom/nuance/swype/input/InputMethods$Language;)I
    .registers 9
    .param p1, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 242
    const/4 v3, 0x0

    .line 243
    .local v3, "count":I
    invoke-direct {p0}, Lcom/nuance/swype/input/CategoryDBList;->getCatDBs()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 244
    .local v2, "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_35

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_35

    .line 245
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    .local v0, "cdb":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "cdbName":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/input/CategoryDBList;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 248
    if-eqz v5, :cond_19

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 253
    .end local v0    # "cdb":Ljava/lang/String;
    .end local v1    # "cdbName":Ljava/lang/String;
    :cond_35
    return v3
.end method

.method private declared-synchronized updateListToAppPreferences(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "catDBs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "lang":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 84
    .local v0, "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 85
    iget-object v4, p0, Lcom/nuance/swype/input/CategoryDBList;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "available_categorydbs"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/nuance/swype/input/AppPreferences;->setStrings(Ljava/lang/String;Ljava/util/List;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3b

    goto :goto_9

    .line 81
    .end local v0    # "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "lang":Ljava/lang/String;
    :catchall_3b
    move-exception v3

    monitor-exit p0

    throw v3

    .line 89
    :cond_3e
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public getAvailableCDBs(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "languageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/nuance/swype/input/CategoryDBList;->getCatDBs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getAvailableCatDbList()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/nuance/swype/input/CategoryDBList;->getCatDBs()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFileId(Ljava/lang/String;)I
    .registers 7
    .param p1, "cdbInfo"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 108
    if-nez p1, :cond_5

    move v1, v2

    .line 119
    :cond_4
    :goto_4
    return v1

    .line 112
    :cond_5
    const-string/jumbo v3, "\\|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "cdb":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 114
    .local v1, "id":I
    if-eqz v0, :cond_4

    .line 115
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 116
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_4
.end method

.method public getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "cdbInfo"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 93
    if-nez p1, :cond_4

    .line 103
    :cond_3
    :goto_3
    return-object v1

    .line 97
    :cond_4
    const-string/jumbo v2, "\\|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "cdb":[Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 99
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 100
    const/4 v1, 0x1

    aget-object v1, v0, v1

    goto :goto_3
.end method

.method public getShowableCDBs(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "languageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/nuance/swype/input/CategoryDBList;->getCatDBs()Ljava/util/Map;

    move-result-object v0

    .line 70
    .local v0, "catDBs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_10

    .line 77
    :cond_f
    return-object v2

    .line 74
    :cond_10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, "db":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a
.end method

.method public installDownloadedCategoryDBFile(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 16
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "catId"    # I
    .param p4, "languageId"    # I

    .prologue
    const/4 v7, 0x0

    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "cdb":Ljava/lang/String;
    const/4 v5, 0x0

    .line 170
    .local v5, "isAdded":Z
    iget-object v8, p0, Lcom/nuance/swype/input/CategoryDBList;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v8

    .line 171
    invoke-virtual {v8, p4}, Lcom/nuance/swype/input/InputMethods;->findCoreInputLanguage(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    .line 172
    .local v4, "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v4, :cond_27

    .line 206
    :goto_26
    return v7

    .line 176
    :cond_27
    monitor-enter p0

    .line 177
    :try_start_28
    invoke-direct {p0}, Lcom/nuance/swype/input/CategoryDBList;->getCatDBs()Ljava/util/Map;

    move-result-object v0

    .line 178
    .local v0, "catDBs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v7, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 179
    .local v2, "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_40

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .restart local v2    # "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_40
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8b

    .line 184
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v6, "source":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/nuance/swype/input/CategoryDBList;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v3, v7, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    .local v3, "destination":Ljava/io/File;
    sget-object v7, Lcom/nuance/swype/input/CategoryDBList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "    moved to destination: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 188
    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 189
    const/4 v5, 0x1

    .line 199
    :cond_75
    :goto_75
    if-eqz v5, :cond_85

    .line 200
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/CategoryDBList;->getSelectedCatDBCount(Lcom/nuance/swype/input/InputMethods$Language;)I

    move-result v7

    const/16 v8, 0x8

    if-ge v7, v8, :cond_85

    .line 201
    iget-object v7, p0, Lcom/nuance/swype/input/CategoryDBList;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    const/4 v8, 0x1

    invoke-virtual {v7, p2, v8}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 204
    :cond_85
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/CategoryDBList;->updateListToAppPreferences(Ljava/util/Map;)V

    .line 205
    monitor-exit p0

    move v7, v5

    .line 206
    goto :goto_26

    .line 192
    .end local v3    # "destination":Ljava/io/File;
    .end local v6    # "source":Ljava/io/File;
    :cond_8b
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .restart local v6    # "source":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/nuance/swype/input/CategoryDBList;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v3, v7, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .restart local v3    # "destination":Ljava/io/File;
    sget-object v7, Lcom/nuance/swype/input/CategoryDBList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "    moved to destination: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 196
    const/4 v5, 0x1

    goto :goto_75

    .line 205
    .end local v0    # "catDBs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "destination":Ljava/io/File;
    .end local v6    # "source":Ljava/io/File;
    :catchall_b8
    move-exception v7

    monitor-exit p0
    :try_end_ba
    .catchall {:try_start_28 .. :try_end_ba} :catchall_b8

    throw v7
.end method

.method public isCategoryInstalled(I)Z
    .registers 11
    .param p1, "catId"    # I

    .prologue
    .line 145
    const/4 v3, 0x0

    .line 146
    .local v3, "installed":Z
    invoke-direct {p0}, Lcom/nuance/swype/input/CategoryDBList;->getCatDBs()Ljava/util/Map;

    move-result-object v5

    .line 147
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 148
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 149
    .local v4, "lang":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 150
    .local v1, "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_d

    if-eqz v1, :cond_d

    .line 151
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    .local v0, "category":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v7

    if-ne v7, p1, :cond_2d

    .line 153
    const/4 v3, 0x1

    .line 157
    .end local v0    # "category":Ljava/lang/String;
    :cond_40
    if-eqz v3, :cond_d

    .line 162
    .end local v1    # "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "lang":Ljava/lang/String;
    :cond_42
    sget-object v5, Lcom/nuance/swype/input/CategoryDBList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "isCategoryInstalled cat= "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, " installed="

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 163
    return v3
.end method

.method public isCategoryInstalled(Ljava/lang/String;)Z
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, "installed":Z
    invoke-direct {p0}, Lcom/nuance/swype/input/CategoryDBList;->getCatDBs()Ljava/util/Map;

    move-result-object v4

    .line 125
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 127
    .local v3, "lang":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 128
    .local v0, "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_d

    if-eqz v0, :cond_d

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 130
    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 131
    const/4 v2, 0x1

    .line 135
    :cond_40
    if-eqz v2, :cond_d

    .line 140
    .end local v0    # "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "lang":Ljava/lang/String;
    :cond_42
    sget-object v4, Lcom/nuance/swype/input/CategoryDBList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "isCategoryInstalled cat= "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, " installed="

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 141
    return v2
.end method

.method public declared-synchronized postInstallRefresh(I)V
    .registers 5
    .param p1, "languageId"    # I

    .prologue
    .line 210
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/nuance/swype/input/CategoryDBList;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    .line 211
    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/InputMethods;->findCoreInputLanguage(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 212
    .local v0, "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 213
    iget-object v1, p0, Lcom/nuance/swype/input/CategoryDBList;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nuance/swype/input/DatabaseConfig;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    :cond_1a
    iget-object v1, p0, Lcom/nuance/swype/input/CategoryDBList;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->refreshInputMethods()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 217
    monitor-exit p0

    return-void

    .line 210
    .end local v0    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized uninstallDownloadedCategoryDB(Ljava/lang/String;II)Z
    .registers 12
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "catId"    # I
    .param p3, "languageId"    # I

    .prologue
    const/4 v5, 0x0

    .line 220
    monitor-enter p0

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "cdb":Ljava/lang/String;
    const/4 v3, 0x0

    .line 222
    .local v3, "isRemoved":Z
    iget-object v6, p0, Lcom/nuance/swype/input/CategoryDBList;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v6

    .line 223
    invoke-virtual {v6, p3}, Lcom/nuance/swype/input/InputMethods;->findCoreInputLanguage(I)Lcom/nuance/swype/input/InputMethods$Language;
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_58

    move-result-object v4

    .line 224
    .local v4, "uninstallLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v4, :cond_29

    .line 238
    :goto_27
    monitor-exit p0

    return v5

    .line 227
    :cond_29
    :try_start_29
    invoke-direct {p0}, Lcom/nuance/swype/input/CategoryDBList;->getCatDBs()Ljava/util/Map;

    move-result-object v0

    .line 228
    .local v0, "catDBs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v5, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 229
    .local v2, "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_53

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 231
    iget-object v5, p0, Lcom/nuance/swype/input/CategoryDBList;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 232
    iget-object v5, p0, Lcom/nuance/swype/input/CategoryDBList;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 234
    :cond_4c
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 235
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/CategoryDBList;->deleteFile(Ljava/lang/String;)Z

    move-result v3

    .line 237
    :cond_53
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/CategoryDBList;->updateListToAppPreferences(Ljava/util/Map;)V
    :try_end_56
    .catchall {:try_start_29 .. :try_end_56} :catchall_58

    move v5, v3

    .line 238
    goto :goto_27

    .line 220
    .end local v0    # "catDBs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "cdb":Ljava/lang/String;
    .end local v2    # "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "isRemoved":Z
    .end local v4    # "uninstallLang":Lcom/nuance/swype/input/InputMethods$Language;
    :catchall_58
    move-exception v5

    monitor-exit p0

    throw v5
.end method
