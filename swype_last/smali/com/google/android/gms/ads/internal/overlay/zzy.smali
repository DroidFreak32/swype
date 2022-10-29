.class final Lcom/google/android/gms/ads/internal/overlay/zzy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field mCancelled:Z

.field private zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzk;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->mCancelled:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->mCancelled:Z

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v1, :cond_46

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getCurrentPosition()I

    move-result v1

    int-to-long v2, v1

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbuc:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_46

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_46

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzor()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtw:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbub:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1000
    :cond_2a
    long-to-float v1, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    const-string/jumbo v4, "timeupdate"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "time"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    iput-wide v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbuc:J

    .line 0
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzpk()V

    :cond_49
    return-void
.end method

.method public final zzpk()V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
