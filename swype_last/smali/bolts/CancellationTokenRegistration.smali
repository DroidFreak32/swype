.class public Lbolts/CancellationTokenRegistration;
.super Ljava/lang/Object;
.source "CancellationTokenRegistration.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private action:Ljava/lang/Runnable;

.field private closed:Z

.field private final lock:Ljava/lang/Object;

.field private tokenSource:Lbolts/CancellationTokenSource;


# direct methods
.method constructor <init>(Lbolts/CancellationTokenSource;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "tokenSource"    # Lbolts/CancellationTokenSource;
    .param p2, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/CancellationTokenRegistration;->lock:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lbolts/CancellationTokenRegistration;->tokenSource:Lbolts/CancellationTokenSource;

    .line 28
    iput-object p2, p0, Lbolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    .line 29
    return-void
.end method

.method private throwIfClosed()V
    .registers 3

    .prologue
    .line 57
    iget-boolean v0, p0, Lbolts/CancellationTokenRegistration;->closed:Z

    if-eqz v0, :cond_d

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Object already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_d
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 36
    iget-object v1, p0, Lbolts/CancellationTokenRegistration;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_3
    iget-boolean v0, p0, Lbolts/CancellationTokenRegistration;->closed:Z

    if-eqz v0, :cond_9

    .line 38
    monitor-exit v1

    .line 45
    :goto_8
    return-void

    .line 41
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbolts/CancellationTokenRegistration;->closed:Z

    .line 42
    iget-object v0, p0, Lbolts/CancellationTokenRegistration;->tokenSource:Lbolts/CancellationTokenSource;

    invoke-virtual {v0, p0}, Lbolts/CancellationTokenSource;->unregister(Lbolts/CancellationTokenRegistration;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lbolts/CancellationTokenRegistration;->tokenSource:Lbolts/CancellationTokenSource;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lbolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    .line 45
    monitor-exit v1

    goto :goto_8

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method runAction()V
    .registers 3

    .prologue
    .line 49
    iget-object v1, p0, Lbolts/CancellationTokenRegistration;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_3
    invoke-direct {p0}, Lbolts/CancellationTokenRegistration;->throwIfClosed()V

    .line 51
    iget-object v0, p0, Lbolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 52
    invoke-virtual {p0}, Lbolts/CancellationTokenRegistration;->close()V

    .line 53
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method
