.class public Lcom/google/android/gms/ads/internal/zzv$zza;
.super Landroid/widget/ViewSwitcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzaqf:Lcom/google/android/gms/internal/zzkk;

.field private final zzaqg:Lcom/google/android/gms/internal/zzku;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzkk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzkk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqf:Lcom/google/android/gms/internal/zzkk;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/google/android/gms/internal/zzku;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/google/android/gms/internal/zzku;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqg:Lcom/google/android/gms/internal/zzku;

    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqg:Lcom/google/android/gms/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzku;->zzts()V

    return-void

    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/zzku;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/google/android/gms/internal/zzku;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqg:Lcom/google/android/gms/internal/zzku;

    goto :goto_17
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqg:Lcom/google/android/gms/internal/zzku;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqg:Lcom/google/android/gms/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzku;->onAttachedToWindow()V

    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqg:Lcom/google/android/gms/internal/zzku;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqg:Lcom/google/android/gms/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzku;->onDetachedFromWindow()V

    :cond_c
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqf:Lcom/google/android/gms/internal/zzkk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzkk;->zze(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public removeAllViews()V
    .registers 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv$zza;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_20

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    instance-of v3, v0, Lcom/google/android/gms/internal/zzlh;

    if-eqz v3, :cond_1c

    check-cast v0, Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_20
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->destroy()V

    goto :goto_27

    :cond_37
    return-void
.end method

.method public zzgr()V
    .registers 2

    const-string/jumbo v0, "Disable position monitoring on adFrame."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqg:Lcom/google/android/gms/internal/zzku;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqg:Lcom/google/android/gms/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzku;->zztt()V

    :cond_f
    return-void
.end method

.method public zzgv()Lcom/google/android/gms/internal/zzkk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqf:Lcom/google/android/gms/internal/zzkk;

    return-object v0
.end method
