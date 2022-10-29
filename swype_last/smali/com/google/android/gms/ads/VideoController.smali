.class public final Lcom/google/android/gms/ads/VideoController;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    }
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field private zzaim:Lcom/google/android/gms/ads/internal/client/zzab;

.field private zzain:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zzail:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getVideoLifecycleCallbacks()Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zzain:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final hasVideoContent()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zzaim:Lcom/google/android/gms/ads/internal/client/zzab;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public final setVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V
    .registers 5

    const-string/jumbo v0, "VideoLifecycleCallbacks may not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iput-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzain:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zzaim:Lcom/google/android/gms/ads/internal/client/zzab;

    if-nez v0, :cond_11

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1d

    :goto_10
    return-void

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zzaim:Lcom/google/android/gms/ads/internal/client/zzab;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzap;

    invoke-direct {v2, p1}, Lcom/google/android/gms/ads/internal/client/zzap;-><init>(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/client/zzab;->zza(Lcom/google/android/gms/ads/internal/client/zzac;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_20
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1d

    :goto_1b
    :try_start_1b
    monitor-exit v1

    goto :goto_10

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v0

    :catch_20
    move-exception v0

    :try_start_21
    const-string/jumbo v2, "Unable to call setVideoLifecycleCallbacks on video controller."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_1d

    goto :goto_1b
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/client/zzab;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzaim:Lcom/google/android/gms/ads/internal/client/zzab;

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zzain:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zzain:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/VideoController;->setVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method
