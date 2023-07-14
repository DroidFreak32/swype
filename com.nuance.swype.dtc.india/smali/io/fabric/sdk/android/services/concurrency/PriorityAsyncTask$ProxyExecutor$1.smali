.class final Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor$1;
.super Lio/fabric/sdk/android/services/concurrency/PriorityFutureTask;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/concurrency/PriorityFutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 97
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor$1;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor.1;"
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor$1;->this$0:Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lio/fabric/sdk/android/services/concurrency/PriorityFutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/fabric/sdk/android/services/concurrency/Dependency",
            "<",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ">;:",
            "Lio/fabric/sdk/android/services/concurrency/PriorityProvider;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor$1;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor.1;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor$1;->this$0:Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;

    invoke-static {v0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;->access$000(Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;)Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;

    move-result-object v0

    return-object v0
.end method
