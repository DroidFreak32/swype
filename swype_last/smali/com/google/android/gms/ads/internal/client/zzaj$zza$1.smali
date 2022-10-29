.class final Lcom/google/android/gms/ads/internal/client/zzaj$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/zzaj$zza;->zzf(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzawv:Lcom/google/android/gms/ads/internal/client/zzaj$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaj$zza;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzaj$zza$1;->zzawv:Lcom/google/android/gms/ads/internal/client/zzaj$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzaj$zza$1;->zzawv:Lcom/google/android/gms/ads/internal/client/zzaj$zza;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzaj$zza;->zzawu:Lcom/google/android/gms/ads/internal/client/zzaj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzaj;->zza(Lcom/google/android/gms/ads/internal/client/zzaj;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_16

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzaj$zza$1;->zzawv:Lcom/google/android/gms/ads/internal/client/zzaj$zza;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzaj$zza;->zzawu:Lcom/google/android/gms/ads/internal/client/zzaj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzaj;->zza(Lcom/google/android/gms/ads/internal/client/zzaj;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    const-string/jumbo v1, "Could not notify onAdFailedToLoad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method
