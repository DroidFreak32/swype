.class Lcom/nuance/connect/internal/ConnectServiceManagerInternal$2;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$2;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$2;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    # getter for: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$000(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "localeReceiver.onReceive()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$2;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    # getter for: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$100(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    monitor-enter v1

    :try_start_13
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$2;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    # getter for: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->activeLocaleOverridden:Z
    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$200(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$2;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    # getter for: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$000(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "localeReceiver.onReceive() ignoring"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    monitor-exit v1

    :goto_28
    return-void

    :cond_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_34

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$2;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    # invokes: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->changeActiveLocale(Ljava/util/Locale;)V
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$300(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;Ljava/util/Locale;)V

    goto :goto_28

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method
