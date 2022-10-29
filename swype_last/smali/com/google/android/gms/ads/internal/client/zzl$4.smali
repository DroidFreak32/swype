.class final Lcom/google/android/gms/ads/internal/client/zzl$4;
.super Lcom/google/android/gms/ads/internal/client/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/zzl;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)Lcom/google/android/gms/ads/internal/client/zzs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/internal/client/zzl$zza",
        "<",
        "Lcom/google/android/gms/ads/internal/client/zzs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaky:Ljava/lang/String;

.field final synthetic zzala:Landroid/content/Context;

.field final synthetic zzavi:Lcom/google/android/gms/internal/zzgj;

.field final synthetic zzavj:Lcom/google/android/gms/ads/internal/client/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzavj:Lcom/google/android/gms/ads/internal/client/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzala:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzaky:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzavi:Lcom/google/android/gms/internal/zzgj;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzl$zza;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;B)V

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzx;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzala:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzaky:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzavi:Lcom/google/android/gms/internal/zzgj;

    const v3, 0x9039e0

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzx;->createAdLoaderBuilder(Lcom/google/android/gms/dynamic/zzd;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;I)Lcom/google/android/gms/ads/internal/client/zzs;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final synthetic zzin()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzavj:Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zzc(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/client/zzd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzala:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzaky:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzavi:Lcom/google/android/gms/internal/zzgj;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzd;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)Lcom/google/android/gms/ads/internal/client/zzs;

    move-result-object v0

    if-eqz v0, :cond_13

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzala:Landroid/content/Context;

    const-string/jumbo v1, "native_ad"

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza$69ae8221(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzaj;-><init>()V

    goto :goto_12
.end method
