.class final Lcom/google/android/gms/ads/internal/zzj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzj;->zzf(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzalq:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field final synthetic zzalr:Lcom/google/android/gms/ads/internal/zzj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzj;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj$1;->zzalr:Lcom/google/android/gms/ads/internal/zzj;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzj$1;->zzalq:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj$1;->zzalr:Lcom/google/android/gms/ads/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzj;->zza(Lcom/google/android/gms/ads/internal/zzj;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzj$1;->zzalr:Lcom/google/android/gms/ads/internal/zzj;

    .line 1000
    new-instance v0, Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v6, Lcom/google/android/gms/ads/internal/zzj;->mContext:Landroid/content/Context;

    iget-object v2, v6, Lcom/google/android/gms/ads/internal/zzj;->zzajv:Lcom/google/android/gms/ads/internal/zzd;

    iget-object v3, v6, Lcom/google/android/gms/ads/internal/zzj;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzk(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v3

    iget-object v4, v6, Lcom/google/android/gms/ads/internal/zzj;->zzaln:Ljava/lang/String;

    iget-object v5, v6, Lcom/google/android/gms/ads/internal/zzj;->zzajz:Lcom/google/android/gms/internal/zzgj;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzj;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj$1;->zzalr:Lcom/google/android/gms/ads/internal/zzj;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/zzj;->zza(Lcom/google/android/gms/ads/internal/zzj;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj$1;->zzalr:Lcom/google/android/gms/ads/internal/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzj;->zzb(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/internal/zzeb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->zzb(Lcom/google/android/gms/internal/zzeb;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj$1;->zzalr:Lcom/google/android/gms/ads/internal/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzj;->zzc(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/internal/zzec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->zzb(Lcom/google/android/gms/internal/zzec;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj$1;->zzalr:Lcom/google/android/gms/ads/internal/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzj;->zzd(Lcom/google/android/gms/ads/internal/zzj;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->zza(Landroid/support/v4/util/SimpleArrayMap;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj$1;->zzalr:Lcom/google/android/gms/ads/internal/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzj;->zze(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/client/zzq;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj$1;->zzalr:Lcom/google/android/gms/ads/internal/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzj;->zzf(Lcom/google/android/gms/ads/internal/zzj;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->zzb(Landroid/support/v4/util/SimpleArrayMap;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj$1;->zzalr:Lcom/google/android/gms/ads/internal/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzj;->zzg(Lcom/google/android/gms/ads/internal/zzj;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->zzb(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj$1;->zzalr:Lcom/google/android/gms/ads/internal/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzj;->zzh(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->zzb(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj$1;->zzalr:Lcom/google/android/gms/ads/internal/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzj;->zzi(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/ads/internal/client/zzy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/client/zzy;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj$1;->zzalq:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
