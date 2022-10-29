.class public final Lcom/google/android/gms/internal/zzgd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzge$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final zzail:Ljava/lang/Object;

.field private final zzajz:Lcom/google/android/gms/internal/zzgj;

.field final zzalk:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field final zzall:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field zzanc:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field final zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field final zzarl:Z

.field final zzawn:Z

.field final zzboc:Ljava/lang/String;

.field private final zzbod:J

.field private final zzboe:Lcom/google/android/gms/internal/zzga;

.field final zzbof:Lcom/google/android/gms/internal/zzfz;

.field zzbog:Lcom/google/android/gms/internal/zzgk;

.field zzboh:I

.field private zzboi:Lcom/google/android/gms/internal/zzgm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/internal/zzfz;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZZLcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzgj;",
            "Lcom/google/android/gms/internal/zzga;",
            "Lcom/google/android/gms/internal/zzfz;",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            "Lcom/google/android/gms/ads/internal/client/AdSizeParcel;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "ZZ",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzgd;->zzail:Ljava/lang/Object;

    const/4 v2, -0x2

    iput v2, p0, Lcom/google/android/gms/internal/zzgd;->zzboh:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgd;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgd;->zzajz:Lcom/google/android/gms/internal/zzgj;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgd;->zzbof:Lcom/google/android/gms/internal/zzfz;

    const-string/jumbo v2, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgd;->zzmh()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzgd;->zzboc:Ljava/lang/String;

    :goto_22
    iput-object p4, p0, Lcom/google/android/gms/internal/zzgd;->zzboe:Lcom/google/android/gms/internal/zzga;

    iget-wide v2, p4, Lcom/google/android/gms/internal/zzga;->zzbnl:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_48

    iget-wide v2, p4, Lcom/google/android/gms/internal/zzga;->zzbnl:J

    :goto_2e
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzgd;->zzbod:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzgd;->zzanc:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzgd;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzgd;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzgd;->zzarl:Z

    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgd;->zzawn:Z

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzalk:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzall:Ljava/util/List;

    return-void

    :cond_45
    iput-object p2, p0, Lcom/google/android/gms/internal/zzgd;->zzboc:Ljava/lang/String;

    goto :goto_22

    :cond_48
    const-wide/16 v2, 0x2710

    goto :goto_2e
.end method

.method private static zza(Lcom/google/android/gms/ads/mediation/MediationAdapter;)Lcom/google/android/gms/internal/zzgk;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzgq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgq;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    return-object v0
.end method

.method static zzbk(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 0
    new-instance v1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    if-nez p0, :cond_d

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "multiple_images"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    const-string/jumbo v3, "only_urls"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    const-string/jumbo v3, "native_image_orientation"

    const-string/jumbo v4, "any"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6000
    const-string/jumbo v3, "landscape"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v0, 0x2

    .line 0
    :cond_3c
    :goto_3c
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_3f} :catch_4f

    :goto_3f
    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    goto :goto_c

    .line 6000
    :cond_44
    :try_start_44
    const-string/jumbo v3, "portrait"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_4a} :catch_4f

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v0, 0x1

    goto :goto_3c

    .line 0
    :catch_4f
    move-exception v0

    const-string/jumbo v2, "Exception occurred when creating native ad options"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f
.end method

.method private zzmh()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzbof:Lcom/google/android/gms/internal/zzfz;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfz;->zzbmy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzajz:Lcom/google/android/gms/internal/zzgj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgd;->zzbof:Lcom/google/android/gms/internal/zzfz;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzfz;->zzbmy:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgj;->zzbn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    :goto_19
    return-object v0

    :cond_1a
    const-string/jumbo v0, "com.google.ads.mediation.customevent.CustomEventAdapter"
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_19

    :catch_1e
    move-exception v0

    const-string/jumbo v0, "Fail to determine the custom event\'s version, assuming the old one."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :cond_25
    const-string/jumbo v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    goto :goto_19
.end method

.method private zzmi()Lcom/google/android/gms/internal/zzgm;
    .registers 3

    .prologue
    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/zzgd;->zzboh:I

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgd;->zzmk()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x4

    :try_start_d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgd;->zzz(I)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzboi:Lcom/google/android/gms/internal/zzgm;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzboi:Lcom/google/android/gms/internal/zzgm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgm;->zzmm()I

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzboi:Lcom/google/android/gms/internal/zzgm;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_21} :catch_22

    goto :goto_b

    :catch_22
    move-exception v0

    const-string/jumbo v0, "Could not get cpm value from MediationResponseMetadata"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :cond_29
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgd;->zzml()I

    move-result v1

    .line 3000
    new-instance v0, Lcom/google/android/gms/internal/zzgd$2;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzgd$2;-><init>(I)V

    goto :goto_b
.end method

.method private zzml()I
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzbof:Lcom/google/android/gms/internal/zzfz;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfz;->zzbnc:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :cond_8
    :goto_8
    return v0

    :cond_9
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzbof:Lcom/google/android/gms/internal/zzfz;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfz;->zzbnc:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_12} :catch_25

    const-string/jumbo v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgd;->zzboc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "cpm_cents"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_8

    :catch_25
    move-exception v0

    const-string/jumbo v0, "Could not convert to json. Returning 0"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    move v0, v1

    goto :goto_8

    :cond_2e
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgd;->zzz(I)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string/jumbo v0, "cpm_floor_cents"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :goto_3c
    if-nez v0, :cond_8

    const-string/jumbo v0, "penalized_average_cpm_cents"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_8

    :cond_46
    move v0, v1

    goto :goto_3c
.end method


# virtual methods
.method public final cancel()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzbog:Lcom/google/android/gms/internal/zzgk;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzbog:Lcom/google/android/gms/internal/zzgk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgk;->destroy()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_16
    .catchall {:try_start_3 .. :try_end_c} :catchall_1e

    :cond_c
    :goto_c
    const/4 v0, -0x1

    :try_start_d
    iput v0, p0, Lcom/google/android/gms/internal/zzgd;->zzboh:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catch_16
    move-exception v0

    const-string/jumbo v2, "Could not destroy mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public final zza(JJ)Lcom/google/android/gms/internal/zzge;
    .registers 20

    .prologue
    .line 0
    iget-object v10, p0, Lcom/google/android/gms/internal/zzgd;->zzail:Ljava/lang/Object;

    monitor-enter v10

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v5, Lcom/google/android/gms/internal/zzgc;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzgc;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzgd$1;

    invoke-direct {v3, p0, v5}, Lcom/google/android/gms/internal/zzgd$1;-><init>(Lcom/google/android/gms/internal/zzgd;Lcom/google/android/gms/internal/zzgc;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzgd;->zzbod:J

    .line 1000
    :goto_18
    iget v4, p0, Lcom/google/android/gms/internal/zzgd;->zzboh:I

    const/4 v6, -0x2

    if-eq v4, v6, :cond_3a

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    sub-long v8, v2, v0

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzge;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgd;->zzbof:Lcom/google/android/gms/internal/zzfz;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgd;->zzbog:Lcom/google/android/gms/internal/zzgk;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgd;->zzboc:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/gms/internal/zzgd;->zzboh:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgd;->zzmi()Lcom/google/android/gms/internal/zzgm;

    move-result-object v7

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzge;-><init>(Lcom/google/android/gms/internal/zzfz;Lcom/google/android/gms/internal/zzgk;Ljava/lang/String;Lcom/google/android/gms/internal/zzgc;ILcom/google/android/gms/internal/zzgm;J)V

    monitor-exit v10

    return-object v1

    .line 2000
    :cond_3a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v0

    sub-long v8, v2, v8

    sub-long v6, v6, p1

    sub-long v6, p3, v6

    const-wide/16 v12, 0x0

    cmp-long v4, v8, v12

    if-lez v4, :cond_52

    const-wide/16 v12, 0x0

    cmp-long v4, v6, v12

    if-gtz v4, :cond_5f

    :cond_52
    const-string/jumbo v4, "Timed out waiting for adapter."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    const/4 v4, 0x3

    iput v4, p0, Lcom/google/android/gms/internal/zzgd;->zzboh:I

    goto :goto_18

    .line 0
    :catchall_5c
    move-exception v0

    monitor-exit v10
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw v0

    .line 2000
    :cond_5f
    :try_start_5f
    iget-object v4, p0, Lcom/google/android/gms/internal/zzgd;->zzail:Ljava/lang/Object;

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_68} :catch_69
    .catchall {:try_start_5f .. :try_end_68} :catchall_5c

    goto :goto_18

    :catch_69
    move-exception v4

    const/4 v4, -0x1

    :try_start_6b
    iput v4, p0, Lcom/google/android/gms/internal/zzgd;->zzboh:I
    :try_end_6d
    .catchall {:try_start_6b .. :try_end_6d} :catchall_5c

    goto :goto_18
.end method

.method public final zza$37cb6271(Lcom/google/android/gms/internal/zzgm;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Lcom/google/android/gms/internal/zzgd;->zzboh:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgd;->zzboi:Lcom/google/android/gms/internal/zzgm;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v0
.end method

.method final zzbj(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgd;->zzmk()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgd;->zzz(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-object p1

    :cond_10
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "cpm_floor_cents"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_1e} :catch_20

    move-result-object p1

    goto :goto_f

    :catch_20
    move-exception v0

    const-string/jumbo v0, "Could not remove field. Returning the original value"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_f
.end method

.method final zzmj()Lcom/google/android/gms/internal/zzgk;
    .registers 5

    .prologue
    .line 0
    const-string/jumbo v1, "Instantiating mediation adapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzboc:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgd;->zzarl:Z

    if-nez v0, :cond_84

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbe:Lcom/google/android/gms/internal/zzcy;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_47

    const-string/jumbo v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgd;->zzboc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgd;->zza(Lcom/google/android/gms/ads/mediation/MediationAdapter;)Lcom/google/android/gms/internal/zzgk;

    move-result-object v0

    :goto_40
    return-object v0

    :cond_41
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :cond_47
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbf:Lcom/google/android/gms/internal/zzcy;

    .line 5000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string/jumbo v0, "com.google.ads.mediation.AdUrlAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgd;->zzboc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    new-instance v0, Lcom/google/ads/mediation/AdUrlAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/AdUrlAdapter;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgd;->zza(Lcom/google/android/gms/ads/mediation/MediationAdapter;)Lcom/google/android/gms/internal/zzgk;

    move-result-object v0

    goto :goto_40

    :cond_6e
    const-string/jumbo v0, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgd;->zzboc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    new-instance v0, Lcom/google/android/gms/internal/zzgq;

    new-instance v1, Lcom/google/android/gms/internal/zzgy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzgy;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzgq;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_40

    :cond_84
    :try_start_84
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzajz:Lcom/google/android/gms/internal/zzgj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgd;->zzboc:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgj;->zzbm(Ljava/lang/String;)Lcom/google/android/gms/internal/zzgk;
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_8b} :catch_8d

    move-result-object v0

    goto :goto_40

    :catch_8d
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "Could not instantiate mediation adapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzboc:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_40

    :cond_a7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_a2
.end method

.method final zzmk()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzboe:Lcom/google/android/gms/internal/zzga;

    iget v0, v0, Lcom/google/android/gms/internal/zzga;->zzbnv:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final zzy(I)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/zzgd;->zzboh:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgd;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method final zzz(I)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzgd;->zzarl:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgd;->zzbog:Lcom/google/android/gms/internal/zzgk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgk;->zzmr()Landroid/os/Bundle;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_2d

    move-result-object v1

    :goto_b
    if-eqz v1, :cond_18

    const-string/jumbo v2, "capabilities"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_18

    const/4 v0, 0x1

    :cond_18
    :goto_18
    return v0

    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgd;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgd;->zzbog:Lcom/google/android/gms/internal/zzgk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgk;->getInterstitialAdapterInfo()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_b

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgd;->zzbog:Lcom/google/android/gms/internal/zzgk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgk;->zzmq()Landroid/os/Bundle;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2b} :catch_2d

    move-result-object v1

    goto :goto_b

    :catch_2d
    move-exception v1

    const-string/jumbo v1, "Could not get adapter info. Returning false"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_18
.end method
