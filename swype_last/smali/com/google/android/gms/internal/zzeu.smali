.class public final Lcom/google/android/gms/internal/zzeu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field public final zzbis:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzkv",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeu;->zzbis:Ljava/util/HashMap;

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

    .prologue
    .line 0
    const-string/jumbo v0, "request_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "fetched_ad"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1000
    const-string/jumbo v2, "Received ad from the cache."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeu;->zzbis:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzkv;

    if-nez v2, :cond_29

    const-string/jumbo v0, "Could not find the ad request for the corresponding ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->e(Ljava/lang/String;)V

    :goto_28
    return-void

    :cond_29
    :try_start_29
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzkv;->zzh(Ljava/lang/Object;)V
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_31} :catch_37
    .catchall {:try_start_29 .. :try_end_31} :catchall_48

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeu;->zzbis:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :catch_37
    move-exception v1

    :try_start_38
    const-string/jumbo v3, "Failed constructing JSON object from value passed from javascript"

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzkv;->zzh(Ljava/lang/Object;)V
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_48

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeu;->zzbis:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :catchall_48
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeu;->zzbis:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
.end method

.method public final zzax(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeu;->zzbis:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzkv;

    if-nez v0, :cond_11

    const-string/jumbo v0, "Could not find the ad request for the corresponding ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->e(Ljava/lang/String;)V

    :goto_10
    return-void

    :cond_11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkv;->isDone()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkv;->cancel(Z)Z

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeu;->zzbis:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method
