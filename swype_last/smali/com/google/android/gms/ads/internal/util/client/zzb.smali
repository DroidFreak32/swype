.class public Lcom/google/android/gms/ads/internal/util/client/zzb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method public static e(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaz(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaz(I)Z

    return-void
.end method

.method public static zzaz(I)Z
    .registers 2

    const/4 v0, 0x5

    if-ge p0, v0, :cond_c

    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaz(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    return-void
.end method

.method public static zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaz(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    return-void
.end method

.method public static zzcv(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaz(I)Z

    return-void
.end method

.method public static zzcw(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaz(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public static zzcx(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaz(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public static zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaz(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    return-void
.end method
