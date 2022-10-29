.class public Lcom/google/android/gms/ads/internal/purchase/zzd;
.super Lcom/google/android/gms/internal/zzhn$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzarj:Ljava/lang/String;

.field private zzbwy:Ljava/lang/String;

.field private zzbwz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhn$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzbwy:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzbwz:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzarj:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->mContext:Landroid/content/Context;

    return-void
.end method

.method private zzpr()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, ""

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_16} :catch_62

    :goto_16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjx;->zzsk()Lcom/google/android/gms/internal/zzjy;

    move-result-object v1

    .line 2000
    iget-wide v4, v1, Lcom/google/android/gms/internal/zzjy;->zzckd:J

    .line 0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "sessionid"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v6

    .line 3000
    iget-object v6, v6, Lcom/google/android/gms/internal/zzjx;->zzcjm:Ljava/lang/String;

    .line 0
    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "appid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "osversion"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sdkversion"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzarj:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "appversion"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "timestamp"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catch_62
    move-exception v1

    const-string/jumbo v3, "Error to retrieve app version"

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method private zzps()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.google.ads.conversiontracking.IAPConversionReporter"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "reportWithProductId"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzbwy:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4a} :catch_4b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4a} :catch_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_5b

    :goto_4a
    return-void

    :catch_4b
    move-exception v0

    const-string/jumbo v0, "Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_4a

    :catch_53
    move-exception v0

    const-string/jumbo v0, "Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_4a

    :catch_5b
    move-exception v0

    const-string/jumbo v1, "Fail to report a conversion."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4a
.end method


# virtual methods
.method public getProductId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzbwy:Ljava/lang/String;

    return-object v0
.end method

.method public recordPlayBillingResolution(I)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 0
    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzps()V

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzpr()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "google_play_status"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sku"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzbwy:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "status"

    .line 1000
    if-nez p1, :cond_4a

    .line 0
    :goto_21
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzbwz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 1000
    :cond_4a
    if-ne p1, v0, :cond_4e

    const/4 v0, 0x2

    goto :goto_21

    :cond_4e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_53

    const/4 v0, 0x3

    goto :goto_21

    :cond_53
    const/4 v0, 0x0

    goto :goto_21

    .line 0
    :cond_55
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzarj:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzkh;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public recordResolution(I)V
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzps()V

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzpr()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v0, "status"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "sku"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzbwy:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzbwz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_3e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzd;->zzarj:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzkh;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
