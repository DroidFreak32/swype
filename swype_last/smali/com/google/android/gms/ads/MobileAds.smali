.class public Lcom/google/android/gms/ads/MobileAds;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/MobileAds$Settings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzag;->zzjo()Lcom/google/android/gms/ads/internal/client/zzag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzag;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzag;->zzjo()Lcom/google/android/gms/ads/internal/client/zzag;

    move-result-object v1

    if-nez p2, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzag;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzah;)V

    return-void

    .line 1000
    :cond_b
    iget-object v0, p2, Lcom/google/android/gms/ads/MobileAds$Settings;->zzaik:Lcom/google/android/gms/ads/internal/client/zzah;

    goto :goto_7
.end method

.method public static setAppMuted(Z)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzag;->zzjo()Lcom/google/android/gms/ads/internal/client/zzag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzag;->setAppMuted(Z)V

    return-void
.end method

.method public static setAppVolume(F)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzag;->zzjo()Lcom/google/android/gms/ads/internal/client/zzag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzag;->setAppVolume(F)V

    return-void
.end method
