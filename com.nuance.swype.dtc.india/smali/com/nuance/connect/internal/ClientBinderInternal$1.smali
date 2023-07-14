.class Lcom/nuance/connect/internal/ClientBinderInternal$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ClientBinderInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ClientBinderInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-static {v0, v2}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$102(Lcom/nuance/connect/internal/ClientBinderInternal;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$200(Lcom/nuance/connect/internal/ClientBinderInternal;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$300(Lcom/nuance/connect/internal/ClientBinderInternal;)Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;->onBound()V

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$400(Lcom/nuance/connect/internal/ClientBinderInternal;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$500(Lcom/nuance/connect/internal/ClientBinderInternal;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-static {v0, v2}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$102(Lcom/nuance/connect/internal/ClientBinderInternal;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$300(Lcom/nuance/connect/internal/ClientBinderInternal;)Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;->onUnbound()V

    return-void
.end method
