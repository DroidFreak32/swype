.class public Lcom/google/android/gms/ads/internal/zzn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method private static zza(Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/ads/internal/zzf$zza;)Lcom/google/android/gms/internal/zzep;
    .registers 4

    new-instance v0, Lcom/google/android/gms/ads/internal/zzn$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/ads/internal/zzn$5;-><init>(Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/ads/internal/zzf$zza;Lcom/google/android/gms/internal/zzgo;)V

    return-object v0
.end method

.method private static zza(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez p0, :cond_11

    const-string/jumbo v0, "Bitmap is null. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    :goto_10
    return-object v0

    :cond_11
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "data:image/png;base64,"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_10
.end method

.method static zza(Lcom/google/android/gms/internal/zzdr;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_c

    const-string/jumbo v0, "Image is null. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    :goto_b
    return-object v0

    :cond_c
    :try_start_c
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzdr;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_b

    :catch_17
    move-exception v0

    const-string/jumbo v0, "Unable to get image uri. Trying data uri next"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :cond_1e
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzn;->zzb(Lcom/google/android/gms/internal/zzdr;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static zza(Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/ads/internal/zzf$zza;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzn;->zzg(Lcom/google/android/gms/internal/zzju;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v4, p0, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    if-eqz v4, :cond_1b

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    :goto_12
    if-nez v3, :cond_1d

    const-string/jumbo v0, "AdWebView is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    move-object v3, v0

    goto :goto_12

    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzfz;->zzbni:Ljava/util/List;

    move-object v2, v1

    :goto_26
    if-eqz v2, :cond_2e

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    :cond_2e
    const-string/jumbo v0, "No template ids present in mediation response"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_34} :catch_35

    goto :goto_1a

    :catch_35
    move-exception v0

    const-string/jumbo v1, "Error occurred while recording impression and registering for clicks"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :cond_3d
    move-object v2, v0

    goto :goto_26

    :cond_3f
    :try_start_3f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgk;->zzmo()Lcom/google/android/gms/internal/zzgn;

    move-result-object v1

    :goto_49
    iget-object v5, p0, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    if-eqz v5, :cond_53

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgk;->zzmp()Lcom/google/android/gms/internal/zzgo;

    move-result-object v0

    :cond_53
    const-string/jumbo v5, "2"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    if-eqz v1, :cond_80

    invoke-static {v3}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzgn;->zzl(Lcom/google/android/gms/dynamic/zzd;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgn;->getOverrideImpressionRecording()Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgn;->recordImpression()V

    :cond_6e
    invoke-interface {v4}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    const-string/jumbo v2, "/nativeExpressViewClicked"

    const/4 v3, 0x0

    invoke-static {v1, v3, p1}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/ads/internal/zzf$zza;)Lcom/google/android/gms/internal/zzep;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    goto :goto_1a

    :cond_7e
    move-object v1, v0

    goto :goto_49

    :cond_80
    const-string/jumbo v1, "1"

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    if-eqz v0, :cond_ac

    invoke-static {v3}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgo;->zzl(Lcom/google/android/gms/dynamic/zzd;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgo;->getOverrideImpressionRecording()Z

    move-result v1

    if-nez v1, :cond_9b

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgo;->recordImpression()V

    :cond_9b
    invoke-interface {v4}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v1

    const-string/jumbo v2, "/nativeExpressViewClicked"

    const/4 v3, 0x0

    invoke-static {v3, v0, p1}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/ads/internal/zzf$zza;)Lcom/google/android/gms/internal/zzep;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    goto/16 :goto_1a

    :cond_ac
    const-string/jumbo v0, "No matching template id and mapper"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_b2} :catch_35

    goto/16 :goto_1a
.end method

.method public static zza(Lcom/google/android/gms/internal/zzlh;Lcom/google/android/gms/internal/zzge;Ljava/util/concurrent/CountDownLatch;)Z
    .registers 16

    .prologue
    const/4 v12, 0x0

    .line 0
    .line 1000
    :try_start_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "AdWebView is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_ef
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_d} :catch_10c

    move v0, v12

    .line 0
    :goto_e
    if-nez v0, :cond_13

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_13
    return v0

    .line 1000
    :cond_14
    const/4 v1, 0x4

    :try_start_15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzge;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfz;->zzbni:Ljava/util/List;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_24
    const-string/jumbo v0, "No template ids present in mediation response"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    move v0, v12

    goto :goto_e

    .line 2000
    :cond_2c
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v1

    const-string/jumbo v2, "/nativeExpressAssetsLoaded"

    .line 3000
    new-instance v3, Lcom/google/android/gms/ads/internal/zzn$3;

    invoke-direct {v3, p2}, Lcom/google/android/gms/ads/internal/zzn$3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 2000
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v1

    const-string/jumbo v2, "/nativeExpressAssetsLoadingFailed"

    .line 4000
    new-instance v3, Lcom/google/android/gms/ads/internal/zzn$4;

    invoke-direct {v3, p2}, Lcom/google/android/gms/ads/internal/zzn$4;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 2000
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    .line 1000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzge;->zzboo:Lcom/google/android/gms/internal/zzgk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgk;->zzmo()Lcom/google/android/gms/internal/zzgn;

    move-result-object v11

    iget-object v1, p1, Lcom/google/android/gms/internal/zzge;->zzboo:Lcom/google/android/gms/internal/zzgk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgk;->zzmp()Lcom/google/android/gms/internal/zzgo;

    move-result-object v8

    const-string/jumbo v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    if-eqz v11, :cond_b2

    .line 5000
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-interface {v11}, Lcom/google/android/gms/internal/zzgn;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11}, Lcom/google/android/gms/internal/zzgn;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v11}, Lcom/google/android/gms/internal/zzgn;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11}, Lcom/google/android/gms/internal/zzgn;->zzku()Lcom/google/android/gms/internal/zzdr;

    move-result-object v4

    invoke-interface {v11}, Lcom/google/android/gms/internal/zzgn;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11}, Lcom/google/android/gms/internal/zzgn;->getStarRating()D

    move-result-wide v6

    invoke-interface {v11}, Lcom/google/android/gms/internal/zzgn;->getStore()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11}, Lcom/google/android/gms/internal/zzgn;->getPrice()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v11}, Lcom/google/android/gms/internal/zzgn;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/formats/zzd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzdr;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V

    .line 1000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzge;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzfz;->zzbnh:Ljava/lang/String;

    .line 6000
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/ads/internal/zzn$1;

    invoke-direct {v3, v0, v1, p0}, Lcom/google/android/gms/ads/internal/zzn$1;-><init>(Lcom/google/android/gms/ads/internal/formats/zzd;Ljava/lang/String;Lcom/google/android/gms/internal/zzlh;)V

    .line 7000
    iput-object v3, v2, Lcom/google/android/gms/internal/zzli;->zzbya:Lcom/google/android/gms/internal/zzli$zza;

    .line 1000
    :goto_9a
    iget-object v0, p1, Lcom/google/android/gms/internal/zzge;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfz;->zzbnf:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzge;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzfz;->zzbng:Ljava/lang/String;

    if-eqz v1, :cond_102

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlh;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_af
    const/4 v0, 0x1

    goto/16 :goto_e

    :cond_b2
    const-string/jumbo v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    if-eqz v8, :cond_f9

    .line 8000
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-interface {v8}, Lcom/google/android/gms/internal/zzgo;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8}, Lcom/google/android/gms/internal/zzgo;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v8}, Lcom/google/android/gms/internal/zzgo;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8}, Lcom/google/android/gms/internal/zzgo;->zzky()Lcom/google/android/gms/internal/zzdr;

    move-result-object v4

    invoke-interface {v8}, Lcom/google/android/gms/internal/zzgo;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8}, Lcom/google/android/gms/internal/zzgo;->getAdvertiser()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v8}, Lcom/google/android/gms/internal/zzgo;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/formats/zze;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzdr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V

    .line 1000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzge;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzfz;->zzbnh:Ljava/lang/String;

    .line 9000
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/ads/internal/zzn$2;

    invoke-direct {v3, v0, v1, p0}, Lcom/google/android/gms/ads/internal/zzn$2;-><init>(Lcom/google/android/gms/ads/internal/formats/zze;Ljava/lang/String;Lcom/google/android/gms/internal/zzlh;)V

    .line 10000
    iput-object v3, v2, Lcom/google/android/gms/internal/zzli;->zzbya:Lcom/google/android/gms/internal/zzli$zza;
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_ee} :catch_ef
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_ee} :catch_10c

    goto :goto_9a

    .line 0
    :catch_ef
    move-exception v0

    const-string/jumbo v1, "Unable to invoke load assets"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v12

    goto/16 :goto_e

    .line 1000
    :cond_f9
    :try_start_f9
    const-string/jumbo v0, "No matching template id and mapper"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    move v0, v12

    goto/16 :goto_e

    :cond_102
    const-string/jumbo v0, "text/html"

    const-string/jumbo v1, "UTF-8"

    invoke-interface {p0, v2, v0, v1}, Lcom/google/android/gms/internal/zzlh;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10b
    .catch Landroid/os/RemoteException; {:try_start_f9 .. :try_end_10b} :catch_ef
    .catch Ljava/lang/RuntimeException; {:try_start_f9 .. :try_end_10b} :catch_10c

    goto :goto_af

    .line 0
    :catch_10c
    move-exception v0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/zzdr;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzdr;->zzkt()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "Drawable is null. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    :goto_f
    return-object v0

    :cond_10
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_24

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_2f

    const-string/jumbo v0, "Drawable is not an instance of BitmapDrawable. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_f

    :catch_24
    move-exception v0

    const-string/jumbo v0, "Unable to get drawable. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_f

    :cond_2f
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzn;->zza(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method static synthetic zzb(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 0
    .line 12000
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move-object v0, v2

    :goto_e
    return-object v0

    :cond_f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "image"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_49

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzn;->zza(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_18

    :cond_49
    const-string/jumbo v0, "Invalid type. An image type extra should return a bitmap"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_18

    :cond_50
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5f

    const-string/jumbo v0, "Invalid asset type. Bitmap should be returned only for image type"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_18

    :cond_5f
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_18

    :cond_6b
    move-object v0, v2

    .line 0
    goto :goto_e
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzlh;)V
    .registers 3

    .prologue
    .line 0
    .line 13000
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzlh;->zzuw()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 0
    :cond_d
    return-void
.end method

.method public static zzf(Lcom/google/android/gms/internal/zzju;)Landroid/view/View;
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_b

    const-string/jumbo v0, "AdState is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->e(Ljava/lang/String;)V

    move-object v0, v1

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzn;->zzg(Lcom/google/android/gms/internal/zzju;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgk;->getView()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    :goto_26
    if-nez v0, :cond_32

    const-string/jumbo v0, "View in mediation adapter is null."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_a

    :cond_30
    move-object v0, v1

    goto :goto_26

    :cond_32
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_38} :catch_39

    goto :goto_a

    :catch_39
    move-exception v0

    const-string/jumbo v2, "Could not get View from mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_a
.end method

.method static synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdr;
    .registers 2

    .prologue
    .line 0
    .line 11000
    instance-of v0, p0, Landroid/os/IBinder;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/os/IBinder;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdr$zza;->zzy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzdr;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    .line 0
    goto :goto_a
.end method

.method public static zzg(Lcom/google/android/gms/internal/zzju;)Z
    .registers 2

    if-eqz p0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzju;->zzcby:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfz;->zzbnf:Ljava/lang/String;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
