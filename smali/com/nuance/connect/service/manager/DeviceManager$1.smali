.class Lcom/nuance/connect/service/manager/DeviceManager$1;
.super Lcom/nuance/connect/service/manager/SimpleTransaction;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/DeviceManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DeviceManager;Lcom/nuance/connect/service/comm/Command;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DeviceManager$1;->this$0:Lcom/nuance/connect/service/manager/DeviceManager;

    invoke-direct {p0, p2}, Lcom/nuance/connect/service/manager/SimpleTransaction;-><init>(Lcom/nuance/connect/service/comm/Command;)V

    return-void
.end method


# virtual methods
.method public onEndProcessing()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$1;->this$0:Lcom/nuance/connect/service/manager/DeviceManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager$1;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->finishTransaction(Ljava/lang/String;)V

    return-void
.end method
