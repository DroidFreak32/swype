.class public abstract Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;
.super Lio/fabric/sdk/android/services/concurrency/AsyncTask;
.source "PriorityAsyncTask.java"

# interfaces
.implements Lio/fabric/sdk/android/services/concurrency/Dependency;
.implements Lio/fabric/sdk/android/services/concurrency/PriorityProvider;
.implements Lio/fabric/sdk/android/services/concurrency/Task;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/concurrency/AsyncTask",
        "<TParams;TProgress;TResult;>;",
        "Lio/fabric/sdk/android/services/concurrency/Dependency",
        "<",
        "Lio/fabric/sdk/android/services/concurrency/Task;",
        ">;",
        "Lio/fabric/sdk/android/services/concurrency/PriorityProvider;",
        "Lio/fabric/sdk/android/services/concurrency/Task;"
    }
.end annotation


# instance fields
.field private final priorityTask:Lio/fabric/sdk/android/services/concurrency/PriorityTask;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;-><init>()V

    .line 20
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/PriorityTask;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/concurrency/PriorityTask;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->priorityTask:Lio/fabric/sdk/android/services/concurrency/PriorityTask;

    .line 21
    return-void
.end method


# virtual methods
.method public final addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V
    .registers 4
    .param p1, "task"    # Lio/fabric/sdk/android/services/concurrency/Task;

    .prologue
    .line 41
    .line 1336
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->status:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    .line 41
    sget-object v1, Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;->PENDING:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    if-eq v0, v1, :cond_f

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must not add Dependency after task is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2084
    :cond_f
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->priorityTask:Lio/fabric/sdk/android/services/concurrency/PriorityTask;

    .line 44
    check-cast v0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Dependency;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/Dependency;->addDependency(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public final bridge synthetic addDependency(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    check-cast p1, Lio/fabric/sdk/android/services/concurrency/Task;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V

    return-void
.end method

.method public final areDependenciesMet()Z
    .registers 2

    .prologue
    .line 54
    .line 4084
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->priorityTask:Lio/fabric/sdk/android/services/concurrency/PriorityTask;

    .line 54
    check-cast v0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Dependency;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/Dependency;->areDependenciesMet()Z

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/concurrency/Priority;->compareTo(Lio/fabric/sdk/android/services/concurrency/PriorityProvider;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getDependencies()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    .line 3084
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->priorityTask:Lio/fabric/sdk/android/services/concurrency/PriorityTask;

    .line 49
    check-cast v0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Dependency;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/Dependency;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;
    .registers 2

    .prologue
    .line 59
    .line 5084
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->priorityTask:Lio/fabric/sdk/android/services/concurrency/PriorityTask;

    .line 59
    check-cast v0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;->getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;

    move-result-object v0

    return-object v0
.end method

.method public final isFinished()Z
    .registers 2

    .prologue
    .line 69
    .line 7084
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->priorityTask:Lio/fabric/sdk/android/services/concurrency/PriorityTask;

    .line 69
    check-cast v0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Task;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/Task;->isFinished()Z

    move-result v0

    return v0
.end method

.method public final setError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    .line 8084
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->priorityTask:Lio/fabric/sdk/android/services/concurrency/PriorityTask;

    .line 74
    check-cast v0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Task;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/Task;->setError(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public final setFinished(Z)V
    .registers 3
    .param p1, "finished"    # Z

    .prologue
    .line 64
    .line 6084
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->priorityTask:Lio/fabric/sdk/android/services/concurrency/PriorityTask;

    .line 64
    check-cast v0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Task;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/Task;->setFinished(Z)V

    .line 65
    return-void
.end method
