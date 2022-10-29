.class public Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/AccountServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageThrottleProtectionUtil"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;
    }
.end annotation


# static fields
.field private static final SEND_DELAY:J = 0xea60L

.field private static final devLog:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private binder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/internal/ClientBinder;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final messageRunnable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nuance/connect/internal/common/InternalMessages;",
            "Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/internal/AccountServiceInternal;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->devLog:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/nuance/connect/internal/ClientBinder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->messageRunnable:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->binder:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->handler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;Lcom/nuance/connect/internal/common/InternalMessages;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->send(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;Lcom/nuance/connect/internal/common/InternalMessages;)J
    .registers 4

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->getSendTime(Lcom/nuance/connect/internal/common/InternalMessages;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->handler:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500()Lcom/nuance/connect/util/Logger$Log;
    .registers 1

    sget-object v0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->devLog:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$600(I)I
    .registers 2

    invoke-static {p0}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->fib(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->binder:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static fib(I)I
    .registers 8

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-gez p0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v1, 0x3

    new-array v3, v1, [I

    fill-array-data v3, :array_2a

    if-gt p0, v2, :cond_11

    aget v0, v3, p0

    goto :goto_5

    :cond_11
    move v1, v2

    :goto_12
    if-ge v1, p0, :cond_26

    aget v4, v3, v6

    aput v4, v3, v0

    aget v4, v3, v2

    aput v4, v3, v6

    aget v4, v3, v0

    aget v5, v3, v6

    add-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_26
    aget v0, v3, v2

    goto :goto_5

    nop

    :array_2a
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data
.end method

.method private getSendTime(Lcom/nuance/connect/internal/common/InternalMessages;)J
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->messageRunnable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;

    if-eqz v0, :cond_15

    monitor-enter v0

    :try_start_b
    # getter for: Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->nextSend:J
    invoke-static {v0}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->access$800(Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;)J

    move-result-wide v2

    monitor-exit v0

    move-wide v0, v2

    :goto_11
    return-wide v0

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_11
.end method

.method private send(Lcom/nuance/connect/internal/common/InternalMessages;)Z
    .registers 7

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->handler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->binder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_27

    :cond_10
    sget-object v0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Scheduling failure, required variable is null! Handler: "

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->handler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "; Binder: "

    iget-object v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->binder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->messageRunnable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;

    if-nez v0, :cond_3b

    new-instance v0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;-><init>(Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->messageRunnable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    invoke-virtual {v0}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->trySend()Z

    move-result v0

    return v0
.end method
