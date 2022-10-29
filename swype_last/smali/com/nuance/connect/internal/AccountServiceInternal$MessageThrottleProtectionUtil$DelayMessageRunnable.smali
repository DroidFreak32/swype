.class Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayMessageRunnable"
.end annotation


# instance fields
.field private fib:I

.field private final msg:Lcom/nuance/connect/internal/common/InternalMessages;

.field private nextSend:J

.field private scheduled:Z

.field final synthetic this$0:Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;Lcom/nuance/connect/internal/common/InternalMessages;)V
    .registers 5

    iput-object p1, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->this$0:Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->msg:Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->fib:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->nextSend:J

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;)J
    .registers 3

    iget-wide v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->nextSend:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized run()V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->fib:I

    # invokes: Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->fib(I)I
    invoke-static {v2}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->access$600(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->nextSend:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->scheduled:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->fib:I

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->this$0:Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;

    # getter for: Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->binder:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->access$700(Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/ClientBinder;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->msg:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    :cond_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trySend()Z
    .registers 11

    const/4 v0, 0x1

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->nextSend:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_38

    invoke-virtual {p0}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->run()V

    move v9, v0

    :goto_11
    # getter for: Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->devLog:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->access$500()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Throttle message: "

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->msg:Lcom/nuance/connect/internal/common/InternalMessages;

    const-string/jumbo v3, " fib: "

    iget v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->fib:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " nextSend: "

    iget-wide v6, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->nextSend:J

    invoke-static {v6, v7}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " sent: "

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_61

    monitor-exit p0

    return v9

    :cond_38
    :try_start_38
    iget-boolean v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->scheduled:Z

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->this$0:Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;

    # getter for: Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->handler:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;->access$400(Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_54

    iget-wide v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->nextSend:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->scheduled:Z

    move v9, v1

    goto :goto_11

    :cond_59
    iget v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->fib:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$MessageThrottleProtectionUtil$DelayMessageRunnable;->fib:I
    :try_end_5f
    .catchall {:try_start_38 .. :try_end_5f} :catchall_61

    move v9, v1

    goto :goto_11

    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0
.end method
