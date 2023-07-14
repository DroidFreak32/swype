.class public final Lcom/google/android/gms/internal/zzkd;
.super Lcom/google/android/gms/ads/internal/util/client/zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method public static v(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1000
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzaz(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2000
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbap:Lcom/google/android/gms/internal/zzcy;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 2000
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1000
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 0
    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 1000
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
