.class public abstract Lio/fabric/sdk/android/services/concurrency/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/concurrency/AsyncTask$4;,
        Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult;,
        Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable;,
        Lio/fabric/sdk/android/services/concurrency/AsyncTask$InternalHandler;,
        Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;,
        Lio/fabric/sdk/android/services/concurrency/AsyncTask$SerialExecutor;
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
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile defaultExecutor:Ljava/util/concurrent/Executor;

.field private static final handler:Lio/fabric/sdk/android/services/concurrency/AsyncTask$InternalHandler;

.field private static final poolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final future:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field public volatile status:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

.field private final taskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final worker:Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    .line 186
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 187
    sput v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->CORE_POOL_SIZE:I

    .line 188
    sget v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->MAXIMUM_POOL_SIZE:I

    .line 191
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$1;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$1;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 199
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->poolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 205
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->CORE_POOL_SIZE:I

    sget v3, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->poolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 213
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$SerialExecutor;-><init>(B)V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 218
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$InternalHandler;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$InternalHandler;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->handler:Lio/fabric/sdk/android/services/concurrency/AsyncTask$InternalHandler;

    .line 220
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->defaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 287
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/AsyncTask;, "Lio/fabric/sdk/android/services/concurrency/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;->PENDING:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->status:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    .line 226
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 227
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->taskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 288
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$2;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$2;-><init>(Lio/fabric/sdk/android/services/concurrency/AsyncTask;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->worker:Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable;

    .line 298
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$3;

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->worker:Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$3;-><init>(Lio/fabric/sdk/android/services/concurrency/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->future:Ljava/util/concurrent/FutureTask;

    .line 313
    return-void
.end method

.method static synthetic access$200(Lio/fabric/sdk/android/services/concurrency/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    .prologue
    .line 183
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->taskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lio/fabric/sdk/android/services/concurrency/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Lio/fabric/sdk/android/services/concurrency/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lio/fabric/sdk/android/services/concurrency/AsyncTask;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lio/fabric/sdk/android/services/concurrency/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 183
    .line 1316
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->taskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 1317
    if-nez v0, :cond_b

    .line 1318
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_b
    return-void
.end method

.method static synthetic access$500$1d60ec96(Lio/fabric/sdk/android/services/concurrency/AsyncTask;)V
    .registers 2
    .param p0, "x0"    # Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    .prologue
    .line 183
    .line 2440
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 1636
    if-eqz v0, :cond_10

    .line 1637
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->onCancelled$5d527811()V

    .line 1641
    :goto_b
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;->FINISHED:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->status:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    .line 183
    return-void

    .line 1639
    :cond_10
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->onPostExecute$5d527811()V

    goto :goto_b
.end method

.method protected static varargs onProgressUpdate$1b4f7664()V
    .registers 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 393
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/AsyncTask;, "Lio/fabric/sdk/android/services/concurrency/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    const/4 v4, 0x1

    .line 324
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->handler:Lio/fabric/sdk/android/services/concurrency/AsyncTask$InternalHandler;

    new-instance v1, Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult;-><init>(Lio/fabric/sdk/android/services/concurrency/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 327
    return-object p1
.end method


# virtual methods
.method public final cancel$138603()Z
    .registers 3

    .prologue
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/AsyncTask;, "Lio/fabric/sdk/android/services/concurrency/AsyncTask<TParams;TProgress;TResult;>;"
    const/4 v1, 0x1

    .line 473
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->future:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public varargs abstract doInBackground$42af7916()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public onCancelled$5d527811()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/AsyncTask;, "Lio/fabric/sdk/android/services/concurrency/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method public onPostExecute$5d527811()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/AsyncTask;, "Lio/fabric/sdk/android/services/concurrency/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method public onPreExecute()V
    .registers 1

    .prologue
    .line 364
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/AsyncTask;, "Lio/fabric/sdk/android/services/concurrency/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method
