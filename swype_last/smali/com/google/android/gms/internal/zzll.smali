.class final Lcom/google/android/gms/internal/zzll;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/zzlh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzll$zza;
    }
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field private final zzajv:Lcom/google/android/gms/ads/internal/zzd;

.field private final zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field private zzaqg:Lcom/google/android/gms/internal/zzku;

.field private final zzaqm:Landroid/view/WindowManager;

.field private final zzbgd:Lcom/google/android/gms/internal/zzas;

.field private zzbrf:I

.field private zzbrg:I

.field private zzbri:I

.field private zzbrj:I

.field private zzbvq:Ljava/lang/String;

.field private zzcjw:Ljava/lang/Boolean;

.field private final zzcpc:Lcom/google/android/gms/internal/zzll$zza;

.field private final zzcpd:Lcom/google/android/gms/ads/internal/zzs;

.field private zzcpe:Lcom/google/android/gms/internal/zzli;

.field private zzcpf:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field private zzcpg:Z

.field private zzcph:Z

.field private zzcpi:Z

.field private zzcpj:Z

.field private zzcpk:I

.field private zzcpl:Z

.field zzcpm:Z

.field private zzcpn:Lcom/google/android/gms/internal/zzlm;

.field private zzcpo:Z

.field private zzcpp:Lcom/google/android/gms/internal/zzdi;

.field private zzcpq:Lcom/google/android/gms/internal/zzdi;

.field private zzcpr:Lcom/google/android/gms/internal/zzdi;

.field private zzcps:Lcom/google/android/gms/internal/zzdj;

.field private zzcpt:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzcpu:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field private zzcpv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzfd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzll$zza;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZLcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)V
    .registers 13

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzll;->zzcpl:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzll;->zzcpm:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzbvq:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzll;->zzbrg:I

    iput v1, p0, Lcom/google/android/gms/internal/zzll;->zzbrf:I

    iput v1, p0, Lcom/google/android/gms/internal/zzll;->zzbri:I

    iput v1, p0, Lcom/google/android/gms/internal/zzll;->zzbrj:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzll;->zzcpc:Lcom/google/android/gms/internal/zzll$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzll;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzll;->zzcpi:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzll;->zzcpk:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzll;->zzbgd:Lcom/google/android/gms/internal/zzas;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzll;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzll;->zzcpd:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzll;->zzajv:Lcom/google/android/gms/ads/internal/zzd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzaqm:Landroid/view/WindowManager;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzll;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5d

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_5d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-result-object v1

    iget-object v2, p5, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    .line 1000
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzkh;->zzg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzki;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/zzll;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzvj()V

    .line 2000
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_8e

    new-instance v0, Lcom/google/android/gms/internal/zzln;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzln;-><init>(Lcom/google/android/gms/internal/zzlh;)V

    const-string/jumbo v1, "googleAdsJsInterface"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzll;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    :cond_8e
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_a2

    const-string/jumbo v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzll;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string/jumbo v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzll;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_a2
    new-instance v0, Lcom/google/android/gms/internal/zzku;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzcpc:Lcom/google/android/gms/internal/zzll$zza;

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzll$zza;->zzcmv:Landroid/app/Activity;

    .line 0
    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p0, v2}, Lcom/google/android/gms/internal/zzku;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzaqg:Lcom/google/android/gms/internal/zzku;

    invoke-direct {p0, p6}, Lcom/google/android/gms/internal/zzll;->zzd(Lcom/google/android/gms/internal/zzdk;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzll;)V
    .registers 1

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private zzal(Z)V
    .registers 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "isVisible"

    if-eqz p1, :cond_17

    const-string/jumbo v0, "1"

    :goto_d
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "onAdVisibilityChanged"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzll;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_17
    const-string/jumbo v0, "0"

    goto :goto_d
.end method

.method private zzb(Ljava/lang/Boolean;)V
    .registers 4

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzll;->zzcjw:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    .line 11000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iput-object p1, v0, Lcom/google/android/gms/internal/zzjx;->zzcjw:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    return-void

    .line 0
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0

    .line 11000
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method static zzb$71c2c049(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZLcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzll;
    .registers 17

    new-instance v1, Lcom/google/android/gms/internal/zzll$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzll$zza;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzll;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzll;-><init>(Lcom/google/android/gms/internal/zzll$zza;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZLcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method

.method private zzd(Lcom/google/android/gms/internal/zzdk;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzvn()V

    new-instance v0, Lcom/google/android/gms/internal/zzdj;

    new-instance v1, Lcom/google/android/gms/internal/zzdk;

    const/4 v2, 0x1

    const-string/jumbo v3, "make_wv"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzll;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaur:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzdk;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdj;-><init>(Lcom/google/android/gms/internal/zzdk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcps:Lcom/google/android/gms/internal/zzdj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcps:Lcom/google/android/gms/internal/zzdj;

    .line 16000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzdj;->zzajn:Lcom/google/android/gms/internal/zzdk;

    .line 17000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1f
    iput-object p1, v0, Lcom/google/android/gms/internal/zzdk;->zzbej:Lcom/google/android/gms/internal/zzdk;

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_3b

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcps:Lcom/google/android/gms/internal/zzdj;

    .line 18000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzdj;->zzajn:Lcom/google/android/gms/internal/zzdk;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdg;->zzb(Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpq:Lcom/google/android/gms/internal/zzdi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcps:Lcom/google/android/gms/internal/zzdj;

    const-string/jumbo v1, "native:view_create"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzll;->zzcpq:Lcom/google/android/gms/internal/zzdi;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdi;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzll;->zzcpr:Lcom/google/android/gms/internal/zzdi;

    iput-object v5, p0, Lcom/google/android/gms/internal/zzll;->zzcpp:Lcom/google/android/gms/internal/zzdi;

    return-void

    .line 17000
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method private zzdb(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzll;->loadUrl(Ljava/lang/String;)V

    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    const-string/jumbo v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_c

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private zzdc(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 8000
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_7a

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzsq()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 9000
    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjx;->zzsq()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcjw:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcjw:Ljava/lang/Boolean;
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_52

    if-nez v0, :cond_2e

    :try_start_1f
    const-string/jumbo v0, "(function(){})()"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzll;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzll;->zzb(Ljava/lang/Boolean;)V
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_2e} :catch_48
    .catchall {:try_start_1f .. :try_end_2e} :catchall_52

    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_52

    .line 0
    :cond_2f
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzsq()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 10000
    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_55

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzll;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_5c

    :goto_47
    return-void

    .line 9000
    :catch_48
    move-exception v0

    const/4 v0, 0x0

    :try_start_4a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzll;->zzb(Ljava/lang/Boolean;)V

    goto :goto_2e

    :catchall_52
    move-exception v0

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_52

    throw v0

    .line 10000
    :cond_55
    :try_start_55
    const-string/jumbo v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_46

    :catchall_5c
    move-exception v0

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_5c

    throw v0

    .line 0
    :cond_5f
    const-string/jumbo v1, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_74

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_70
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzll;->zzdb(Ljava/lang/String;)V

    goto :goto_47

    :cond_74
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_70

    :cond_7a
    const-string/jumbo v1, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8b
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzll;->zzdb(Ljava/lang/String;)V

    goto :goto_47

    :cond_8f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8b
.end method

.method private zzsq()Ljava/lang/Boolean;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcjw:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private zzvg()Z
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 0
    .line 5000
    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzcpe:Lcom/google/android/gms/internal/zzli;

    .line 0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzli;->zzho()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzaqm:Landroid/view/WindowManager;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v2

    .line 6000
    iget-object v3, p0, Lcom/google/android/gms/internal/zzll;->zzcpc:Lcom/google/android/gms/internal/zzll$zza;

    .line 7000
    iget-object v3, v3, Lcom/google/android/gms/internal/zzll$zza;->zzcmv:Landroid/app/Activity;

    .line 0
    if-eqz v3, :cond_34

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-nez v4, :cond_6d

    :cond_34
    move v4, v2

    move v3, v1

    :goto_36
    iget v7, p0, Lcom/google/android/gms/internal/zzll;->zzbrf:I

    if-ne v7, v1, :cond_46

    iget v7, p0, Lcom/google/android/gms/internal/zzll;->zzbrg:I

    if-ne v7, v2, :cond_46

    iget v7, p0, Lcom/google/android/gms/internal/zzll;->zzbri:I

    if-ne v7, v3, :cond_46

    iget v7, p0, Lcom/google/android/gms/internal/zzll;->zzbrj:I

    if-eq v7, v4, :cond_a

    :cond_46
    iget v7, p0, Lcom/google/android/gms/internal/zzll;->zzbrf:I

    if-ne v7, v1, :cond_4e

    iget v7, p0, Lcom/google/android/gms/internal/zzll;->zzbrg:I

    if-eq v7, v2, :cond_89

    :cond_4e
    move v7, v5

    :goto_4f
    iput v1, p0, Lcom/google/android/gms/internal/zzll;->zzbrf:I

    iput v2, p0, Lcom/google/android/gms/internal/zzll;->zzbrg:I

    iput v3, p0, Lcom/google/android/gms/internal/zzll;->zzbri:I

    iput v4, p0, Lcom/google/android/gms/internal/zzll;->zzbrj:I

    new-instance v0, Lcom/google/android/gms/internal/zzhf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzhf;-><init>(Lcom/google/android/gms/internal/zzlh;)V

    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lcom/google/android/gms/internal/zzll;->zzaqm:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzhf;->zza(IIIIFI)V

    move v0, v7

    goto :goto_a

    :cond_6d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzkh;->zzh(Landroid/app/Activity;)[I

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v3

    aget v7, v4, v0

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v7

    aget v4, v4, v5

    invoke-virtual {v7, v6, v4}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    goto :goto_36

    :cond_89
    move v7, v0

    goto :goto_4f
.end method

.method private zzvi()V
    .registers 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcps:Lcom/google/android/gms/internal/zzdj;

    .line 12000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzdj;->zzajn:Lcom/google/android/gms/internal/zzdk;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzcpq:Lcom/google/android/gms/internal/zzdi;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "aeh2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    return-void
.end method

.method private zzvj()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpi:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    if-eqz v0, :cond_2b

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1e

    const-string/jumbo v0, "Disabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzvk()V

    :goto_1c
    monitor-exit v1

    return-void

    :cond_1e
    const-string/jumbo v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzvl()V

    goto :goto_1c

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_3b

    const-string/jumbo v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzvk()V

    goto :goto_1c

    :cond_3b
    const-string/jumbo v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzvl()V
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_28

    goto :goto_1c
.end method

.method private zzvk()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpj:Z

    if-nez v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzki;->zzp(Landroid/view/View;)Z

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpj:Z

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private zzvl()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpj:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzki;->zzo(Landroid/view/View;)Z

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpj:Z

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private zzvm()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpv:Ljava/util/Map;

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private zzvn()V
    .registers 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcps:Lcom/google/android/gms/internal/zzdj;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcps:Lcom/google/android/gms/internal/zzdj;

    .line 32000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzdj;->zzajn:Lcom/google/android/gms/internal/zzdk;

    .line 0
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjx;->zzsl()Lcom/google/android/gms/internal/zzde;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjx;->zzsl()Lcom/google/android/gms/internal/zzde;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzde;->zza(Lcom/google/android/gms/internal/zzdk;)Z

    goto :goto_4
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzvn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzaqg:Lcom/google/android/gms/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzku;->zztt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpf:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpf:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpf:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpf:Lcom/google/android/gms/ads/internal/overlay/zzd;

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpe:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzli;->reset()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcph:Z

    if-eqz v0, :cond_27

    monitor-exit v1

    :goto_26
    return-void

    :cond_27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgj()Lcom/google/android/gms/internal/zzfc;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzfc;->zzd(Lcom/google/android/gms/internal/zzlh;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzvm()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcph:Z

    const-string/jumbo v0, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpe:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzli;->zzuz()V

    monitor-exit v1

    goto :goto_26

    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public final evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    if-eqz p2, :cond_15

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_15
    monitor-exit v1

    :goto_16
    return-void

    :cond_17
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    monitor-exit v1

    goto :goto_16

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method protected final finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcph:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpe:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzli;->reset()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgj()Lcom/google/android/gms/internal/zzfc;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzfc;->zzd(Lcom/google/android/gms/internal/zzlh;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzvm()V

    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzbvq:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final getRequestedOrientation()I
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpk:I

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .registers 1

    return-object p0
.end method

.method public final isDestroyed()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcph:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    const-string/jumbo v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_c

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    const-string/jumbo v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_c

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isDestroyed()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_35

    move-result v0

    if-nez v0, :cond_38

    :try_start_9
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_e
    .catchall {:try_start_9 .. :try_end_c} :catchall_35

    :goto_c
    :try_start_c
    monitor-exit v1

    return-void

    :catch_e
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Could not call loadUrl. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_c

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_35

    throw v0

    :cond_38
    :try_start_38
    const-string/jumbo v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_35

    goto :goto_c
.end method

.method protected final onAttachedToWindow()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzaqg:Lcom/google/android/gms/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzku;->onAttachedToWindow()V

    :cond_11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpo:Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzll;->zzal(Z)V

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method protected final onDetachedFromWindow()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzaqg:Lcom/google/android/gms/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzku;->onDetachedFromWindow()V

    :cond_e
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_17

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzll;->zzal(Z)V

    return-void

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    goto :goto_19
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_19
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 23000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpe:Lcom/google/android/gms/internal/zzli;

    .line 0
    if-eqz v0, :cond_6

    .line 24000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpe:Lcom/google/android/gms/internal/zzli;

    .line 25000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzcos:Lcom/google/android/gms/internal/zzli$zzd;

    .line 0
    if-eqz v0, :cond_6

    .line 26000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpe:Lcom/google/android/gms/internal/zzli;

    .line 27000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzcos:Lcom/google/android/gms/internal/zzli$zzd;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzli$zzd;->zzem()V

    goto :goto_6
.end method

.method public final onGlobalLayout()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzvg()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->zzuh()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznz()V

    :cond_f
    return-void
.end method

.method protected final onMeasure(II)V
    .registers 12

    const v0, 0x7fffffff

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v7, 0x8

    const/high16 v6, -0x80000000

    iget-object v4, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v4

    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzll;->setMeasuredDimension(II)V

    monitor-exit v4

    :goto_18
    return-void

    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzll;->zzcpi:Z

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauu:Z

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauv:Z

    if-eqz v1, :cond_37

    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v4

    goto :goto_18

    :catchall_34
    move-exception v0

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_34

    throw v0

    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    if-eqz v1, :cond_54

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzaqm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzll;->setMeasuredDimension(II)V

    monitor-exit v4

    goto :goto_18

    :cond_54
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eq v2, v6, :cond_68

    if-ne v2, v8, :cond_104

    :cond_68
    move v2, v3

    :goto_69
    if-eq v5, v6, :cond_6d

    if-ne v5, v8, :cond_6e

    :cond_6d
    move v0, v1

    :cond_6e
    iget-object v5, p0, Lcom/google/android/gms/internal/zzll;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    if-gt v5, v2, :cond_7a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzll;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    if-le v2, v0, :cond_ee

    :cond_7a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpc:Lcom/google/android/gms/internal/zzll$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzll$zza;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/google/android/gms/internal/zzll;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzll;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v5, v5

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x67

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Not enough space to show ad. Needs "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dp, but only has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_e6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzll;->setVisibility(I)V

    :cond_e6
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzll;->setMeasuredDimension(II)V

    :goto_eb
    monitor-exit v4

    goto/16 :goto_18

    :cond_ee
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_f8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzll;->setVisibility(I)V

    :cond_f8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzll;->setMeasuredDimension(II)V
    :try_end_103
    .catchall {:try_start_37 .. :try_end_103} :catchall_34

    goto :goto_eb

    :cond_104
    move v2, v0

    goto/16 :goto_69
.end method

.method public final onPause()V
    .registers 3

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    .line 29000
    :cond_7
    const/16 v0, 0xb

    :try_start_9
    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_6

    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_6

    :catch_13
    move-exception v0

    const-string/jumbo v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public final onResume()V
    .registers 3

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    .line 30000
    :cond_7
    const/16 v0, 0xb

    :try_start_9
    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_6

    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_6

    :catch_13
    move-exception v0

    const-string/jumbo v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzbgd:Lcom/google/android/gms/internal/zzas;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzbgd:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzas;->zza(Landroid/view/MotionEvent;)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_10
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpc:Lcom/google/android/gms/internal/zzll$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzll$zza;->setBaseContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzaqg:Lcom/google/android/gms/internal/zzku;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzcpc:Lcom/google/android/gms/internal/zzll$zza;

    .line 19000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzll$zza;->zzcmv:Landroid/app/Activity;

    .line 20000
    iput-object v1, v0, Lcom/google/android/gms/internal/zzku;->zzcmv:Landroid/app/Activity;

    .line 0
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpt:Ljava/lang/ref/WeakReference;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setRequestedOrientation(I)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/zzll;->zzcpk:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpf:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpf:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget v2, p0, Lcom/google/android/gms/internal/zzll;->zzcpk:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzli;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/google/android/gms/internal/zzli;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzll;->zzcpe:Lcom/google/android/gms/internal/zzli;

    :cond_b
    return-void
.end method

.method public final stopLoading()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_6

    :catch_b
    move-exception v0

    const-string/jumbo v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzdk;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzaqg:Lcom/google/android/gms/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzku;->zztt()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzll;->setContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpf:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzll;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpi:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpg:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzbvq:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpk:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzki;->zzj(Lcom/google/android/gms/internal/zzlh;)Z

    const-string/jumbo v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzll;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpe:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzli;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzll;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzll;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpl:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpm:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpn:Lcom/google/android/gms/internal/zzlm;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzll;->zzd(Lcom/google/android/gms/internal/zzdk;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpo:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgj()Lcom/google/android/gms/internal/zzfc;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzfc;->zzd(Lcom/google/android/gms/internal/zzlh;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzvm()V

    monitor-exit v1

    return-void

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzll;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->requestLayout()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcd;Z)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzll;->zzcpo:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzll;->zzal(Z)V

    return-void

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzlm;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpn:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_f

    const-string/jumbo v0, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->e(Ljava/lang/String;)V

    monitor-exit v1

    :goto_e
    return-void

    :cond_f
    iput-object p1, p0, Lcom/google/android/gms/internal/zzll;->zzcpn:Lcom/google/android/gms/internal/zzlm;

    monitor-exit v1

    goto :goto_e

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpe:Lcom/google/android/gms/internal/zzli;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpe:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    :cond_9
    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzkh;->zzam(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_c

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzll;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string/jumbo v0, "Could not convert parameters to JSON."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    if-nez p2, :cond_7

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzll;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzaf(I)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzvi()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "closetype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzll;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzll;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzah(Z)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzll;->zzcpi:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzvj()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final zzai(Z)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpf:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpf:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzll;->zzcpe:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzli;->zzho()Z

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(ZZ)V

    :goto_12
    monitor-exit v1

    return-void

    :cond_14
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzll;->zzcpg:Z

    goto :goto_12

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public final zzaj(Z)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzll;->zzcpl:Z

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzll;->zzcpf:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpe:Lcom/google/android/gms/internal/zzli;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpe:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzli;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    :cond_9
    return-void
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    if-nez p2, :cond_7

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AFMA_ReceiveMessage(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Dispatching AFMA event: "

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4e

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_43
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzll;->zzdc(Ljava/lang/String;)V

    return-void

    :cond_4e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_43
.end method

.method public final zzc(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzll;->zzcpu:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzcy(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_8
    .catchall {:try_start_3 .. :try_end_6} :catchall_2f

    :goto_6
    :try_start_6
    monitor-exit v1

    return-void

    :catch_8
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Could not call loadUrl. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_6

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public final zzcz(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_8

    :try_start_5
    const-string/jumbo p1, ""

    :cond_8
    iput-object p1, p0, Lcom/google/android/gms/internal/zzll;->zzbvq:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public final zzdn()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzef()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpd:Lcom/google/android/gms/ads/internal/zzs;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpd:Lcom/google/android/gms/ads/internal/zzs;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzef()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public final zzeg()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpd:Lcom/google/android/gms/ads/internal/zzs;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpd:Lcom/google/android/gms/ads/internal/zzs;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzeg()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzll;->zzdc(Ljava/lang/String;)V

    return-void
.end method

.method public final zzoa()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpp:Lcom/google/android/gms/internal/zzdi;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcps:Lcom/google/android/gms/internal/zzdj;

    .line 13000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzdj;->zzajn:Lcom/google/android/gms/internal/zzdk;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzcpr:Lcom/google/android/gms/internal/zzdi;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "aes"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcps:Lcom/google/android/gms/internal/zzdj;

    .line 14000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzdj;->zzajn:Lcom/google/android/gms/internal/zzdk;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdg;->zzb(Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpp:Lcom/google/android/gms/internal/zzdi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcps:Lcom/google/android/gms/internal/zzdj;

    const-string/jumbo v1, "native:view_show"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzll;->zzcpp:Lcom/google/android/gms/internal/zzdi;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdi;)V

    :cond_2a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzll;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzll;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzou()Z
    .registers 7

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcps:Lcom/google/android/gms/internal/zzdj;

    .line 31000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzdj;->zzajn:Lcom/google/android/gms/internal/zzdk;

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzll;->zzcpq:Lcom/google/android/gms/internal/zzdi;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "aebb2"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpl:Z

    monitor-exit v1

    return v0

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public final zzuc()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;->zzvi()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzll;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzll;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzud()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x3

    .line 0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v2, "app_muted"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-static {}, Lcom/google/android/gms/internal/zzkh;->zzfa()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "app_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-static {}, Lcom/google/android/gms/internal/zzkh;->zzey()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "device_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzll;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 15000
    invoke-static {v3}, Lcom/google/android/gms/internal/zzkh;->zzak(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v3

    if-nez v3, :cond_47

    .line 0
    :cond_39
    :goto_39
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "volume"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzll;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 15000
    :cond_47
    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-eqz v4, :cond_39

    int-to-float v0, v3

    int-to-float v3, v4

    div-float/2addr v0, v3

    goto :goto_39
.end method

.method public final zzue()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpc:Lcom/google/android/gms/internal/zzll$zza;

    .line 21000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzll$zza;->zzcmv:Landroid/app/Activity;

    .line 0
    return-object v0
.end method

.method public final zzuf()Landroid/content/Context;
    .registers 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpc:Lcom/google/android/gms/internal/zzll$zza;

    .line 22000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzll$zza;->zzcpx:Landroid/content/Context;

    .line 0
    return-object v0
.end method

.method public final zzug()Lcom/google/android/gms/ads/internal/zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzajv:Lcom/google/android/gms/ads/internal/zzd;

    return-object v0
.end method

.method public final zzuh()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpf:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzui()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpu:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzuj()Lcom/google/android/gms/internal/zzli;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpe:Lcom/google/android/gms/internal/zzli;

    return-object v0
.end method

.method public final zzuk()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpg:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzul()Lcom/google/android/gms/internal/zzas;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzbgd:Lcom/google/android/gms/internal/zzas;

    return-object v0
.end method

.method public final zzum()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method public final zzun()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpi:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzuo()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string/jumbo v0, "Destroying WebView!"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzll$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzll$1;-><init>(Lcom/google/android/gms/internal/zzll;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final zzup()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpm:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzuq()Lcom/google/android/gms/internal/zzlg;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzur()Lcom/google/android/gms/internal/zzdi;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpr:Lcom/google/android/gms/internal/zzdi;

    return-object v0
.end method

.method public final zzus()Lcom/google/android/gms/internal/zzdj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcps:Lcom/google/android/gms/internal/zzdj;

    return-object v0
.end method

.method public final zzut()Lcom/google/android/gms/internal/zzlm;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzll;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpn:Lcom/google/android/gms/internal/zzlm;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzuu()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzaqg:Lcom/google/android/gms/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzku;->zzts()V

    return-void
.end method

.method public final zzuv()V
    .registers 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpr:Lcom/google/android/gms/internal/zzdi;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcps:Lcom/google/android/gms/internal/zzdj;

    .line 28000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzdj;->zzajn:Lcom/google/android/gms/internal/zzdk;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdg;->zzb(Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpr:Lcom/google/android/gms/internal/zzdi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcps:Lcom/google/android/gms/internal/zzdj;

    const-string/jumbo v1, "native:view_load"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzll;->zzcpr:Lcom/google/android/gms/internal/zzdi;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdi;)V

    :cond_18
    return-void
.end method

.method public final zzuw()Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzll;->zzcpt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method
