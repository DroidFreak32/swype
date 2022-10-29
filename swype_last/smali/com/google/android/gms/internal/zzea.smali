.class public final Lcom/google/android/gms/internal/zzea;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzbhh:Lcom/google/android/gms/internal/zzdz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzea;->zzbhh:Lcom/google/android/gms/internal/zzdz;

    return-void
.end method


# virtual methods
.method public final getAvailableAssetNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzbhh:Lcom/google/android/gms/internal/zzdz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdz;->getAvailableAssetNames()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Failed to get available asset names."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final getCustomTemplateId()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzbhh:Lcom/google/android/gms/internal/zzdz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdz;->getCustomTemplateId()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Failed to get custom template id."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzbhh:Lcom/google/android/gms/internal/zzdz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzdz;->zzau(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdr;

    move-result-object v1

    if-eqz v1, :cond_15

    new-instance v0, Lcom/google/android/gms/internal/zzds;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzds;-><init>(Lcom/google/android/gms/internal/zzdr;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    const-string/jumbo v1, "Failed to get image."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzbhh:Lcom/google/android/gms/internal/zzdz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzdz;->zzat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Failed to get string."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final performClick(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzbhh:Lcom/google/android/gms/internal/zzdz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzdz;->performClick(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "Failed to perform click."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public final recordImpression()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzbhh:Lcom/google/android/gms/internal/zzdz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdz;->recordImpression()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
