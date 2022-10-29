.class public abstract Lcom/nuance/sns/SocialNetworkActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SocialNetworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;,
        Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;
    }
.end annotation


# static fields
.field private static final LOGOUT_SEG:Ljava/lang/String; = "logout"

.field protected static final PERMISSIONS_REQUEST_GET_ACCOUNTS:I = 0x3

.field protected static final PERMISSIONS_REQUEST_READ_CALL_LOG:I = 0x2

.field protected static final PERMISSIONS_REQUEST_READ_SMS:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "ScannerApp"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field protected final MAX_CALLLOG_COUNT:I

.field protected final MAX_GMAIL_COUNT:I

.field protected final MAX_SMS_COUNT:I

.field private activityPaused:Z

.field private authUrl:Ljava/lang/String;

.field private container:Landroid/widget/LinearLayout;

.field protected mScanner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScanner;",
            ">;"
        }
    .end annotation
.end field

.field protected mScannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;

.field protected scraperStatus:Lcom/nuance/sns/ScraperStatus;

.field protected sentAuthUrlRequest:Z

.field private spinner:Landroid/app/ProgressDialog;

.field private webView:Landroid/webkit/WebView;

.field protected webViewLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-string/jumbo v0, "SocialNetworkActivity"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/sns/SocialNetworkActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 76
    const/16 v0, 0xf0

    iput v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->MAX_SMS_COUNT:I

    .line 77
    const/16 v0, 0x32

    iput v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->MAX_GMAIL_COUNT:I

    .line 78
    const/16 v0, 0x3c

    iput v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->MAX_CALLLOG_COUNT:I

    return-void
.end method

.method static synthetic access$100()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/nuance/sns/SocialNetworkActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nuance/sns/SocialNetworkActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/sns/SocialNetworkActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nuance/sns/SocialNetworkActivity;->authUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nuance/sns/SocialNetworkActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/sns/SocialNetworkActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;->releaseScanner()V

    return-void
.end method

.method private destroySpinner()V
    .registers 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->dismissSpinner()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    .line 289
    return-void
.end method

.method private destroyWebView()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1d

    .line 266
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 267
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->container:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 268
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 269
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    .line 272
    :cond_1d
    return-void
.end method

.method private releaseScanner()V
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->mScanner:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    .line 459
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 461
    :cond_9
    return-void
.end method


# virtual methods
.method protected closing()V
    .registers 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_c

    .line 256
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->dismissSpinner()V

    .line 257
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->finish()V

    .line 259
    :cond_c
    return-void
.end method

.method protected dismissSpinner()V
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 279
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 281
    :cond_11
    return-void
.end method

.method public finish()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 453
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 454
    invoke-virtual {p0, v0, v0}, Lcom/nuance/sns/SocialNetworkActivity;->overridePendingTransition(II)V

    .line 455
    return-void
.end method

.method protected getStringDateNow()Ljava/lang/String;
    .registers 3

    .prologue
    .line 440
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStringLastRun()Ljava/lang/String;
    .registers 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->mScanner:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScanner;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScanner;->getLastRun()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 445
    :cond_1a
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->getStringDateNow()Ljava/lang/String;

    move-result-object v0

    .line 447
    :goto_1e
    return-object v0

    :cond_1f
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScanner;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScanner;->getLastRun()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method protected initWebView()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 93
    invoke-virtual {p0, v5}, Lcom/nuance/sns/SocialNetworkActivity;->requestWindowFeature(I)Z

    .line 94
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->container:Landroid/widget/LinearLayout;

    .line 95
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->container:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/sns/SocialNetworkActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    .line 100
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;-><init>(Lcom/nuance/sns/SocialNetworkActivity;Lcom/nuance/sns/SocialNetworkActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 103
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 106
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 107
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->container:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_c

    .line 86
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 88
    :cond_c
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getScannerService()Lcom/nuance/swypeconnect/ac/ACScannerService;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->mScannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 143
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;->destroyWebView()V

    .line 144
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;->destroySpinner()V

    .line 145
    return-void
.end method

.method protected onHandleUrlCallback(Ljava/lang/String;)Z
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 130
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 131
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->dismissSpinner()V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->activityPaused:Z

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_16

    .line 136
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 138
    :cond_16
    return-void
.end method

.method protected onRequestAuthorizationUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->activityPaused:Z

    .line 117
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    .line 118
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    const-string/jumbo v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/nuance/sns/SocialNetworkActivity$1;

    invoke-direct {v1, p0}, Lcom/nuance/sns/SocialNetworkActivity$1;-><init>(Lcom/nuance/sns/SocialNetworkActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 126
    return-void
.end method

.method protected processAuthUrlResult()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 216
    sget-object v0, Lcom/nuance/sns/SocialNetworkActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "processAuthUrlResult... authUrl:"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/nuance/sns/SocialNetworkActivity;->authUrl:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 217
    iget-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webViewLoaded:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1c

    .line 236
    :cond_1b
    :goto_1b
    return-void

    .line 226
    :cond_1c
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->authUrl:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 227
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->authUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_36

    .line 228
    iget-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->activityPaused:Z

    if-nez v0, :cond_1b

    .line 229
    iput-boolean v4, p0, Lcom/nuance/sns/SocialNetworkActivity;->webViewLoaded:Z

    .line 230
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity;->authUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1b

    .line 233
    :cond_36
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->closing()V

    goto :goto_1b
.end method

.method protected sendAuthUrlRequest()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 167
    sget-object v0, Lcom/nuance/sns/SocialNetworkActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "sendAuthUrlRequest..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 168
    iget-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->sentAuthUrlRequest:Z

    if-eqz v0, :cond_1b

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sendAuthUrlRequest(): already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1b
    iput-boolean v4, p0, Lcom/nuance/sns/SocialNetworkActivity;->sentAuthUrlRequest:Z

    .line 175
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->showSpinner()V

    .line 176
    new-instance v0, Lcom/nuance/sns/SocialNetworkActivity$2;

    invoke-direct {v0, p0}, Lcom/nuance/sns/SocialNetworkActivity$2;-><init>(Lcom/nuance/sns/SocialNetworkActivity;)V

    .line 206
    invoke-virtual {v0}, Lcom/nuance/sns/SocialNetworkActivity$2;->start()V

    .line 207
    return-void
.end method

.method protected showAuthorizationLogin()V
    .registers 5

    .prologue
    .line 242
    sget-object v0, Lcom/nuance/sns/SocialNetworkActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "showAuthorizationLogin..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 243
    iget-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->sentAuthUrlRequest:Z

    if-nez v0, :cond_16

    .line 244
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->sendAuthUrlRequest()V

    .line 248
    :goto_15
    return-void

    .line 246
    :cond_16
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->processAuthUrlResult()V

    goto :goto_15
.end method

.method protected showSpinner()V
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 296
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 298
    :cond_11
    return-void
.end method

.method protected startScanningService()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 400
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 401
    .local v1, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v0

    .line 402
    .local v0, "coreLibrary":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    iget-object v2, p0, Lcom/nuance/sns/SocialNetworkActivity;->mScannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/nuance/sns/SocialNetworkActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 403
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 404
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->isCreated()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 405
    :cond_34
    sget-object v2, Lcom/nuance/sns/SocialNetworkActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "CAN NOT DO SCANNING!"

    invoke-interface {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move v2, v3

    .line 421
    :goto_3d
    return v2

    .line 409
    :cond_3e
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 410
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 411
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getKoreanCoreInstance(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v2

    if-nez v2, :cond_68

    .line 412
    sget-object v2, Lcom/nuance/sns/SocialNetworkActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "Swype has no core engine for Korean."

    invoke-interface {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move v2, v3

    .line 413
    goto :goto_3d

    .line 415
    :cond_68
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/dlm/ACCoreInputDLM;->initializeACKoreanInput(Lcom/nuance/swype/connect/Connect;)V

    .line 416
    iget-object v2, p0, Lcom/nuance/sns/SocialNetworkActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACScanner;

    new-array v5, v4, [I

    const/4 v6, 0x2

    aput v6, v5, v3

    invoke-virtual {v2, v5}, Lcom/nuance/swypeconnect/ac/ACScanner;->setScanCore([I)V

    :goto_7f
    move v2, v4

    .line 421
    goto :goto_3d

    .line 418
    :cond_81
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/dlm/ACCoreInputDLM;->initializeACAlphaInput(Lcom/nuance/swype/connect/Connect;)V

    .line 419
    iget-object v2, p0, Lcom/nuance/sns/SocialNetworkActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACScanner;

    new-array v5, v4, [I

    aput v4, v5, v3

    invoke-virtual {v2, v5}, Lcom/nuance/swypeconnect/ac/ACScanner;->setScanCore([I)V

    goto :goto_7f
.end method

.method protected updateErrorStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V
    .registers 4
    .param p1, "statusPreferences"    # Lcom/nuance/sns/ScraperStatus;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 430
    const-string/jumbo v0, "failed"

    .line 431
    invoke-static {v0, p2}, Lcom/nuance/sns/ScraperStatus;->formatStatusValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {p1, p0, v0}, Lcom/nuance/sns/ScraperStatus;->setScrapStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method protected updateFinishedStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V
    .registers 4
    .param p1, "statusPreferences"    # Lcom/nuance/sns/ScraperStatus;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 435
    const-string/jumbo v0, "finished"

    .line 436
    invoke-static {v0, p2}, Lcom/nuance/sns/ScraperStatus;->formatStatusValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-virtual {p1, p0, v0}, Lcom/nuance/sns/ScraperStatus;->setScrapStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method protected updateWorkingStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V
    .registers 4
    .param p1, "statusPreferences"    # Lcom/nuance/sns/ScraperStatus;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 425
    const-string/jumbo v0, "working"

    .line 426
    invoke-static {v0, p2}, Lcom/nuance/sns/ScraperStatus;->formatStatusValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-virtual {p1, p0, v0}, Lcom/nuance/sns/ScraperStatus;->setScrapStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 427
    return-void
.end method
