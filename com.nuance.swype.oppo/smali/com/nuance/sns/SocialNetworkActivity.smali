.class public abstract Lcom/nuance/sns/SocialNetworkActivity;
.super Landroid/app/Activity;
.source "SocialNetworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;
    }
.end annotation


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field protected activityPaused:Z

.field private authUrl:Ljava/lang/String;

.field private container:Landroid/widget/LinearLayout;

.field private redirectUrl:Ljava/lang/String;

.field private sentAuthUrlRequest:Z

.field private spinner:Landroid/app/ProgressDialog;

.field private webView:Landroid/webkit/WebView;

.field private webViewLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "SocialNetworkActivity"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/sns/SocialNetworkActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 227
    return-void
.end method

.method static synthetic access$102(Lcom/nuance/sns/SocialNetworkActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/sns/SocialNetworkActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nuance/sns/SocialNetworkActivity;->authUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nuance/sns/SocialNetworkActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/sns/SocialNetworkActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;->showSpinner()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/sns/SocialNetworkActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/sns/SocialNetworkActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/sns/SocialNetworkActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/sns/SocialNetworkActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;->dismissSpinner()V

    return-void
.end method

.method private destroyWebView()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 201
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->container:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 203
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    .line 206
    :cond_0
    return-void
.end method

.method private dismissSpinner()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 212
    :cond_0
    return-void
.end method

.method private sendAuthUrlRequest()V
    .locals 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->sentAuthUrlRequest:Z

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "startAuthUrlRequest(): already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->sentAuthUrlRequest:Z

    .line 117
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;->showSpinner()V

    .line 118
    new-instance v0, Lcom/nuance/sns/SocialNetworkActivity$2;

    invoke-direct {v0, p0}, Lcom/nuance/sns/SocialNetworkActivity$2;-><init>(Lcom/nuance/sns/SocialNetworkActivity;)V

    invoke-virtual {v0}, Lcom/nuance/sns/SocialNetworkActivity$2;->start()V

    .line 148
    return-void
.end method

.method private showSpinner()V
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 219
    .local v0, "attibutes":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected closing()V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;->dismissSpinner()V

    .line 194
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->finish()V

    .line 196
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0, v5}, Lcom/nuance/sns/SocialNetworkActivity;->requestWindowFeature(I)Z

    .line 34
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->container:Landroid/widget/LinearLayout;

    .line 35
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->container:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/sns/SocialNetworkActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    .line 40
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 41
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 42
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;-><init>(Lcom/nuance/sns/SocialNetworkActivity;Lcom/nuance/sns/SocialNetworkActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 43
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 44
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 45
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->container:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    .line 51
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    sget v1, Lcom/nuance/swype/input/R$string;->loading:I

    invoke-virtual {p0, v1}, Lcom/nuance/sns/SocialNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->spinner:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/nuance/sns/SocialNetworkActivity$1;

    invoke-direct {v1, p0}, Lcom/nuance/sns/SocialNetworkActivity$1;-><init>(Lcom/nuance/sns/SocialNetworkActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 60
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 92
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;->destroyWebView()V

    .line 93
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;->dismissSpinner()V

    .line 94
    return-void
.end method

.method protected abstract onHandleUrlCallback(Ljava/lang/String;)Z
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 82
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;->dismissSpinner()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->activityPaused:Z

    .line 85
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 86
    return-void
.end method

.method protected abstract onRequestAuthorizationUrl()Ljava/lang/String;
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->activityPaused:Z

    .line 76
    return-void
.end method

.method protected processAuthUrlResult()V
    .locals 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webViewLoaded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->authUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->authUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 169
    iget-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->activityPaused:Z

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webViewLoaded:Z

    .line 171
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity;->authUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->closing()V

    goto :goto_0
.end method

.method protected setRedirectUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nuance/sns/SocialNetworkActivity;->redirectUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method protected showAuthorzationLogin()V
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity;->sentAuthUrlRequest:Z

    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;->sendAuthUrlRequest()V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/sns/SocialNetworkActivity;->processAuthUrlResult()V

    goto :goto_0
.end method
