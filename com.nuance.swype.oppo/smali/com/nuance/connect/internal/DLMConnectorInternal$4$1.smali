.class Lcom/nuance/connect/internal/DLMConnectorInternal$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/internal/DLMConnectorInternal$4;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DLMConnectorInternal$4;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4$1;->this$1:Lcom/nuance/connect/internal/DLMConnectorInternal$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4$1;->this$1:Lcom/nuance/connect/internal/DLMConnectorInternal$4;

    iget-object v0, v0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$000(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "(DLMConnectorInternal.run() cleanup backupEvents"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4$1;->this$1:Lcom/nuance/connect/internal/DLMConnectorInternal$4;

    iget-object v0, v0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v0, v2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$1202(Lcom/nuance/connect/internal/DLMConnectorInternal;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4$1;->this$1:Lcom/nuance/connect/internal/DLMConnectorInternal$4;

    iget-object v0, v0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$1302(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;)Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4$1;->this$1:Lcom/nuance/connect/internal/DLMConnectorInternal$4;

    iget-object v0, v0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v0, v2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$1102(Lcom/nuance/connect/internal/DLMConnectorInternal;I)I

    return-void
.end method
