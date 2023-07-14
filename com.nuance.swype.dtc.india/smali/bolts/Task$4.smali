.class final Lbolts/Task$4;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$ct:Lbolts/CancellationToken;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/CancellationToken;Lbolts/TaskCompletionSource;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lbolts/Task$4;->val$ct:Lbolts/CancellationToken;

    iput-object p2, p0, Lbolts/Task$4;->val$tcs:Lbolts/TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$4;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 351
    iget-object v1, p0, Lbolts/Task$4;->val$ct:Lbolts/CancellationToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbolts/Task$4;->val$ct:Lbolts/CancellationToken;

    invoke-virtual {v1}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lbolts/Task$4;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->setCancelled()V

    .line 363
    :goto_0
    return-void

    .line 357
    :cond_0
    :try_start_0
    iget-object v1, p0, Lbolts/Task$4;->val$tcs:Lbolts/TaskCompletionSource;

    iget-object v2, p0, Lbolts/Task$4;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 359
    :catch_0
    move-exception v1

    iget-object v1, p0, Lbolts/Task$4;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->setCancelled()V

    goto :goto_0

    .line 360
    :catch_1
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lbolts/Task$4;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
