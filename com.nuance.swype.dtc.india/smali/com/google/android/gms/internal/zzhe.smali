.class public final Lcom/google/android/gms/internal/zzhe;
.super Lcom/google/android/gms/internal/zzhf;

# interfaces
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaqm:Landroid/view/WindowManager;

.field private final zzbgf:Lcom/google/android/gms/internal/zzlh;

.field private final zzbrc:Lcom/google/android/gms/internal/zzcu;

.field zzbrd:Landroid/util/DisplayMetrics;

.field private zzbre:F

.field zzbrf:I

.field zzbrg:I

.field private zzbrh:I

.field zzbri:I

.field zzbrj:I

.field zzbrk:I

.field zzbrl:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlh;Landroid/content/Context;Lcom/google/android/gms/internal/zzcu;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhf;-><init>(Lcom/google/android/gms/internal/zzlh;)V

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrf:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrg:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbri:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrj:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrk:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrl:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhe;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhe;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhe;->zzbrc:Lcom/google/android/gms/internal/zzcu;

    const-string/jumbo v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzaqm:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .locals 10
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
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 0
    .line 5000
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrd:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzaqm:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzbrd:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzbrd:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/zzhe;->zzbre:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrh:I

    .line 6000
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzbrd:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzbrd:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrf:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzbrd:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzbrd:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrg:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzue()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrf:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbri:I

    iget v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrg:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrj:I

    .line 7000
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzdn()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrf:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrk:I

    iget v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrg:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrl:I

    .line 8000
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/zzhe;->zzbrf:I

    iget v2, p0, Lcom/google/android/gms/internal/zzhe;->zzbrg:I

    iget v3, p0, Lcom/google/android/gms/internal/zzhe;->zzbri:I

    iget v4, p0, Lcom/google/android/gms/internal/zzhe;->zzbrj:I

    iget v5, p0, Lcom/google/android/gms/internal/zzhe;->zzbre:F

    iget v6, p0, Lcom/google/android/gms/internal/zzhe;->zzbrh:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzhe;->zza(IIIIFI)V

    .line 10000
    new-instance v0, Lcom/google/android/gms/internal/zzhd$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzhd$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzbrc:Lcom/google/android/gms/internal/zzcu;

    .line 11000
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.DIAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "tel:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcu;->zza(Landroid/content/Intent;)Z

    move-result v1

    .line 12000
    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzhd$zza;->zzbqy:Z

    .line 10000
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzbrc:Lcom/google/android/gms/internal/zzcu;

    .line 13000
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "sms:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcu;->zza(Landroid/content/Intent;)Z

    move-result v1

    .line 14000
    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzhd$zza;->zzbqx:Z

    .line 10000
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzbrc:Lcom/google/android/gms/internal/zzcu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcu;->zzju()Z

    move-result v1

    .line 15000
    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzhd$zza;->zzbqz:Z

    .line 10000
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzbrc:Lcom/google/android/gms/internal/zzcu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcu;->zzjr()Z

    move-result v1

    .line 16000
    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzhd$zza;->zzbra:Z

    .line 17000
    iput-boolean v8, v0, Lcom/google/android/gms/internal/zzhd$zza;->zzbrb:Z

    .line 18000
    new-instance v1, Lcom/google/android/gms/internal/zzhd;

    invoke-direct {v1, v0, v7}, Lcom/google/android/gms/internal/zzhd;-><init>(Lcom/google/android/gms/internal/zzhd$zza;B)V

    .line 9000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    const-string/jumbo v2, "onDeviceFeaturesReceived"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhd;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzlh;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 19000
    new-array v0, v9, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzlh;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->mContext:Landroid/content/Context;

    aget v3, v0, v7

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhe;->mContext:Landroid/content/Context;

    aget v0, v0, v8

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzhe;->zze(II)V

    .line 20000
    invoke-static {v9}, Lcom/google/android/gms/internal/zzkd;->zzaz(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Dispatching Ready Event."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzum()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    .line 21000
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "js"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    const-string/jumbo v2, "onReadyEventReceived"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzlh;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    .line 6000
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzbrd:Landroid/util/DisplayMetrics;

    aget v3, v0, v7

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzhe;->zzbri:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzbrd:Landroid/util/DisplayMetrics;

    aget v0, v0, v8

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrj:I

    goto/16 :goto_0

    .line 7000
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0, v7, v7}, Lcom/google/android/gms/internal/zzlh;->measure(II)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrk:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhe;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbrl:I

    goto/16 :goto_1

    .line 21000
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error occured while dispatching ready Event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public final zze(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzk(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    :goto_0
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/zzhe;->zzbrk:I

    iget v2, p0, Lcom/google/android/gms/internal/zzhe;->zzbrl:I

    .line 1000
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "y"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v3, "width"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    const-string/jumbo v2, "onDefaultPositionReceived"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzlh;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    .line 2000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzbiu:Lcom/google/android/gms/internal/zzha;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzbiu:Lcom/google/android/gms/internal/zzha;

    .line 3000
    iput p1, v0, Lcom/google/android/gms/internal/zzha;->zzbqh:I

    iput p2, v0, Lcom/google/android/gms/internal/zzha;->zzbqi:I

    .line 0
    :cond_0
    return-void

    .line 1000
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error occured while dispatching default position."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
