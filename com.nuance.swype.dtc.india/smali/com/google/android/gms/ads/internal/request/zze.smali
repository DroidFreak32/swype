.class public Lcom/google/android/gms/ads/internal/request/zze;
.super Lcom/google/android/gms/common/internal/zzd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzd",
        "<",
        "Lcom/google/android/gms/ads/internal/request/zzk;",
        ">;"
    }
.end annotation


# instance fields
.field final zzcap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzd$zzb;Lcom/google/android/gms/common/internal/zzd$zzc;I)V
    .locals 7

    const/16 v3, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzd;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzd$zzb;Lcom/google/android/gms/common/internal/zzd$zzc;Ljava/lang/String;)V

    iput p5, p0, Lcom/google/android/gms/ads/internal/request/zze;->zzcap:I

    return-void
.end method


# virtual methods
.method protected final synthetic zzbb(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 0
    .line 1000
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/request/zzk$zza;->zzbc(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/request/zzk;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method protected final zzqz()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.ads.service.START"

    return-object v0
.end method

.method protected final zzra()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    return-object v0
.end method

.method public zzrb()Lcom/google/android/gms/ads/internal/request/zzk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzd;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/request/zzk;

    return-object v0
.end method
