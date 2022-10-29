.class Lbolts/Task$15$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task$15;


# direct methods
.method constructor <init>(Lbolts/Task$15;)V
    .registers 2

    .prologue
    .line 921
    iput-object p1, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 921
    invoke-virtual {p0, p1}, Lbolts/Task$15$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TTContinuationResult;>;"
    const/4 v2, 0x0

    .line 924
    iget-object v0, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->val$ct:Lbolts/CancellationToken;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->val$ct:Lbolts/CancellationToken;

    invoke-virtual {v0}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 925
    iget-object v0, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->setCancelled()V

    .line 936
    :goto_18
    return-object v2

    .line 929
    :cond_19
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 930
    iget-object v0, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->setCancelled()V

    goto :goto_18

    .line 931
    :cond_27
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 932
    iget-object v0, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_18

    .line 934
    :cond_39
    iget-object v0, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_18
.end method
