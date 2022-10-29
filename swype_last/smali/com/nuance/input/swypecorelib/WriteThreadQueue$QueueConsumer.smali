.class Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueConsumer;
.super Ljava/lang/Object;
.source "WriteThreadQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueConsumer"
.end annotation


# instance fields
.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final writeThreadQueueConsumer:Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;)V
    .registers 3
    .param p2, "consumer"    # Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;",
            ">;",
            "Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueConsumer;->writeThreadQueueConsumer:Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;

    .line 153
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueConsumer;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 154
    return-void
.end method

.method private consume(Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;)V
    .registers 3
    .param p1, "item"    # Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueConsumer;->writeThreadQueueConsumer:Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;

    if-eqz v0, :cond_9

    .line 177
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueConsumer;->writeThreadQueueConsumer:Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;

    invoke-interface {v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;->consume(Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;)V

    .line 179
    :cond_9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 160
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueConsumer;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;

    .line 163
    .local v1, "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    iget v2, v1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;->mType:I

    if-nez v2, :cond_12

    .line 164
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueConsumer;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 173
    .end local v1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :goto_11
    return-void

    .line 168
    .restart local v1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :cond_12
    invoke-direct {p0, v1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueConsumer;->consume(Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_0

    .line 170
    .end local v1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :catch_16
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "WriteThreadQueue"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method
