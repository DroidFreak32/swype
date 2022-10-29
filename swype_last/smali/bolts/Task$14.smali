.class final Lbolts/Task$14;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->completeImmediately(Lbolts/TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
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
    .line 863
    iput-object p1, p0, Lbolts/Task$14;->val$ct:Lbolts/CancellationToken;

    iput-object p2, p0, Lbolts/Task$14;->val$tcs:Lbolts/TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$14;->val$continuation:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$14;->val$task:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 866
    iget-object v2, p0, Lbolts/Task$14;->val$ct:Lbolts/CancellationToken;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lbolts/Task$14;->val$ct:Lbolts/CancellationToken;

    invoke-virtual {v2}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 867
    iget-object v2, p0, Lbolts/Task$14;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v2}, Lbolts/TaskCompletionSource;->setCancelled()V

    .line 879
    :goto_11
    return-void

    .line 872
    :cond_12
    :try_start_12
    iget-object v2, p0, Lbolts/Task$14;->val$continuation:Lbolts/Continuation;

    iget-object v3, p0, Lbolts/Task$14;->val$task:Lbolts/Task;

    invoke-interface {v2, v3}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    .line 873
    .local v1, "result":Ljava/lang/Object;, "TTContinuationResult;"
    iget-object v2, p0, Lbolts/Task$14;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v2, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_12 .. :try_end_1f} :catch_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_27

    goto :goto_11

    .line 875
    .end local v1    # "result":Ljava/lang/Object;, "TTContinuationResult;"
    :catch_20
    move-exception v2

    iget-object v2, p0, Lbolts/Task$14;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v2}, Lbolts/TaskCompletionSource;->setCancelled()V

    goto :goto_11

    .line 876
    :catch_27
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lbolts/Task$14;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v2, v0}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_11
.end method
