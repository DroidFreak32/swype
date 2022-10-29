.class Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;
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
    .registers 3

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->available:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->downloaded:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->updatable:Ljava/util/List;

    return-void
.end method


# virtual methods
.method dictionaryListToStrings(Ljava/util/List;)Ljava/util/List;
    .registers 5
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

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v1
.end method

.method isListUpdated(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
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

    if-nez v2, :cond_c

    move v2, v0

    :goto_9
    if-eqz v2, :cond_e

    :cond_b
    :goto_b
    return v0

    :cond_c
    move v2, v1

    goto :goto_9

    :cond_e
    invoke-interface {p2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_b
.end method

.method public listUpdated()V
    .registers 16

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$000(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "dictionaryListCallback.listUpdated() available="

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isShutdown:Z

    if-nez v0, :cond_c9

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v0

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->markPreinstalledDictionaries()V
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$100(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->dictionaryListToStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->available:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_ce

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->available:Ljava/util/List;

    move v7, v8

    :goto_40
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->dictionaryListToStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->downloaded:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_cc

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->downloaded:Ljava/util/List;

    move v10, v8

    :goto_55
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v14

    invoke-virtual {p0, v14}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->dictionaryListToStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->updatable:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_ca

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->updatable:Ljava/util/List;

    move v11, v8

    :goto_6a
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$000(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "dictionaryListCallback.listUpdated() notifyAvailable="

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, " notifyDownloaded="

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, " notifyUpdatable="

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$200(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v1, v9, [Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    array-length v1, v0

    :goto_97
    if-ge v9, v1, :cond_ad

    aget-object v2, v0, v9

    if-eqz v7, :cond_a0

    invoke-interface {v2, v12}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->availableDictionaries(Ljava/util/List;)V

    :cond_a0
    if-eqz v10, :cond_a5

    invoke-interface {v2, v13}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->downloadedDictionaries(Ljava/util/List;)V

    :cond_a5
    if-eqz v11, :cond_aa

    invoke-interface {v2, v14}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->updatableDictionaries(Ljava/util/List;)V

    :cond_aa
    add-int/lit8 v9, v9, 0x1

    goto :goto_97

    :cond_ad
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$300(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Z

    move-result v0

    if-nez v0, :cond_c9

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$400(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->serviceInitialized(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    # setter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z
    invoke-static {v0, v8}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$302(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Z)Z

    :cond_c9
    return-void

    :cond_ca
    move v11, v9

    goto :goto_6a

    :cond_cc
    move v10, v9

    goto :goto_55

    :cond_ce
    move v7, v9

    goto/16 :goto_40
.end method
