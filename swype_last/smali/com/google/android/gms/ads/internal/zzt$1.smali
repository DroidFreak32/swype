.class final Lcom/google/android/gms/ads/internal/zzt$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzano:Lcom/google/android/gms/ads/internal/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzt;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_12

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v1, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzt;->zzff()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_f
    return v0

    :cond_10
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbcy:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_34

    :try_start_2a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_34} :catch_3b

    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzt;->zzj(I)V

    move v0, v2

    goto :goto_f

    :catch_3b
    move-exception v0

    const-string/jumbo v3, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34

    :cond_43
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbcz:Lcom/google/android/gms/internal/zzcy;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_67

    :try_start_5d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_67} :catch_6e

    :cond_67
    :goto_67
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzt;->zzj(I)V

    move v0, v2

    goto :goto_f

    :catch_6e
    move-exception v0

    const-string/jumbo v3, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_67

    :cond_76
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbda:Lcom/google/android/gms/internal/zzcy;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_99

    :try_start_90
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdLoaded()V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_99} :catch_a7

    :cond_99
    :goto_99
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/zzt;->zzw(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzt;->zzj(I)V

    move v0, v2

    goto/16 :goto_f

    :catch_a7
    move-exception v0

    const-string/jumbo v1, "Could not call AdListener.onAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_99

    :cond_af
    const-string/jumbo v0, "gmsg://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    move v0, v2

    goto/16 :goto_f

    :cond_bb
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_cc

    :try_start_c3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdLeftApplication()V
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_cc} :catch_da

    :cond_cc
    :goto_cc
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0, p2}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzano:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/zzt;->zzb(Lcom/google/android/gms/ads/internal/zzt;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_f

    :catch_da
    move-exception v0

    const-string/jumbo v1, "Could not call AdListener.onAdLeftApplication()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_cc
.end method
