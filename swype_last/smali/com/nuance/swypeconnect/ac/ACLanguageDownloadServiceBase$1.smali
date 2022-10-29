.class Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/LanguageService$ListCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public languageListUpdate()V
    .registers 16

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageService:Lcom/nuance/connect/api/LanguageService;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$800(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Lcom/nuance/connect/api/LanguageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbList()Ljava/util/List;

    move-result-object v0

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$900()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v3, "languageListUpdate: "

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_29
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_bd

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Landroid/util/SparseArray;

    move-result-object v5

    monitor-enter v5

    :try_start_40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;

    if-nez v1, :cond_c0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-direct {v1, v0, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;-><init>(Lcom/nuance/connect/api/LanguageService$LdbInfo;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)V

    const/4 v2, 0x1

    :cond_6a
    :goto_6a
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v8

    invoke-virtual {v7, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageIds()[I

    move-result-object v7

    array-length v8, v7

    const/4 v1, 0x0

    :goto_7d
    if-ge v1, v8, :cond_44

    aget v9, v7, v1

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v10

    if-eq v9, v10, :cond_ba

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ba

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$900()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v10

    const-string/jumbo v11, "adjusting id="

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string/jumbo v13, " to="

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v11, v12, v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;
    invoke-static {v10}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->remove(I)V
    :try_end_ba
    .catchall {:try_start_40 .. :try_end_ba} :catchall_13b

    :cond_ba
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    :catchall_bd
    move-exception v0

    :try_start_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw v0

    :cond_c0
    :try_start_c0
    invoke-virtual {v1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACLanguageDbInfoImpl;->updateWithInfo(Lcom/nuance/connect/api/LanguageService$LdbInfo;)Z

    move-result v7

    if-eqz v7, :cond_6a

    const/4 v2, 0x1

    goto :goto_6a

    :cond_c8
    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_cb
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_f0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-gez v2, :cond_ed

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageDatabases:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    const/4 v0, 0x1

    :cond_ed
    add-int/lit8 v1, v1, 0x1

    goto :goto_cb

    :cond_f0
    monitor-exit v5
    :try_end_f1
    .catchall {:try_start_c0 .. :try_end_f1} :catchall_13b

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_13f

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :goto_ff
    :try_start_ff
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_13e

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_138

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->supportedLangs:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_138
    .catchall {:try_start_ff .. :try_end_138} :catchall_16a

    :cond_138
    add-int/lit8 v1, v1, 0x1

    goto :goto_ff

    :catchall_13b
    move-exception v0

    :try_start_13c
    monitor-exit v5
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_13b

    throw v0

    :cond_13e
    :try_start_13e
    monitor-exit v2
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_16a

    :cond_13f
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    iget-boolean v1, v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isShutdown:Z

    if-nez v1, :cond_188

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isLanguageListAvailable()Z

    move-result v1

    if-eqz v1, :cond_188

    if-eqz v0, :cond_16d

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1200(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_160
    if-ge v1, v2, :cond_16d

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;->onLanguageListUpdate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_160

    :catchall_16a
    move-exception v0

    :try_start_16b
    monitor-exit v2
    :try_end_16c
    .catchall {:try_start_16b .. :try_end_16c} :catchall_16a

    throw v0

    :cond_16d
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->bInitialized:Z
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1300(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Z

    move-result v0

    if-nez v0, :cond_188

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->serviceInitialized(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    const/4 v1, 0x1

    # setter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->bInitialized:Z
    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$1302(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;Z)Z

    :cond_188
    return-void
.end method
