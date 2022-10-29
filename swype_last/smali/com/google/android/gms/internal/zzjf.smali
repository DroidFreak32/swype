.class public final Lcom/google/android/gms/internal/zzjf;
.super Lcom/google/android/gms/ads/internal/zzb;

# interfaces
.implements Lcom/google/android/gms/internal/zzji;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# static fields
.field private static final zzchg:Lcom/google/android/gms/internal/zzgi;


# instance fields
.field final zzchh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzjm;",
            ">;"
        }
    .end annotation
.end field

.field zzchi:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzgi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzgi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzjf;->zzchg:Lcom/google/android/gms/internal/zzgi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 13

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzchh:Ljava/util/Map;

    return-void
.end method

.method private static zze(Lcom/google/android/gms/internal/zzju$zza;)Lcom/google/android/gms/internal/zzju$zza;
    .registers 16

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 0
    const-string/jumbo v0, "Creating mediation ad response for non-mediated rewarded ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-static {v0}, Lcom/google/android/gms/internal/zziq;->zzc(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "pubid"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaou:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_24} :catch_7e

    move-result-object v11

    new-instance v6, Lcom/google/android/gms/internal/zzfz;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "com.google.ads.mediation.admob.AdMobAdapter"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    invoke-direct/range {v6 .. v14}, Lcom/google/android/gms/internal/zzfz;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/zzga;

    new-array v1, v3, [Lcom/google/android/gms/internal/zzfz;

    aput-object v6, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzga;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/zzju$zza;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzju$zza;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v7, p0, Lcom/google/android/gms/internal/zzju$zza;->errorCode:I

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzju$zza;->zzcik:J

    iget-wide v10, p0, Lcom/google/android/gms/internal/zzju$zza;->zzcil:J

    iget-object v12, p0, Lcom/google/android/gms/internal/zzju$zza;->zzcie:Lorg/json/JSONObject;

    move-object v5, v0

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/zzju$zza;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    :goto_7d
    return-object v2

    :catch_7e
    move-exception v0

    const-string/jumbo v1, "Unable to generate ad state for non-mediated rewarded video."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8000
    new-instance v0, Lcom/google/android/gms/internal/zzju$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzju$zza;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzju$zza;->zzcik:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzju$zza;->zzcil:J

    iget-object v10, p0, Lcom/google/android/gms/internal/zzju$zza;->zzcie:Lorg/json/JSONObject;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzju$zza;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    move-object v2, v0

    .line 0
    goto :goto_7d
.end method


# virtual methods
.method public final destroy()V
    .registers 5

    .prologue
    .line 0
    const-string/jumbo v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzchh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjf;->zzchh:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzjm;

    if-eqz v1, :cond_10

    .line 6000
    iget-object v3, v1, Lcom/google/android/gms/internal/zzjm;->zzbog:Lcom/google/android/gms/internal/zzgk;

    .line 0
    if-eqz v3, :cond_10

    .line 7000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzjm;->zzbog:Lcom/google/android/gms/internal/zzgk;

    .line 0
    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgk;->destroy()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2f} :catch_30

    goto :goto_10

    :catch_30
    move-exception v1

    const-string/jumbo v1, "Fail to destroy adapter: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_42
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_10

    :cond_46
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_42

    :cond_4c
    return-void
.end method

.method public final isLoaded()Z
    .registers 2

    const-string/jumbo v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaoy:Lcom/google/android/gms/internal/zzkc;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzkj;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjf;->zzchi:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public final onRewardedVideoAdClosed()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjf;->zzdr()V

    return-void
.end method

.method public final onRewardedVideoAdLeftApplication()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjf;->zzds()V

    return-void
.end method

.method public final onRewardedVideoAdOpened()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzjf;->zza(Lcom/google/android/gms/internal/zzju;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjf;->zzdt()V

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzaou:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzfz;->zzbnd:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgf;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzju;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjf;->zzdv()V

    return-void
.end method

.method public final pause()V
    .registers 5

    .prologue
    .line 0
    const-string/jumbo v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzchh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjf;->zzchh:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzjm;

    if-eqz v1, :cond_10

    .line 2000
    iget-object v3, v1, Lcom/google/android/gms/internal/zzjm;->zzbog:Lcom/google/android/gms/internal/zzgk;

    .line 0
    if-eqz v3, :cond_10

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzjm;->zzbog:Lcom/google/android/gms/internal/zzgk;

    .line 0
    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgk;->pause()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2f} :catch_30

    goto :goto_10

    :catch_30
    move-exception v1

    const-string/jumbo v1, "Fail to pause adapter: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_42
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_10

    :cond_46
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_42

    :cond_4c
    return-void
.end method

.method public final resume()V
    .registers 5

    .prologue
    .line 0
    const-string/jumbo v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzchh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjf;->zzchh:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzjm;

    if-eqz v1, :cond_10

    .line 4000
    iget-object v3, v1, Lcom/google/android/gms/internal/zzjm;->zzbog:Lcom/google/android/gms/internal/zzgk;

    .line 0
    if-eqz v3, :cond_10

    .line 5000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzjm;->zzbog:Lcom/google/android/gms/internal/zzgk;

    .line 0
    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgk;->resume()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2f} :catch_30

    goto :goto_10

    :catch_30
    move-exception v1

    const-string/jumbo v1, "Fail to resume adapter: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_42
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_10

    :cond_46
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_42

    :cond_4c
    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V
    .registers 4

    const-string/jumbo v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzaou:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "Invalid ad unit id. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :goto_14
    return-void

    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjf;->zzchi:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzaou:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaou:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/internal/zzb;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    goto :goto_14
.end method

.method public final zza(Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzdk;)V
    .registers 8

    .prologue
    .line 0
    iget v0, p1, Lcom/google/android/gms/internal/zzju$zza;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_10

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzjf$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzjf$1;-><init>(Lcom/google/android/gms/internal/zzjf;Lcom/google/android/gms/internal/zzju$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapc:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzju$zza;->zzcig:Lcom/google/android/gms/internal/zzga;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzjf;->zze(Lcom/google/android/gms/internal/zzju$zza;)Lcom/google/android/gms/internal/zzju$zza;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapc:Lcom/google/android/gms/internal/zzju$zza;

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapw:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfp()Lcom/google/android/gms/internal/zzic;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzapc:Lcom/google/android/gms/internal/zzju$zza;

    .line 1000
    new-instance v3, Lcom/google/android/gms/internal/zzjl;

    invoke-direct {v3, v0, v2, p0}, Lcom/google/android/gms/internal/zzjl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzjf;)V

    const-string/jumbo v2, "AdRenderer: "

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_59

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_50
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzkj;->zzpy()Ljava/lang/Object;

    .line 0
    iput-object v3, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzkj;

    goto :goto_f

    .line 1000
    :cond_59
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_50
.end method

.method protected final zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzju;Z)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/internal/zzju;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzaou:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzfz;->zzbne:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgf;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzju;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzga;->zzbnt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    new-instance p1, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzga;->zzbnt:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjf;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget v1, v1, Lcom/google/android/gms/internal/zzga;->zzbnu:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;-><init>(Ljava/lang/String;I)V

    :cond_60
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzjf;->zza(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V

    return-void
.end method

.method public final zzcf(Ljava/lang/String;)Lcom/google/android/gms/internal/zzjm;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzchh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjm;

    if-nez v0, :cond_27

    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjf;->zzajz:Lcom/google/android/gms/internal/zzgj;

    const-string/jumbo v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    sget-object v1, Lcom/google/android/gms/internal/zzjf;->zzchg:Lcom/google/android/gms/internal/zzgi;

    move-object v2, v1

    :goto_18
    new-instance v1, Lcom/google/android/gms/internal/zzjm;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/zzgj;->zzbm(Ljava/lang/String;)Lcom/google/android/gms/internal/zzgk;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/zzjm;-><init>(Lcom/google/android/gms/internal/zzgk;Lcom/google/android/gms/internal/zzji;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_28

    :try_start_21
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzchh:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_47

    move-object v0, v1

    :cond_27
    :goto_27
    return-object v0

    :catch_28
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_2b
    const-string/jumbo v3, "Fail to instantiate adapter "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_27

    :cond_41
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3c

    :catch_47
    move-exception v0

    move-object v2, v0

    goto :goto_2b

    :cond_4a
    move-object v2, v1

    goto :goto_18
.end method

.method public final zzrr()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjf;->onAdClicked()V

    return-void
.end method
