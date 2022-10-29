.class final Lcom/google/android/gms/internal/zzfa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .registers 8
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
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbb:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    :goto_12
    return-void

    :cond_13
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->zzut()Lcom/google/android/gms/internal/zzlm;

    move-result-object v0

    if-nez v0, :cond_8a

    :try_start_19
    const-string/jumbo v0, "duration"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    new-instance v0, Lcom/google/android/gms/internal/zzlm;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzlm;-><init>(Lcom/google/android/gms/internal/zzlh;F)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzlh;->zza(Lcom/google/android/gms/internal/zzlm;)V

    move-object v1, v0

    :goto_2f
    const-string/jumbo v0, "1"

    const-string/jumbo v2, "muted"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v0, "currentTime"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 2000
    const-string/jumbo v0, "playbackState"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5c

    const/4 v4, 0x3

    if-ge v4, v0, :cond_5d

    :cond_5c
    const/4 v0, 0x0

    .line 3000
    :cond_5d
    iget-object v4, v1, Lcom/google/android/gms/internal/zzlm;->zzail:Ljava/lang/Object;

    monitor-enter v4
    :try_end_60
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_60} :catch_75
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_60} :catch_88

    :try_start_60
    iput v3, v1, Lcom/google/android/gms/internal/zzlm;->zzcqd:F

    iput-boolean v2, v1, Lcom/google/android/gms/internal/zzlm;->zzcqc:Z

    iget v2, v1, Lcom/google/android/gms/internal/zzlm;->zzcpz:I

    iput v0, v1, Lcom/google/android/gms/internal/zzlm;->zzcpz:I

    monitor-exit v4
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_85

    .line 4000
    :try_start_69
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    new-instance v3, Lcom/google/android/gms/internal/zzlm$2;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/internal/zzlm$2;-><init>(Lcom/google/android/gms/internal/zzlm;II)V

    invoke-static {v3}, Lcom/google/android/gms/internal/zzkh;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_74
    .catch Ljava/lang/NullPointerException; {:try_start_69 .. :try_end_74} :catch_75
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_74} :catch_88

    goto :goto_12

    .line 0
    :catch_75
    move-exception v0

    :goto_76
    const-string/jumbo v1, "Unable to parse videoMeta message."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzjx;->zzb(Ljava/lang/Throwable;Z)V

    goto :goto_12

    .line 3000
    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit v4
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    :try_start_87
    throw v0
    :try_end_88
    .catch Ljava/lang/NullPointerException; {:try_start_87 .. :try_end_88} :catch_75
    .catch Ljava/lang/NumberFormatException; {:try_start_87 .. :try_end_88} :catch_88

    .line 0
    :catch_88
    move-exception v0

    goto :goto_76

    :cond_8a
    move-object v1, v0

    goto :goto_2f
.end method
