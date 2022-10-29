.class public Lcom/google/android/gms/ads/internal/overlay/zzk;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzbgf:Lcom/google/android/gms/internal/zzlh;

.field private zzbjc:Ljava/lang/String;

.field final zzbtw:Landroid/widget/FrameLayout;

.field private final zzbtx:Lcom/google/android/gms/ads/internal/overlay/zzy;

.field zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

.field private zzbtz:Z

.field private zzbua:Z

.field zzbub:Landroid/widget/TextView;

.field zzbuc:J

.field private zzbud:J

.field private zzbue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzlh;IZLcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;)V
    .registers 15

    const/4 v7, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtw:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtw:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzlh;->zzug()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzu(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzlh;->zzug()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzd;->zzakk:Lcom/google/android/gms/ads/internal/overlay/zzj;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/overlay/zzj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzlh;IZLcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;)Lcom/google/android/gms/ads/internal/overlay/zzi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtw:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v7, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_42
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbub:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbub:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzop()V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzy;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzk;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtx:Lcom/google/android/gms/ads/internal/overlay/zzy;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtx:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzpk()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zza(Lcom/google/android/gms/ads/internal/overlay/zzh;)V

    :cond_68
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_75

    const-string/jumbo v0, "AdVideoUnderlay Error"

    const-string/jumbo v1, "Allocating player failed."

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/overlay/zzk;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static zzh(Lcom/google/android/gms/internal/zzlh;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "event"

    const-string/jumbo v2, "no_video_view"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "onVideoEvent"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/zzlh;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private zzop()V
    .registers 5

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzor()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtw:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbub:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtw:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbub:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_1a
    return-void
.end method

.method private zzot()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzue()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtz:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbua:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzue()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtz:Z

    goto :goto_8
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtx:Lcom/google/android/gms/ads/internal/overlay/zzy;

    .line 2000
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzy;->mCancelled:Z

    sget-object v1, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->stop()V

    :cond_13
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzot()V

    return-void
.end method

.method public onPaused()V
    .registers 3

    const-string/jumbo v0, "pause"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzot()V

    return-void
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->pause()V

    goto :goto_4
.end method

.method public play()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->play()V

    goto :goto_4
.end method

.method public seekTo(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->seekTo(I)V

    goto :goto_4
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbue:Ljava/lang/String;

    return-void
.end method

.method public zza(F)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zza(F)V

    goto :goto_4
.end method

.method public zza(FF)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zza(FF)V

    :cond_9
    return-void
.end method

.method final varargs zza(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "event"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v5, p2

    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_10
    if-ge v2, v5, :cond_1f

    aget-object v0, p2, v2

    if-nez v3, :cond_1a

    :goto_16
    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    goto :goto_10

    :cond_1a
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_16

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    const-string/jumbo v1, "onVideoEvent"

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/zzlh;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public zzbw(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbjc:Ljava/lang/String;

    return-void
.end method

.method public zzd(IIII)V
    .registers 9

    const/4 v3, 0x0

    if-eqz p3, :cond_5

    if-nez p4, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    add-int/lit8 v1, p3, 0x2

    add-int/lit8 v2, p4, 0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtw:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->requestLayout()V

    goto :goto_5
.end method

.method public zzd(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_4
.end method

.method public zzl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v0, "error"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "what"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "extra"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public zzlv()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbjc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->setMimeType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbjc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->setVideoPath(Ljava/lang/String;)V

    goto :goto_4

    :cond_1c
    const-string/jumbo v0, "no_src"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4
.end method

.method public zzno()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzno()V

    goto :goto_4
.end method

.method public zznp()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zznp()V

    goto :goto_4
.end method

.method public zzoi()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzk$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzk$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zzoj()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbud:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getVideoHeight()I

    move-result v2

    const-string/jumbo v3, "canplaythrough"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "duration"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string/jumbo v5, "videoWidth"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "videoHeight"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4
.end method

.method public zzok()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzue()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtz:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzue()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3a

    move v0, v1

    :goto_22
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbua:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbua:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzue()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtz:Z

    .line 0
    :cond_39
    return-void

    .line 1000
    :cond_3a
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public zzol()V
    .registers 3

    const-string/jumbo v0, "ended"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzot()V

    return-void
.end method

.method public zzom()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzop()V

    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbuc:J

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbud:J

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzk$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzk$2;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zzon()V
    .registers 6

    const/4 v4, -0x2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "AdMob - "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbty:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzni()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_28
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, -0x100

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtw:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbtw:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_5

    :cond_47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_28
.end method

.method final zzor()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbub:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
