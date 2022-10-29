.class Lcom/nuance/connect/util/HandlerThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/util/HandlerThread;


# direct methods
.method constructor <init>(Lcom/nuance/connect/util/HandlerThread;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/util/HandlerThread$1;->this$0:Lcom/nuance/connect/util/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    iget-object v0, p0, Lcom/nuance/connect/util/HandlerThread$1;->this$0:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/HandlerThread;->handleMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/nuance/connect/util/HandlerThread$1;->this$0:Lcom/nuance/connect/util/HandlerThread;

    # getter for: Lcom/nuance/connect/util/HandlerThread;->resultHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nuance/connect/util/HandlerThread;->access$000(Lcom/nuance/connect/util/HandlerThread;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Landroid/os/Message;->getWhen()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1e

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    :cond_1e
    iget-object v1, p0, Lcom/nuance/connect/util/HandlerThread$1;->this$0:Lcom/nuance/connect/util/HandlerThread;

    # getter for: Lcom/nuance/connect/util/HandlerThread;->resultHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nuance/connect/util/HandlerThread;->access$000(Lcom/nuance/connect/util/HandlerThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/nuance/connect/util/HandlerThread$1;->this$0:Lcom/nuance/connect/util/HandlerThread;

    # getter for: Lcom/nuance/connect/util/HandlerThread;->resultHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nuance/connect/util/HandlerThread;->access$000(Lcom/nuance/connect/util/HandlerThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_30
    const/4 v0, 0x0

    return v0
.end method
