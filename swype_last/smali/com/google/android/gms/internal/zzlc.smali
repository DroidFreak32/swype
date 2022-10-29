.class public final Lcom/google/android/gms/internal/zzlc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzld;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzld;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzld;->zzua()V

    return-void
.end method

.method public static zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzle;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzle;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzle;->zzua()V

    return-void
.end method
