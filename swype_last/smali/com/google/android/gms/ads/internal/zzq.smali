.class public Lcom/google/android/gms/ads/internal/zzq;
.super Lcom/google/android/gms/ads/internal/zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 14

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzq$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzq$2;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/ads/internal/formats/zzd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/ads/internal/formats/zze;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzq$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzq$3;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/ads/internal/formats/zze;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public pause()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resume()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showInterstitial()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzee;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapn:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .registers 7

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzcie:Lorg/json/JSONObject;

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzjx;->zzaju:Lcom/google/android/gms/internal/zzcg;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    .line 5000
    new-instance v3, Lcom/google/android/gms/internal/zzcd$zza;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzcd$zza;-><init>(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcg;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/internal/zzck;Lcom/google/android/gms/internal/zzft;)Lcom/google/android/gms/internal/zzcd;

    .line 0
    :cond_1f
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzdo;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzho;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzdk;)V
    .registers 12

    iget-object v0, p1, Lcom/google/android/gms/internal/zzju$zza;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzju$zza;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    :cond_a
    iget v0, p1, Lcom/google/android/gms/internal/zzju$zza;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1a

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzq$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzq$1;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzju$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapw:I

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfp()Lcom/google/android/gms/internal/zzic;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/internal/zzas;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajz:Lcom/google/android/gms/internal/zzgj;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/zzic;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzlh;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/internal/zzic$zza;Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzkj;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzkj;

    const-string/jumbo v1, "AdRenderer: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzkj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_56
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    goto :goto_19

    :cond_5a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_56
.end method

.method protected final zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzju;Z)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajr:Lcom/google/android/gms/ads/internal/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzr;->zzfc()Z

    move-result v0

    return v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/internal/zzju;)Z
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 0
    invoke-virtual {p0, v4}, Lcom/google/android/gms/ads/internal/zzq;->zzb(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv;->zzgp()Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzju;->zzcby:Z

    if-eqz v0, :cond_dc

    :try_start_1a
    iget-object v0, p2, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    if-eqz v0, :cond_80

    iget-object v0, p2, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgk;->zzmo()Lcom/google/android/gms/internal/zzgn;

    move-result-object v0

    move-object v12, v0

    :goto_25
    iget-object v0, p2, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    if-eqz v0, :cond_82

    iget-object v0, p2, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgk;->zzmp()Lcom/google/android/gms/internal/zzgo;

    move-result-object v0

    move-object v9, v0

    :goto_30
    if-eqz v12, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapk:Lcom/google/android/gms/internal/zzeb;

    if-eqz v0, :cond_84

    .line 1000
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-interface {v12}, Lcom/google/android/gms/internal/zzgn;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Lcom/google/android/gms/internal/zzgn;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v12}, Lcom/google/android/gms/internal/zzgn;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12}, Lcom/google/android/gms/internal/zzgn;->zzku()Lcom/google/android/gms/internal/zzdr;

    move-result-object v5

    if-eqz v5, :cond_50

    invoke-interface {v12}, Lcom/google/android/gms/internal/zzgn;->zzku()Lcom/google/android/gms/internal/zzdr;

    move-result-object v4

    :cond_50
    invoke-interface {v12}, Lcom/google/android/gms/internal/zzgn;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12}, Lcom/google/android/gms/internal/zzgn;->getStarRating()D

    move-result-wide v6

    invoke-interface {v12}, Lcom/google/android/gms/internal/zzgn;->getStore()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12}, Lcom/google/android/gms/internal/zzgn;->getPrice()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v12}, Lcom/google/android/gms/internal/zzgn;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/formats/zzd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzdr;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V

    .line 0
    new-instance v1, Lcom/google/android/gms/ads/internal/formats/zzg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/internal/zzas;

    invoke-direct {v1, v2, p0, v3, v12}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzgn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/formats/zzd;->zzb(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_7b} :catch_c8

    :goto_7b
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/internal/zzju;)Z

    move-result v0

    :goto_7f
    return v0

    :cond_80
    move-object v12, v4

    goto :goto_25

    :cond_82
    move-object v9, v4

    goto :goto_30

    :cond_84
    if-eqz v9, :cond_d0

    :try_start_86
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapl:Lcom/google/android/gms/internal/zzec;

    if-eqz v0, :cond_d0

    .line 2000
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-interface {v9}, Lcom/google/android/gms/internal/zzgo;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Lcom/google/android/gms/internal/zzgo;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v9}, Lcom/google/android/gms/internal/zzgo;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9}, Lcom/google/android/gms/internal/zzgo;->zzky()Lcom/google/android/gms/internal/zzdr;

    move-result-object v5

    if-eqz v5, :cond_a4

    invoke-interface {v9}, Lcom/google/android/gms/internal/zzgo;->zzky()Lcom/google/android/gms/internal/zzdr;

    move-result-object v4

    :cond_a4
    invoke-interface {v9}, Lcom/google/android/gms/internal/zzgo;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9}, Lcom/google/android/gms/internal/zzgo;->getAdvertiser()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v9}, Lcom/google/android/gms/internal/zzgo;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/formats/zze;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzdr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V

    .line 0
    new-instance v1, Lcom/google/android/gms/ads/internal/formats/zzg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/internal/zzas;

    invoke-direct {v1, v2, p0, v3, v9}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzgo;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/formats/zze;->zzb(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zze;)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_c7} :catch_c8

    goto :goto_7b

    :catch_c8
    move-exception v0

    const-string/jumbo v1, "Failed to get native ad mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7b

    :cond_d0
    :try_start_d0
    const-string/jumbo v0, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zzh(I)V
    :try_end_da
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_da} :catch_c8

    move v0, v2

    goto :goto_7f

    :cond_dc
    iget-object v1, p2, Lcom/google/android/gms/internal/zzju;->zzcim:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/zze;

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapl:Lcom/google/android/gms/internal/zzec;

    if-eqz v0, :cond_f0

    iget-object v0, p2, Lcom/google/android/gms/internal/zzju;->zzcim:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zze;)V

    goto :goto_7b

    :cond_f0
    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/zzd;

    if-eqz v0, :cond_103

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapk:Lcom/google/android/gms/internal/zzeb;

    if-eqz v0, :cond_103

    iget-object v0, p2, Lcom/google/android/gms/internal/zzju;->zzcim:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V

    goto/16 :goto_7b

    :cond_103
    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/zzf;

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapn:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapn:Landroid/support/v4/util/SimpleArrayMap;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzf;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_130

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/formats/zzf;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    .line 3000
    sget-object v1, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzq$4;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/android/gms/ads/internal/zzq$4;-><init>(Lcom/google/android/gms/ads/internal/zzq;Ljava/lang/String;Lcom/google/android/gms/internal/zzju;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7b

    .line 0
    :cond_130
    const-string/jumbo v0, "No matching listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/zzq;->zzh(I)V

    move v0, v2

    goto/16 :goto_7f
.end method

.method public zzb(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzed;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapm:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .registers 3

    const-string/jumbo v0, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapo:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzeb;)V
    .registers 3

    const-string/jumbo v0, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapk:Lcom/google/android/gms/internal/zzeb;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzec;)V
    .registers 3

    const-string/jumbo v0, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapl:Lcom/google/android/gms/internal/zzec;

    return-void
.end method

.method public zzb(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaps:Ljava/util/List;

    return-void
.end method

.method public zzfb()Landroid/support/v4/util/SimpleArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzee;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapn:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method public zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzed;
    .registers 3

    const-string/jumbo v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapm:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzed;

    return-object v0
.end method
