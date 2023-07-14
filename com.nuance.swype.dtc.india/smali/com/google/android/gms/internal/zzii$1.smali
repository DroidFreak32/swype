.class final Lcom/google/android/gms/internal/zzii$1;
.super Lcom/google/android/gms/internal/zzih$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbzh:Lcom/google/android/gms/internal/zzii$zzb;

.field final synthetic zzbzi:Lcom/google/android/gms/internal/zzkv;

.field final synthetic zzbzj:Ljava/lang/String;

.field final synthetic zzbzk:Lcom/google/android/gms/internal/zzii;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzii;Lcom/google/android/gms/internal/zzii$zzb;Lcom/google/android/gms/internal/zzkv;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzii$1;->zzbzk:Lcom/google/android/gms/internal/zzii;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzii$1;->zzbzh:Lcom/google/android/gms/internal/zzii$zzb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzii$1;->zzbzi:Lcom/google/android/gms/internal/zzkv;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzii$1;->zzbzj:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzih$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/zzft;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzii$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzii$1$1;-><init>(Lcom/google/android/gms/internal/zzii$1;Lcom/google/android/gms/internal/zzft;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzii$1;->zzbzh:Lcom/google/android/gms/internal/zzii$zzb;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzii$zzb;->zzbzz:Lcom/google/android/gms/internal/zzep;

    const-string/jumbo v1, "/nativeAdPreProcess"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzii$1;->zzbzk:Lcom/google/android/gms/internal/zzii;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzii;->zza(Lcom/google/android/gms/internal/zzii;)Lcom/google/android/gms/internal/zzju$zza;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ads_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzii$1;->zzbzj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "google.afma.nativeAds.preProcessJsonGmsg"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Exception occurred while invoking javascript"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii$1;->zzbzi:Lcom/google/android/gms/internal/zzkv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkv;->zzh(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final zzqq()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii$1;->zzbzi:Lcom/google/android/gms/internal/zzkv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkv;->zzh(Ljava/lang/Object;)V

    return-void
.end method
