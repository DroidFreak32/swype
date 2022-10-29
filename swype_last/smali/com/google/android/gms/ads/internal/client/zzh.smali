.class public Lcom/google/android/gms/ads/internal/client/zzh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# static fields
.field public static final zzauq:Lcom/google/android/gms/ads/internal/client/zzh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzh;->zzauq:Lcom/google/android/gms/ads/internal/client/zzh;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzih()Lcom/google/android/gms/ads/internal/client/zzh;
    .registers 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzh;->zzauq:Lcom/google/android/gms/ads/internal/client/zzh;

    return-object v0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzad;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .registers 25

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzad;->getBirthday()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_92

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_a
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzad;->getContentUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzad;->getGender()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzad;->getKeywords()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_96

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    :goto_25
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzad;->isTestDevice(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzad;->zzji()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzad;->getLocation()Landroid/location/Location;

    move-result-object v14

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/client/zzad;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzad;->getManualImpressionsEnabled()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzad;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzad;->zzjf()Lcom/google/android/gms/ads/search/SearchAdRequest;

    move-result-object v2

    if-eqz v2, :cond_98

    new-instance v13, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    invoke-direct {v13, v2}, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    :goto_50
    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :cond_6e
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzad;->isDesignedForFamilies()Z

    move-result v21

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v3, 0x7

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzad;->zzjh()Landroid/os/Bundle;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzad;->getCustomTargeting()Landroid/os/Bundle;

    move-result-object v17

    new-instance v18, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzad;->zzjj()Ljava/util/Set;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzad;->zzje()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2

    :cond_92
    const-wide/16 v4, -0x1

    goto/16 :goto_a

    :cond_96
    const/4 v8, 0x0

    goto :goto_25

    :cond_98
    const/4 v13, 0x0

    goto :goto_50
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzad;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzh;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzad;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;

    invoke-direct {v1, v0, p3}, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)V

    return-object v1
.end method
