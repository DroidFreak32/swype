.class final Lcom/google/android/gms/ads/internal/formats/zzi$3$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzi$3;->zze(Lcom/google/android/gms/internal/zzft;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgl:Lcom/google/android/gms/internal/zzft;

.field final synthetic zzbgm:Lcom/google/android/gms/ads/internal/formats/zzi$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;Lcom/google/android/gms/internal/zzft;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$5;->zzbgm:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$5;->zzbgl:Lcom/google/android/gms/internal/zzft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlh;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_d

    :catch_21
    move-exception v0

    const-string/jumbo v1, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_28
    return-void

    :cond_29
    :try_start_29
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$5;->zzbgm:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgk:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Lcom/google/android/gms/ads/internal/formats/zzi;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$5;->zzbgl:Lcom/google/android/gms/internal/zzft;

    const-string/jumbo v2, "sendMessageToNativeJs"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzft;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_3f} :catch_21

    goto :goto_28
.end method
