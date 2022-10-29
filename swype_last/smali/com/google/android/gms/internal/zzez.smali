.class public final Lcom/google/android/gms/internal/zzez;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzbiz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzlh;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzbja:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzez;->zzbiz:Ljava/util/Map;

    return-void
.end method

.method private static zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_14

    :try_start_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/content/Context;I)I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_15

    move-result p3

    :cond_14
    :goto_14
    return p3

    :catch_15
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Could not parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in a video GMSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_14
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .registers 15
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
    .line 0
    const-string/jumbo v0, "action"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_12

    const-string/jumbo v0, "Action missing from video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkd;->zzaz(I)Z

    move-result v1

    if-eqz v1, :cond_61

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string/jumbo v2, "google.afma.Notify_dt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Video GMSG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    :cond_61
    const-string/jumbo v1, "background"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    const-string/jumbo v0, "color"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_80

    const-string/jumbo v0, "Color parameter missing from color video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_11

    :cond_80
    :try_start_80
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->zzuq()Lcom/google/android/gms/internal/zzlg;

    move-result-object v1

    if-eqz v1, :cond_9e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlg;->zzub()Lcom/google/android/gms/ads/internal/overlay/zzk;

    move-result-object v1

    if-eqz v1, :cond_9e

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->setBackgroundColor(I)V
    :try_end_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_80 .. :try_end_93} :catch_95

    goto/16 :goto_11

    :catch_95
    move-exception v0

    const-string/jumbo v0, "Invalid color parameter in video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_9e
    :try_start_9e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzez;->zzbiz:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9e .. :try_end_a7} :catch_95

    goto/16 :goto_11

    :cond_a9
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->zzuq()Lcom/google/android/gms/internal/zzlg;

    move-result-object v7

    if-nez v7, :cond_b7

    const-string/jumbo v0, "Could not get underlay container for a video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_b7
    const-string/jumbo v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "position"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v1, :cond_c9

    if-eqz v2, :cond_19b

    :cond_c9
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "x"

    const/4 v3, 0x0

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/internal/zzez;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v2, "y"

    const/4 v3, 0x0

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/internal/zzez;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v2, "w"

    const/4 v3, -0x1

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/internal/zzez;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v2, "h"

    const/4 v3, -0x1

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/internal/zzez;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v11

    :try_start_ed
    const-string/jumbo v0, "player"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f9
    .catch Ljava/lang/NumberFormatException; {:try_start_ed .. :try_end_f9} :catch_186

    move-result v3

    :goto_fa
    const-string/jumbo v0, "spherical"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v1, :cond_18a

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzlg;->zzub()Lcom/google/android/gms/ads/internal/overlay/zzk;

    move-result-object v0

    if-nez v0, :cond_18a

    .line 1000
    iget-object v0, v7, Lcom/google/android/gms/internal/zzlg;->zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-nez v0, :cond_169

    iget-object v0, v7, Lcom/google/android/gms/internal/zzlg;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzus()Lcom/google/android/gms/internal/zzdj;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzdj;->zzajn:Lcom/google/android/gms/internal/zzdk;

    .line 1000
    iget-object v1, v7, Lcom/google/android/gms/internal/zzlg;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->zzur()Lcom/google/android/gms/internal/zzdi;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "vpr"

    aput-object v6, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-object v0, v7, Lcom/google/android/gms/internal/zzlg;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzus()Lcom/google/android/gms/internal/zzdj;

    move-result-object v0

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzdj;->zzajn:Lcom/google/android/gms/internal/zzdk;

    .line 1000
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdg;->zzb(Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzdi;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v1, v7, Lcom/google/android/gms/internal/zzlg;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/google/android/gms/internal/zzlg;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v5, v7, Lcom/google/android/gms/internal/zzlg;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzlh;->zzus()Lcom/google/android/gms/internal/zzdj;

    move-result-object v5

    .line 4000
    iget-object v5, v5, Lcom/google/android/gms/internal/zzdj;->zzajn:Lcom/google/android/gms/internal/zzdk;

    .line 1000
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/overlay/zzk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzlh;IZLcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;)V

    iput-object v0, v7, Lcom/google/android/gms/internal/zzlg;->zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v0, v7, Lcom/google/android/gms/internal/zzlg;->zzcoi:Landroid/view/ViewGroup;

    iget-object v1, v7, Lcom/google/android/gms/internal/zzlg;->zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;

    const/4 v2, 0x0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lcom/google/android/gms/internal/zzlg;->zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzd(IIII)V

    iget-object v0, v7, Lcom/google/android/gms/internal/zzlg;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    .line 5000
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzli;->zzcoo:Z

    .line 0
    :cond_169
    iget-object v0, p0, Lcom/google/android/gms/internal/zzez;->zzbiz:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzez;->zzbiz:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzlg;->zzub()Lcom/google/android/gms/ads/internal/overlay/zzk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->setBackgroundColor(I)V

    goto/16 :goto_11

    :catch_186
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_fa

    .line 6000
    :cond_18a
    const-string/jumbo v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/google/android/gms/internal/zzlg;->zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_11

    iget-object v0, v7, Lcom/google/android/gms/internal/zzlg;->zzbwf:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzd(IIII)V

    goto/16 :goto_11

    .line 0
    :cond_19b
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzlg;->zzub()Lcom/google/android/gms/ads/internal/overlay/zzk;

    move-result-object v8

    if-nez v8, :cond_1a6

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzh(Lcom/google/android/gms/internal/zzlh;)V

    goto/16 :goto_11

    :cond_1a6
    const-string/jumbo v1, "click"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d8

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "x"

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/gms/internal/zzez;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v1, "y"

    const/4 v3, 0x0

    invoke-static {v0, p2, v1, v3}, Lcom/google/android/gms/internal/zzez;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    int-to-float v5, v2

    int-to-float v6, v3

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzd(Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_11

    :cond_1d8
    const-string/jumbo v1, "currentTime"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21e

    const-string/jumbo v0, "time"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1f4

    const-string/jumbo v0, "Time parameter missing from currentTime video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_1f4
    :try_start_1f4
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v8, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->seekTo(I)V
    :try_end_1ff
    .catch Ljava/lang/NumberFormatException; {:try_start_1f4 .. :try_end_1ff} :catch_201

    goto/16 :goto_11

    :catch_201
    move-exception v1

    const-string/jumbo v1, "Could not parse time parameter from currentTime video GMSG: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_218

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_213
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_218
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_213

    :cond_21e
    const-string/jumbo v1, "hide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22d

    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->setVisibility(I)V

    goto/16 :goto_11

    :cond_22d
    const-string/jumbo v1, "load"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23b

    invoke-virtual {v8}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzlv()V

    goto/16 :goto_11

    :cond_23b
    const-string/jumbo v1, "mimetype"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_252

    const-string/jumbo v0, "mimetype"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->setMimeType(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_252
    const-string/jumbo v1, "muted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_274

    const-string/jumbo v0, "muted"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26f

    invoke-virtual {v8}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzno()V

    goto/16 :goto_11

    :cond_26f
    invoke-virtual {v8}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zznp()V

    goto/16 :goto_11

    :cond_274
    const-string/jumbo v1, "pause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_282

    invoke-virtual {v8}, Lcom/google/android/gms/ads/internal/overlay/zzk;->pause()V

    goto/16 :goto_11

    :cond_282
    const-string/jumbo v1, "play"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_290

    invoke-virtual {v8}, Lcom/google/android/gms/ads/internal/overlay/zzk;->play()V

    goto/16 :goto_11

    :cond_290
    const-string/jumbo v1, "show"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29f

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->setVisibility(I)V

    goto/16 :goto_11

    :cond_29f
    const-string/jumbo v1, "src"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b6

    const-string/jumbo v0, "src"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzbw(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_2b6
    const-string/jumbo v1, "touchMove"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e8

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "dx"

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/gms/internal/zzez;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "dy"

    const/4 v3, 0x0

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/internal/zzez;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v8, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(FF)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzez;->zzbja:Z

    if-nez v0, :cond_11

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->zzuh()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzob()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzez;->zzbja:Z

    goto/16 :goto_11

    :cond_2e8
    const-string/jumbo v1, "volume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32a

    const-string/jumbo v0, "volume"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_304

    const-string/jumbo v0, "Level parameter missing from volume video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_304
    :try_start_304
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v8, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zza(F)V
    :try_end_30b
    .catch Ljava/lang/NumberFormatException; {:try_start_304 .. :try_end_30b} :catch_30d

    goto/16 :goto_11

    :catch_30d
    move-exception v1

    const-string/jumbo v1, "Could not parse volume parameter from volume video GMSG: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_324

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_31f
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_324
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_31f

    :cond_32a
    const-string/jumbo v1, "watermark"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_338

    invoke-virtual {v8}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzon()V

    goto/16 :goto_11

    :cond_338
    const-string/jumbo v1, "Unknown video action: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_34e

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_349
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_34e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_349
.end method
