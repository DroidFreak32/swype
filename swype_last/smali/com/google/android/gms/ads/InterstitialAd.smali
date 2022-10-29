.class public final Lcom/google/android/gms/ads/InterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    return-void
.end method


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    move-result-object v0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isLoaded()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public final isLoading()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->isLoading()Z

    move-result v0

    return v0
.end method

.method public final loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzdc()Lcom/google/android/gms/ads/internal/client/zzad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzaf;->zza(Lcom/google/android/gms/ads/internal/client/zzad;)V

    return-void
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    if-eqz p1, :cond_13

    instance-of v0, p1, Lcom/google/android/gms/ads/internal/client/zza;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->zza(Lcom/google/android/gms/ads/internal/client/zza;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    if-nez p1, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzaf;->zza(Lcom/google/android/gms/ads/internal/client/zza;)V

    goto :goto_12
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public final setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    return-void
.end method

.method public final setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzaf;->setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V

    return-void
.end method

.method public final setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    return-void
.end method

.method public final show()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->show()V

    return-void
.end method

.method public final zzd(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->zzd(Z)V

    return-void
.end method
