.class public final Lcom/google/android/gms/internal/zzcj;
.super Lcom/google/android/gms/internal/zzcd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private zzarq:Lcom/google/android/gms/internal/zzfs$zzc;

.field private zzarr:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzck;Lcom/google/android/gms/internal/zzfs;)V
    .registers 10

    .prologue
    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzcd;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzck;)V

    .line 1000
    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/zzfs;->zzc(Lcom/google/android/gms/internal/zzas;)Lcom/google/android/gms/internal/zzfs$zzc;

    move-result-object v0

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzcj;->zzarq:Lcom/google/android/gms/internal/zzfs$zzc;

    :try_start_a
    invoke-interface {p5}, Lcom/google/android/gms/internal/zzck;->zzhj()Lcom/google/android/gms/internal/zzck;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzck;->zzhh()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcj;->zzd(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcj;->zzarq:Lcom/google/android/gms/internal/zzfs$zzc;

    new-instance v2, Lcom/google/android/gms/internal/zzcj$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzcj$1;-><init>(Lcom/google/android/gms/internal/zzcj;Lorg/json/JSONObject;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcj$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcj$2;-><init>(Lcom/google/android/gms/internal/zzcj;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzfs$zzc;->zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_25} :catch_5b
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_25} :catch_4d

    :goto_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcj;->zzarq:Lcom/google/android/gms/internal/zzfs$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzcj$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcj$3;-><init>(Lcom/google/android/gms/internal/zzcj;)V

    new-instance v2, Lcom/google/android/gms/internal/zzcj$4;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzcj$4;-><init>(Lcom/google/android/gms/internal/zzcj;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzfs$zzc;->zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V

    const-string/jumbo v1, "Tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcj;->zzaqk:Lcom/google/android/gms/internal/zzcf;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzcf;->zzari:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_55

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_49
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    return-void

    :catch_4d
    move-exception v0

    const-string/jumbo v1, "Failure while processing active view data."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    :cond_55
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :catch_5b
    move-exception v0

    goto :goto_25
.end method

.method static synthetic zza$711cf703(Lcom/google/android/gms/internal/zzcj;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcj;->zzarr:Z

    return v0
.end method


# virtual methods
.method protected final destroy()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcj;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-super {p0}, Lcom/google/android/gms/internal/zzcd;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcj;->zzarq:Lcom/google/android/gms/internal/zzfs$zzc;

    new-instance v2, Lcom/google/android/gms/internal/zzcj$6;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzcj$6;-><init>(Lcom/google/android/gms/internal/zzcj;)V

    new-instance v3, Lcom/google/android/gms/internal/zzla$zzb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzla$zzb;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzfs$zzc;->zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcj;->zzarq:Lcom/google/android/gms/internal/zzfs$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzc;->release()V

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method protected final zzb(Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcj;->zzarq:Lcom/google/android/gms/internal/zzfs$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzcj$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcj$5;-><init>(Lcom/google/android/gms/internal/zzcj;Lorg/json/JSONObject;)V

    new-instance v2, Lcom/google/android/gms/internal/zzla$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzla$zzb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzfs$zzc;->zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V

    return-void
.end method

.method protected final zzhe()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcj;->zzarr:Z

    return v0
.end method
