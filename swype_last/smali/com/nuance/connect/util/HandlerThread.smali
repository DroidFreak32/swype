.class public abstract Lcom/nuance/connect/util/HandlerThread;
.super Ljava/lang/Thread;


# instance fields
.field private volatile handler:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;

.field private mTid:I

.field private final processCallback:Landroid/os/Handler$Callback;

.field private volatile readySignal:Ljava/util/concurrent/CountDownLatch;

.field private final resultHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/util/HandlerThread;-><init>(Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/connect/util/HandlerThread;->mTid:I

    new-instance v0, Lcom/nuance/connect/util/HandlerThread$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/util/HandlerThread$1;-><init>(Lcom/nuance/connect/util/HandlerThread;)V

    iput-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->processCallback:Landroid/os/Handler$Callback;

    if-eqz p1, :cond_16

    invoke-static {p1}, Lcom/nuance/connect/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->resultHandler:Landroid/os/Handler;

    :goto_15
    return-void

    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->resultHandler:Landroid/os/Handler;

    goto :goto_15
.end method

.method static synthetic access$000(Lcom/nuance/connect/util/HandlerThread;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->resultHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initHandler()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->handler:Landroid/os/Handler;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->processCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/connect/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->handler:Landroid/os/Handler;

    :cond_c
    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/util/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    monitor-enter p0

    :goto_9
    :try_start_9
    invoke-virtual {p0}, Lcom/nuance/connect/util/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->mLooper:Landroid/os/Looper;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1d

    if-nez v0, :cond_19

    :try_start_13
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_1d

    goto :goto_9

    :catch_17
    move-exception v0

    goto :goto_9

    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->mLooper:Landroid/os/Looper;

    monitor-exit p0

    goto :goto_7

    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public getThreadId()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/util/HandlerThread;->mTid:I

    return v0
.end method

.method public abstract handleMessage(Landroid/os/Message;)Landroid/os/Message;
.end method

.method public process(IIILjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->handler:Landroid/os/Handler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public process(ILjava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->handler:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public process(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processDelayed(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public processDelayed(Ljava/lang/Runnable;JZ)V
    .registers 7

    if-eqz p4, :cond_7

    iget-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_7
    iget-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public quit()Z
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/util/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public removeMessages(I)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public run()V
    .registers 2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/util/HandlerThread;->mTid:I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-direct {p0}, Lcom/nuance/connect/util/HandlerThread;->initHandler()V

    monitor-enter p0

    :try_start_d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->mLooper:Landroid/os/Looper;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_20

    iget-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public start()V
    .registers 3

    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/nuance/connect/util/HandlerThread;->readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-direct {p0}, Lcom/nuance/connect/util/HandlerThread;->initHandler()V

    goto :goto_10
.end method
