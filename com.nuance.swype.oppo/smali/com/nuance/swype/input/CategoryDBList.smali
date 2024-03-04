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
    .locals 1

    .prologue
    .line 23
    const-string v0, "CategoryDBList"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/CategoryDBList;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
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

    const-string v1, "Chinese_CN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/CategoryDBList;->chineseLangNames:Ljava/util/List;

    const-string v1, "Chinese_HK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/CategoryDBList;->chineseLangNames:Ljava/util/List;

    const-string v1, "Chinese_TW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method private deleteFile(Ljava/lang/String;)Z
    .locals 1
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
    .locals 7
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

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v0, "catDBs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v4, p0, Lcom/nuance/swype/input/CategoryDBList;->chineseLangNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 51
    .local v3, "lang":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/CategoryDBList;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "available_categorydbs"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/AppPreferences;->getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "cdbList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 54
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 49
    .end local v0    # "catDBs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "cdbList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lang":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 57
    .restart local v0    # "catDBs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-object v0
.end method

.method private getSelectedCatDBCount(Lcom/nuance/swype/input/InputMethods$Language;)I
    .locals 7
    .param p1, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 242
    const/4 v3, 0x0

    .line 243
    .local v3, "count":I
    invoke-direct {p0}, Lcom/nuance/swype/input/CategoryDBList;->getCatDBs()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 244
    .local v2, "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 245
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

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
    if-eqz v5, :cond_0

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    .end local v0    # "cdb":Ljava/lang/String;
    .end local v1    # "cdbName":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    return v3
.end method

.method private declared-synchronized updateListToAppPreferences(Ljava/util/Map;)V
    .locals 7
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

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 83
    .local v3, "lang":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 84
    .local v0, "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 85
    iget-object v4, p0, Lcom/nuance/swype/input/CategoryDBList;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "available_categorydbs"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/nuance/swype/input/AppPreferences;->setStrings(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 81
    .end local v0    # "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lang":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 89
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public getAvailableCDBs(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .locals 1
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
    .locals 5
    .param p1, "cdbInfo"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 108
    if-nez p1, :cond_1

    move v1, v2

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    const-string v3, "\\|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "cdb":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 114
    .local v1, "id":I
    if-eqz v0, :cond_0

    .line 115
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 116
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cdbInfo"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 93
    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v1

    .line 96
    :cond_1
    const-string v2, "\\|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "cdb":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 99
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 100
    const/4 v1, 0x1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public getShowableCDBs(Ljava/lang/String;)Ljava/util/List;
    .locals 5
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
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v3, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 77
    :cond_0
    return-object v3

    .line 74
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, "db":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public installDownloadedCategoryDBFile(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "catId"    # I
    .param p4, "languageId"    # I

    .prologue
    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "cdb":Ljava/lang/String;
    const/4 v5, 0x0

    .line 170
    .local v5, "isAdded":Z
    iget-object v7, p0, Lcom/nuance/swype/input/CategoryDBList;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v7

    .line 171
    invoke-virtual {v7, p4}, Lcom/nuance/swype/input/InputMethods;->findCoreInputLanguage(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    .line 172
    .local v4, "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v4, :cond_0

    .line 173
    const/4 v7, 0x0

    .line 206
    :goto_0
    return v7

    .line 176
    :cond_0
    monitor-enter p0

    .line 177
    :try_start_0
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
    if-nez v2, :cond_1

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .restart local v2    # "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

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

    const-string v8, "    moved to destination: "

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 189
    const/4 v5, 0x1

    .line 199
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 200
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/CategoryDBList;->getSelectedCatDBCount(Lcom/nuance/swype/input/InputMethods$Language;)I

    move-result v7

    const/16 v8, 0x8

    if-ge v7, v8, :cond_3

    .line 201
    iget-object v7, p0, Lcom/nuance/swype/input/CategoryDBList;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    const/4 v8, 0x1

    invoke-virtual {v7, p2, v8}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 204
    :cond_3
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/CategoryDBList;->updateListToAppPreferences(Ljava/util/Map;)V

    .line 205
    monitor-exit p0

    move v7, v5

    .line 206
    goto :goto_0

    .line 192
    .end local v3    # "destination":Ljava/io/File;
    .end local v6    # "source":Ljava/io/File;
    :cond_4
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

    const-string v8, "    moved to destination: "

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 196
    const/4 v5, 0x1

    goto :goto_1

    .line 205
    .end local v0    # "catDBs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "destination":Ljava/io/File;
    .end local v6    # "source":Ljava/io/File;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public isCategoryInstalled(I)Z
    .locals 12
    .param p1, "catId"    # I

    .prologue
    .line 145
    const/4 v5, 0x0

    .line 146
    .local v5, "installed":Z
    invoke-direct {p0}, Lcom/nuance/swype/input/CategoryDBList;->getCatDBs()Ljava/util/Map;

    move-result-object v7

    .line 147
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 148
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 149
    .local v6, "lang":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 150
    .local v1, "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    .line 151
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    .local v0, "category":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v7

    if-ne v7, p1, :cond_1

    .line 153
    const/4 v5, 0x1

    .line 157
    .end local v0    # "category":Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_0

    .line 162
    .end local v1    # "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "lang":Ljava/lang/String;
    :cond_3
    sget-object v7, Lcom/nuance/swype/input/CategoryDBList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "isCategoryInstalled cat= "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, " installed="

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    return v5
.end method

.method public isCategoryInstalled(Ljava/lang/String;)Z
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v4, 0x0

    .line 124
    .local v4, "installed":Z
    invoke-direct {p0}, Lcom/nuance/swype/input/CategoryDBList;->getCatDBs()Ljava/util/Map;

    move-result-object v6

    .line 125
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 127
    .local v5, "lang":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 128
    .local v0, "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 130
    invoke-virtual {v6, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 131
    const/4 v4, 0x1

    .line 135
    :cond_2
    if-eqz v4, :cond_0

    .line 140
    .end local v0    # "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "lang":Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/nuance/swype/input/CategoryDBList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v7, "isCategoryInstalled cat= "

    const-string v8, " installed="

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v7, p1, v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    return v4
.end method

.method public declared-synchronized postInstallRefresh(I)V
    .locals 3
    .param p1, "languageId"    # I

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/input/CategoryDBList;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    .line 211
    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/InputMethods;->findCoreInputLanguage(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 212
    .local v0, "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/nuance/swype/input/CategoryDBList;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nuance/swype/input/DatabaseConfig;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/CategoryDBList;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->refreshInputMethods()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 210
    .end local v0    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized uninstallDownloadedCategoryDB(Ljava/lang/String;II)Z
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "catId"    # I
    .param p3, "languageId"    # I

    .prologue
    const/4 v5, 0x0

    .line 220
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 224
    .local v4, "uninstallLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v4, :cond_0

    .line 238
    :goto_0
    monitor-exit p0

    return v5

    .line 227
    :cond_0
    :try_start_1
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
    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 231
    iget-object v5, p0, Lcom/nuance/swype/input/CategoryDBList;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    iget-object v5, p0, Lcom/nuance/swype/input/CategoryDBList;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 234
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 235
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/CategoryDBList;->deleteFile(Ljava/lang/String;)Z

    move-result v3

    .line 237
    :cond_2
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/CategoryDBList;->updateListToAppPreferences(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v3

    .line 238
    goto :goto_0

    .line 220
    .end local v0    # "catDBs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "cdb":Ljava/lang/String;
    .end local v2    # "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "isRemoved":Z
    .end local v4    # "uninstallLang":Lcom/nuance/swype/input/InputMethods$Language;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
