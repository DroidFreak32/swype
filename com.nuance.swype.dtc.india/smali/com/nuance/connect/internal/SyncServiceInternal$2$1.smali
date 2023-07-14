.class Lcom/nuance/connect/internal/SyncServiceInternal$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/internal/SyncServiceInternal$2;

.field final synthetic val$core:I


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/SyncServiceInternal$2;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2$1;->this$1:Lcom/nuance/connect/internal/SyncServiceInternal$2;

    iput p2, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2$1;->val$core:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventProcessComplete(II)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2$1;->this$1:Lcom/nuance/connect/internal/SyncServiceInternal$2;

    iget-object v0, v0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$400(Lcom/nuance/connect/internal/SyncServiceInternal;)[Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget v4, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2$1;->val$core:I

    invoke-interface {v3, v4, p2}, Lcom/nuance/connect/api/SyncService$DLMSyncCallback;->restoreOccurred(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
