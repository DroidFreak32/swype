.class public Lcom/google/android/gms/internal/zzkv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzky;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzky",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field private zzbox:Z

.field private zzcnn:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private zzcno:Z

.field final zzcnp:Lcom/google/android/gms/internal/zzkz;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzail:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzkz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzcnp:Lcom/google/android/gms/internal/zzkz;

    return-void
.end method

.method private zzty()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkv;->zzcno:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_5

    :goto_4
    return v0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzkv;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkv;->zzty()Z

    move-result v3

    if-eqz v3, :cond_13

    monitor-exit v2

    goto :goto_4

    :catchall_10
    move-exception v0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0

    :cond_13
    const/4 v0, 0x1

    :try_start_14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzkv;->zzbox:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzkv;->zzcno:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzcnp:Lcom/google/android/gms/internal/zzkz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkz;->zztz()V

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_10

    move v0, v1

    goto :goto_4
.end method

.method public get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkv;->zzty()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1b

    move-result v0

    if-nez v0, :cond_e

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_1e
    .catchall {:try_start_9 .. :try_end_e} :catchall_1b

    :cond_e
    :try_start_e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkv;->zzbox:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v2, "CallbackFuture was cancelled."

    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1b

    throw v0

    :catch_1e
    move-exception v0

    :try_start_1f
    throw v0

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzcnn:Ljava/lang/Object;

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1b

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkv;->zzty()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_25

    move-result v0

    if-nez v0, :cond_18

    :try_start_9
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzail:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_18} :catch_28
    .catchall {:try_start_9 .. :try_end_18} :catchall_25

    :cond_18
    :try_start_18
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkv;->zzcno:Z

    if-nez v0, :cond_2a

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v2, "CallbackFuture timed out."

    invoke-direct {v0, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_25

    throw v0

    :catch_28
    move-exception v0

    :try_start_29
    throw v0

    :cond_2a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkv;->zzbox:Z

    if-eqz v0, :cond_37

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v2, "CallbackFuture was cancelled."

    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzcnn:Ljava/lang/Object;

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_25

    return-object v0
.end method

.method public isCancelled()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkv;->zzbox:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isDone()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkv;->zzty()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public final zzc(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzcnp:Lcom/google/android/gms/internal/zzkz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzkz;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzh(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkv;->zzbox:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkv;->zzty()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Provided CallbackFuture with multiple values."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzjx;->zzb(Ljava/lang/Throwable;Z)V

    monitor-exit v1

    goto :goto_8

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    const/4 v0, 0x1

    :try_start_25
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzkv;->zzcno:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkv;->zzcnn:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv;->zzcnp:Lcom/google/android/gms/internal/zzkz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkz;->zztz()V

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_21

    goto :goto_8
.end method
