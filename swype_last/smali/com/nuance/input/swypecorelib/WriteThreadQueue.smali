.class Lcom/nuance/input/swypecorelib/WriteThreadQueue;
.super Ljava/lang/Object;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/input/swypecorelib/WriteThreadQueue$EndArcSequence;,
        Lcom/nuance/input/swypecorelib/WriteThreadQueue$StartArcSequence;,
        Lcom/nuance/input/swypecorelib/WriteThreadQueue$ChangeSettings;,
        Lcom/nuance/input/swypecorelib/WriteThreadQueue$TextQueueItem;,
        Lcom/nuance/input/swypecorelib/WriteThreadQueue$KeyQueueItem;,
        Lcom/nuance/input/swypecorelib/WriteThreadQueue$CharQueueItem;,
        Lcom/nuance/input/swypecorelib/WriteThreadQueue$RecognizeQueueItem;,
        Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;,
        Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;,
        Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueConsumer;,
        Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WriteThreadQueue"


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

.field private thread:Ljava/lang/Thread;

.field private final writeThreadQueueConsumer:Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;


# direct methods
.method constructor <init>(Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;)V
    .registers 3
    .param p1, "consumer"    # Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 31
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->writeThreadQueueConsumer:Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;

    .line 32
    return-void
.end method


# virtual methods
.method addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    .registers 5
    .param p3, "startWord"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "arc1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .local p2, "arc2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    new-instance v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->put(Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;)V

    .line 115
    return-void
.end method

.method addChar(C)V
    .registers 3
    .param p1, "ch"    # C

    .prologue
    .line 98
    new-instance v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$CharQueueItem;

    invoke-direct {v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$CharQueueItem;-><init>(C)V

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->put(Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;)V

    .line 99
    return-void
.end method

.method addKey(I)V
    .registers 3
    .param p1, "key"    # I

    .prologue
    .line 106
    new-instance v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$KeyQueueItem;

    invoke-direct {v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$KeyQueueItem;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->put(Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;)V

    .line 107
    return-void
.end method

.method addRecognize(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "startWord"    # Ljava/lang/CharSequence;

    .prologue
    .line 122
    new-instance v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$RecognizeQueueItem;

    invoke-direct {v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$RecognizeQueueItem;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->put(Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;)V

    .line 123
    return-void
.end method

.method addSettings(Lcom/nuance/input/swypecorelib/T9WriteSetting;)V
    .registers 3
    .param p1, "settings"    # Lcom/nuance/input/swypecorelib/T9WriteSetting;

    .prologue
    .line 126
    new-instance v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ChangeSettings;

    invoke-direct {v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ChangeSettings;-><init>(Lcom/nuance/input/swypecorelib/T9WriteSetting;)V

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->put(Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;)V

    .line 127
    return-void
.end method

.method addText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 90
    new-instance v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$TextQueueItem;

    invoke-direct {v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$TextQueueItem;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->put(Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;)V

    .line 91
    return-void
.end method

.method clearQueue()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 83
    return-void
.end method

.method endArcSequence()V
    .registers 2

    .prologue
    .line 143
    new-instance v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$EndArcSequence;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$EndArcSequence;-><init>()V

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->put(Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;)V

    .line 144
    return-void
.end method

.method declared-synchronized isStarted()Z
    .registers 2

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->thread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method put(Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;)V
    .registers 5
    .param p1, "item"    # Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->isStarted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 75
    :goto_6
    return-void

    .line 71
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 72
    :catch_d
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "WriteThreadQueue"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method declared-synchronized start()V
    .registers 5

    .prologue
    .line 39
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_1a

    .line 40
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueConsumer;

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->writeThreadQueueConsumer:Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;

    invoke-direct {v1, v2, v3}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueConsumer;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->thread:Ljava/lang/Thread;

    .line 41
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 43
    :cond_1a
    monitor-exit p0

    return-void

    .line 39
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method startArcSequence()V
    .registers 2

    .prologue
    .line 134
    new-instance v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$StartArcSequence;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$StartArcSequence;-><init>()V

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->put(Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;)V

    .line 135
    return-void
.end method

.method declared-synchronized stop()V
    .registers 6

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_19

    .line 51
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_27

    .line 53
    :try_start_a
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_16} :catch_1b
    .catchall {:try_start_a .. :try_end_16} :catchall_27

    .line 57
    :goto_16
    const/4 v1, 0x0

    :try_start_17
    iput-object v1, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->thread:Ljava/lang/Thread;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_27

    .line 59
    :cond_19
    monitor-exit p0

    return-void

    .line 54
    :catch_1b
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1c
    const-string/jumbo v1, "WriteThreadQueue"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_27

    goto :goto_16

    .line 50
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method
