.class final Lcom/google/android/gms/ads/internal/zzt$zza;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzano:Lcom/google/android/gms/ads/internal/zzt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/zzt;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt$zza;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/zzt;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzt$zza;-><init>(Lcom/google/android/gms/ads/internal/zzt;)V

    return-void
.end method

.method private varargs doInBackground$10299ca()Ljava/lang/Void;
    .registers 7

    .prologue
    .line 0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt$zza;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$zza;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zze(Lcom/google/android/gms/ads/internal/zzt;)Ljava/util/concurrent/Future;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbdd:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbw;

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;Lcom/google/android/gms/internal/zzbw;)Lcom/google/android/gms/internal/zzbw;
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_23} :catch_25
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_23} :catch_35
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_23} :catch_2d

    :goto_23
    const/4 v0, 0x0

    return-object v0

    :catch_25
    move-exception v0

    :goto_26
    const-string/jumbo v1, "Failed to load ad data"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    :catch_2d
    move-exception v0

    const-string/jumbo v0, "Timed out waiting for ad data"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_23

    :catch_35
    move-exception v0

    goto :goto_26
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzt$zza;->doInBackground$10299ca()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 0
    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$zza;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzt;->zzfe()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt$zza;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzt;->zzf(Lcom/google/android/gms/ads/internal/zzt;)Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt$zza;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzt;->zzf(Lcom/google/android/gms/ads/internal/zzt;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 0
    :cond_17
    return-void
.end method
