.class final Lcom/google/android/gms/ads/internal/client/zzl$7;
.super Lcom/google/android/gms/ads/internal/client/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzgj;)Lcom/google/android/gms/ads/internal/reward/client/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/internal/client/zzl$zza",
        "<",
        "Lcom/google/android/gms/ads/internal/reward/client/zzb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzala:Landroid/content/Context;

.field final synthetic zzavi:Lcom/google/android/gms/internal/zzgj;

.field final synthetic zzavj:Lcom/google/android/gms/ads/internal/client/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Lcom/google/android/gms/internal/zzgj;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzavj:Lcom/google/android/gms/ads/internal/client/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzala:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzavi:Lcom/google/android/gms/internal/zzgj;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzl$zza;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;B)V

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzx;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzala:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzavi:Lcom/google/android/gms/internal/zzgj;

    const v2, 0x9039e0

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzx;->createRewardedVideoAd(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzgj;I)Lcom/google/android/gms/ads/internal/reward/client/zzb;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final synthetic zzin()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzavj:Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zzf(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/reward/client/zzf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzala:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzavi:Lcom/google/android/gms/internal/zzgj;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/reward/client/zzf;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzgj;)Lcom/google/android/gms/ads/internal/reward/client/zzb;

    move-result-object v0

    if-eqz v0, :cond_11

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzala:Landroid/content/Context;

    const-string/jumbo v1, "rewarded_video"

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza$69ae8221(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzan;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzan;-><init>()V

    goto :goto_10
.end method
