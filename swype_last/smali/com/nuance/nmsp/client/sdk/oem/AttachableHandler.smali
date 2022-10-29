.class public Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized attachToCurrentThread()V
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler$a;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;->a:Landroid/os/Handler;

    iget-object v3, v0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler$a;->a:Landroid/os/Message;

    iget-wide v4, v0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler$a;->b:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2c

    goto :goto_16

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    :cond_34
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendMessageAtTime(Landroid/os/Message;J)Z
    .registers 8

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;->a:Landroid/os/Handler;

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler$a;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler$a;-><init>(Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;Landroid/os/Message;J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_29

    :cond_10
    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_29

    move-result v0

    goto :goto_10

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method
