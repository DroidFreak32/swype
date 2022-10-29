.class final Lcom/google/android/gms/internal/zzgy$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgy;->showInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpx:Lcom/google/android/gms/internal/zzgy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgy;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgy$2;->zzbpx:Lcom/google/android/gms/internal/zzgy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPause()V
    .registers 2

    const-string/jumbo v0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcv(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .registers 2

    const-string/jumbo v0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcv(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdx()V
    .registers 3

    const-string/jumbo v0, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy$2;->zzbpx:Lcom/google/android/gms/internal/zzgy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgy;->zza(Lcom/google/android/gms/internal/zzgy;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgy$2;->zzbpx:Lcom/google/android/gms/internal/zzgy;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy$2;->zzbpx:Lcom/google/android/gms/internal/zzgy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgy;->zzc(Lcom/google/android/gms/internal/zzgy;)Lcom/google/android/gms/internal/zzdq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgy$2;->zzbpx:Lcom/google/android/gms/internal/zzgy;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgy;->zzb(Lcom/google/android/gms/internal/zzgy;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdq;->zzd(Landroid/app/Activity;)V

    return-void
.end method

.method public final zzdy()V
    .registers 3

    const-string/jumbo v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy$2;->zzbpx:Lcom/google/android/gms/internal/zzgy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgy;->zza(Lcom/google/android/gms/internal/zzgy;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgy$2;->zzbpx:Lcom/google/android/gms/internal/zzgy;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
