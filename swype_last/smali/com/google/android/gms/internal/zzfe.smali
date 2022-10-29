.class public final Lcom/google/android/gms/internal/zzfe;
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
    .registers 6
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
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgj()Lcom/google/android/gms/internal/zzfc;

    const-string/jumbo v0, "abort"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfc;->zzd(Lcom/google/android/gms/internal/zzlh;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "Precache abort but no preload task running."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    const-string/jumbo v0, "src"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2b

    const-string/jumbo v0, "Precache video action is missing the src parameter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_18

    :cond_2b
    :try_start_2b
    const-string/jumbo v1, "player"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_37} :catch_72

    :goto_37
    const-string/jumbo v1, "mimetype"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string/jumbo v1, "mimetype"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :cond_46
    invoke-static {p1}, Lcom/google/android/gms/internal/zzfc;->zzf(Lcom/google/android/gms/internal/zzlh;)Lcom/google/android/gms/internal/zzfb;

    move-result-object v1

    if-eqz v1, :cond_56

    const/4 v1, 0x1

    .line 0
    :goto_4d
    if-eqz v1, :cond_58

    const-string/jumbo v0, "Precache task already running."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_18

    .line 1000
    :cond_56
    const/4 v1, 0x0

    goto :goto_4d

    .line 0
    :cond_58
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->zzug()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzb;->zzu(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->zzug()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzd;->zzakj:Lcom/google/android/gms/internal/zzff;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzff;->zza$630c6172(Lcom/google/android/gms/internal/zzlh;)Lcom/google/android/gms/internal/zzfd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzfb;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/internal/zzfb;-><init>(Lcom/google/android/gms/internal/zzlh;Lcom/google/android/gms/internal/zzfd;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    goto :goto_18

    :catch_72
    move-exception v1

    goto :goto_37
.end method
