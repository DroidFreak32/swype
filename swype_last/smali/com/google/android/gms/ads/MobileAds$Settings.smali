.class public final Lcom/google/android/gms/ads/MobileAds$Settings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/MobileAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# instance fields
.field final zzaik:Lcom/google/android/gms/ads/internal/client/zzah;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzah;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzaik:Lcom/google/android/gms/ads/internal/client/zzah;

    return-void
.end method


# virtual methods
.method public final getTrackingId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzaik:Lcom/google/android/gms/ads/internal/client/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzah;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isGoogleAnalyticsEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzaik:Lcom/google/android/gms/ads/internal/client/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzah;->isGoogleAnalyticsEnabled()Z

    move-result v0

    return v0
.end method

.method public final setGoogleAnalyticsEnabled(Z)Lcom/google/android/gms/ads/MobileAds$Settings;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzaik:Lcom/google/android/gms/ads/internal/client/zzah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzah;->zzp(Z)V

    return-object p0
.end method

.method public final setTrackingId(Ljava/lang/String;)Lcom/google/android/gms/ads/MobileAds$Settings;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzaik:Lcom/google/android/gms/ads/internal/client/zzah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzah;->zzao(Ljava/lang/String;)V

    return-object p0
.end method
