.class public abstract Lcom/google/android/gms/internal/zzib;
.super Lcom/google/android/gms/internal/zzkc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzib$zza;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final zzail:Ljava/lang/Object;

.field protected final zzbxq:Lcom/google/android/gms/internal/zzic$zza;

.field protected final zzbxr:Lcom/google/android/gms/internal/zzju$zza;

.field protected zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field protected final zzbxu:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzic$zza;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzkc;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzib;->zzail:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzib;->zzbxu:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzib;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzib;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzib;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzib;->zzbxq:Lcom/google/android/gms/internal/zzic$zza;

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 1

    return-void
.end method

.method protected abstract zzak(I)Lcom/google/android/gms/internal/zzju;
.end method

.method public zzew()V
    .registers 7

    .prologue
    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzib;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    const-string/jumbo v0, "AdRendererBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzib;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget v0, v0, Lcom/google/android/gms/internal/zzju$zza;->errorCode:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_53

    :try_start_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gms/internal/zzib;->zzh(J)V
    :try_end_14
    .catch Lcom/google/android/gms/internal/zzib$zza; {:try_start_d .. :try_end_14} :catch_24
    .catchall {:try_start_d .. :try_end_14} :catchall_53

    :goto_14
    :try_start_14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzib;->zzak(I)Lcom/google/android/gms/internal/zzju;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzib$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzib$2;-><init>(Lcom/google/android/gms/internal/zzib;Lcom/google/android/gms/internal/zzju;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2

    return-void

    :catch_24
    move-exception v0

    .line 1000
    iget v1, v0, Lcom/google/android/gms/internal/zzib$zza;->zzbyi:I

    .line 0
    const/4 v3, 0x3

    if-eq v1, v3, :cond_2d

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4b

    :cond_2d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzib$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    :goto_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzib;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-nez v0, :cond_56

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzib;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    :goto_3f
    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzib$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzib$1;-><init>(Lcom/google/android/gms/internal/zzib;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto :goto_14

    :cond_4b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzib$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_34

    :catchall_53
    move-exception v0

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_14 .. :try_end_55} :catchall_53

    throw v0

    :cond_56
    :try_start_56
    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzib;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v4, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbns:J

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzib;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    :try_end_61
    .catchall {:try_start_56 .. :try_end_61} :catchall_53

    goto :goto_3f
.end method

.method protected abstract zzh(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzib$zza;
        }
    .end annotation
.end method

.method protected final zzm(Lcom/google/android/gms/internal/zzju;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzib;->zzbxq:Lcom/google/android/gms/internal/zzic$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzic$zza;->zzb(Lcom/google/android/gms/internal/zzju;)V

    return-void
.end method
