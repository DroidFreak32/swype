.class public Lbolts/CancellationTokenSource;
.super Ljava/lang/Object;
.source "CancellationTokenSource.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private cancellationRequested:Z

.field private closed:Z

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final lock:Ljava/lang/Object;

.field private final registrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbolts/CancellationTokenRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    .line 33
    invoke-static {}, Lbolts/BoltsExecutors;->scheduled()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbolts/CancellationTokenSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lbolts/CancellationTokenSource;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lbolts/CancellationTokenSource;

    .prologue
    .line 29
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lbolts/CancellationTokenSource;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2
    .param p0, "x0"    # Lbolts/CancellationTokenSource;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledFuture;

    .prologue
    .line 29
    iput-object p1, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private cancelAfter(JLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .param p1, "delay"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v2, -0x1

    .line 93
    cmp-long v0, p1, v2

    if-gez v0, :cond_f

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Delay must be >= -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_f
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_19

    .line 98
    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->cancel()V

    .line 120
    :goto_18
    return-void

    .line 102
    :cond_19
    iget-object v1, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_1c
    iget-boolean v0, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-eqz v0, :cond_25

    .line 104
    monitor-exit v1

    goto :goto_18

    .line 120
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_22

    throw v0

    .line 107
    :cond_25
    :try_start_25
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->cancelScheduledCancellation()V

    .line 109
    cmp-long v0, p1, v2

    if-eqz v0, :cond_39

    .line 110
    iget-object v0, p0, Lbolts/CancellationTokenSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lbolts/CancellationTokenSource$1;

    invoke-direct {v2, p0}, Lbolts/CancellationTokenSource$1;-><init>(Lbolts/CancellationTokenSource;)V

    invoke-interface {v0, v2, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    .line 120
    :cond_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_22

    goto :goto_18
.end method

.method private cancelScheduledCancellation()V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_d

    .line 206
    iget-object v0, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    .line 209
    :cond_d
    return-void
.end method

.method private notifyListeners(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbolts/CancellationTokenRegistration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "registrations":Ljava/util/List;, "Ljava/util/List<Lbolts/CancellationTokenRegistration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/CancellationTokenRegistration;

    .line 182
    invoke-virtual {v1}, Lbolts/CancellationTokenRegistration;->runAction()V

    goto :goto_4

    .line 184
    :cond_14
    return-void
.end method

.method private throwIfClosed()V
    .registers 3

    .prologue
    .line 198
    iget-boolean v0, p0, Lbolts/CancellationTokenSource;->closed:Z

    if-eqz v0, :cond_d

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Object already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_d
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .prologue
    .line 69
    iget-object v2, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 70
    :try_start_3
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 71
    iget-boolean v1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-eqz v1, :cond_c

    .line 72
    monitor-exit v2

    .line 81
    :goto_b
    return-void

    .line 75
    :cond_c
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->cancelScheduledCancellation()V

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .local v0, "registrations":Ljava/util/List;, "Ljava/util/List<Lbolts/CancellationTokenRegistration;>;"
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    .line 80
    invoke-direct {p0, v0}, Lbolts/CancellationTokenSource;->notifyListeners(Ljava/util/List;)V

    goto :goto_b

    .line 79
    .end local v0    # "registrations":Ljava/util/List;, "Ljava/util/List<Lbolts/CancellationTokenRegistration;>;"
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public cancelAfter(J)V
    .registers 4
    .param p1, "delay"    # J

    .prologue
    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, p2, v0}, Lbolts/CancellationTokenSource;->cancelAfter(JLjava/util/concurrent/TimeUnit;)V

    .line 90
    return-void
.end method

.method public close()V
    .registers 4

    .prologue
    .line 125
    iget-object v2, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_3
    iget-boolean v1, p0, Lbolts/CancellationTokenSource;->closed:Z

    if-eqz v1, :cond_9

    .line 127
    monitor-exit v2

    .line 137
    :goto_8
    return-void

    .line 130
    :cond_9
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->cancelScheduledCancellation()V

    .line 132
    iget-object v1, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/CancellationTokenRegistration;

    .line 133
    invoke-virtual {v1}, Lbolts/CancellationTokenRegistration;->close()V

    goto :goto_12

    .line 137
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1

    .line 135
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_25
    :try_start_25
    iget-object v1, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbolts/CancellationTokenSource;->closed:Z

    .line 137
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_22

    goto :goto_8
.end method

.method public getToken()Lbolts/CancellationToken;
    .registers 3

    .prologue
    .line 58
    iget-object v1, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_3
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 60
    new-instance v0, Lbolts/CancellationToken;

    invoke-direct {v0, p0}, Lbolts/CancellationToken;-><init>(Lbolts/CancellationTokenSource;)V

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public isCancellationRequested()Z
    .registers 3

    .prologue
    .line 48
    iget-object v1, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_3
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 50
    iget-boolean v0, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    monitor-exit v1

    return v0

    .line 51
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method register(Ljava/lang/Runnable;)Lbolts/CancellationTokenRegistration;
    .registers 5
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 142
    iget-object v2, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 143
    :try_start_3
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 145
    new-instance v0, Lbolts/CancellationTokenRegistration;

    invoke-direct {v0, p0, p1}, Lbolts/CancellationTokenRegistration;-><init>(Lbolts/CancellationTokenSource;Ljava/lang/Runnable;)V

    .line 146
    .local v0, "ctr":Lbolts/CancellationTokenRegistration;
    iget-boolean v1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-eqz v1, :cond_14

    .line 147
    invoke-virtual {v0}, Lbolts/CancellationTokenRegistration;->runAction()V

    .line 151
    :goto_12
    monitor-exit v2

    .line 152
    return-object v0

    .line 149
    :cond_14
    iget-object v1, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 151
    .end local v0    # "ctr":Lbolts/CancellationTokenRegistration;
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method throwIfCancellationRequested()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v1, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_3
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 162
    iget-boolean v0, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-eqz v0, :cond_13

    .line 163
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 165
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0

    :cond_13
    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_10

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 188
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%s@%s[cancellationRequested=%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->isCancellationRequested()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregister(Lbolts/CancellationTokenRegistration;)V
    .registers 4
    .param p1, "registration"    # Lbolts/CancellationTokenRegistration;

    .prologue
    .line 169
    iget-object v1, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_3
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 171
    iget-object v0, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 172
    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method
