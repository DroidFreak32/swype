.class public final Lcom/google/android/gms/internal/zzpx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzpz;


# instance fields
.field private final tw:Lcom/google/android/gms/internal/zzqa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpx;->tw:Lcom/google/android/gms/internal/zzqa;

    return-void
.end method


# virtual methods
.method public final begin()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpx;->tw:Lcom/google/android/gms/internal/zzqa;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzqa;->ui:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_0

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpx;->tw:Lcom/google/android/gms/internal/zzqa;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqa;->th:Lcom/google/android/gms/internal/zzpy;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzpy;->uj:Ljava/util/Set;

    return-void
.end method

.method public final connect()V
    .locals 8

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpx;->tw:Lcom/google/android/gms/internal/zzqa;

    .line 2000
    iget-object v0, v1, Lcom/google/android/gms/internal/zzqa;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzpw;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzqa;->tN:Lcom/google/android/gms/common/internal/zzg;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzqa;->tO:Ljava/util/Map;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzqa;->tz:Lcom/google/android/gms/common/zzc;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzqa;->si:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzqa;->tr:Ljava/util/concurrent/locks/Lock;

    iget-object v7, v1, Lcom/google/android/gms/internal/zzqa;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzpw;-><init>(Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/zzc;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/zzqa;->uy:Lcom/google/android/gms/internal/zzpz;

    iget-object v0, v1, Lcom/google/android/gms/internal/zzqa;->uy:Lcom/google/android/gms/internal/zzpz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzpz;->begin()V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzqa;->uv:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/internal/zzqa;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqa;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final disconnect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzpm$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpx;->tw:Lcom/google/android/gms/internal/zzqa;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqa;->th:Lcom/google/android/gms/internal/zzpy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpy;->uc:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzpm$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
