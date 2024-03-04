.class Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$200(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "Rebinding SDK service now."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$300(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/ClientBinderInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$300(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/ClientBinderInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->restart()V

    :cond_0
    return-void
.end method
