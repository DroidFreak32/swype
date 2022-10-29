.class final Lcom/google/android/gms/ads/internal/zzq$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zze;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamx:Lcom/google/android/gms/ads/internal/zzq;

.field final synthetic zzamz:Lcom/google/android/gms/ads/internal/formats/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/ads/internal/formats/zze;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq$3;->zzamx:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzq$3;->zzamz:Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq$3;->zzamx:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapl:Lcom/google/android/gms/internal/zzec;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq$3;->zzamx:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapl:Lcom/google/android/gms/internal/zzec;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq$3;->zzamz:Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzec;->zza(Lcom/google/android/gms/internal/zzdx;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string/jumbo v1, "Could not call OnContentAdLoadedListener.onContentAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method
