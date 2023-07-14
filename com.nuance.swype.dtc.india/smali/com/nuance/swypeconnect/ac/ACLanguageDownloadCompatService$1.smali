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
    .locals 1

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
    .locals 3
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

.method public onLanguageListUpdate()V
    .locals 8

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    iget-boolean v1, v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->isShutdown:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->getAvailableLanguages()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->available:Ljava/util/List;

    invoke-virtual {p0, v3, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->available:Ljava/util/List;

    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->getDownloadedLanguages()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->downloaded:Ljava/util/List;

    invoke-virtual {p0, v4, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->downloaded:Ljava/util/List;

    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->updatable:Ljava/util/List;

    invoke-virtual {p0, v5, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->updatable:Ljava/util/List;

    move v4, v0

    :goto_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->access$000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v5, v2, [Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;

    invoke-virtual {v0, v5}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;

    array-length v5, v0

    :goto_3
    if-ge v2, v5, :cond_3

    aget-object v6, v0, v2

    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->available:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;->availableLanguages(Ljava/util/List;)V

    :cond_0
    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->downloaded:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;->downloadedLanguages(Ljava/util/List;)V

    :cond_1
    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->updatable:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;->updatableLanguages(Ljava/util/List;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->access$100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->access$100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->serviceInitialized(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    move v4, v2

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_0
.end method
