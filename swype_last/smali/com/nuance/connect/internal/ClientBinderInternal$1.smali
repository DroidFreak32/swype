.class Lcom/nuance/connect/internal/ClientBinderInternal$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ClientBinderInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ClientBinderInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const/4 v2, 0x0

    if-nez p2, :cond_9

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    # invokes: Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V
    invoke-static {v0, v2}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V

    :cond_8
    :goto_8
    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$102(Lcom/nuance/connect/internal/ClientBinderInternal;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    const/4 v1, 0x1

    # invokes: Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_19} :catch_3d

    :goto_19
    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    # getter for: Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$200(Lcom/nuance/connect/internal/ClientBinderInternal;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    # getter for: Lcom/nuance/connect/internal/ClientBinderInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;
    invoke-static {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$300(Lcom/nuance/connect/internal/ClientBinderInternal;)Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;->onBound()V

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    # getter for: Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$400(Lcom/nuance/connect/internal/ClientBinderInternal;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    # invokes: Lcom/nuance/connect/internal/ClientBinderInternal;->processPriorityQueuedMessages()V
    invoke-static {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$500(Lcom/nuance/connect/internal/ClientBinderInternal;)V

    goto :goto_8

    :catch_3d
    move-exception v0

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    # invokes: Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V
    invoke-static {v0, v2}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V

    goto :goto_19
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$102(Lcom/nuance/connect/internal/ClientBinderInternal;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    const/4 v1, 0x0

    # invokes: Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    # getter for: Lcom/nuance/connect/internal/ClientBinderInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;
    invoke-static {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$300(Lcom/nuance/connect/internal/ClientBinderInternal;)Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;->onUnbound()V

    return-void
.end method
