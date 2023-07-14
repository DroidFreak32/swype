.class public Lbolts/TaskCompletionSource;
.super Ljava/lang/Object;
.source "TaskCompletionSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final task:Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<TTResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lbolts/Task;

    invoke-direct {v0}, Lbolts/Task;-><init>()V

    iput-object v0, p0, Lbolts/TaskCompletionSource;->task:Lbolts/Task;

    .line 19
    return-void
.end method


# virtual methods
.method public getTask()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<TTResult;>;"
    iget-object v0, p0, Lbolts/TaskCompletionSource;->task:Lbolts/Task;

    return-object v0
.end method

.method public setCancelled()V
    .locals 2

    .prologue
    .line 53
    .local p0, "this":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<TTResult;>;"
    invoke-virtual {p0}, Lbolts/TaskCompletionSource;->trySetCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    return-void
.end method

.method public setError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 71
    .local p0, "this":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<TTResult;>;"
    invoke-virtual {p0, p1}, Lbolts/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set the error on a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<TTResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    invoke-virtual {p0, p1}, Lbolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set the result of a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    return-void
.end method

.method public trySetCancelled()Z
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<TTResult;>;"
    iget-object v0, p0, Lbolts/TaskCompletionSource;->task:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->trySetCancelled()Z

    move-result v0

    return v0
.end method

.method public trySetError(Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 46
    .local p0, "this":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<TTResult;>;"
    iget-object v0, p0, Lbolts/TaskCompletionSource;->task:Lbolts/Task;

    invoke-virtual {v0, p1}, Lbolts/Task;->trySetError(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public trySetResult(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<TTResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    iget-object v0, p0, Lbolts/TaskCompletionSource;->task:Lbolts/Task;

    invoke-virtual {v0, p1}, Lbolts/Task;->trySetResult(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
