.class public final Lcom/google/android/gms/internal/zzev;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# static fields
.field static final zzbiv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbit:Lcom/google/android/gms/ads/internal/zze;

.field private final zzbiu:Lcom/google/android/gms/internal/zzha;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/4 v13, 0x6

    .line 0
    const-string/jumbo v0, "resize"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "playVideo"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "storePicture"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "createCalendarEvent"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, "setOrientationProperties"

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v10, "closeResizedAd"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 9000
    new-instance v12, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v12, v13}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 0
    sput-object v0, Lcom/google/android/gms/internal/zzev;->zzbiv:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzha;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzev;->zzbit:Lcom/google/android/gms/ads/internal/zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzev;->zzbiu:Lcom/google/android/gms/internal/zzha;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlh;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 0
    const-string/jumbo v1, "a"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzev;->zzbiv:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/gms/internal/zzev;->zzbit:Lcom/google/android/gms/ads/internal/zze;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/gms/internal/zzev;->zzbit:Lcom/google/android/gms/ads/internal/zze;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zze;->zzel()Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzev;->zzbit:Lcom/google/android/gms/ads/internal/zze;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/zze;->zzt(Ljava/lang/String;)V

    .line 8000
    :goto_2d
    return-void

    .line 0
    :cond_2e
    packed-switch v1, :pswitch_data_584

    :pswitch_31
    const-string/jumbo v1, "Unknown MRAID command called."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    goto :goto_2d

    :pswitch_38
    iget-object v6, p0, Lcom/google/android/gms/internal/zzev;->zzbiu:Lcom/google/android/gms/internal/zzha;

    .line 1000
    iget-object v7, v6, Lcom/google/android/gms/internal/zzha;->zzail:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3d
    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    if-nez v1, :cond_4c

    const-string/jumbo v1, "Not an activity context. Cannot resize."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/zzha;->zzbt(Ljava/lang/String;)V

    monitor-exit v7

    goto :goto_2d

    :catchall_49
    move-exception v1

    monitor-exit v7
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_49

    throw v1

    :cond_4c
    :try_start_4c
    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->zzdn()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    if-nez v1, :cond_5c

    const-string/jumbo v1, "Webview is not yet available, size is not set."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/zzha;->zzbt(Ljava/lang/String;)V

    monitor-exit v7

    goto :goto_2d

    :cond_5c
    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->zzdn()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    if-eqz v1, :cond_6e

    const-string/jumbo v1, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/zzha;->zzbt(Ljava/lang/String;)V

    monitor-exit v7

    goto :goto_2d

    :cond_6e
    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->zzun()Z

    move-result v1

    if-eqz v1, :cond_7e

    const-string/jumbo v1, "Cannot resize an expanded banner."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/zzha;->zzbt(Ljava/lang/String;)V

    monitor-exit v7

    goto :goto_2d

    .line 2000
    :cond_7e
    const-string/jumbo v1, "width"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9f

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    const-string/jumbo v1, "width"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzcp(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/google/android/gms/internal/zzha;->zzaie:I

    :cond_9f
    const-string/jumbo v1, "height"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    const-string/jumbo v1, "height"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzcp(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/google/android/gms/internal/zzha;->zzaif:I

    :cond_c0
    const-string/jumbo v1, "offsetX"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    const-string/jumbo v1, "offsetX"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzcp(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqj:I

    :cond_e1
    const-string/jumbo v1, "offsetY"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_102

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    const-string/jumbo v1, "offsetY"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzcp(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqk:I

    :cond_102
    const-string/jumbo v1, "allowOffscreen"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_120

    const-string/jumbo v1, "allowOffscreen"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqg:Z

    :cond_120
    const-string/jumbo v1, "customClosePosition"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_131

    iput-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqf:Ljava/lang/String;

    .line 3000
    :cond_131
    iget v1, v6, Lcom/google/android/gms/internal/zzha;->zzaie:I

    if-ltz v1, :cond_145

    iget v1, v6, Lcom/google/android/gms/internal/zzha;->zzaif:I

    if-ltz v1, :cond_145

    move v1, v5

    .line 1000
    :goto_13a
    if-nez v1, :cond_147

    const-string/jumbo v1, "Invalid width and height options. Cannot resize."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/zzha;->zzbt(Ljava/lang/String;)V

    monitor-exit v7

    goto/16 :goto_2d

    :cond_145
    move v1, v4

    .line 3000
    goto :goto_13a

    .line 1000
    :cond_147
    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    if-eqz v8, :cond_155

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_15e

    :cond_155
    const-string/jumbo v1, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/zzha;->zzbt(Ljava/lang/String;)V

    monitor-exit v7

    goto/16 :goto_2d

    :cond_15e
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzha;->zzmv()[I

    move-result-object v9

    if-nez v9, :cond_16d

    const-string/jumbo v1, "Resize location out of screen or close button is not visible."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/zzha;->zzbt(Ljava/lang/String;)V

    monitor-exit v7

    goto/16 :goto_2d

    :cond_16d
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    iget v10, v6, Lcom/google/android/gms/internal/zzha;->zzaie:I

    invoke-virtual {v1, v2, v10}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/content/Context;I)I

    move-result v10

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    iget v11, v6, Lcom/google/android/gms/internal/zzha;->zzaif:I

    invoke-virtual {v1, v2, v11}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/content/Context;I)I

    move-result v11

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2d5

    instance-of v1, v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2d5

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    iget-object v12, v6, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v12}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqo:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2ce

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbqq:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzk(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/widget/ImageView;

    iget-object v12, v6, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    invoke-direct {v2, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbql:Landroid/widget/ImageView;

    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbql:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->zzdn()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqq:Landroid/view/ViewGroup;

    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbql:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1d4
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqp:Landroid/widget/RelativeLayout;

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqp:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqp:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqp:Landroid/widget/RelativeLayout;

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/zzkh;->zza$490f73c3(Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqo:Landroid/widget/PopupWindow;

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqo:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqo:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbqo:Landroid/widget/PopupWindow;

    iget-boolean v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqg:Z

    if-nez v1, :cond_2de

    move v1, v5

    :goto_20b
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqp:Landroid/widget/RelativeLayout;

    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v1, v2, v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqm:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget-object v10, v6, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    const/16 v11, 0x32

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/content/Context;I)I

    move-result v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v10

    iget-object v11, v6, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    const/16 v12, 0x32

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/content/Context;I)I

    move-result v10

    invoke-direct {v1, v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbqf:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_594

    :cond_24a
    :goto_24a
    packed-switch v3, :pswitch_data_5ae

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_257
    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbqm:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/google/android/gms/internal/zzha$1;

    invoke-direct {v3, v6}, Lcom/google/android/gms/internal/zzha$1;-><init>(Lcom/google/android/gms/internal/zzha;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbqm:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "Close button"

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbqp:Landroid/widget/RelativeLayout;

    iget-object v3, v6, Lcom/google/android/gms/internal/zzha;->zzbqm:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_270
    .catchall {:try_start_4c .. :try_end_270} :catchall_49

    :try_start_270
    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqo:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v4

    iget-object v5, v6, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    const/4 v8, 0x0

    aget v8, v9, v8

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/content/Context;I)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v5

    iget-object v8, v6, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    const/4 v10, 0x1

    aget v10, v9, v10

    invoke-virtual {v5, v8, v10}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_294
    .catch Ljava/lang/RuntimeException; {:try_start_270 .. :try_end_294} :catch_36c
    .catchall {:try_start_270 .. :try_end_294} :catchall_49

    const/4 v1, 0x0

    :try_start_295
    aget v1, v9, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    .line 4000
    iget-object v3, v6, Lcom/google/android/gms/internal/zzha;->zzbqn:Lcom/google/android/gms/internal/zzhg;

    if-eqz v3, :cond_2a7

    iget-object v3, v6, Lcom/google/android/gms/internal/zzha;->zzbqn:Lcom/google/android/gms/internal/zzhg;

    iget v4, v6, Lcom/google/android/gms/internal/zzha;->zzaie:I

    iget v5, v6, Lcom/google/android/gms/internal/zzha;->zzaif:I

    invoke-interface {v3, v1, v2, v4, v5}, Lcom/google/android/gms/internal/zzhg;->zza(IIII)V

    .line 1000
    :cond_2a7
    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, v6, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    new-instance v4, Lcom/google/android/gms/ads/AdSize;

    iget v5, v6, Lcom/google/android/gms/internal/zzha;->zzaie:I

    iget v8, v6, Lcom/google/android/gms/internal/zzha;->zzaif:I

    invoke-direct {v4, v5, v8}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzlh;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    invoke-virtual {v6, v1, v2}, Lcom/google/android/gms/internal/zzha;->zzc(II)V

    const-string/jumbo v1, "resized"

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/zzha;->zzbv(Ljava/lang/String;)V

    monitor-exit v7

    goto/16 :goto_2d

    :cond_2ce
    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqo:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_1d4

    :cond_2d5
    const-string/jumbo v1, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/zzha;->zzbt(Ljava/lang/String;)V

    monitor-exit v7

    goto/16 :goto_2d

    :cond_2de
    move v1, v4

    goto/16 :goto_20b

    :sswitch_2e1
    const-string/jumbo v5, "top-left"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24a

    move v3, v4

    goto/16 :goto_24a

    :sswitch_2ed
    const-string/jumbo v4, "top-center"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24a

    move v3, v5

    goto/16 :goto_24a

    :sswitch_2f9
    const-string/jumbo v4, "center"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24a

    const/4 v3, 0x2

    goto/16 :goto_24a

    :sswitch_305
    const-string/jumbo v4, "bottom-left"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24a

    const/4 v3, 0x3

    goto/16 :goto_24a

    :sswitch_311
    const-string/jumbo v4, "bottom-center"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24a

    const/4 v3, 0x4

    goto/16 :goto_24a

    :sswitch_31d
    const-string/jumbo v4, "bottom-right"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24a

    const/4 v3, 0x5

    goto/16 :goto_24a

    :pswitch_329
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_257

    :pswitch_335
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_257

    :pswitch_341
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_257

    :pswitch_348
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_257

    :pswitch_354
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_257

    :pswitch_360
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_257

    :catch_36c
    move-exception v1

    const-string/jumbo v2, "Cannot show popup window: "

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3b0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_382
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/zzha;->zzbt(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqp:Landroid/widget/RelativeLayout;

    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqq:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3ad

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqq:Landroid/view/ViewGroup;

    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbql:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbqq:Landroid/view/ViewGroup;

    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v2, v6, Lcom/google/android/gms/internal/zzha;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzlh;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    :cond_3ad
    monitor-exit v7

    goto/16 :goto_2d

    :cond_3b0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3b5
    .catchall {:try_start_295 .. :try_end_3b5} :catchall_49

    goto :goto_382

    .line 0
    :pswitch_3b6
    new-instance v2, Lcom/google/android/gms/internal/zzgz;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/zzgz;-><init>(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V

    .line 5000
    iget-object v1, v2, Lcom/google/android/gms/internal/zzgz;->mContext:Landroid/content/Context;

    if-nez v1, :cond_3c7

    const-string/jumbo v1, "Activity context is not available."

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzgz;->zzbt(Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_3c7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v1, v2, Lcom/google/android/gms/internal/zzgz;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzag(Landroid/content/Context;)Lcom/google/android/gms/internal/zzcu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcu;->zzju()Z

    move-result v1

    if-nez v1, :cond_3de

    const-string/jumbo v1, "This feature is not available on the device."

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzgz;->zzbt(Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_3de
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v1, v2, Lcom/google/android/gms/internal/zzgz;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzaf(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjx;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_42e

    sget v1, Lcom/google/android/gms/R$string;->create_calendar_title:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3f7
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v4, :cond_432

    sget v1, Lcom/google/android/gms/R$string;->create_calendar_message:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_402
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v4, :cond_436

    sget v1, Lcom/google/android/gms/R$string;->accept:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_40d
    new-instance v5, Lcom/google/android/gms/internal/zzgz$1;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzgz$1;-><init>(Lcom/google/android/gms/internal/zzgz;)V

    invoke-virtual {v3, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v4, :cond_43a

    sget v1, Lcom/google/android/gms/R$string;->decline:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_41d
    new-instance v4, Lcom/google/android/gms/internal/zzgz$2;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/zzgz$2;-><init>(Lcom/google/android/gms/internal/zzgz;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2d

    :cond_42e
    const-string/jumbo v1, "Create calendar event"

    goto :goto_3f7

    :cond_432
    const-string/jumbo v1, "Allow Ad to create a calendar event?"

    goto :goto_402

    :cond_436
    const-string/jumbo v1, "Accept"

    goto :goto_40d

    :cond_43a
    const-string/jumbo v1, "Decline"

    goto :goto_41d

    .line 0
    :pswitch_43e
    new-instance v3, Lcom/google/android/gms/internal/zzhc;

    invoke-direct {v3, p1, p2}, Lcom/google/android/gms/internal/zzhc;-><init>(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V

    .line 6000
    iget-object v1, v3, Lcom/google/android/gms/internal/zzhc;->mContext:Landroid/content/Context;

    if-nez v1, :cond_44f

    const-string/jumbo v1, "Activity context is not available"

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzhc;->zzbt(Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_44f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v1, v3, Lcom/google/android/gms/internal/zzhc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzag(Landroid/content/Context;)Lcom/google/android/gms/internal/zzcu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcu;->zzjr()Z

    move-result v1

    if-nez v1, :cond_466

    const-string/jumbo v1, "Feature is not supported by the device."

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzhc;->zzbt(Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_466
    iget-object v1, v3, Lcom/google/android/gms/internal/zzhc;->zzbeg:Ljava/util/Map;

    const-string/jumbo v2, "iurl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47f

    const-string/jumbo v1, "Image url cannot be empty."

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzhc;->zzbt(Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_47f
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a1

    const-string/jumbo v2, "Invalid image url: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_49b

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_496
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzhc;->zzbt(Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_49b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_496

    .line 7000
    :cond_4a1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 6000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkh;->zzcq(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4ce

    const-string/jumbo v2, "Image type not recognized: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4c8

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4c3
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzhc;->zzbt(Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_4c8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4c3

    :cond_4ce
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzjx;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v2, v3, Lcom/google/android/gms/internal/zzhc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkh;->zzaf(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    if-eqz v5, :cond_51e

    sget v2, Lcom/google/android/gms/R$string;->store_picture_title:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4e7
    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v5, :cond_522

    sget v2, Lcom/google/android/gms/R$string;->store_picture_message:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4f2
    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v5, :cond_526

    sget v2, Lcom/google/android/gms/R$string;->accept:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4fd
    new-instance v7, Lcom/google/android/gms/internal/zzhc$1;

    invoke-direct {v7, v3, v1, v4}, Lcom/google/android/gms/internal/zzhc$1;-><init>(Lcom/google/android/gms/internal/zzhc;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v5, :cond_52a

    sget v1, Lcom/google/android/gms/R$string;->decline:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_50d
    new-instance v2, Lcom/google/android/gms/internal/zzhc$2;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzhc$2;-><init>(Lcom/google/android/gms/internal/zzhc;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2d

    :cond_51e
    const-string/jumbo v2, "Save image"

    goto :goto_4e7

    :cond_522
    const-string/jumbo v2, "Allow Ad to store image in Picture gallery?"

    goto :goto_4f2

    :cond_526
    const-string/jumbo v2, "Accept"

    goto :goto_4fd

    :cond_52a
    const-string/jumbo v1, "Decline"

    goto :goto_50d

    .line 0
    :pswitch_52e
    new-instance v2, Lcom/google/android/gms/internal/zzhb;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/zzhb;-><init>(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V

    .line 8000
    iget-object v1, v2, Lcom/google/android/gms/internal/zzhb;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    if-nez v1, :cond_53f

    const-string/jumbo v1, "AdWebView is null"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_53f
    const-string/jumbo v1, "portrait"

    iget-object v4, v2, Lcom/google/android/gms/internal/zzhb;->zzbqt:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_559

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzki;->zztk()I

    move-result v1

    :goto_552
    iget-object v2, v2, Lcom/google/android/gms/internal/zzhb;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzlh;->setRequestedOrientation(I)V

    goto/16 :goto_2d

    :cond_559
    const-string/jumbo v1, "landscape"

    iget-object v4, v2, Lcom/google/android/gms/internal/zzhb;->zzbqt:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56d

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzki;->zztj()I

    move-result v1

    goto :goto_552

    :cond_56d
    iget-boolean v1, v2, Lcom/google/android/gms/internal/zzhb;->zzbqs:Z

    if-eqz v1, :cond_573

    move v1, v3

    goto :goto_552

    :cond_573
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzki;->zztl()I

    move-result v1

    goto :goto_552

    .line 0
    :pswitch_57c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzev;->zzbiu:Lcom/google/android/gms/internal/zzha;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/zzha;->zzs(Z)V

    goto/16 :goto_2d

    nop

    :pswitch_data_584
    .packed-switch 0x1
        :pswitch_38
        :pswitch_31
        :pswitch_43e
        :pswitch_3b6
        :pswitch_52e
        :pswitch_57c
    .end packed-switch

    .line 1000
    :sswitch_data_594
    .sparse-switch
        -0x514d33ab -> :sswitch_2f9
        -0x3c587281 -> :sswitch_2e1
        -0x27103597 -> :sswitch_305
        0x455fe3fa -> :sswitch_31d
        0x4ccee637 -> :sswitch_311
        0x68a23bcd -> :sswitch_2ed
    .end sparse-switch

    :pswitch_data_5ae
    .packed-switch 0x0
        :pswitch_329
        :pswitch_335
        :pswitch_341
        :pswitch_348
        :pswitch_354
        :pswitch_360
    .end packed-switch
.end method
