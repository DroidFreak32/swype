.class public Lcom/google/android/gms/ads/internal/request/zzn;
.super Lcom/google/android/gms/internal/zzkc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/zzn$zza;,
        Lcom/google/android/gms/ads/internal/request/zzn$zzb;,
        Lcom/google/android/gms/ads/internal/request/zzn$zzc;
    }
.end annotation


# static fields
.field private static final zzamr:Ljava/lang/Object;

.field private static zzbyv:Lcom/google/android/gms/internal/zzfs;

.field static final zzcdf:J

.field static zzcdg:Z

.field private static zzcdh:Lcom/google/android/gms/internal/zzeq;

.field private static zzcdi:Lcom/google/android/gms/internal/zzeu;

.field private static zzcdj:Lcom/google/android/gms/internal/zzep;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbxu:Ljava/lang/Object;

.field private final zzcae:Lcom/google/android/gms/ads/internal/request/zza$zza;

.field private final zzcaf:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

.field private zzcdk:Lcom/google/android/gms/internal/zzfs$zzc;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdf:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzamr:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdg:Z

    sput-object v4, Lcom/google/android/gms/ads/internal/request/zzn;->zzbyv:Lcom/google/android/gms/internal/zzfs;

    sput-object v4, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdh:Lcom/google/android/gms/internal/zzeq;

    sput-object v4, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdi:Lcom/google/android/gms/internal/zzeu;

    sput-object v4, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdj:Lcom/google/android/gms/internal/zzep;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Lcom/google/android/gms/ads/internal/request/zza$zza;)V
    .registers 11

    .prologue
    const/4 v0, 0x1

    .line 0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzkc;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzbxu:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcae:Lcom/google/android/gms/ads/internal/request/zza$zza;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcaf:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    sget-object v6, Lcom/google/android/gms/ads/internal/request/zzn;->zzamr:Ljava/lang/Object;

    monitor-enter v6

    :try_start_14
    sget-boolean v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdg:Z

    if-nez v0, :cond_5d

    new-instance v0, Lcom/google/android/gms/internal/zzeu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeu;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdi:Lcom/google/android/gms/internal/zzeu;

    new-instance v0, Lcom/google/android/gms/internal/zzeq;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzeq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdh:Lcom/google/android/gms/internal/zzeq;

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzn$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/request/zzn$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdj:Lcom/google/android/gms/internal/zzep;

    new-instance v0, Lcom/google/android/gms/internal/zzfs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcaf:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    sget-object v3, Lcom/google/android/gms/internal/zzdc;->zzaxy:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v3

    .line 0
    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/ads/internal/request/zzn$zzb;

    invoke-direct {v4}, Lcom/google/android/gms/ads/internal/request/zzn$zzb;-><init>()V

    new-instance v5, Lcom/google/android/gms/ads/internal/request/zzn$zza;

    invoke-direct {v5}, Lcom/google/android/gms/ads/internal/request/zzn$zza;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzfs;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzkl;Lcom/google/android/gms/internal/zzkl;)V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzbyv:Lcom/google/android/gms/internal/zzfs;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdg:Z

    :cond_5d
    monitor-exit v6

    return-void

    :catchall_5f
    move-exception v0

    monitor-exit v6
    :try_end_61
    .catchall {:try_start_14 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/request/zzn;)Lcom/google/android/gms/ads/internal/request/zza$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcae:Lcom/google/android/gms/ads/internal/request/zza$zza;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/request/zzn;Lcom/google/android/gms/internal/zzfs$zzc;)Lcom/google/android/gms/internal/zzfs$zzc;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdk:Lcom/google/android/gms/internal/zzfs$zzc;

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 0
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "sdk_less_server_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "sdk_less_network_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_1a

    :cond_19
    :goto_19
    return-object v2

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfw()Lcom/google/android/gms/internal/zziw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzn;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zziw;->zzy(Landroid/content/Context;)Lcom/google/android/gms/internal/zziv;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/zzcv;

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzaxy:Lcom/google/android/gms/internal/zzcy;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/zzcv;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    move-object v3, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zziq;->zza$7edf9512$5c31bcc4(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zziv;Landroid/location/Location;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_19

    :try_start_43
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_48} :catch_9d
    .catch Ljava/lang/IllegalStateException; {:try_start_43 .. :try_end_48} :catch_99
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_43 .. :try_end_48} :catch_9b
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_43 .. :try_end_48} :catch_8c

    move-result-object v0

    :goto_49
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "request_id"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "network_id"

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "request_param"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "data"

    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_83

    const-string/jumbo v1, "adid"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "lat"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_95

    const/4 v0, 0x1

    :goto_7c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_83
    :try_start_83
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzkh;->zzam(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_8a} :catch_97

    move-result-object v2

    goto :goto_19

    :catch_8c
    move-exception v0

    :goto_8d
    const-string/jumbo v3, "Cannot get advertising id info"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_49

    :cond_95
    const/4 v0, 0x0

    goto :goto_7c

    :catch_97
    move-exception v0

    goto :goto_19

    :catch_99
    move-exception v0

    goto :goto_8d

    :catch_9b
    move-exception v0

    goto :goto_8d

    :catch_9d
    move-exception v0

    goto :goto_8d
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/request/zzn;)Lcom/google/android/gms/internal/zzfs$zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdk:Lcom/google/android/gms/internal/zzfs$zzc;

    return-object v0
.end method

.method protected static zzb(Lcom/google/android/gms/internal/zzfp;)V
    .registers 3

    const-string/jumbo v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdi:Lcom/google/android/gms/internal/zzeu;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzfp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdh:Lcom/google/android/gms/internal/zzeq;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzfp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdj:Lcom/google/android/gms/internal/zzep;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzfp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    return-void
.end method

.method protected static zzc(Lcom/google/android/gms/internal/zzfp;)V
    .registers 3

    const-string/jumbo v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdi:Lcom/google/android/gms/internal/zzeu;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzfp;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdh:Lcom/google/android/gms/internal/zzeq;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzfp;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdj:Lcom/google/android/gms/internal/zzep;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzfp;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    return-void
.end method

.method private zze(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .registers 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-static {}, Lcom/google/android/gms/internal/zzkh;->zzte()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/request/zzn;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_15

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v0, v9}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdi:Lcom/google/android/gms/internal/zzeu;

    .line 2000
    new-instance v5, Lcom/google/android/gms/internal/zzkv;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzkv;-><init>()V

    iget-object v4, v4, Lcom/google/android/gms/internal/zzeu;->zzbis:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    sget-object v4, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnb:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/ads/internal/request/zzn$2;

    invoke-direct {v6, p0, v1, v0}, Lcom/google/android/gms/ads/internal/request/zzn$2;-><init>(Lcom/google/android/gms/ads/internal/request/zzn;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdf:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    sub-long/2addr v0, v2

    :try_start_40
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_48
    .catch Ljava/util/concurrent/CancellationException; {:try_start_40 .. :try_end_48} :catch_84
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_48} :catch_50
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_40 .. :try_end_48} :catch_57
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_40 .. :try_end_48} :catch_5f

    if-nez v0, :cond_66

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v0, v8}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto :goto_14

    :catch_50
    move-exception v0

    :goto_51
    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v0, v8}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto :goto_14

    :catch_57
    move-exception v0

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto :goto_14

    :catch_5f
    move-exception v0

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v0, v9}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto :goto_14

    :cond_66
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/zziq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_14

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto :goto_14

    :catch_84
    move-exception v0

    goto :goto_51
.end method

.method static synthetic zzrc()Lcom/google/android/gms/internal/zzeu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcdi:Lcom/google/android/gms/internal/zzeu;

    return-object v0
.end method

.method static synthetic zzrd()Lcom/google/android/gms/internal/zzfs;
    .registers 1

    sget-object v0, Lcom/google/android/gms/ads/internal/request/zzn;->zzbyv:Lcom/google/android/gms/internal/zzfs;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzbxu:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnb:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/request/zzn$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/request/zzn$3;-><init>(Lcom/google/android/gms/ads/internal/request/zzn;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public zzew()V
    .registers 12

    const/4 v3, 0x0

    const-string/jumbo v0, "SdkLessAdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn;->zzcaf:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    const-wide/16 v4, -0x1

    invoke-direct {v1, v0, v3, v4, v5}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Ljava/lang/String;J)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/request/zzn;->zze(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/google/android/gms/internal/zzju$zza;

    iget v5, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    iget-wide v8, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccc:J

    move-object v4, v3

    move-object v10, v3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzju$zza;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnb:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/request/zzn$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/request/zzn$1;-><init>(Lcom/google/android/gms/ads/internal/request/zzn;Lcom/google/android/gms/internal/zzju$zza;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
