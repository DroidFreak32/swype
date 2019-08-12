.class Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/LanguageService$ListCallback;


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

.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

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
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->available:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->downloaded:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->updatable:Ljava/util/List;

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

.method public languageListUpdate()V
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    iget-boolean v1, v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isShutdown:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isLanguageListAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getAvailableLanguages()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->available:Ljava/util/List;

    invoke-virtual {p0, v3, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->available:Ljava/util/List;

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getDownloadedLanguages()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->downloaded:Ljava/util/List;

    invoke-virtual {p0, v4, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->downloaded:Ljava/util/List;

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->updatable:Ljava/util/List;

    invoke-virtual {p0, v5, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->updatable:Ljava/util/List;

    move v4, v2

    :goto_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-static {v5}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$300(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/Set;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-static {v6}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$300(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->available:Ljava/util/List;

    invoke-interface {v0, v6}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;->availableLanguages(Ljava/util/List;)V

    :cond_1
    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->downloaded:Ljava/util/List;

    invoke-interface {v0, v6}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;->downloadedLanguages(Ljava/util/List;)V

    :cond_2
    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->updatable:Ljava/util/List;

    invoke-interface {v0, v6}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;->updatableLanguages(Ljava/util/List;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$400(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->serviceInitialized(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-static {v0, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$402(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;Z)Z

    :cond_4
    return-void

    :cond_5
    move v4, v0

    goto :goto_2

    :cond_6
    move v3, v0

    goto :goto_1

    :cond_7
    move v1, v0

    goto/16 :goto_0
.end method
