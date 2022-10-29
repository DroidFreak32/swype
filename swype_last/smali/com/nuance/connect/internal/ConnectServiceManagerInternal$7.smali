.class Lcom/nuance/connect/internal/ConnectServiceManagerInternal$7;
.super Lcom/nuance/connect/internal/Property$IntegerValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$7;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$IntegerValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$7;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$7;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    # invokes: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->sendConnectConfig()V
    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$700(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    :cond_11
    return-void
.end method
