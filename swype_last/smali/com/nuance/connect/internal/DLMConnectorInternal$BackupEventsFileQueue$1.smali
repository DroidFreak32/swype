.class Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue$1;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue$1;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    # invokes: Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->processEvents()V
    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->access$2400(Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;)V

    return-void
.end method
