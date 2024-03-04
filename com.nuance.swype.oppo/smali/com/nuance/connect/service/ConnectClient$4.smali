.class Lcom/nuance/connect/service/ConnectClient$4;
.super Lcom/nuance/connect/internal/Property$BooleanValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$4;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$BooleanValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$4;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$300(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "Idle status changed: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$4;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$4;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v1}, Lcom/nuance/connect/service/ConnectClient;->access$400(Lcom/nuance/connect/service/ConnectClient;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$4;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$4;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v1}, Lcom/nuance/connect/service/ConnectClient;->access$400(Lcom/nuance/connect/service/ConnectClient;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$4;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$4;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v1}, Lcom/nuance/connect/service/ConnectClient;->access$400(Lcom/nuance/connect/service/ConnectClient;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
