.class Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/SyncService$DLMSyncCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACDLMSyncService;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateFeatureLastUsed()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->access$000(Lcom/nuance/swypeconnect/ac/ACDLMSyncService;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->BACKUP_SYNC:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    return-void
.end method


# virtual methods
.method public backupOccurred(II)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->access$100(Lcom/nuance/swypeconnect/ac/ACDLMSyncService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {v3, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;->backupOccurred(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;->updateFeatureLastUsed()V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->access$100(Lcom/nuance/swypeconnect/ac/ACDLMSyncService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {v3, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;->onError(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public receivedEvents(II)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->access$100(Lcom/nuance/swypeconnect/ac/ACDLMSyncService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {v3, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;->receivedEvents(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;->updateFeatureLastUsed()V

    return-void
.end method

.method public restoreOccurred(II)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->access$100(Lcom/nuance/swypeconnect/ac/ACDLMSyncService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {v3, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;->restoreOccurred(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;->updateFeatureLastUsed()V

    return-void
.end method

.method public sentEvents(II)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->access$100(Lcom/nuance/swypeconnect/ac/ACDLMSyncService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {v3, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;->sentEvents(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;->updateFeatureLastUsed()V

    return-void
.end method
