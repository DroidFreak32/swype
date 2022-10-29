.class Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;


# instance fields
.field available:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field downloaded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

.field updatable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;)V
    .registers 3

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->available:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->downloaded:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->updatable:Ljava/util/List;

    return-void
.end method


# virtual methods
.method isListUpdated(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
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

.method public onLanguageListUpdate()V
    .registers 9

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    iget-boolean v1, v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->isShutdown:Z

    if-nez v1, :cond_75

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->getAvailableLanguages()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->available:Ljava/util/List;

    invoke-virtual {p0, v3, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_95

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->available:Ljava/util/List;

    move v1, v0

    :goto_1e
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->getDownloadedLanguages()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->downloaded:Ljava/util/List;

    invoke-virtual {p0, v4, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_93

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->downloaded:Ljava/util/List;

    move v3, v0

    :goto_34
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->updatable:Ljava/util/List;

    invoke-virtual {p0, v5, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_91

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->updatable:Ljava/util/List;

    move v4, v0

    :goto_4a
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->access$000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v5, v2, [Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;

    invoke-virtual {v0, v5}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;

    array-length v5, v0

    :goto_59
    if-ge v2, v5, :cond_75

    aget-object v6, v0, v2

    if-eqz v1, :cond_64

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->available:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;->availableLanguages(Ljava/util/List;)V

    :cond_64
    if-eqz v3, :cond_6b

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->downloaded:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;->downloadedLanguages(Ljava/util/List;)V

    :cond_6b
    if-eqz v4, :cond_72

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->updatable:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;->updatableLanguages(Ljava/util/List;)V

    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_75
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->access$100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectInitialized()Z

    move-result v0

    if-nez v0, :cond_90

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->access$100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->serviceInitialized(Ljava/lang/String;)V

    :cond_90
    return-void

    :cond_91
    move v4, v2

    goto :goto_4a

    :cond_93
    move v3, v2

    goto :goto_34

    :cond_95
    move v1, v2

    goto :goto_1e
.end method
