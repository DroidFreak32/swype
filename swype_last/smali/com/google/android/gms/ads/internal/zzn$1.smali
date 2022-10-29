.class final Lcom/google/android/gms/ads/internal/zzn$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzli$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamk:Lcom/google/android/gms/ads/internal/formats/zzd;

.field final synthetic zzaml:Ljava/lang/String;

.field final synthetic zzamm:Lcom/google/android/gms/internal/zzlh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzd;Ljava/lang/String;Lcom/google/android/gms/internal/zzlh;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzamk:Lcom/google/android/gms/ads/internal/formats/zzd;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzaml:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzamm:Lcom/google/android/gms/internal/zzlh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzlh;Z)V
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "headline"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzamk:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getHeadline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "body"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzamk:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "call_to_action"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzamk:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "price"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzamk:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "star_rating"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzamk:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getStarRating()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "store"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzamk:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getStore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "icon"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzamk:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->zzku()Lcom/google/android/gms/internal/zzdr;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzdr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzamk:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getImages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_90

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzn;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdr;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzn;->zza(Lcom/google/android/gms/internal/zzdr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_87} :catch_88

    goto :goto_72

    :catch_88
    move-exception v0

    const-string/jumbo v1, "Exception occurred when loading assets"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8f
    return-void

    :cond_90
    :try_start_90
    const-string/jumbo v2, "images"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "extras"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzamk:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzaml:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/zzn;->zzb(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "assets"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "template_id"

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzn$1;->zzamm:Lcom/google/android/gms/internal/zzlh;

    const-string/jumbo v2, "google.afma.nativeExpressAds.loadAssets"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzlh;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_c4
    .catch Lorg/json/JSONException; {:try_start_90 .. :try_end_c4} :catch_88

    goto :goto_8f
.end method
