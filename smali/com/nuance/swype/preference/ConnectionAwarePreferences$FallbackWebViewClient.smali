.class public final Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ConnectionAwarePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/preference/ConnectionAwarePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FallbackWebViewClient"
.end annotation


# instance fields
.field private cachedContent:Ljava/lang/String;

.field private isUsingCache:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cachedContent"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;->cachedContent:Ljava/lang/String;

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;->cachedContent:Ljava/lang/String;

    return-object v0
.end method

.method private loadCachedPage(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 100
    iget-boolean v1, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;->isUsingCache:Z

    if-nez v1, :cond_0

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;->isUsingCache:Z

    .line 102
    new-instance v0, Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient$1;-><init>(Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;Landroid/webkit/WebView;)V

    .line 107
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 109
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 127
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;->loadCachedPage(Landroid/webkit/WebView;)V

    .line 123
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;->loadCachedPage(Landroid/webkit/WebView;)V

    .line 116
    const/4 v0, 0x0

    return v0
.end method
