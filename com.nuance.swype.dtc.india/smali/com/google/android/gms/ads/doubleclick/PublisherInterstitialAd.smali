.class public final Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/ads/internal/client/zzaf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    return-void
.end method


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    move-result-object v0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    move-result-object v0

    return-object v0
.end method

.method public final isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public final isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->isLoading()Z

    move-result v0

    return v0
.end method

.method public final loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzdc()Lcom/google/android/gms/ads/internal/client/zzad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzaf;->zza(Lcom/google/android/gms/ads/internal/client/zzad;)V

    return-void
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    return-void
.end method

.method public final setCorrelator(Lcom/google/android/gms/ads/Correlator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->setCorrelator(Lcom/google/android/gms/ads/Correlator;)V

    return-void
.end method

.method public final setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    return-void
.end method

.method public final show()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzaij:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->show()V

    return-void
.end method
