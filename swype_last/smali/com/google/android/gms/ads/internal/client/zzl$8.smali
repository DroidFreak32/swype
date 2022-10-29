.class final Lcom/google/android/gms/ads/internal/client/zzl$8;
.super Lcom/google/android/gms/ads/internal/client/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/zzl;->zzb(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzhp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/internal/client/zzl$zza",
        "<",
        "Lcom/google/android/gms/internal/zzhp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic zzavj:Lcom/google/android/gms/ads/internal/client/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzl$8;->zzavj:Lcom/google/android/gms/ads/internal/client/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzl$8;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzl$zza;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;B)V

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzx;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$8;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzx;->createInAppPurchaseManager(Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/internal/zzhp;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final synthetic zzin()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$8;->zzavj:Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zzg(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/internal/zzhu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$8;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhu;->zzg(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzhp;

    move-result-object v0

    if-eqz v0, :cond_f

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$8;->val$activity:Landroid/app/Activity;

    const-string/jumbo v1, "iap"

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza$69ae8221(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 0
    goto :goto_e
.end method
