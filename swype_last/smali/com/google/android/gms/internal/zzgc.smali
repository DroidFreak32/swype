.class public final Lcom/google/android/gms/internal/zzgc;
.super Lcom/google/android/gms/internal/zzgl$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field final zzail:Ljava/lang/Object;

.field zzboa:Lcom/google/android/gms/internal/zzge$zza;

.field private zzbob:Lcom/google/android/gms/internal/zzgb;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgl$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzail:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgc;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzbob:Lcom/google/android/gms/internal/zzgb;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzbob:Lcom/google/android/gms/internal/zzgb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgb;->zzdz()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final onAdClosed()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgc;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzbob:Lcom/google/android/gms/internal/zzgb;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzbob:Lcom/google/android/gms/internal/zzgb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgb;->zzea()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final onAdFailedToLoad(I)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgc;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzboa:Lcom/google/android/gms/internal/zzge$zza;

    if-eqz v0, :cond_13

    const/4 v0, 0x3

    if-ne p1, v0, :cond_15

    const/4 v0, 0x1

    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzgc;->zzboa:Lcom/google/android/gms/internal/zzge$zza;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzge$zza;->zzy(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzboa:Lcom/google/android/gms/internal/zzge$zza;

    :cond_13
    monitor-exit v1

    return-void

    :cond_15
    const/4 v0, 0x2

    goto :goto_b

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public final onAdImpression()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgc;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzbob:Lcom/google/android/gms/internal/zzgb;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzbob:Lcom/google/android/gms/internal/zzgb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgb;->zzee()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final onAdLeftApplication()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgc;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzbob:Lcom/google/android/gms/internal/zzgb;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzbob:Lcom/google/android/gms/internal/zzgb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgb;->zzeb()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final onAdLoaded()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgc;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzboa:Lcom/google/android/gms/internal/zzge$zza;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzboa:Lcom/google/android/gms/internal/zzge$zza;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzge$zza;->zzy(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzboa:Lcom/google/android/gms/internal/zzge$zza;

    monitor-exit v1

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzbob:Lcom/google/android/gms/internal/zzgb;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzbob:Lcom/google/android/gms/internal/zzgb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgb;->zzed()V

    :cond_1b
    monitor-exit v1

    goto :goto_11

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public final onAdOpened()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgc;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzbob:Lcom/google/android/gms/internal/zzgb;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzbob:Lcom/google/android/gms/internal/zzgb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgb;->zzec()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzgb;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgc;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzgc;->zzbob:Lcom/google/android/gms/internal/zzgb;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzgm;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgc;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzboa:Lcom/google/android/gms/internal/zzge$zza;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzboa:Lcom/google/android/gms/internal/zzge$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzge$zza;->zza$37cb6271(Lcom/google/android/gms/internal/zzgm;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzboa:Lcom/google/android/gms/internal/zzge$zza;

    monitor-exit v1

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzbob:Lcom/google/android/gms/internal/zzgb;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzbob:Lcom/google/android/gms/internal/zzgb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgb;->zzed()V

    :cond_1a
    monitor-exit v1

    goto :goto_10

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method
