.class Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;


# instance fields
.field available:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field downloaded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

.field updatable:Ljava/util/List;
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
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->available:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->downloaded:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->updatable:Ljava/util/List;

    return-void
.end method


# virtual methods
.method dictionaryListToStrings(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method isListUpdated(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    invoke-interface {p2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method public listUpdated()V
    .locals 14

    const/4 v0, 0x0

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$300(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "dictionaryListCallback.listUpdated() available="

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-boolean v1, v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isShutdown:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$400(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->dictionaryListToStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->available:Ljava/util/List;

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->available:Ljava/util/List;

    move v7, v8

    :goto_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->dictionaryListToStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->downloaded:Ljava/util/List;

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->downloaded:Ljava/util/List;

    move v9, v8

    :goto_1
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->dictionaryListToStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->updatable:Ljava/util/List;

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->updatable:Ljava/util/List;

    move v10, v8

    :goto_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$300(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "dictionaryListCallback.listUpdated() notifyAvailable="

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, " notifyDownloaded="

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, " notifyUpdatable="

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$500(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$500(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    if-eqz v7, :cond_1

    invoke-interface {v0, v11}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->availableDictionaries(Ljava/util/List;)V

    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v0, v12}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->downloadedDictionaries(Ljava/util/List;)V

    :cond_2
    if-eqz v10, :cond_0

    invoke-interface {v0, v13}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->updatableDictionaries(Ljava/util/List;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$600(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$700(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->serviceInitialized(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-static {v0, v8}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$602(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Z)Z

    :cond_4
    return-void

    :cond_5
    move v10, v0

    goto :goto_2

    :cond_6
    move v9, v0

    goto/16 :goto_1

    :cond_7
    move v7, v0

    goto/16 :goto_0
.end method
