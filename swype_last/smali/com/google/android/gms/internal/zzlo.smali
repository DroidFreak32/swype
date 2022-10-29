.class public Lcom/google/android/gms/internal/zzlo;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzbgf:Lcom/google/android/gms/internal/zzlh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlh;)V
    .registers 2

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlo;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    return-void
.end method

.method private static zza(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2

    instance-of v0, p0, Lcom/google/android/gms/internal/zzlh;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    check-cast p0, Lcom/google/android/gms/internal/zzlh;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzlh;->zzue()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzlh;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_8
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
    .registers 12

    .prologue
    const/4 v4, 0x1

    .line 0
    :try_start_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p6, :cond_56

    .line 1000
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/android/gms/internal/zzlo$6;

    invoke-direct {v2, p5, v3}, Lcom/google/android/gms/internal/zzlo$6;-><init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/google/android/gms/internal/zzlo$5;

    invoke-direct {v2, p5}, Lcom/google/android/gms/internal/zzlo$5;-><init>(Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzlo$4;

    invoke-direct {v1, p5}, Lcom/google/android/gms/internal/zzlo$4;-><init>(Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 0
    :goto_55
    return v4

    .line 2000
    :cond_56
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/android/gms/internal/zzlo$3;

    invoke-direct {v2, p4}, Lcom/google/android/gms/internal/zzlo$3;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/google/android/gms/internal/zzlo$2;

    invoke-direct {v2, p4}, Lcom/google/android/gms/internal/zzlo$2;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzlo$1;

    invoke-direct {v1, p4}, Lcom/google/android/gms/internal/zzlo$1;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_81
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_81} :catch_82

    goto :goto_55

    .line 0
    :catch_82
    move-exception v0

    const-string/jumbo v1, "Fail to display Dialog."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55
.end method


# virtual methods
.method public final onCloseWindow(Landroid/webkit/WebView;)V
    .registers 3

    instance-of v0, p1, Lcom/google/android/gms/internal/zzlh;

    if-nez v0, :cond_b

    const-string/jumbo v0, "Tried to close a WebView that wasn\'t an AdWebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzlh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->zzuh()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "Tried to close an AdWebView not associated with an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_a

    :cond_1a
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->close()V

    goto :goto_a
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x13

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "JS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Application Cache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    :goto_65
    return v0

    :cond_66
    sget-object v1, Lcom/google/android/gms/internal/zzlo$7;->zzcql:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_8e

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    :goto_78
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_65

    :pswitch_7d
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->e(Ljava/lang/String;)V

    goto :goto_78

    :pswitch_81
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_78

    :pswitch_85
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    goto :goto_78

    :pswitch_89
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    goto :goto_78

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_81
        :pswitch_85
        :pswitch_85
        :pswitch_89
    .end packed-switch
.end method

.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 8

    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlo;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 15

    const-wide/32 v0, 0x500000

    sub-long/2addr v0, p7

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_e

    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    :goto_d
    return-void

    :cond_e
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_26

    cmp-long v0, p5, v0

    if-gtz v0, :cond_23

    const-wide/32 v0, 0x100000

    cmp-long v0, p5, v0

    if-gtz v0, :cond_23

    :goto_1f
    invoke-interface {p9, p5, p6}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_d

    :cond_23
    const-wide/16 p5, 0x0

    goto :goto_1f

    :cond_26
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_3d

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, p3

    const-wide/32 v2, 0x100000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_3b
    :goto_3b
    move-wide p5, p3

    goto :goto_1f

    :cond_3d
    const-wide/32 v2, 0x100000

    sub-long/2addr v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_3b

    add-long/2addr p3, p5

    goto :goto_3b
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 0
    if-eqz p2, :cond_47

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlo;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzkh;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlo;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzkh;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_43
    move v0, v1

    .line 0
    :goto_44
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :cond_47
    return-void

    .line 3000
    :cond_48
    const/4 v0, 0x0

    goto :goto_44
.end method

.method public final onHideCustomView()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuh()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "Could not get ad overlay when hiding custom view."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :goto_e
    return-void

    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznu()V

    goto :goto_e
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 12

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 12

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 12

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 13

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 11

    const-wide/32 v0, 0x500000

    sub-long/2addr v0, p3

    const-wide/32 v2, 0x20000

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    const-wide/16 v0, 0x0

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    :goto_11
    return-void

    :cond_12
    invoke-interface {p5, v2, v3}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_11
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method protected final zza(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuh()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "Could not get ad overlay when showing custom view."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :goto_11
    return-void

    :cond_12
    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V

    goto :goto_11
.end method
