.class final Lcom/google/android/gms/ads/internal/formats/zzk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzk;->zze(Lcom/google/android/gms/dynamic/zzd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgz:Lcom/google/android/gms/ads/internal/formats/zzi;

.field final synthetic zzbha:Lcom/google/android/gms/ads/internal/formats/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzk;Lcom/google/android/gms/ads/internal/formats/zzi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzk$1;->zzbha:Lcom/google/android/gms/ads/internal/formats/zzk;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzk$1;->zzbgz:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk$1;->zzbgz:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzlb()Lcom/google/android/gms/internal/zzlh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk$1;->zzbha:Lcom/google/android/gms/ads/internal/formats/zzk;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zza(Lcom/google/android/gms/ads/internal/formats/zzk;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk$1;->zzbha:Lcom/google/android/gms/ads/internal/formats/zzk;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zza(Lcom/google/android/gms/ads/internal/formats/zzk;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
