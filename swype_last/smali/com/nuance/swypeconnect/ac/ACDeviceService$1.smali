.class Lcom/nuance/swypeconnect/ac/ACDeviceService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/util/ActionDelegateCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACDeviceService;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACDeviceService;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACDeviceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/nuance/connect/util/ConnectAction;)Landroid/os/Bundle;
    .registers 4

    invoke-virtual {p1}, Lcom/nuance/connect/util/ConnectAction;->getFilter()Lcom/nuance/connect/util/ActionFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACDeviceService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDeviceService;->swyperIdFilter:Lcom/nuance/connect/util/ActionFilter;
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->access$000(Lcom/nuance/swypeconnect/ac/ACDeviceService;)Lcom/nuance/connect/util/ActionFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/ActionFilter;->matches(Lcom/nuance/connect/util/ActionFilter;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACDeviceService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACDeviceService;->notifyCallbacksOfSwyperId()V
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->access$100(Lcom/nuance/swypeconnect/ac/ACDeviceService;)V

    :cond_15
    :goto_15
    const/4 v0, 0x0

    return-object v0

    :cond_17
    invoke-virtual {p1}, Lcom/nuance/connect/util/ConnectAction;->getFilter()Lcom/nuance/connect/util/ActionFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACDeviceService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceIdFilter:Lcom/nuance/connect/util/ActionFilter;
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->access$200(Lcom/nuance/swypeconnect/ac/ACDeviceService;)Lcom/nuance/connect/util/ActionFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/ActionFilter;->matches(Lcom/nuance/connect/util/ActionFilter;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACDeviceService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACDeviceService;->notifyCallbacksOfDeviceId()V
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->access$300(Lcom/nuance/swypeconnect/ac/ACDeviceService;)V

    goto :goto_15
.end method
