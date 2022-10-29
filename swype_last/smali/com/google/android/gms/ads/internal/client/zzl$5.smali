.class final Lcom/google/android/gms/ads/internal/client/zzl$5;
.super Lcom/google/android/gms/ads/internal/client/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/zzl;->zzl(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/internal/client/zzl$zza",
        "<",
        "Lcom/google/android/gms/ads/internal/client/zzz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzala:Landroid/content/Context;

.field final synthetic zzavj:Lcom/google/android/gms/ads/internal/client/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzl$5;->zzavj:Lcom/google/android/gms/ads/internal/client/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzl$5;->zzala:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzl$zza;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;B)V

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzx;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$5;->zzala:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    const v1, 0x9039e0

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzx;->getMobileAdsSettingsManagerWithClientJarVersion(Lcom/google/android/gms/dynamic/zzd;I)Lcom/google/android/gms/ads/internal/client/zzz;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final synthetic zzin()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$5;->zzavj:Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zzd(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/client/zzai;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$5;->zzala:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzai;->zzm(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzz;

    move-result-object v0

    if-eqz v0, :cond_f

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$5;->zzala:Landroid/content/Context;

    const-string/jumbo v1, "mobile_ads_settings"

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza$69ae8221(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzal;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzal;-><init>()V

    goto :goto_e
.end method
