.class final Lcom/localytics/android/InboxWebViewController$InboxWebViewClient;
.super Lcom/localytics/android/MarketingWebView$MarketingWebViewClient;
.source "InboxWebViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/InboxWebViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InboxWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InboxWebViewController;


# direct methods
.method constructor <init>(Lcom/localytics/android/InboxWebViewController;Lcom/localytics/android/MarketingWebViewManager;)V
    .locals 0
    .param p2, "manager"    # Lcom/localytics/android/MarketingWebViewManager;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/localytics/android/InboxWebViewController$InboxWebViewClient;->this$0:Lcom/localytics/android/InboxWebViewController;

    .line 293
    invoke-direct {p0, p2}, Lcom/localytics/android/MarketingWebView$MarketingWebViewClient;-><init>(Lcom/localytics/android/MarketingWebViewManager;)V

    .line 294
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string/jumbo v1, "[InboxDetailFragment]: onPageFinished"

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 302
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController$InboxWebViewClient;->this$0:Lcom/localytics/android/InboxWebViewController;

    invoke-static {v1}, Lcom/localytics/android/InboxWebViewController;->access$500(Lcom/localytics/android/InboxWebViewController;)Lcom/localytics/android/JavaScriptClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/localytics/android/JavaScriptClient;->getJavaScriptBridge()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "javascript":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 304
    return-void
.end method
