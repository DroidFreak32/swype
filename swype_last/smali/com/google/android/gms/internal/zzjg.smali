.class public final Lcom/google/android/gms/internal/zzjg;
.super Lcom/google/android/gms/internal/zzkc;

# interfaces
.implements Lcom/google/android/gms/internal/zzjh;
.implements Lcom/google/android/gms/internal/zzjk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private final zzail:Ljava/lang/Object;

.field final zzboc:Ljava/lang/String;

.field private final zzbxr:Lcom/google/android/gms/internal/zzju$zza;

.field private zzbyi:I

.field private final zzchm:Lcom/google/android/gms/internal/zzjm;

.field private final zzchn:Lcom/google/android/gms/internal/zzjk;

.field final zzcho:Ljava/lang/String;

.field private final zzchp:Ljava/lang/String;

.field private zzchq:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzjm;Lcom/google/android/gms/internal/zzjk;)V
    .registers 9

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkc;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzjg;->zzchq:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzjg;->zzbyi:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjg;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjg;->zzboc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjg;->zzcho:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzjg;->zzchp:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzjg;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzjg;->zzchm:Lcom/google/android/gms/internal/zzjm;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzail:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzjg;->zzchn:Lcom/google/android/gms/internal/zzjk;

    return-void
.end method

.method private zzf(J)Z
    .registers 10

    const/4 v0, 0x0

    const-wide/16 v2, 0x4e20

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_14

    :goto_13
    return v0

    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg;->zzail:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_19} :catch_1b

    const/4 v0, 0x1

    goto :goto_13

    :catch_1b
    move-exception v1

    goto :goto_13
.end method


# virtual methods
.method public final onStop()V
    .registers 1

    return-void
.end method

.method final zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzgk;)V
    .registers 5

    :try_start_0
    const-string/jumbo v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg;->zzboc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzcho:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg;->zzchp:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/zzgk;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzcho:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzgk;->zzc(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_12

    :catch_19
    move-exception v0

    const-string/jumbo v1, "Fail to load ad from adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzjg;->zza$505cff1c(I)V

    goto :goto_12
.end method

.method public final zza$505cff1c(I)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_4
    iput v0, p0, Lcom/google/android/gms/internal/zzjg;->zzchq:I

    iput p1, p0, Lcom/google/android/gms/internal/zzjg;->zzbyi:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public final zzaw$13462e()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzjg;->zza$505cff1c(I)V

    return-void
.end method

.method public final zzcg(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput v0, p0, Lcom/google/android/gms/internal/zzjg;->zzchq:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public final zzew()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzchm:Lcom/google/android/gms/internal/zzjm;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzchm:Lcom/google/android/gms/internal/zzjm;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzjm;->zzcib:Lcom/google/android/gms/internal/zzjj;

    .line 0
    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzchm:Lcom/google/android/gms/internal/zzjm;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzjm;->zzbog:Lcom/google/android/gms/internal/zzgk;

    .line 0
    if-nez v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzchm:Lcom/google/android/gms/internal/zzjm;

    .line 3000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzjm;->zzcib:Lcom/google/android/gms/internal/zzjj;

    .line 4000
    iput-object p0, v1, Lcom/google/android/gms/internal/zzjj;->zzchn:Lcom/google/android/gms/internal/zzjk;

    .line 5000
    iput-object p0, v1, Lcom/google/android/gms/internal/zzjj;->zzchu:Lcom/google/android/gms/internal/zzjh;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjg;->zzchm:Lcom/google/android/gms/internal/zzjm;

    .line 6000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzjm;->zzbog:Lcom/google/android/gms/internal/zzgk;

    .line 0
    :try_start_24
    invoke-interface {v2}, Lcom/google/android/gms/internal/zzgk;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_55

    sget-object v3, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnb:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/zzjg$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/android/gms/internal/zzjg$1;-><init>(Lcom/google/android/gms/internal/zzjg;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzgk;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_34} :catch_60

    :goto_34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    .line 7000
    :goto_3c
    iget-object v4, p0, Lcom/google/android/gms/internal/zzjg;->zzail:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3f
    iget v0, p0, Lcom/google/android/gms/internal/zzjg;->zzchq:I

    if-eqz v0, :cond_6c

    monitor-exit v4
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_74

    .line 8000
    :goto_44
    iput-object v5, v1, Lcom/google/android/gms/internal/zzjj;->zzchn:Lcom/google/android/gms/internal/zzjk;

    .line 9000
    iput-object v5, v1, Lcom/google/android/gms/internal/zzjj;->zzchu:Lcom/google/android/gms/internal/zzjh;

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/zzjg;->zzchq:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_79

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzchn:Lcom/google/android/gms/internal/zzjk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg;->zzboc:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjk;->zzcg(Ljava/lang/String;)V

    goto :goto_11

    :cond_55
    :try_start_55
    sget-object v3, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnb:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/zzjg$2;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/google/android/gms/internal/zzjg$2;-><init>(Lcom/google/android/gms/internal/zzjg;Lcom/google/android/gms/internal/zzgk;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzjj;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5f} :catch_60

    goto :goto_34

    :catch_60
    move-exception v0

    const-string/jumbo v2, "Fail to check if adapter is initialized."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzjg;->zza$505cff1c(I)V

    goto :goto_34

    .line 7000
    :cond_6c
    :try_start_6c
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzjg;->zzf(J)Z

    move-result v0

    if-nez v0, :cond_77

    monitor-exit v4

    goto :goto_44

    :catchall_74
    move-exception v0

    monitor-exit v4
    :try_end_76
    .catchall {:try_start_6c .. :try_end_76} :catchall_74

    throw v0

    :cond_77
    :try_start_77
    monitor-exit v4
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_74

    goto :goto_3c

    .line 0
    :cond_79
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzchn:Lcom/google/android/gms/internal/zzjk;

    iget v1, p0, Lcom/google/android/gms/internal/zzjg;->zzbyi:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjk;->zza$505cff1c(I)V

    goto :goto_11
.end method

.method public final zzrs()V
    .registers 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg;->zzchm:Lcom/google/android/gms/internal/zzjm;

    .line 10000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzjm;->zzbog:Lcom/google/android/gms/internal/zzgk;

    .line 0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzjg;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzgk;)V

    return-void
.end method
