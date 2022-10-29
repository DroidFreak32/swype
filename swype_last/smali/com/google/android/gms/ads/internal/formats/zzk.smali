.class public Lcom/google/android/gms/ads/internal/formats/zzk;
.super Lcom/google/android/gms/internal/zzdt$zza;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field private zzaiz:Landroid/widget/FrameLayout;

.field private zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

.field private final zzbgt:Landroid/widget/FrameLayout;

.field private zzbgu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzbgv:Lcom/google/android/gms/ads/internal/formats/zzb;

.field zzbgw:Z

.field zzbgx:I

.field zzbgy:I


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdt$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgu:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgw:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgk()Lcom/google/android/gms/internal/zzlc;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzlc;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgk()Lcom/google/android/gms/internal/zzlc;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzlc;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/formats/zzk;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private zzh(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    instance-of v0, v0, Lcom/google/android/gms/ads/internal/formats/zzg;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzla()Lcom/google/android/gms/ads/internal/formats/zzh;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzh(Landroid/view/View;)V

    :cond_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    goto :goto_12
.end method

.method private zzx(I)I
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/formats/zzh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgu:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgv:Lcom/google/android/gms/ads/internal/formats/zzb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12

    .prologue
    .line 0
    iget-object v6, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-nez v0, :cond_9

    monitor-exit v6

    :goto_8
    return-void

    :cond_9
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_18

    .line 5000
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgv:Lcom/google/android/gms/ads/internal/formats/zzb;

    if-eqz v2, :cond_d0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgv:Lcom/google/android/gms/ads/internal/formats/zzb;

    .line 6000
    iget-object v2, v2, Lcom/google/android/gms/ads/internal/formats/zzb;->zzbfc:Landroid/widget/RelativeLayout;

    .line 5000
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v7, v5}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    new-instance v2, Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v9, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v5, v7, v5

    invoke-direct {v2, v8, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 0
    :goto_6c
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_cd

    :try_start_71
    const-string/jumbo v7, "width"

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "height"

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v1

    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "x"

    iget v7, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v7}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v7

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "y"

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ae
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_ae} :catch_b0
    .catchall {:try_start_71 .. :try_end_ae} :catchall_cd

    goto/16 :goto_18

    :catch_b0
    move-exception v1

    :try_start_b1
    const-string/jumbo v1, "Unable to get view rectangle for view "

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_de

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c8
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto/16 :goto_18

    :catchall_cd
    move-exception v0

    monitor-exit v6
    :try_end_cf
    .catchall {:try_start_b1 .. :try_end_cf} :catchall_cd

    throw v0

    .line 5000
    :cond_d0
    :try_start_d0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v5, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    goto :goto_6c

    .line 0
    :cond_de
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_c8

    :cond_e4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_e9
    .catchall {:try_start_d0 .. :try_end_e9} :catchall_cd

    :try_start_e9
    const-string/jumbo v0, "x"

    iget v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "y"

    iget v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgy:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_101
    .catch Lorg/json/JSONException; {:try_start_e9 .. :try_end_101} :catch_155
    .catchall {:try_start_e9 .. :try_end_101} :catchall_cd

    :goto_101
    :try_start_101
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_106
    .catchall {:try_start_101 .. :try_end_106} :catchall_cd

    :try_start_106
    const-string/jumbo v0, "width"

    .line 7000
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    .line 0
    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "height"

    .line 8000
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 0
    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_126
    .catch Lorg/json/JSONException; {:try_start_106 .. :try_end_126} :catch_15d
    .catchall {:try_start_106 .. :try_end_126} :catchall_cd

    :goto_126
    :try_start_126
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgv:Lcom/google/android/gms/ads/internal/formats/zzb;

    if-eqz v0, :cond_16e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgv:Lcom/google/android/gms/ads/internal/formats/zzb;

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/formats/zzb;->zzbfc:Landroid/widget/RelativeLayout;

    .line 0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    instance-of v0, v0, Lcom/google/android/gms/ads/internal/formats/zzg;

    if-eqz v0, :cond_165

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzla()Lcom/google/android/gms/ads/internal/formats/zzh;

    move-result-object v0

    if-eqz v0, :cond_165

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzla()Lcom/google/android/gms/ads/internal/formats/zzh;

    move-result-object v0

    const-string/jumbo v1, "1007"

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/google/android/gms/ads/internal/formats/zzh;->zza(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :goto_152
    monitor-exit v6

    goto/16 :goto_8

    :catch_155
    move-exception v0

    const-string/jumbo v0, "Unable to get click location"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_101

    :catch_15d
    move-exception v0

    const-string/jumbo v0, "Unable to get native ad view bounding box"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_126

    :cond_165
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    const-string/jumbo v1, "1007"

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/google/android/gms/ads/internal/formats/zzh;->zza(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_152

    :cond_16e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgu:Ljava/util/Map;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/formats/zzh;->zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_176
    .catchall {:try_start_126 .. :try_end_176} :catchall_cd

    goto :goto_152
.end method

.method public onGlobalLayout()V
    .registers 6

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgw:Z

    if-eqz v0, :cond_28

    .line 10000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 11000
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    .line 0
    if-eqz v0, :cond_28

    if-eqz v2, :cond_28

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgw:Z

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzg(Landroid/view/View;)V

    :cond_33
    monitor-exit v1

    return-void

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public onScrollChanged()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzg(Landroid/view/View;)V

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-nez v0, :cond_a

    monitor-exit v1

    :goto_9
    return v5

    .line 12000
    :cond_a
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const/4 v4, 0x1

    aget v0, v0, v4

    int-to-float v0, v0

    sub-float v0, v3, v0

    new-instance v3, Landroid/graphics/Point;

    float-to-int v2, v2

    float-to-int v0, v0

    invoke-direct {v3, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 0
    iget v0, v3, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:I

    iget v0, v3, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgy:I

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget v2, v3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-interface {v2, v0}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzb(Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    monitor-exit v1

    goto :goto_9

    :catchall_4b
    move-exception v0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method public zzap(Ljava/lang/String;)Lcom/google/android/gms/dynamic/zzd;
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_14
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_e

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public zzc(Ljava/lang/String;Lcom/google/android/gms/dynamic/zzd;)V
    .registers 7

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_12

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    monitor-exit v1

    return-void

    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgu:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_10

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw v0
.end method

.method public zze(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 9

    .prologue
    .line 0
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzh(Landroid/view/View;)V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/ads/internal/formats/zzi;

    if-nez v2, :cond_17

    const-string/jumbo v1, "Not an instance of native engine. This is most likely a transient error"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    monitor-exit v3

    :goto_16
    return-void

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgw:Z

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/zzi;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v2, :cond_50

    sget-object v2, Lcom/google/android/gms/internal/zzdc;->zzbch:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v2

    .line 0
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgu:Ljava/util/Map;

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzb(Landroid/view/View;Ljava/util/Map;)V

    :cond_50
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    instance-of v2, v2, Lcom/google/android/gms/ads/internal/formats/zzg;

    if-eqz v2, :cond_c2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    check-cast v2, Lcom/google/android/gms/ads/internal/formats/zzg;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzkz()Z

    move-result v2

    if-eqz v2, :cond_c2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    check-cast v2, Lcom/google/android/gms/ads/internal/formats/zzg;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzc(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    :cond_67
    :goto_67
    sget-object v2, Lcom/google/android/gms/internal/zzdc;->zzbch:Lcom/google/android/gms/internal/zzcy;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v2

    .line 0
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :cond_7f
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3000
    invoke-virtual {v1, p0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Landroid/view/View$OnClickListener;)Lcom/google/android/gms/ads/internal/formats/zzb;

    move-result-object v2

    .line 0
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgv:Lcom/google/android/gms/ads/internal/formats/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgv:Lcom/google/android/gms/ads/internal/formats/zzb;

    if-eqz v2, :cond_a6

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgu:Ljava/util/Map;

    const-string/jumbo v4, "1007"

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgv:Lcom/google/android/gms/ads/internal/formats/zzb;

    .line 4000
    iget-object v6, v6, Lcom/google/android/gms/ads/internal/formats/zzb;->zzbfc:Landroid/widget/RelativeLayout;

    .line 0
    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgv:Lcom/google/android/gms/ads/internal/formats/zzb;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_a6
    sget-object v2, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/ads/internal/formats/zzk$1;

    invoke-direct {v4, p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk$1;-><init>(Lcom/google/android/gms/ads/internal/formats/zzk;Lcom/google/android/gms/ads/internal/formats/zzi;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgu:Ljava/util/Map;

    invoke-virtual {v1, v2, v4, p0, p0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Landroid/view/View;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgt:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzh(Landroid/view/View;)V

    monitor-exit v3

    goto/16 :goto_16

    :catchall_bf
    move-exception v1

    monitor-exit v3
    :try_end_c1
    .catchall {:try_start_4 .. :try_end_c1} :catchall_bf

    throw v1

    :cond_c2
    :try_start_c2
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbfp:Lcom/google/android/gms/ads/internal/formats/zzh;

    instance-of v2, v1, Lcom/google/android/gms/ads/internal/formats/zzg;

    if-eqz v2, :cond_67

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzg;

    move-object v2, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzc(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    :try_end_d0
    .catchall {:try_start_c2 .. :try_end_d0} :catchall_bf

    goto :goto_67
.end method
