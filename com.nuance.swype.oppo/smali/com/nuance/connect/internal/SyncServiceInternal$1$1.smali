.class Lcom/nuance/connect/internal/SyncServiceInternal$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/internal/SyncServiceInternal$1;

.field final synthetic val$core:I


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/SyncServiceInternal$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1$1;->this$1:Lcom/nuance/connect/internal/SyncServiceInternal$1;

    iput p2, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1$1;->val$core:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventProcessComplete(II)V
    .locals 5

    const/4 v1, 0x0

    new-array v0, v1, [Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    iget-object v2, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1$1;->this$1:Lcom/nuance/connect/internal/SyncServiceInternal$1;

    iget-object v2, v2, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$100(Lcom/nuance/connect/internal/SyncServiceInternal;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1$1;->this$1:Lcom/nuance/connect/internal/SyncServiceInternal$1;

    iget-object v3, v3, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v3}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$100(Lcom/nuance/connect/internal/SyncServiceInternal;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget v4, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1$1;->val$core:I

    invoke-interface {v3, v4, p2}, Lcom/nuance/connect/api/SyncService$DLMSyncCallback;->restoreOccurred(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    return-void
.end method
