.class public final Lcom/google/android/gms/internal/zzku;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field zzcmv:Landroid/app/Activity;

.field private zzcmw:Z

.field private zzcmx:Z

.field private zzcmy:Z

.field private zzcmz:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzcna:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzku;->zzcmv:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzku;->mView:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzku;->zzcmz:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzku;->zzcna:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private zztu()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmw:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmz:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmv:Landroid/app/Activity;

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmv:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzku;->zzcmz:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkh;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgk()Lcom/google/android/gms/internal/zzlc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzku;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzku;->zzcmz:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlc;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzku;->zzcna:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmv:Landroid/app/Activity;

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmv:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzku;->zzcna:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkh;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgk()Lcom/google/android/gms/internal/zzlc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzku;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzku;->zzcna:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlc;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmw:Z

    :cond_3f
    return-void
.end method

.method private zztv()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmv:Landroid/app/Activity;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmw:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmz:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmv:Landroid/app/Activity;

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzku;->zzcmv:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzku;->zzcmz:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzki;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzku;->zzcna:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmv:Landroid/app/Activity;

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmv:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzku;->zzcna:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkh;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmw:Z

    goto :goto_4
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmx:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmy:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzku;->zztu()V

    :cond_a
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmx:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzku;->zztv()V

    return-void
.end method

.method public final zzts()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmy:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmx:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzku;->zztu()V

    :cond_a
    return-void
.end method

.method public final zztt()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzku;->zzcmy:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzku;->zztv()V

    return-void
.end method
