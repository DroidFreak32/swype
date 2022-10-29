.class final Lcom/google/android/gms/ads/internal/client/zzl$6;
.super Lcom/google/android/gms/ads/internal/client/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzdt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/internal/client/zzl$zza",
        "<",
        "Lcom/google/android/gms/internal/zzdt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzala:Landroid/content/Context;

.field final synthetic zzavj:Lcom/google/android/gms/ads/internal/client/zzl;

.field final synthetic zzavk:Landroid/widget/FrameLayout;

.field final synthetic zzavl:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzavj:Lcom/google/android/gms/ads/internal/client/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzavk:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzavl:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzala:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzavk:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzavl:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzx;->createNativeAdViewDelegate(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/internal/zzdt;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final synthetic zzin()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzavj:Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zze(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/internal/zzef;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzala:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzavk:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzavl:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzef;->zzb(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzdt;

    move-result-object v0

    if-eqz v0, :cond_13

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzala:Landroid/content/Context;

    const-string/jumbo v1, "native_ad_view_delegate"

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza$69ae8221(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzam;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzam;-><init>()V

    goto :goto_12
.end method
