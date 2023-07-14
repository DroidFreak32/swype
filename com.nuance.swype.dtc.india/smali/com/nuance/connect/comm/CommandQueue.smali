.class public Lcom/nuance/connect/comm/CommandQueue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/comm/CommandQueue$MessageHandler;,
        Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;,
        Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;,
        Lcom/nuance/connect/comm/CommandQueue$PriorityTaskComparator;,
        Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;,
        Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallbackDefault;,
        Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;,
        Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;
    }
.end annotation


# static fields
.field private static final BACKDOWN_START:I = 0x0

.field private static final DEFAULT_DOWNLOAD_TIMEOUT_SECONDS:I = 0x78

.field public static final MAX_DELAY_SECONDS:I

.field public static final MESSAGE_CHECK_QUEUE:I = 0x3

.field private static final MESSAGE_LAST:I = 0x3

.field public static final MESSAGE_QUEUE_PAUSE:I = 0x1

.field public static final MESSAGE_QUEUE_RESUME:I = 0x2

.field private static final THREAD_POOL_MAX_THREADS:I = 0x6

.field private static final THREAD_POOL_THREADS:I = 0x3

.field private static final THREAD_POOL_TIMEOUT_SECONDS:I = 0x3c

.field public static final USER_TRANSACTION_DELAY_THRESHOLD:I = 0x1e


# instance fields
.field private volatile active:Z

.field private final activeTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;

.field private final backdownCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private backdownDelay:I

.field private final callback:Lcom/nuance/connect/comm/ConnectorCallback;

.field private final client:Lcom/nuance/connect/comm/MessageSendingBus;

.field private final commandQueueErrorCallback:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

.field private concurrentThreadCount:I

.field private final connection:Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;

.field private final connectionHandler:Lcom/nuance/connect/comm/CommandQueue$MessageHandler;

.field private final connectivity:Lcom/nuance/connect/system/Connectivity;

.field private defaultDelaySeconds:I

.field private delayTimeoutSeconds:I

.field private final enforceServerDelay:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

.field private volatile goodConnection:Z

.field private volatile hasConnectivity:Z

.field private final httpConnector:Lcom/nuance/connect/comm/HttpConnector;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private minimumSSLProtocol:Ljava/lang/String;

.field private final networkListener:Lcom/nuance/connect/system/NetworkListener;

.field private persistentConnector:Lcom/nuance/connect/comm/HttpPersistentConnector;

.field private final rejectedHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private final requestKey:Ljava/lang/String;

.field responseListener:Lcom/nuance/connect/comm/ResponseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/nuance/connect/comm/CommandQueue;->MAX_DELAY_SECONDS:I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/comm/MessageSendingBus;Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;Lcom/nuance/connect/system/Connectivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->backdownCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x12c

    iput v2, p0, Lcom/nuance/connect/comm/CommandQueue;->defaultDelaySeconds:I

    const/16 v2, 0x78

    iput v2, p0, Lcom/nuance/connect/comm/CommandQueue;->delayTimeoutSeconds:I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->enforceServerDelay:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x3

    iput v2, p0, Lcom/nuance/connect/comm/CommandQueue;->concurrentThreadCount:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/connect/comm/CommandQueue;->goodConnection:Z

    new-instance v2, Lcom/nuance/connect/comm/CommandQueue$1;

    invoke-direct {v2, p0}, Lcom/nuance/connect/comm/CommandQueue$1;-><init>(Lcom/nuance/connect/comm/CommandQueue;)V

    iput-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    new-instance v2, Lcom/nuance/connect/comm/CommandQueue$2;

    invoke-direct {v2, p0}, Lcom/nuance/connect/comm/CommandQueue$2;-><init>(Lcom/nuance/connect/comm/CommandQueue;)V

    iput-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->rejectedHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    new-instance v2, Lcom/nuance/connect/comm/CommandQueue$3;

    invoke-direct {v2, p0}, Lcom/nuance/connect/comm/CommandQueue$3;-><init>(Lcom/nuance/connect/comm/CommandQueue;)V

    iput-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->connection:Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;

    new-instance v2, Lcom/nuance/connect/comm/CommandQueue$4;

    invoke-direct {v2, p0}, Lcom/nuance/connect/comm/CommandQueue$4;-><init>(Lcom/nuance/connect/comm/CommandQueue;)V

    iput-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->callback:Lcom/nuance/connect/comm/ConnectorCallback;

    iput-object p1, p0, Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    iput-object p2, p0, Lcom/nuance/connect/comm/CommandQueue;->commandQueueErrorCallback:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    iput-object p3, p0, Lcom/nuance/connect/comm/CommandQueue;->connectivity:Lcom/nuance/connect/system/Connectivity;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->minimumSSLProtocol:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->requestKey:Ljava/lang/String;

    new-instance v2, Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;

    iget-object v3, p0, Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-direct {v2, v3}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;-><init>(Lcom/nuance/connect/comm/MessageSendingBus;)V

    iput-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;

    new-instance v2, Lcom/nuance/connect/comm/CommandQueue$MessageHandler;

    invoke-direct {v2, p0}, Lcom/nuance/connect/comm/CommandQueue$MessageHandler;-><init>(Lcom/nuance/connect/comm/CommandQueue;)V

    iput-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/comm/CommandQueue$MessageHandler;

    new-instance v2, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    const/4 v4, 0x3

    const/4 v5, 0x6

    const-wide/16 v6, 0x3c

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v3, 0xb

    new-instance v10, Lcom/nuance/connect/comm/CommandQueue$PriorityTaskComparator;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/nuance/connect/comm/CommandQueue$PriorityTaskComparator;-><init>(Lcom/nuance/connect/comm/CommandQueue$1;)V

    invoke-direct {v9, v3, v10}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iget-object v10, p0, Lcom/nuance/connect/comm/CommandQueue;->rejectedHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;-><init>(Lcom/nuance/connect/comm/CommandQueue;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    new-instance v2, Lcom/nuance/connect/comm/HttpConnector;

    iget-object v3, p0, Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    iget-object v4, p0, Lcom/nuance/connect/comm/CommandQueue;->connection:Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;

    iget-object v5, p0, Lcom/nuance/connect/comm/CommandQueue;->callback:Lcom/nuance/connect/comm/ConnectorCallback;

    iget-object v6, p0, Lcom/nuance/connect/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/nuance/connect/comm/HttpConnector;-><init>(Lcom/nuance/connect/comm/MessageSendingBus;Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/comm/ConnectorCallback;Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->httpConnector:Lcom/nuance/connect/comm/HttpConnector;

    if-lez p6, :cond_0

    const/4 v2, 0x3

    const-string/jumbo v3, "Pausing queue due to existing backdown."

    move/from16 v0, p6

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/connect/comm/CommandQueue;->pauseQueue(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/comm/CommandQueue;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/comm/CommandQueue;->delayTimeoutSeconds:I

    return v0
.end method

.method static synthetic access$102(Lcom/nuance/connect/comm/CommandQueue;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/comm/CommandQueue;->hasConnectivity:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$MessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/comm/CommandQueue$MessageHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/connect/comm/CommandQueue;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/comm/CommandQueue;->active:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->commandQueueErrorCallback:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nuance/connect/comm/CommandQueue;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/comm/CommandQueue;->goodConnection:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/nuance/connect/comm/CommandQueue;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/comm/CommandQueue;->goodConnection:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/MessageSendingBus;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nuance/connect/comm/CommandQueue;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/comm/CommandQueue;->defaultDelaySeconds:I

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->enforceServerDelay:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/comm/CommandQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/comm/CommandQueue;->resetTimers()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/comm/CommandQueue;Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/CommandQueue;->processQueue(Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/comm/CommandQueue;Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/CommandQueue;->processTransaction(Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;)V

    return-void
.end method

.method private clearOfflineQueue()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "clearOfflineQueue() size: "

    iget-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/comm/Transaction;

    move-result-object v4

    invoke-interface {v4}, Lcom/nuance/connect/comm/Transaction;->onTransactionOfflineQueued()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->PENDING:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getState()Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    move-result-object v5

    if-eq v4, v5, :cond_1

    sget-object v4, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->QUEUED:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getState()Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    move-result-object v5

    if-ne v4, v5, :cond_0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/comm/Transaction;

    move-result-object v2

    const/4 v0, 0x2

    :try_start_2
    invoke-interface {v2, v0}, Lcom/nuance/connect/comm/Transaction;->onTransactionRejected(I)V

    invoke-interface {v2}, Lcom/nuance/connect/comm/Transaction;->onEndProcessing()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Transaction "

    invoke-interface {v2}, Lcom/nuance/connect/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, " rejected.  Device offline or server error."

    invoke-interface {v0, v3, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static fib(I)I
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-gez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x3

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    if-gt p0, v2, :cond_1

    aget v0, v3, p0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    if-ge v1, p0, :cond_2

    aget v4, v3, v6

    aput v4, v3, v0

    aget v4, v3, v2

    aput v4, v3, v6

    aget v4, v3, v0

    aget v5, v3, v6

    add-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aget v0, v3, v2

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data
.end method

.method private getBackdownDelay()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/comm/CommandQueue;->backdownDelay:I

    return v0
.end method

.method private incrementBackdownDelay()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->backdownCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->fib(I)I

    move-result v0

    iget v1, p0, Lcom/nuance/connect/comm/CommandQueue;->defaultDelaySeconds:I

    mul-int/2addr v0, v1

    sget v1, Lcom/nuance/connect/comm/CommandQueue;->MAX_DELAY_SECONDS:I

    if-gt v0, v1, :cond_0

    iput v0, p0, Lcom/nuance/connect/comm/CommandQueue;->backdownDelay:I

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->backdownCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_0
    return-void
.end method

.method private isCommandInQueue(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/comm/Transaction;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private processQueue(Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "executor active threads="

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v4}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->getActiveCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "; completed tasks="

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v6}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->getCompletedTaskCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "; isActive: "

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    invoke-static {v8}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->access$500(Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface/range {v2 .. v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/connect/comm/CommandQueue;->isOnline()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "not online... exiting"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/comm/CommandQueue;->clearOfflineQueue()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    invoke-static {v2}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->access$500(Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "execution delayed... exiting"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    monitor-enter v6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {v2}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/comm/Transaction;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, "processQueue() transaction: "

    invoke-interface {v8}, Lcom/nuance/connect/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, " keep if offline: "

    invoke-interface {v8}, Lcom/nuance/connect/comm/Transaction;->onTransactionOfflineQueued()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v9, v10, v11, v12, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getState()Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    move-result-object v8

    sget-object v9, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->PENDING:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    invoke-virtual {v8, v9}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_5
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move/from16 v16, v3

    move/from16 v17, v4

    :cond_6
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {v15}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/comm/Transaction;

    move-result-object v20

    const/4 v3, 0x0

    invoke-interface/range {v20 .. v20}, Lcom/nuance/connect/comm/Transaction;->requiresDeviceId()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-interface {v2}, Lcom/nuance/connect/comm/MessageSendingBus;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-interface {v2}, Lcom/nuance/connect/comm/MessageSendingBus;->getDeviceRegisterCommand()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/connect/comm/CommandQueue;->isCommandInQueue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "processQueue()  deviceId is null, transaction "

    invoke-interface/range {v20 .. v20}, Lcom/nuance/connect/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " requires it, no queued register device command found -- sending register request"

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->commandQueueErrorCallback:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    invoke-interface {v2}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;->onDeviceNotAvailable()V

    const/16 v17, 0x1

    move/from16 v2, v17

    :goto_5
    move/from16 v17, v2

    goto :goto_4

    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-interface/range {v20 .. v20}, Lcom/nuance/connect/comm/Transaction;->requiresSessionId()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-interface {v2}, Lcom/nuance/connect/comm/MessageSendingBus;->getSessionId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    if-nez v16, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-interface {v2}, Lcom/nuance/connect/comm/MessageSendingBus;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-interface {v2}, Lcom/nuance/connect/comm/MessageSendingBus;->getSessionCreateCommand()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/connect/comm/CommandQueue;->isCommandInQueue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "processQueue()  sessionId is null, no queued create session command found -- sending session create request"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->commandQueueErrorCallback:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    invoke-interface {v2}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;->onSessionNotAvailable()V

    const/16 v16, 0x1

    move/from16 v2, v16

    :goto_6
    move/from16 v16, v2

    goto/16 :goto_4

    :cond_9
    invoke-interface/range {v20 .. v20}, Lcom/nuance/connect/comm/Transaction;->getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->connectivity:Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v2}, Lcom/nuance/connect/system/Connectivity;->getForegroundConfiguration()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v2

    sget-object v4, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    if-ne v10, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->connectivity:Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v2}, Lcom/nuance/connect/system/Connectivity;->getBackgroundConfiguration()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v2

    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/CommandQueue;->connectivity:Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v4}, Lcom/nuance/connect/system/Connectivity;->getState()Lcom/nuance/connect/system/NetworkState;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v3, 0x1

    :cond_b
    if-nez v3, :cond_e

    invoke-interface/range {v20 .. v20}, Lcom/nuance/connect/comm/Transaction;->wifiOnly()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/CommandQueue;->connectivity:Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v4}, Lcom/nuance/connect/system/Connectivity;->getState()Lcom/nuance/connect/system/NetworkState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/connect/system/NetworkState;->isWifi()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v2}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    move/from16 v18, v2

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "processQueue idx: "

    const-string/jumbo v4, ""

    const-string/jumbo v5, " transaction: "

    invoke-interface/range {v20 .. v20}, Lcom/nuance/connect/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " sessionId="

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-interface {v8}, Lcom/nuance/connect/comm/MessageSendingBus;->getSessionId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, " type="

    const-string/jumbo v11, " delay="

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string/jumbo v13, " executor.isPaused="

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    invoke-static {v14}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->access$500(Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface/range {v2 .. v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v18, :cond_d

    invoke-interface/range {v20 .. v20}, Lcom/nuance/connect/comm/Transaction;->getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    monitor-enter v3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/nuance/connect/comm/Transaction;->onTransactionRejected(I)V

    invoke-interface/range {v20 .. v20}, Lcom/nuance/connect/comm/Transaction;->onEndProcessing()V

    goto/16 :goto_4

    :cond_c
    sget-object v4, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    if-ne v10, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/CommandQueue;->connectivity:Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v4}, Lcom/nuance/connect/system/Connectivity;->getState()Lcom/nuance/connect/system/NetworkState;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->connectivity:Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v2}, Lcom/nuance/connect/system/Connectivity;->getBackgroundConfiguration()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v2

    goto/16 :goto_7

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :cond_d
    if-nez v18, :cond_6

    sget-object v2, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->QUEUED:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    invoke-virtual {v15, v2}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->setState(Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v2, v15}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->execute(Ljava/lang/Runnable;)V

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    :cond_e
    move/from16 v18, v3

    goto/16 :goto_8

    :cond_f
    move/from16 v2, v16

    goto/16 :goto_6

    :cond_10
    move/from16 v2, v17

    goto/16 :goto_5
.end method

.method private processTransaction(Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;)V
    .locals 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/comm/Transaction;

    move-result-object v6

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processTransaction Transaction: "

    invoke-interface {v6}, Lcom/nuance/connect/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/nuance/connect/comm/Transaction;->getNextCommand()Lcom/nuance/connect/comm/Command;

    move-result-object v0

    move v1, v2

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/nuance/connect/comm/CommandQueue;->active:Z

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    :try_start_0
    invoke-interface {v6}, Lcom/nuance/connect/comm/Transaction;->requiresPersistantConnection()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/connect/comm/CommandQueue;->persistentConnector:Lcom/nuance/connect/comm/HttpPersistentConnector;

    new-instance v5, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;

    invoke-direct {v5, p0}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;-><init>(Lcom/nuance/connect/comm/CommandQueue;)V

    invoke-virtual {v4, v0, v6, v5}, Lcom/nuance/connect/comm/HttpPersistentConnector;->processCommand(Lcom/nuance/connect/comm/Command;Lcom/nuance/connect/comm/Transaction;Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;)Z
    :try_end_0
    .catch Lcom/nuance/connect/comm/TransactionCancelConnectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    :goto_1
    iget-object v4, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "processTransaction processed="

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    invoke-interface {v6}, Lcom/nuance/connect/comm/Transaction;->getNextCommand()Lcom/nuance/connect/comm/Command;

    move-result-object v0

    iget-object v5, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, "processTransaction getting next command: "

    if-eqz v0, :cond_5

    move v4, v2

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v5, v7, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/nuance/connect/comm/CommandQueue;->httpConnector:Lcom/nuance/connect/comm/HttpConnector;

    new-instance v5, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;

    invoke-direct {v5, p0}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;-><init>(Lcom/nuance/connect/comm/CommandQueue;)V

    invoke-virtual {v4, v0, v6, v5}, Lcom/nuance/connect/comm/HttpConnector;->processCommand(Lcom/nuance/connect/comm/Command;Lcom/nuance/connect/comm/Transaction;Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;)Z
    :try_end_1
    .catch Lcom/nuance/connect/comm/TransactionCancelConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nuance/connect/comm/IOConnectorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nuance/connect/comm/ConnectorException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v4

    iget-object v5, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, "onCancel cmd="

    iget-object v8, v0, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string/jumbo v9, "/"

    iget-object v10, v0, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v5, v7, v8, v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v5, p0, Lcom/nuance/connect/comm/CommandQueue;->active:Z

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v5, v0}, Lcom/nuance/connect/comm/ResponseCallback;->onCancel(Lcom/nuance/connect/comm/Command;)V

    :cond_2
    invoke-virtual {v4}, Lcom/nuance/connect/comm/TransactionCancelConnectorException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v4

    iget-boolean v5, v0, Lcom/nuance/connect/comm/Command;->handleIOExceptionInConnector:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, "onIOException cmd="

    iget-object v8, v0, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string/jumbo v9, "/"

    iget-object v10, v0, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v5, v7, v8, v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v5, p0, Lcom/nuance/connect/comm/CommandQueue;->active:Z

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v5, v0}, Lcom/nuance/connect/comm/ResponseCallback;->onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V

    :cond_3
    iget-boolean v5, p0, Lcom/nuance/connect/comm/CommandQueue;->active:Z

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-virtual {v4}, Lcom/nuance/connect/comm/IOConnectorException;->getDelaySeconds()I

    move-result v7

    iget v8, p0, Lcom/nuance/connect/comm/CommandQueue;->backdownDelay:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v4}, Lcom/nuance/connect/comm/IOConnectorException;->getStatusCode()I

    move-result v8

    invoke-virtual {v4}, Lcom/nuance/connect/comm/IOConnectorException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v0, v7, v8, v9}, Lcom/nuance/connect/comm/ResponseCallback;->onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z

    move-result v5

    :goto_3
    if-eqz v5, :cond_4

    move v1, v3

    :goto_4
    invoke-virtual {v4}, Lcom/nuance/connect/comm/IOConnectorException;->getDelaySeconds()I

    move-result v5

    invoke-virtual {v4}, Lcom/nuance/connect/comm/IOConnectorException;->getStatusCode()I

    move-result v7

    invoke-virtual {v4}, Lcom/nuance/connect/comm/IOConnectorException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v7, v8}, Lcom/nuance/connect/comm/CommandQueue;->pauseQueue(IILjava/lang/String;)V

    invoke-virtual {v4}, Lcom/nuance/connect/comm/IOConnectorException;->printStackTrace()V

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/nuance/connect/comm/CommandQueue;->callback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-virtual {v4}, Lcom/nuance/connect/comm/IOConnectorException;->getStatusCode()I

    move-result v7

    invoke-virtual {v4}, Lcom/nuance/connect/comm/IOConnectorException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v0, v7, v8}, Lcom/nuance/connect/comm/ConnectorCallback;->onFailure(Lcom/nuance/connect/comm/Command;ILjava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Lcom/nuance/connect/comm/ConnectorException;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    move v4, v3

    goto/16 :goto_2

    :cond_6
    if-nez v1, :cond_7

    iget-boolean v0, p0, Lcom/nuance/connect/comm/CommandQueue;->active:Z

    if-nez v0, :cond_8

    :cond_7
    invoke-direct {p0, v6}, Lcom/nuance/connect/comm/CommandQueue;->removeTransaction(Lcom/nuance/connect/comm/Transaction;)Z

    :goto_5
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/comm/CommandQueue$MessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nuance/connect/comm/CommandQueue$MessageHandler;->sendEmptyMessage(I)Z

    return-void

    :cond_8
    sget-object v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->PENDING:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    invoke-virtual {p1, v0}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->setState(Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;)V

    goto :goto_5

    :cond_9
    move v5, v3

    goto :goto_3
.end method

.method private removeTransaction(Lcom/nuance/connect/comm/Transaction;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/comm/Transaction;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/comm/Transaction;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Lcom/nuance/connect/comm/Transaction;->onEndProcessing()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Lcom/nuance/connect/comm/Transaction;->onEndProcessing()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_2
    throw v0

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private resetTimers()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/comm/CommandQueue$MessageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->access$500(Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/comm/CommandQueue$MessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nuance/connect/comm/CommandQueue$MessageHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->backdownCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput v2, p0, Lcom/nuance/connect/comm/CommandQueue;->backdownDelay:I

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->resume()V

    :cond_0
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public createPersistantConnection(Lcom/nuance/connect/comm/PersistantConnectionConfig;Z)V
    .locals 7

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "createPersistantConnection() immediately="

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->persistentConnector:Lcom/nuance/connect/comm/HttpPersistentConnector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/connect/comm/HttpPersistentConnector;

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    iget-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->connection:Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;

    iget-object v3, p0, Lcom/nuance/connect/comm/CommandQueue;->callback:Lcom/nuance/connect/comm/ConnectorCallback;

    iget-object v4, p0, Lcom/nuance/connect/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;

    iget-object v5, p0, Lcom/nuance/connect/comm/CommandQueue;->minimumSSLProtocol:Ljava/lang/String;

    iget-object v6, p0, Lcom/nuance/connect/comm/CommandQueue;->requestKey:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/comm/HttpPersistentConnector;-><init>(Lcom/nuance/connect/comm/MessageSendingBus;Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/comm/ConnectorCallback;Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->persistentConnector:Lcom/nuance/connect/comm/HttpPersistentConnector;

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->persistentConnector:Lcom/nuance/connect/comm/HttpPersistentConnector;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/comm/HttpPersistentConnector;->setPersistentConfig(Lcom/nuance/connect/comm/PersistantConnectionConfig;Z)V

    return-void
.end method

.method protected handleMessage(Lcom/nuance/connect/comm/CommandQueue$MessageHandler;Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget v1, p2, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/comm/CommandQueue;->processQueue(Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;)V

    :cond_0
    return-void

    :pswitch_0
    iput-boolean v2, p0, Lcom/nuance/connect/comm/CommandQueue;->goodConnection:Z

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v1}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->pause()V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "delay"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/nuance/connect/comm/CommandQueue;->getBackdownDelay()I

    move-result v0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "MESSAGE_QUEUE_PAUSE for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/nuance/connect/comm/CommandQueue$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput v1, v4, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v4, v0}, Lcom/nuance/connect/comm/CommandQueue$MessageHandler;->sendMessageDelayedSeconds(Landroid/os/Message;I)V

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-interface {v1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/16 v1, 0x1e

    if-le v0, v1, :cond_3

    invoke-direct {p0}, Lcom/nuance/connect/comm/CommandQueue;->clearOfflineQueue()V

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/comm/CommandQueue;->enforceServerDelay:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "MESSAGE_QUEUE_RESUME Resuming Transaction Queue"

    invoke-interface {v1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget v1, p2, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/connect/comm/CommandQueue;->incrementBackdownDelay()V

    :goto_2
    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v1}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->resume()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Server timeout has expired"

    invoke-interface {v1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue;->enforceServerDelay:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasPendingTransactions()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->getActiveCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "isIdle="

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/comm/CommandQueue;->hasConnectivity:Z

    return v0
.end method

.method public pauseQueue(IILjava/lang/String;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/comm/CommandQueue$MessageHandler;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/comm/CommandQueue$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "delay"

    if-gez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "status"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "message"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/comm/CommandQueue$MessageHandler;

    invoke-virtual {v0, v3}, Lcom/nuance/connect/comm/CommandQueue$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->commandQueueErrorCallback:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    if-lez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;->onQueuePaused(IILjava/lang/String;Z)V

    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public registerResponseListener(Lcom/nuance/connect/comm/ResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/comm/CommandQueue;->responseListener:Lcom/nuance/connect/comm/ResponseListener;

    return-void
.end method

.method public retryConnection()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/comm/CommandQueue$MessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nuance/connect/comm/CommandQueue$MessageHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendCommand(Lcom/nuance/connect/comm/Command;)V
    .locals 1

    new-instance v0, Lcom/nuance/connect/comm/SingleCommandTransaction;

    invoke-direct {v0, p1}, Lcom/nuance/connect/comm/SingleCommandTransaction;-><init>(Lcom/nuance/connect/comm/Command;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/comm/CommandQueue;->sendTransaction(Lcom/nuance/connect/comm/Transaction;)V

    return-void
.end method

.method public sendTransaction(Lcom/nuance/connect/comm/Transaction;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "sendTransaction - starting"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/nuance/connect/comm/Transaction;->onTransactionRejected(I)V

    invoke-interface {p1}, Lcom/nuance/connect/comm/Transaction;->onEndProcessing()V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "sendTransaction after shutdown!"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendTransaction name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/nuance/connect/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/nuance/connect/comm/Transaction;->getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->connectivity:Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v0}, Lcom/nuance/connect/system/Connectivity;->checkAvailableNetworkConnections()V

    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Lcom/nuance/connect/comm/Transaction;->allowDuplicates()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->isSame(Lcom/nuance/connect/comm/Transaction;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Ignoring duplicate of transaction: "

    invoke-interface {p1}, Lcom/nuance/connect/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/nuance/connect/comm/CommandQueue;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->access$500(Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/nuance/connect/comm/Transaction;->getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Resuming Transaction Queue for USER transaction."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/comm/CommandQueue;->resetTimers()V

    :cond_4
    invoke-virtual {p0}, Lcom/nuance/connect/comm/CommandQueue;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->access$500(Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-interface {p1}, Lcom/nuance/connect/comm/Transaction;->onTransactionOfflineQueued()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "sendTransaction - not online so we\'re rejecting it"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/nuance/connect/comm/Transaction;->onTransactionRejected(I)V

    invoke-interface {p1}, Lcom/nuance/connect/comm/Transaction;->onEndProcessing()V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    invoke-direct {v0, p1, p0}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;-><init>(Lcom/nuance/connect/comm/Transaction;Lcom/nuance/connect/comm/CommandQueue;)V

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0, v0}, Lcom/nuance/connect/comm/CommandQueue;->processQueue(Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public setConnectionLimit(I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CommandQueue.setConnectionLimit() limit="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/comm/CommandQueue;->concurrentThreadCount:I

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    iget v1, p0, Lcom/nuance/connect/comm/CommandQueue;->concurrentThreadCount:I

    invoke-virtual {v0, v1}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->setCorePoolSize(I)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    iget v1, p0, Lcom/nuance/connect/comm/CommandQueue;->concurrentThreadCount:I

    invoke-virtual {v0, v1}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->setMaximumPoolSize(I)V

    return-void
.end method

.method public setDefaultDelaySeconds(I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CommandQueue.setDefaultDelaySeconds() seconds="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iput p1, p0, Lcom/nuance/connect/comm/CommandQueue;->defaultDelaySeconds:I

    return-void
.end method

.method public setHTTPAnalyticsTime(I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CommandQueue.setHTTPAnalyticsTime() value="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;->setTrackingInterval(I)V

    return-void
.end method

.method public setNetworkTimeoutSeconds(I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CommandQueue.setNetworkTimeoutSeconds() seconds="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iput p1, p0, Lcom/nuance/connect/comm/CommandQueue;->delayTimeoutSeconds:I

    return-void
.end method

.method public setServerURL(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CommandQueue.setServerURL() key="

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->httpConnector:Lcom/nuance/connect/comm/HttpConnector;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/comm/HttpConnector;->setServerURL(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CommandQueue.start"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/comm/CommandQueue;->active:Z

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->connectivity:Lcom/nuance/connect/system/Connectivity;

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/Connectivity;->registerNetworkListener(Lcom/nuance/connect/system/NetworkListener;)V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/comm/CommandQueue;->active:Z

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/comm/CommandQueue$MessageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/comm/CommandQueue$MessageHandler;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$MessageHandler;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->connectivity:Lcom/nuance/connect/system/Connectivity;

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/Connectivity;->unregisterNetworkListener(Lcom/nuance/connect/system/NetworkListener;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->shutdown()V

    return-void
.end method

.method public updateMinimumSSLProtocol(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/connect/comm/CommandQueue;->minimumSSLProtocol:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->httpConnector:Lcom/nuance/connect/comm/HttpConnector;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/comm/HttpConnector;->updateMinimumSSLProtocol(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->persistentConnector:Lcom/nuance/connect/comm/HttpPersistentConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue;->persistentConnector:Lcom/nuance/connect/comm/HttpPersistentConnector;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/comm/HttpPersistentConnector;->updateMinimumSSLProtocol(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
