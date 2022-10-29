.class final Lbolts/Task$8;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$allFinished:Lbolts/TaskCompletionSource;

.field final synthetic val$causes:Ljava/util/ArrayList;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$errorLock:Ljava/lang/Object;

.field final synthetic val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lbolts/TaskCompletionSource;)V
    .registers 6

    .prologue
    .line 538
    iput-object p1, p0, Lbolts/Task$8;->val$errorLock:Ljava/lang/Object;

    iput-object p2, p0, Lbolts/Task$8;->val$causes:Ljava/util/ArrayList;

    iput-object p3, p0, Lbolts/Task$8;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lbolts/Task$8;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lbolts/Task$8;->val$allFinished:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p0, p1}, Lbolts/Task$8;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final then(Lbolts/Task;)Ljava/lang/Void;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 541
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 542
    iget-object v2, p0, Lbolts/Task$8;->val$errorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 543
    :try_start_c
    iget-object v1, p0, Lbolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_47

    .line 547
    :cond_16
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 548
    iget-object v1, p0, Lbolts/Task$8;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 551
    :cond_21
    iget-object v1, p0, Lbolts/Task$8;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_46

    .line 552
    iget-object v1, p0, Lbolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6c

    .line 553
    iget-object v1, p0, Lbolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_4a

    .line 554
    iget-object v2, p0, Lbolts/Task$8;->val$allFinished:Lbolts/TaskCompletionSource;

    iget-object v1, p0, Lbolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v2, v1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 567
    :cond_46
    :goto_46
    return-object v6

    .line 544
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1

    .line 556
    :cond_4a
    new-instance v0, Lbolts/AggregateException;

    const-string/jumbo v1, "There were %d exceptions."

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lbolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lbolts/AggregateException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 559
    .local v0, "error":Ljava/lang/Exception;
    iget-object v1, p0, Lbolts/Task$8;->val$allFinished:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_46

    .line 561
    .end local v0    # "error":Ljava/lang/Exception;
    :cond_6c
    iget-object v1, p0, Lbolts/Task$8;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 562
    iget-object v1, p0, Lbolts/Task$8;->val$allFinished:Lbolts/TaskCompletionSource;

    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->setCancelled()V

    goto :goto_46

    .line 564
    :cond_7a
    iget-object v1, p0, Lbolts/Task$8;->val$allFinished:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, v6}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_46
.end method
