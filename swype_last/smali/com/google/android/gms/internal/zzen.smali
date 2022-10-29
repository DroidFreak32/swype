.class public final Lcom/google/android/gms/internal/zzen;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .registers 11
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
    const-string/jumbo v0, "action"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "tick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1000
    const-string/jumbo v0, "label"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "start_label"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "timestamp"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string/jumbo v0, "No label given for CSI tick."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    .line 8000
    :cond_39
    :goto_39
    return-void

    .line 1000
    :cond_3a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_47

    const-string/jumbo v0, "No timestamp given for CSI tick."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_39

    :cond_47
    :try_start_47
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_5a} :catch_89

    move-result-wide v6

    sub-long/2addr v2, v4

    add-long/2addr v2, v6

    .line 1000
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_66

    const-string/jumbo v1, "native:view_load"

    :cond_66
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->zzus()Lcom/google/android/gms/internal/zzdj;

    move-result-object v4

    .line 3000
    iget-object v5, v4, Lcom/google/android/gms/internal/zzdj;->zzajn:Lcom/google/android/gms/internal/zzdk;

    iget-object v6, v4, Lcom/google/android/gms/internal/zzdj;->zzbee:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdi;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    .line 4000
    if-eqz v5, :cond_7e

    if-nez v1, :cond_91

    .line 3000
    :cond_7e
    :goto_7e
    iget-object v5, v4, Lcom/google/android/gms/internal/zzdj;->zzbee:Ljava/util/Map;

    iget-object v1, v4, Lcom/google/android/gms/internal/zzdj;->zzajn:Lcom/google/android/gms/internal/zzdk;

    .line 5000
    if-nez v1, :cond_95

    const/4 v1, 0x0

    .line 3000
    :goto_85
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 1000
    :catch_89
    move-exception v0

    const-string/jumbo v1, "Malformed timestamp for CSI tick."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_39

    .line 4000
    :cond_91
    invoke-virtual {v5, v1, v2, v3, v6}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;J[Ljava/lang/String;)Z

    goto :goto_7e

    .line 5000
    :cond_95
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzdk;->zzc(J)Lcom/google/android/gms/internal/zzdi;

    move-result-object v1

    goto :goto_85

    .line 0
    :cond_9a
    const-string/jumbo v1, "experiment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 6000
    const-string/jumbo v0, "value"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b9

    const-string/jumbo v0, "No value given for CSI experiment."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_39

    :cond_b9
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->zzus()Lcom/google/android/gms/internal/zzdj;

    move-result-object v1

    .line 7000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzdj;->zzajn:Lcom/google/android/gms/internal/zzdk;

    .line 6000
    if-nez v1, :cond_c9

    const-string/jumbo v0, "No ticker for WebView, dropping experiment ID."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_c9
    const-string/jumbo v2, "e"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzdk;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_39

    .line 0
    :cond_d1
    const-string/jumbo v1, "extra"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 8000
    const-string/jumbo v0, "name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "value"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_fa

    const-string/jumbo v0, "No value given for CSI extra."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_fa
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_108

    const-string/jumbo v0, "No name given for CSI extra."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_108
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->zzus()Lcom/google/android/gms/internal/zzdj;

    move-result-object v2

    .line 9000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzdj;->zzajn:Lcom/google/android/gms/internal/zzdk;

    .line 8000
    if-nez v2, :cond_118

    const-string/jumbo v0, "No ticker for WebView, dropping extra parameter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_118
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzdk;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_39
.end method
