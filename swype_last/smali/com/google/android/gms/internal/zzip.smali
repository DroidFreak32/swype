.class public final Lcom/google/android/gms/internal/zzip;
.super Lcom/google/android/gms/ads/internal/request/zzk$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# static fields
.field private static final zzamr:Ljava/lang/Object;

.field private static zzcdx:Lcom/google/android/gms/internal/zzip;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzcdy:Lcom/google/android/gms/internal/zzio;

.field private final zzcdz:Lcom/google/android/gms/internal/zzcv;

.field private final zzcea:Lcom/google/android/gms/internal/zzfs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzip;->zzamr:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzio;)V
    .registers 10

    .prologue
    const v4, 0x903ab0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/request/zzk$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzip;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzip;->zzcdy:Lcom/google/android/gms/internal/zzio;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzip;->zzcdz:Lcom/google/android/gms/internal/zzcv;

    new-instance v0, Lcom/google/android/gms/internal/zzfs;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_18
    new-instance v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v3, 0x1

    invoke-direct {v2, v4, v4, v3}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    .line 18000
    iget-object v3, p2, Lcom/google/android/gms/internal/zzcv;->zzaxn:Ljava/lang/String;

    .line 0
    new-instance v4, Lcom/google/android/gms/internal/zzip$4;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzip$4;-><init>(Lcom/google/android/gms/internal/zzip;)V

    new-instance v5, Lcom/google/android/gms/internal/zzfs$zzb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzfs$zzb;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzfs;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzkl;Lcom/google/android/gms/internal/zzkl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzip;->zzcea:Lcom/google/android/gms/internal/zzfs;

    return-void

    :cond_30
    move-object v1, p1

    goto :goto_18
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzio;)Lcom/google/android/gms/internal/zzip;
    .registers 6

    sget-object v1, Lcom/google/android/gms/internal/zzip;->zzamr:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzip;->zzcdx:Lcom/google/android/gms/internal/zzip;

    if-nez v0, :cond_18

    new-instance v0, Lcom/google/android/gms/internal/zzip;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_13
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzip;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzio;)V

    sput-object v0, Lcom/google/android/gms/internal/zzip;->zzcdx:Lcom/google/android/gms/internal/zzip;

    :cond_18
    sget-object v0, Lcom/google/android/gms/internal/zzip;->zzcdx:Lcom/google/android/gms/internal/zzip;

    monitor-exit v1

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private static zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzaz(I)Z

    move-result v0

    if-eqz v0, :cond_ee

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Http Response: {\n  URL:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n  Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    if-eqz p1, :cond_9e

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "      "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_98

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_94
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    goto :goto_77

    :cond_98
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_94

    :cond_9e
    const-string/jumbo v0, "  Body:"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    if-eqz p2, :cond_c8

    const/4 v0, 0x0

    :goto_a7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x186a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_ce

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v2, v0, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_a7

    :cond_c8
    const-string/jumbo v0, "    null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    :cond_ce
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "  Response Code:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    :cond_ee
    return-void
.end method

.method private static zza$3b3f878a(Landroid/content/Context;Lcom/google/android/gms/internal/zzfs;Lcom/google/android/gms/internal/zzio;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .registers 22

    .prologue
    .line 0
    const-string/jumbo v4, "Starting ad request from service using: AFMA_getAd"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/zzdc;->initialize(Landroid/content/Context;)V

    new-instance v12, Lcom/google/android/gms/internal/zzdk;

    sget-object v4, Lcom/google/android/gms/internal/zzdc;->zzaze:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string/jumbo v5, "load_ad"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaur:Ljava/lang/String;

    invoke-direct {v12, v4, v5, v6}, Lcom/google/android/gms/internal/zzdk;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_4d

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbj:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4d

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbj:J

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/zzdk;->zzc(J)Lcom/google/android/gms/internal/zzdi;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "cts"

    aput-object v7, v5, v6

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    :cond_4d
    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v13

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget v5, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_2ce

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcay:Landroid/os/Bundle;

    if-eqz v5, :cond_2ce

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcay:Landroid/os/Bundle;

    move-object v5, v4

    :goto_64
    const/4 v6, 0x0

    sget-object v4, Lcom/google/android/gms/internal/zzdc;->zzazn:Lcom/google/android/gms/internal/zzcy;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2cb

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/zzio;->zzcdw:Lcom/google/android/gms/internal/zzit;

    if-eqz v4, :cond_2cb

    if-nez v5, :cond_9c

    sget-object v4, Lcom/google/android/gms/internal/zzdc;->zzazo:Lcom/google/android/gms/internal/zzcy;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9c

    const-string/jumbo v4, "contentInfo is not present, but we\'ll still launch the app index task"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_9c
    if-eqz v5, :cond_2c8

    new-instance v4, Lcom/google/android/gms/internal/zzip$1;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/google/android/gms/internal/zzip$1;-><init>(Lcom/google/android/gms/internal/zzio;Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Bundle;)V

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkg;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzky;

    move-result-object v4

    move-object v6, v4

    move-object v9, v5

    :goto_af
    new-instance v5, Lcom/google/android/gms/internal/zzkw;

    const/4 v4, 0x0

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/zzkw;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_f8

    const-string/jumbo v7, "_ad"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f8

    const/4 v4, 0x1

    :goto_c7
    move-object/from16 v0, p3

    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbq:Z

    if-eqz v7, :cond_2c5

    if-nez v4, :cond_2c5

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/zzio;->zzcds:Lcom/google/android/gms/internal/zzfw;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzfw;->zza$5b6906ad()Lcom/google/android/gms/internal/zzky;

    move-result-object v4

    move-object v10, v4

    :goto_dc
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfw()Lcom/google/android/gms/internal/zziw;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zziw;->zzy(Landroid/content/Context;)Lcom/google/android/gms/internal/zziv;

    move-result-object v5

    iget v4, v5, Lcom/google/android/gms/internal/zziv;->zzcgp:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_fa

    const-string/jumbo v4, "Device is offline."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :goto_f7
    return-object v4

    :cond_f8
    const/4 v4, 0x0

    goto :goto_c7

    :cond_fa
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v7, 0x7

    if-lt v4, v7, :cond_131

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbg:Ljava/lang/String;

    move-object v11, v4

    :goto_106
    new-instance v14, Lcom/google/android/gms/internal/zzir;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v14, v11, v4}, Lcom/google/android/gms/internal/zzir;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_13b

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string/jumbo v7, "_ad"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13b

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/zziq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    goto :goto_f7

    :cond_131
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_106

    :cond_13b
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/zzio;->zzcdq:Lcom/google/android/gms/internal/zzcx;

    move-object/from16 v0, p3

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzcx;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/zzio;->zzcdt:Lcom/google/android/gms/internal/zzjt;

    move-object/from16 v0, p3

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzjt;->zzf(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_174

    :try_start_151
    const-string/jumbo v4, "Waiting for app index fetching task."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/gms/internal/zzdc;->zzazp:Lcom/google/android/gms/internal/zzcy;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-interface {v6, v0, v1, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const-string/jumbo v4, "App index fetching task completed."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V
    :try_end_174
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_151 .. :try_end_174} :catch_2c2
    .catch Ljava/lang/InterruptedException; {:try_start_151 .. :try_end_174} :catch_18e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_151 .. :try_end_174} :catch_196

    :cond_174
    :goto_174
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcas:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/internal/zzip;->zzb(Lcom/google/android/gms/internal/zzky;)Landroid/location/Location;

    move-result-object v6

    move-object/from16 v4, p3

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/zziq;->zza$7edf9512$5c31bcc4(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zziv;Landroid/location/Location;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_19e

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto/16 :goto_f7

    :catch_18e
    move-exception v4

    :goto_18f
    const-string/jumbo v6, "Failed to fetch app index signal"

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_174

    :catch_196
    move-exception v4

    const-string/jumbo v4, "Timed out waiting for app index fetching task"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    goto :goto_174

    :cond_19e
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v6, 0x7

    if-ge v4, v6, :cond_1ab

    :try_start_1a5
    const-string/jumbo v4, "request_id"

    invoke-virtual {v5, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1ab
    .catch Lorg/json/JSONException; {:try_start_1a5 .. :try_end_1ab} :catch_2bf

    :cond_1ab
    :goto_1ab
    :try_start_1ab
    const-string/jumbo v4, "prefetch_mode"

    const-string/jumbo v6, "url"

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b4
    .catch Lorg/json/JSONException; {:try_start_1ab .. :try_end_1b4} :catch_1fc

    :goto_1b4
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "arc"

    aput-object v6, v4, v5

    invoke-virtual {v12, v13, v4}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/zzip$2;

    move-object/from16 v5, p1

    move-object v6, v14

    move-object v7, v12

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/zzip$2;-><init>(Lcom/google/android/gms/internal/zzfs;Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5000
    :try_start_1d6
    iget-object v4, v14, Lcom/google/android/gms/internal/zzir;->zzcen:Lcom/google/android/gms/internal/zzkv;

    .line 0
    const-wide/16 v6, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zziu;
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_1e2} :catch_204
    .catchall {:try_start_1d6 .. :try_end_1e2} :catchall_2ad

    if-nez v8, :cond_21d

    :try_start_1e4
    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_1ea
    .catchall {:try_start_1e4 .. :try_end_1ea} :catchall_2ad

    sget-object v5, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zzip$3;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v1, v14, v2}, Lcom/google/android/gms/internal/zzip$3;-><init>(Lcom/google/android/gms/internal/zzio;Landroid/content/Context;Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f7

    :catch_1fc
    move-exception v4

    const-string/jumbo v6, "Failed putting prefetch parameters to ad request."

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b4

    :catch_204
    move-exception v4

    :try_start_205
    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_20b
    .catchall {:try_start_205 .. :try_end_20b} :catchall_2ad

    sget-object v5, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zzip$3;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v1, v14, v2}, Lcom/google/android/gms/internal/zzip$3;-><init>(Lcom/google/android/gms/internal/zzio;Landroid/content/Context;Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f7

    .line 6000
    :cond_21d
    :try_start_21d
    iget v4, v8, Lcom/google/android/gms/internal/zziu;->zzbyi:I

    .line 0
    const/4 v5, -0x2

    if-eq v4, v5, :cond_23b

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    .line 7000
    iget v5, v8, Lcom/google/android/gms/internal/zziu;->zzbyi:I

    .line 0
    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_229
    .catchall {:try_start_21d .. :try_end_229} :catchall_2ad

    sget-object v5, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zzip$3;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v1, v14, v2}, Lcom/google/android/gms/internal/zzip$3;-><init>(Lcom/google/android/gms/internal/zzio;Landroid/content/Context;Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f7

    :cond_23b
    :try_start_23b
    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzdk;->zzkj()Lcom/google/android/gms/internal/zzdi;

    move-result-object v4

    if-eqz v4, :cond_251

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzdk;->zzkj()Lcom/google/android/gms/internal/zzdi;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "rur"

    aput-object v7, v5, v6

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    :cond_251
    const/4 v4, 0x0

    .line 8000
    iget-object v5, v8, Lcom/google/android/gms/internal/zziu;->zzcgc:Ljava/lang/String;

    .line 0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_264

    .line 9000
    iget-object v4, v8, Lcom/google/android/gms/internal/zziu;->zzcgc:Ljava/lang/String;

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/zziq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    :cond_264
    if-nez v4, :cond_281

    .line 10000
    iget-object v5, v8, Lcom/google/android/gms/internal/zziu;->zzae:Ljava/lang/String;

    .line 0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_281

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    .line 11000
    iget-object v7, v8, Lcom/google/android/gms/internal/zziu;->zzae:Ljava/lang/String;

    move-object/from16 v4, p3

    move-object/from16 v5, p0

    move-object v9, v12

    move-object/from16 v10, p2

    .line 0
    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/zzip;->zza$6bacb101(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zziu;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzio;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    :cond_281
    if-nez v4, :cond_289

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :cond_289
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "tts"

    aput-object v7, v5, v6

    invoke-virtual {v12, v13, v5}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzdk;->zzki()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccl:Ljava/lang/String;
    :try_end_29b
    .catchall {:try_start_23b .. :try_end_29b} :catchall_2ad

    sget-object v5, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zzip$3;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v1, v14, v2}, Lcom/google/android/gms/internal/zzip$3;-><init>(Lcom/google/android/gms/internal/zzio;Landroid/content/Context;Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f7

    :catchall_2ad
    move-exception v4

    sget-object v5, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zzip$3;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v1, v14, v2}, Lcom/google/android/gms/internal/zzip$3;-><init>(Lcom/google/android/gms/internal/zzio;Landroid/content/Context;Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v4

    :catch_2bf
    move-exception v4

    goto/16 :goto_1ab

    :catch_2c2
    move-exception v4

    goto/16 :goto_18f

    :cond_2c5
    move-object v10, v5

    goto/16 :goto_dc

    :cond_2c8
    move-object v9, v5

    goto/16 :goto_af

    :cond_2cb
    move-object v9, v5

    goto/16 :goto_af

    :cond_2ce
    move-object v5, v4

    goto/16 :goto_64
.end method

.method public static zza$6bacb101(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zziu;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzio;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .registers 51

    .prologue
    .line 0
    if-eqz p5, :cond_1a9

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v4

    move-object v5, v4

    :goto_7
    :try_start_7
    new-instance v42, Lcom/google/android/gms/internal/zzis;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzis;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    const-string/jumbo v6, "AdRequestServiceImpl: Sending request: "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1ad

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_21
    invoke-static {v4}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    new-instance v6, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v20

    move v8, v4

    move-object v9, v6

    :goto_36
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v43, v0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_3f} :catch_1b4

    :try_start_3f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v43

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/gms/internal/zzkh;->zza$59850860(Landroid/content/Context;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 13000
    move-object/from16 v0, p4

    iget-boolean v4, v0, Lcom/google/android/gms/internal/zziu;->zzcga:Z

    .line 0
    if-eqz v4, :cond_62

    const-string/jumbo v4, "x-afma-drt-cookie"

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbr:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7a

    const-string/jumbo v6, "Sending webview cookie in ad request header."

    invoke-static {v6}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    const-string/jumbo v6, "Cookie"

    move-object/from16 v0, v43

    invoke-virtual {v0, v6, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    if-eqz p4, :cond_aa

    .line 14000
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/internal/zziu;->zzcfy:Ljava/lang/String;

    .line 0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_aa

    const/4 v4, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 15000
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/internal/zziu;->zzcfy:Ljava/lang/String;

    .line 0
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v6, v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_9a
    .catchall {:try_start_3f .. :try_end_9a} :catchall_1da

    const/4 v7, 0x0

    :try_start_9b
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a4
    .catchall {:try_start_9b .. :try_end_a4} :catchall_1d4

    :try_start_a4
    invoke-virtual {v6, v4}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_270

    :try_start_a7
    invoke-static {v6}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    :cond_aa
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    const/16 v6, 0xc8

    if-lt v4, v6, :cond_1e5

    const/16 v6, 0x12c

    if-ge v4, v6, :cond_1e5

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_bd
    .catchall {:try_start_a7 .. :try_end_bd} :catchall_1da

    move-result-object v8

    const/4 v7, 0x0

    :try_start_bf
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_c8
    .catchall {:try_start_bf .. :try_end_c8} :catchall_1df

    :try_start_c8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzkh;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;
    :try_end_ce
    .catchall {:try_start_c8 .. :try_end_ce} :catchall_26c

    move-result-object v7

    :try_start_cf
    invoke-static {v6}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    invoke-static {v8, v10, v7, v4}, Lcom/google/android/gms/internal/zzip;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    .line 16000
    move-object/from16 v0, v42

    iput-object v8, v0, Lcom/google/android/gms/internal/zzis;->zzceu:Ljava/lang/String;

    move-object/from16 v0, v42

    iput-object v7, v0, Lcom/google/android/gms/internal/zzis;->zzbfi:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/zzis;->zzj(Ljava/util/Map;)V

    .line 0
    if-eqz p5, :cond_f2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "ufe"

    aput-object v7, v4, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    .line 17000
    :cond_f2
    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v0, v42

    iget-object v5, v0, Lcom/google/android/gms/internal/zzis;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    move-object/from16 v0, v42

    iget-object v6, v0, Lcom/google/android/gms/internal/zzis;->zzceu:Ljava/lang/String;

    move-object/from16 v0, v42

    iget-object v7, v0, Lcom/google/android/gms/internal/zzis;->zzbfi:Ljava/lang/String;

    move-object/from16 v0, v42

    iget-object v8, v0, Lcom/google/android/gms/internal/zzis;->zzcev:Ljava/util/List;

    move-object/from16 v0, v42

    iget-object v9, v0, Lcom/google/android/gms/internal/zzis;->zzcey:Ljava/util/List;

    move-object/from16 v0, v42

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzis;->zzcez:J

    move-object/from16 v0, v42

    iget-boolean v12, v0, Lcom/google/android/gms/internal/zzis;->zzcfa:Z

    const-wide/16 v13, -0x1

    move-object/from16 v0, v42

    iget-object v15, v0, Lcom/google/android/gms/internal/zzis;->zzbzf:Ljava/util/List;

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfc:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/google/android/gms/internal/zzis;->mOrientation:I

    move/from16 v18, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzcet:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzcew:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzcex:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfd:Z

    move/from16 v24, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfe:Z

    move/from16 v25, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzis;->zzcff:Z

    move/from16 v26, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfg:Z

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfh:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfi:Z

    move/from16 v30, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzis;->zzawn:Z

    move/from16 v31, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfj:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-object/from16 v32, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfk:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfl:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfm:Z

    move/from16 v35, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfn:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-object/from16 v36, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfo:Z

    move/from16 v37, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfp:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfq:Ljava/util/List;

    move-object/from16 v39, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfr:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzis;->zzcfs:Z

    move/from16 v41, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzcft:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-direct/range {v4 .. v42}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1a5
    .catchall {:try_start_cf .. :try_end_1a5} :catchall_1da

    .line 0
    :try_start_1a5
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_1a8
    return-object v4

    :cond_1a9
    const/4 v4, 0x0

    move-object v5, v4

    goto/16 :goto_7

    :cond_1ad
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1b2} :catch_1b4

    goto/16 :goto_21

    :catch_1b4
    move-exception v4

    const-string/jumbo v5, "Error while connecting to ad server: "

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_265

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1ca
    invoke-static {v4}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto :goto_1a8

    :catchall_1d4
    move-exception v4

    move-object v5, v7

    :goto_1d6
    :try_start_1d6
    invoke-static {v5}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    throw v4
    :try_end_1da
    .catchall {:try_start_1d6 .. :try_end_1da} :catchall_1da

    :catchall_1da
    move-exception v4

    :try_start_1db
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v4
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_1db .. :try_end_1df} :catch_1b4

    :catchall_1df
    move-exception v4

    move-object v5, v7

    :goto_1e1
    :try_start_1e1
    invoke-static {v5}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    throw v4

    :cond_1e5
    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v10, v7, v4}, Lcom/google/android/gms/internal/zzip;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    const/16 v6, 0x12c

    if-lt v4, v6, :cond_22f

    const/16 v6, 0x190

    if-ge v4, v6, :cond_22f

    const-string/jumbo v4, "Location"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_214

    const-string/jumbo v4, "No location header to follow redirect."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_210
    .catchall {:try_start_1e1 .. :try_end_210} :catchall_1da

    :try_start_210
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_213
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_213} :catch_1b4

    goto :goto_1a8

    :cond_214
    :try_start_214
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v8, 0x1

    const/4 v7, 0x5

    if-le v4, v7, :cond_253

    const-string/jumbo v4, "Too many redirects."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_22a
    .catchall {:try_start_214 .. :try_end_22a} :catchall_1da

    :try_start_22a
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_22d
    .catch Ljava/io/IOException; {:try_start_22a .. :try_end_22d} :catch_1b4

    goto/16 :goto_1a8

    :cond_22f
    :try_start_22f
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Received error HTTP response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_24e
    .catchall {:try_start_22f .. :try_end_24e} :catchall_1da

    :try_start_24e
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_251
    .catch Ljava/io/IOException; {:try_start_24e .. :try_end_251} :catch_1b4

    goto/16 :goto_1a8

    :cond_253
    :try_start_253
    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/zzis;->zzj(Ljava/util/Map;)V
    :try_end_258
    .catchall {:try_start_253 .. :try_end_258} :catchall_1da

    :try_start_258
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_25b
    .catch Ljava/io/IOException; {:try_start_258 .. :try_end_25b} :catch_1b4

    if-eqz p6, :cond_261

    move v8, v4

    move-object v9, v6

    goto/16 :goto_36

    :cond_261
    move v8, v4

    move-object v9, v6

    goto/16 :goto_36

    :cond_265
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1ca

    :catchall_26c
    move-exception v4

    move-object v5, v6

    goto/16 :goto_1e1

    :catchall_270
    move-exception v4

    move-object v5, v6

    goto/16 :goto_1d6
.end method

.method private static zzb(Lcom/google/android/gms/internal/zzky;)Landroid/location/Location;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzky",
            "<",
            "Landroid/location/Location;",
            ">;)",
            "Landroid/location/Location;"
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbcp:Lcom/google/android/gms/internal/zzcy;

    .line 12000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzky;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    const-string/jumbo v1, "Exception caught while getting location"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzl;)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzip;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzjx;->zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    new-instance v0, Lcom/google/android/gms/internal/zzip$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzip$5;-><init>(Lcom/google/android/gms/internal/zzip;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzl;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkg;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzky;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzip;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzip;->zzcea:Lcom/google/android/gms/internal/zzfs;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzip;->zzcdy:Lcom/google/android/gms/internal/zzio;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzip;->zza$3b3f878a(Landroid/content/Context;Lcom/google/android/gms/internal/zzfs;Lcom/google/android/gms/internal/zzio;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v0

    return-object v0
.end method
