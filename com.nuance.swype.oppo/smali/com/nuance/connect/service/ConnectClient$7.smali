.class Lcom/nuance/connect/service/ConnectClient$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$7;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iput-object p2, p0, Lcom/nuance/connect/service/ConnectClient$7;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$7;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$7;->val$msg:Landroid/os/Message;

    invoke-static {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->access$800(Lcom/nuance/connect/service/ConnectClient;Landroid/os/Message;)V

    return-void
.end method
