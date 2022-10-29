.class public final Lcom/google/android/gms/internal/zzdy;
.super Lcom/google/android/gms/ads/formats/NativeContentAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzbhd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbhf:Lcom/google/android/gms/internal/zzdx;

.field private final zzbhg:Lcom/google/android/gms/internal/zzds;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdx;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeContentAd;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzbhd:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdy;->zzbhf:Lcom/google/android/gms/internal/zzdx;

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzbhf:Lcom/google/android/gms/internal/zzdx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdx;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1000
    instance-of v3, v0, Landroid/os/IBinder;

    if-eqz v3, :cond_51

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdr$zza;->zzy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzdr;

    move-result-object v0

    .line 0
    :goto_2d
    if-eqz v0, :cond_19

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdy;->zzbhd:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/zzds;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzds;-><init>(Lcom/google/android/gms/internal/zzdr;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_39} :catch_3a

    goto :goto_19

    :catch_3a
    move-exception v0

    const-string/jumbo v2, "Failed to get image."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzbhf:Lcom/google/android/gms/internal/zzdx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdx;->zzky()Lcom/google/android/gms/internal/zzdr;

    move-result-object v2

    if-eqz v2, :cond_5a

    new-instance v0, Lcom/google/android/gms/internal/zzds;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzds;-><init>(Lcom/google/android/gms/internal/zzdr;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4e} :catch_53

    :goto_4e
    iput-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzbhg:Lcom/google/android/gms/internal/zzds;

    return-void

    :cond_51
    move-object v0, v1

    .line 1000
    goto :goto_2d

    .line 0
    :catch_53
    move-exception v0

    const-string/jumbo v2, "Failed to get icon."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5a
    move-object v0, v1

    goto :goto_4e
.end method

.method private zzkv()Lcom/google/android/gms/dynamic/zzd;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzbhf:Lcom/google/android/gms/internal/zzdx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdx;->zzkv()Lcom/google/android/gms/dynamic/zzd;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Failed to retrieve native ad engine."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzbhf:Lcom/google/android/gms/internal/zzdx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdx;->destroy()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "Failed to destroy"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public final getAdvertiser()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzbhf:Lcom/google/android/gms/internal/zzdx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdx;->getAdvertiser()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Failed to get attribution."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final getBody()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzbhf:Lcom/google/android/gms/internal/zzdx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdx;->getBody()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Failed to get body."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final getCallToAction()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzbhf:Lcom/google/android/gms/internal/zzdx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdx;->getCallToAction()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Failed to get call to action."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzbhf:Lcom/google/android/gms/internal/zzdx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdx;->getExtras()Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Failed to get extras"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final getHeadline()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzbhf:Lcom/google/android/gms/internal/zzdx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdx;->getHeadline()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Failed to get headline."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzbhd:Ljava/util/List;

    return-object v0
.end method

.method public final getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzbhg:Lcom/google/android/gms/internal/zzds;

    return-object v0
.end method

.method protected final synthetic zzdg()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdy;->zzkv()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method
