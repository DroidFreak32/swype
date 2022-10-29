.class public final Lcom/google/android/gms/ads/internal/purchase/zzg;
.super Lcom/google/android/gms/internal/zzhr$zza;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResultCode:I

.field zzbws:Lcom/google/android/gms/ads/internal/purchase/zzb;

.field private zzbwy:Ljava/lang/String;

.field private zzbxc:Lcom/google/android/gms/ads/internal/purchase/zzf;

.field private zzbxi:Z

.field private zzbxj:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/zzf;)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhr$zza;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbxi:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbwy:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mResultCode:I

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbxj:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbxi:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbxc:Lcom/google/android/gms/ads/internal/purchase/zzf;

    return-void
.end method


# virtual methods
.method public final finishPurchase()V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzga()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbxj:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzd(Landroid/content/Intent;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mResultCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    if-eqz v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbws:Lcom/google/android/gms/ads/internal/purchase/zzb;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzaux()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p0}, Lcom/google/android/gms/common/stats/zzb;->zza$31a3108d(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z

    goto :goto_11
.end method

.method public final getProductId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbwy:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseData()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbxj:Landroid/content/Intent;

    return-object v0
.end method

.method public final getResultCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mResultCode:I

    return v0
.end method

.method public final isVerified()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbxi:Z

    return v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string/jumbo v0, "In-app billing service connected."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbws:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzas(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzga()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbxj:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zze(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzga()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzbz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    :goto_1f
    return-void

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbws:Lcom/google/android/gms/ads/internal/purchase/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzm(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzs(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/purchase/zzh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbxc:Lcom/google/android/gms/ads/internal/purchase/zzf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zza(Lcom/google/android/gms/ads/internal/purchase/zzf;)V

    :cond_39
    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzaux()Lcom/google/android/gms/common/stats/zzb;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbws:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/purchase/zzb;->destroy()V

    goto :goto_1f
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string/jumbo v0, "In-app billing service disconnected."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzbws:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/purchase/zzb;->destroy()V

    return-void
.end method
