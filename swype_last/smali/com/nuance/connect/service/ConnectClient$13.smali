.class Lcom/nuance/connect/service/ConnectClient$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;Landroid/os/Message;)V
    .registers 3

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$13;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iput-object p2, p0, Lcom/nuance/connect/service/ConnectClient$13;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$13;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$13;->val$msg:Landroid/os/Message;

    # invokes: Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->access$1400(Lcom/nuance/connect/service/ConnectClient;Landroid/os/Message;)V

    return-void
.end method
