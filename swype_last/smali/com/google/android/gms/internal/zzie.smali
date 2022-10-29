.class public final Lcom/google/android/gms/internal/zzie;
.super Lcom/google/android/gms/internal/zzid;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private zzbyj:Ljava/lang/Object;

.field private zzbyk:Landroid/widget/PopupWindow;

.field private zzbyl:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzlh;Lcom/google/android/gms/internal/zzic$zza;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzid;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzlh;Lcom/google/android/gms/internal/zzic$zza;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzie;->zzbyj:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzie;->zzbyl:Z

    return-void
.end method

.method private zzqe()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzie;->zzbyj:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzie;->zzbyl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzie;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzie;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzie;->zzbyk:Landroid/widget/PopupWindow;

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzie;->zzbyk:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzie;->zzbyk:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzie;->zzbyk:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzie;->zzbyk:Landroid/widget/PopupWindow;

    :cond_2d
    monitor-exit v1

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v0
.end method


# virtual methods
.method public final cancel()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzie;->zzqe()V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzid;->cancel()V

    return-void
.end method

.method protected final zzaj(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzie;->zzqe()V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzid;->zzaj(I)V

    return-void
.end method

.method protected final zzqd()V
    .registers 8

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzie;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_77

    iget-object v0, p0, Lcom/google/android/gms/internal/zzie;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    move-object v1, v0

    :goto_11
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzie;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzie;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzie;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzie;->zzbyj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3f
    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzie;->zzbyl:Z

    if-eqz v3, :cond_48

    monitor-exit v2

    goto :goto_19

    :catchall_45
    move-exception v0

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_45

    throw v0

    :cond_48
    :try_start_48
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v0, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzie;->zzbyk:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzie;->zzbyk:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzie;->zzbyk:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const-string/jumbo v0, "Displaying the 1x1 popup off the screen."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_48 .. :try_end_64} :catchall_45

    :try_start_64
    iget-object v0, p0, Lcom/google/android/gms/internal/zzie;->zzbyk:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_70} :catch_72
    .catchall {:try_start_64 .. :try_end_70} :catchall_45

    :goto_70
    :try_start_70
    monitor-exit v2

    goto :goto_19

    :catch_72
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzie;->zzbyk:Landroid/widget/PopupWindow;
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_45

    goto :goto_70

    :cond_77
    move-object v1, v0

    goto :goto_11
.end method
