.class public final Lcom/google/android/gms/internal/zzlg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final zzbgf:Lcom/google/android/gms/internal/zzlh;

.field zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;

.field final zzcoi:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzlh;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzlg;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzlh;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzlh;B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlg;->zzcoi:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlg;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    const-string/jumbo v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzcoi:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg;->zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;

    :cond_0
    return-void
.end method

.method public final zzub()Lcom/google/android/gms/ads/internal/overlay/zzk;
    .locals 1

    const-string/jumbo v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;

    return-object v0
.end method
