.class public final Lcom/google/android/gms/internal/zzlj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzlh;
    .locals 9

    new-instance v8, Lcom/google/android/gms/internal/zzlk;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/zzll;->zzb$71c2c049(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZLcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/zzlk;-><init>(Lcom/google/android/gms/internal/zzlh;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v0

    invoke-virtual {v0, v8, p3}, Lcom/google/android/gms/internal/zzki;->zzb(Lcom/google/android/gms/internal/zzlh;Z)Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/zzlh;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzki;->zzk(Lcom/google/android/gms/internal/zzlh;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/zzlh;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v8
.end method

.method public static zza$309ea036(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzlh;
    .locals 9

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    move-object v7, v6

    move-object v8, v6

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/zzlj;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzlh;

    move-result-object v0

    return-object v0
.end method
