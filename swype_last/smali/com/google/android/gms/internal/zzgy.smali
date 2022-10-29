.class public final Lcom/google/android/gms/internal/zzgy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private mUri:Landroid/net/Uri;

.field private zzbpu:Landroid/app/Activity;

.field private zzbpv:Lcom/google/android/gms/internal/zzdq;

.field private zzbpw:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgy;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzbpw:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzgy;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzbpu:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzgy;)Lcom/google/android/gms/internal/zzdq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzbpv:Lcom/google/android/gms/internal/zzdq;

    return-object v0
.end method


# virtual methods
.method public final onDestroy()V
    .registers 3

    const-string/jumbo v0, "Destroying AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcv(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzbpv:Lcom/google/android/gms/internal/zzdq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgy;->zzbpu:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdq;->zzd(Landroid/app/Activity;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string/jumbo v1, "Exception while unbinding from CustomTabsService."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public final onPause()V
    .registers 2

    const-string/jumbo v0, "Pausing AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcv(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .registers 2

    const-string/jumbo v0, "Resuming AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcv(Ljava/lang/String;)V

    return-void
.end method

.method public final requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 0
    iput-object p2, p0, Lcom/google/android/gms/internal/zzgy;->zzbpw:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzbpw:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-nez v0, :cond_e

    const-string/jumbo v0, "Listener not set for mediation. Returning."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcx(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1e

    const-string/jumbo v0, "AdMobCustomTabs can only work with Activity context. Bailing out."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcx(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzbpw:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_d

    .line 1000
    :cond_1e
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdq;->zzo(Landroid/content/Context;)Z

    move-result v0

    .line 0
    if-nez v0, :cond_30

    const-string/jumbo v0, "Default browser does not support custom tabs. Bailing out."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcx(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzbpw:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_d

    :cond_30
    const-string/jumbo v0, "tab_url"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    const-string/jumbo v0, "The tab_url retrieved from mediation metadata is empty. Bailing out."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcx(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzbpw:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_d

    :cond_49
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgy;->zzbpu:Landroid/app/Activity;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgy;->mUri:Landroid/net/Uri;

    new-instance v0, Lcom/google/android/gms/internal/zzdq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzbpv:Lcom/google/android/gms/internal/zzdq;

    new-instance v0, Lcom/google/android/gms/internal/zzgy$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgy$1;-><init>(Lcom/google/android/gms/internal/zzgy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgy;->zzbpv:Lcom/google/android/gms/internal/zzdq;

    .line 2000
    iput-object v0, v1, Lcom/google/android/gms/internal/zzdq;->zzber:Lcom/google/android/gms/internal/zzdq$zza;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzbpv:Lcom/google/android/gms/internal/zzdq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgy;->zzbpu:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdq;->zze(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->zzbpw:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    goto :goto_d
.end method

.method public final showInterstitial()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 0
    new-instance v0, Landroid/support/customtabs/CustomTabsIntent$Builder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgy;->zzbpv:Lcom/google/android/gms/internal/zzdq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdq;->zzkl()Landroid/support/customtabs/CustomTabsSession;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>(Landroid/support/customtabs/CustomTabsSession;)V

    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsIntent$Builder;->build()Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v0

    iget-object v1, v0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgy;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iget-object v0, v0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;-><init>(Landroid/content/Intent;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    new-instance v3, Lcom/google/android/gms/internal/zzgy$2;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzgy$2;-><init>(Lcom/google/android/gms/internal/zzgy;)V

    new-instance v5, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v5, v6, v6, v6}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    sget-object v1, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzgy$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzgy$3;-><init>(Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    .line 3000
    iput-boolean v6, v0, Lcom/google/android/gms/internal/zzjx;->zzcjz:Z

    .line 0
    return-void
.end method
