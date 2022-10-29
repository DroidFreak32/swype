.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/ads/internal/client/zzx$zza;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzx$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdLoaderBuilder(Lcom/google/android/gms/dynamic/zzd;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;I)Lcom/google/android/gms/ads/internal/client/zzs;
    .registers 11

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const v0, 0x9039e0

    const/4 v2, 0x1

    invoke-direct {v4, v0, p4, v2}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    new-instance v0, Lcom/google/android/gms/ads/internal/zzk;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzd;->zzek()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzk;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method

.method public createAdOverlay(Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/internal/zzhi;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Landroid/app/Activity;)V

    return-object v1
.end method

.method public createBannerAdManager(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;I)Lcom/google/android/gms/ads/internal/client/zzu;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const v0, 0x9039e0

    const/4 v2, 0x1

    invoke-direct {v5, v0, p5, v2}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    new-instance v0, Lcom/google/android/gms/ads/internal/zzf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzd;->zzek()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method

.method public createInAppPurchaseManager(Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/internal/zzhp;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/zze;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/purchase/zze;-><init>(Landroid/app/Activity;)V

    return-object v1
.end method

.method public createInterstitialAdManager(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;I)Lcom/google/android/gms/ads/internal/client/zzu;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdc;->initialize(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const v1, 0x9039e0

    const/4 v3, 0x1

    move/from16 v0, p5

    invoke-direct {v5, v1, v0, v3}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    const-string/jumbo v1, "reward_mb"

    iget-object v3, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaur:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    sget-object v1, Lcom/google/android/gms/internal/zzdc;->zzbae:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v1

    .line 0
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_45

    :cond_31
    if-eqz v3, :cond_56

    sget-object v1, Lcom/google/android/gms/internal/zzdc;->zzbaf:Lcom/google/android/gms/internal/zzcy;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v1

    .line 0
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_56

    :cond_45
    const/4 v1, 0x1

    :goto_46
    if-eqz v1, :cond_58

    new-instance v1, Lcom/google/android/gms/internal/zzfn;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzd;->zzek()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v6

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzfn;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    :goto_55
    return-object v1

    :cond_56
    const/4 v1, 0x0

    goto :goto_46

    :cond_58
    new-instance v6, Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzd;->zzek()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v12

    move-object v7, v2

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/ads/internal/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    move-object v1, v6

    goto :goto_55
.end method

.method public createNativeAdViewDelegate(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/internal/zzdt;
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/zzk;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    return-object v2
.end method

.method public createRewardedVideoAd(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzgj;I)Lcom/google/android/gms/ads/internal/reward/client/zzb;
    .registers 8

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const v2, 0x9039e0

    const/4 v3, 0x1

    invoke-direct {v1, v2, p3, v3}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    new-instance v2, Lcom/google/android/gms/internal/zzje;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzd;->zzek()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v3

    invoke-direct {v2, v0, v3, p2, v1}, Lcom/google/android/gms/internal/zzje;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object v2
.end method

.method public createSearchAdManager(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;I)Lcom/google/android/gms/ads/internal/client/zzu;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const v2, 0x9039e0

    const/4 v3, 0x1

    invoke-direct {v1, v2, p4, v3}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    new-instance v2, Lcom/google/android/gms/ads/internal/zzt;

    invoke-direct {v2, v0, p2, p3, v1}, Lcom/google/android/gms/ads/internal/zzt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object v2
.end method

.method public getMobileAdsSettingsManager(Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/ads/internal/client/zzz;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileAdsSettingsManagerWithClientJarVersion(Lcom/google/android/gms/dynamic/zzd;I)Lcom/google/android/gms/ads/internal/client/zzz;
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const v2, 0x9039e0

    const/4 v3, 0x1

    invoke-direct {v1, v2, p2, v3}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/zzo;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/zzo;

    move-result-object v0

    return-object v0
.end method
