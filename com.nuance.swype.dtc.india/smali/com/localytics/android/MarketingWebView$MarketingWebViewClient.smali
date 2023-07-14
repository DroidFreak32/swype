.class Lcom/localytics/android/MarketingWebView$MarketingWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MarketingWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MarketingWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarketingWebViewClient"
.end annotation


# instance fields
.field private mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingWebViewManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/localytics/android/MarketingWebViewManager;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/localytics/android/MarketingWebView$MarketingWebViewClient;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    .line 43
    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/localytics/android/MarketingWebView$MarketingWebViewClient;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/MarketingWebViewManager;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 56
    if-eqz v0, :cond_0

    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v1, "text/plain"

    const-string/jumbo v2, "UTF-8"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/localytics/android/MarketingWebView$MarketingWebViewClient;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    invoke-virtual {v0, p2}, Lcom/localytics/android/MarketingWebViewManager;->handleShouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
