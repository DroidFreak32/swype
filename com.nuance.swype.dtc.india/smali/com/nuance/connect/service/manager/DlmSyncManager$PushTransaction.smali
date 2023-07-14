.class Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;
.super Lcom/nuance/connect/comm/SimpleTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/DlmSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushTransaction"
.end annotation


# instance fields
.field private final coreId:I

.field private final count:I

.field private final rowid:J

.field final synthetic this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/manager/DlmSyncManager;Lcom/nuance/connect/comm/Command;IIJ)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-direct {p0, p2}, Lcom/nuance/connect/comm/SimpleTransaction;-><init>(Lcom/nuance/connect/comm/Command;)V

    iput p4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->count:I

    iput p3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->coreId:I

    iput-wide p5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->rowid:J

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/nuance/connect/comm/SimpleTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->coreId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processPushResponse cat="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->coreId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$1100(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->coreId:I

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->rowid:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearEvents(IJ)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->finishTransaction(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->count:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "DLM_EVENT_CORE"

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->coreId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DLM_PUSH_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public rollback()V
    .locals 2

    invoke-super {p0}, Lcom/nuance/connect/comm/SimpleTransaction;->rollback()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$PushTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->finishTransaction(Ljava/lang/String;)V

    return-void
.end method
