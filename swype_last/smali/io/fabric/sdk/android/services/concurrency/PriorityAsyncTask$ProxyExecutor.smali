.class public final Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;
.super Ljava/lang/Object;
.source "PriorityAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final task:Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;)V
    .registers 3
    .param p1, "ex"    # Ljava/util/concurrent/Executor;
    .param p2, "task"    # Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;

    .prologue
    .line 90
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor<TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 92
    iput-object p2, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;->task:Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;)Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;
    .registers 2
    .param p0, "x0"    # Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;

    .prologue
    .line 87
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;->task:Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 97
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor<TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor$1;

    invoke-direct {v1, p0, p1}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor$1;-><init>(Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method
