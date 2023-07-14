.class Lcom/nuance/connect/util/InstallMetadata$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/util/InstallMetadata;


# direct methods
.method constructor <init>(Lcom/nuance/connect/util/InstallMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/util/InstallMetadata$1;->this$0:Lcom/nuance/connect/util/InstallMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata$1;->this$0:Lcom/nuance/connect/util/InstallMetadata;

    invoke-static {v0}, Lcom/nuance/connect/util/InstallMetadata;->access$000(Lcom/nuance/connect/util/InstallMetadata;)[I

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata$1;->this$0:Lcom/nuance/connect/util/InstallMetadata;

    invoke-static {v0}, Lcom/nuance/connect/util/InstallMetadata;->access$100(Lcom/nuance/connect/util/InstallMetadata;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    sub-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata$1;->this$0:Lcom/nuance/connect/util/InstallMetadata;

    invoke-static {v0}, Lcom/nuance/connect/util/InstallMetadata;->access$200(Lcom/nuance/connect/util/InstallMetadata;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
