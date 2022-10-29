.class final Lbolts/Task$15;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->completeAfterTask(Lbolts/TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$ct:Lbolts/CancellationToken;

.field final synthetic val$task:Lbolts/Task;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/CancellationToken;Lbolts/TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;)V
    .registers 5

    .prologue
    .line 908
    iput-object p1, p0, Lbolts/Task$15;->val$ct:Lbolts/CancellationToken;

    iput-object p2, p0, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$15;->val$continuation:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$15;->val$task:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 911
    iget-object v2, p0, Lbolts/Task$15;->val$ct:Lbolts/CancellationToken;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lbolts/Task$15;->val$ct:Lbolts/CancellationToken;

    invoke-virtual {v2}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 912
    iget-object v2, p0, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v2}, Lbolts/TaskCompletionSource;->setCancelled()V

    .line 945
    :goto_11
    return-void

    .line 917
    :cond_12
    :try_start_12
    iget-object v2, p0, Lbolts/Task$15;->val$continuation:Lbolts/Continuation;

    iget-object v3, p0, Lbolts/Task$15;->val$task:Lbolts/Task;

    invoke-interface {v2, v3}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task;

    .line 918
    .local v1, "result":Lbolts/Task;, "Lbolts/Task<TTContinuationResult;>;"
    if-nez v1, :cond_2c

    .line 919
    iget-object v2, p0, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/util/concurrent/CancellationException; {:try_start_12 .. :try_end_24} :catch_25
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_24} :catch_35

    goto :goto_11

    .line 941
    .end local v1    # "result":Lbolts/Task;, "Lbolts/Task<TTContinuationResult;>;"
    :catch_25
    move-exception v2

    iget-object v2, p0, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v2}, Lbolts/TaskCompletionSource;->setCancelled()V

    goto :goto_11

    .line 921
    .restart local v1    # "result":Lbolts/Task;, "Lbolts/Task<TTContinuationResult;>;"
    :cond_2c
    :try_start_2c
    new-instance v2, Lbolts/Task$15$1;

    invoke-direct {v2, p0}, Lbolts/Task$15$1;-><init>(Lbolts/Task$15;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;
    :try_end_34
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2c .. :try_end_34} :catch_25
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_34} :catch_35

    goto :goto_11

    .line 942
    .end local v1    # "result":Lbolts/Task;, "Lbolts/Task<TTContinuationResult;>;"
    :catch_35
    move-exception v0

    .line 943
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v2, v0}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_11
.end method
