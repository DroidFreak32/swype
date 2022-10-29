.class public final Lcom/google/android/gms/internal/zzgf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_25

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_20

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzju;Ljava/lang/String;ZLjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzju;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    if-eqz p5, :cond_8

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    if-eqz p4, :cond_81

    const-string/jumbo v0, "1"

    move-object v1, v0

    :goto_f
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "@gw_adlocid@"

    invoke-virtual {v0, v3, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "@gw_adnetrefresh@"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "@gw_qdata@"

    iget-object v4, p2, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzga;->zzbnr:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "@gw_sdkver@"

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "@gw_sessid@"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v4

    .line 1000
    iget-object v4, v4, Lcom/google/android/gms/internal/zzjx;->zzcjm:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "@gw_seqnum@"

    iget-object v4, p2, Lcom/google/android/gms/internal/zzju;->zzcau:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "@gw_adnetstatus@"

    iget-object v4, p2, Lcom/google/android/gms/internal/zzju;->zzcih:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p2, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    if-eqz v3, :cond_78

    const-string/jumbo v3, "@gw_adnetid@"

    iget-object v4, p2, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzfz;->zzbmv:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "@gw_allocid@"

    iget-object v4, p2, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzfz;->zzbmx:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_78
    new-instance v3, Lcom/google/android/gms/internal/zzkq;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/android/gms/internal/zzkq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    goto :goto_13

    :cond_81
    const-string/jumbo v0, "0"

    move-object v1, v0

    goto :goto_f
.end method
