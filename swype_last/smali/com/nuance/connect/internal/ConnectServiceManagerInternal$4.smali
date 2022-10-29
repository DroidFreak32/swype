.class Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    # getter for: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$500(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Rebinding SDK service now."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    # getter for: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$600(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/ClientBinderInternal;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    # getter for: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$600(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/ClientBinderInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->restart()V

    :cond_1d
    return-void
.end method
