.class Lcom/nuance/connect/internal/ConfigServiceInternal$4;
.super Lcom/nuance/connect/internal/Property$StringValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$StringValueListener;-><init>()V

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendForegroundDataState()V
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$300(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->onConnectivityChanged()V

    :cond_10
    return-void
.end method
