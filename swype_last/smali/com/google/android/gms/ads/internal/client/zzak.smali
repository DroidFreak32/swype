.class public Lcom/google/android/gms/ads/internal/client/zzak;
.super Lcom/google/android/gms/ads/internal/client/zzu$zza;


# instance fields
.field private zzalf:Lcom/google/android/gms/ads/internal/client/zzq;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzu$zza;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/client/zzak;)Lcom/google/android/gms/ads/internal/client/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzak;->zzalf:Lcom/google/android/gms/ads/internal/client/zzq;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .registers 2

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public showInterstitial()V
    .registers 1

    return-void
.end method

.method public stopLoading()V
    .registers 1

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzp;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzak;->zzalf:Lcom/google/android/gms/ads/internal/client/zzq;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzw;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzy;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzdo;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzho;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzhs;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .registers 4

    const-string/jumbo v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnb:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzak$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzak$1;-><init>(Lcom/google/android/gms/ads/internal/client/zzak;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public zzdm()Lcom/google/android/gms/dynamic/zzd;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzdn()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzdp()V
    .registers 1

    return-void
.end method

.method public zzdq()Lcom/google/android/gms/ads/internal/client/zzab;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
