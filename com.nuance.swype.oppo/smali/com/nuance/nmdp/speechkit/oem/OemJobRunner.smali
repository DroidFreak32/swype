.class public Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;
.super Ljava/lang/Thread;
.source "OemJobRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/oem/OemJobRunner$PendingRunnable;
    }
.end annotation


# instance fields
.field private _handler:Landroid/os/Handler;

.field private final _pendingRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/nmdp/speechkit/oem/OemJobRunner$PendingRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final _sync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "sync"    # Ljava/lang/Object;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->_handler:Landroid/os/Handler;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->_pendingRunnables:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->_sync:Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->start()V

    .line 35
    return-void
.end method


# virtual methods
.method public addJob(Ljava/lang/Runnable;I)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->_handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 46
    if-lez p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->_handler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->_handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->_pendingRunnables:Ljava/util/ArrayList;

    new-instance v1, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner$PendingRunnable;

    invoke-direct {v1, p1, p2}, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner$PendingRunnable;-><init>(Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 40
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 64
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->_sync:Ljava/lang/Object;

    monitor-enter v4

    .line 66
    :try_start_0
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->_handler:Landroid/os/Handler;

    .line 68
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->_pendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 69
    .local v1, "numRunnables":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 71
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->_pendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner$PendingRunnable;

    .line 72
    .local v2, "r":Lcom/nuance/nmdp/speechkit/oem/OemJobRunner$PendingRunnable;
    iget v3, v2, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner$PendingRunnable;->Delay:I

    if-lez v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->_handler:Landroid/os/Handler;

    iget-object v5, v2, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner$PendingRunnable;->Runnable:Ljava/lang/Runnable;

    iget v6, v2, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner$PendingRunnable;->Delay:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->_handler:Landroid/os/Handler;

    iget-object v5, v2, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner$PendingRunnable;->Runnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 81
    .end local v0    # "i":I
    .end local v1    # "numRunnables":I
    .end local v2    # "r":Lcom/nuance/nmdp/speechkit/oem/OemJobRunner$PendingRunnable;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 80
    .restart local v0    # "i":I
    .restart local v1    # "numRunnables":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->_pendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 81
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 84
    return-void
.end method
