.class final Lcom/google/android/gms/ads/internal/client/zzl$1;
.super Lcom/google/android/gms/ads/internal/client/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)Lcom/google/android/gms/ads/internal/client/zzu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/internal/client/zzl$zza",
        "<",
        "Lcom/google/android/gms/ads/internal/client/zzu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaky:Ljava/lang/String;

.field final synthetic zzala:Landroid/content/Context;

.field final synthetic zzavh:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field final synthetic zzavi:Lcom/google/android/gms/internal/zzgj;

.field final synthetic zzavj:Lcom/google/android/gms/ads/internal/client/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzl$1;->zzavj:Lcom/google/android/gms/ads/internal/client/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzl$1;->zzala:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzl$1;->zzavh:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzl$1;->zzaky:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/client/zzl$1;->zzavi:Lcom/google/android/gms/internal/zzgj;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzl$zza;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;B)V

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzx;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$1;->zzala:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzl$1;->zzavh:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzl$1;->zzaky:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzl$1;->zzavi:Lcom/google/android/gms/internal/zzgj;

    const v5, 0x9039e0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzx;->createBannerAdManager(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;I)Lcom/google/android/gms/ads/internal/client/zzu;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final synthetic zzin()Ljava/lang/Object;
    .registers 7

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$1;->zzavj:Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zzb(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$1;->zzala:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzl$1;->zzavh:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzl$1;->zzaky:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzl$1;->zzavi:Lcom/google/android/gms/internal/zzgj;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;I)Lcom/google/android/gms/ads/internal/client/zzu;

    move-result-object v0

    if-eqz v0, :cond_16

    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$1;->zzala:Landroid/content/Context;

    const-string/jumbo v1, "banner"

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza$69ae8221(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzak;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzak;-><init>()V

    goto :goto_15
.end method
