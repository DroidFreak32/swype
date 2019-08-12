.class Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;
.super Landroid/webkit/WebViewClient;
.source "SocialNetworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/sns/SocialNetworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewClientCallback"
.end annotation


# instance fields
.field private handled:Z

.field final synthetic this$0:Lcom/nuance/sns/SocialNetworkActivity;


# direct methods
.method private constructor <init>(Lcom/nuance/sns/SocialNetworkActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/sns/SocialNetworkActivity;Lcom/nuance/sns/SocialNetworkActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/sns/SocialNetworkActivity;
    .param p2, "x1"    # Lcom/nuance/sns/SocialNetworkActivity$1;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;-><init>(Lcom/nuance/sns/SocialNetworkActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-static {v0}, Lcom/nuance/sns/SocialNetworkActivity;->access$400(Lcom/nuance/sns/SocialNetworkActivity;)V

    .line 268
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-static {v0}, Lcom/nuance/sns/SocialNetworkActivity;->access$200(Lcom/nuance/sns/SocialNetworkActivity;)V

    .line 256
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-static {v0}, Lcom/nuance/sns/SocialNetworkActivity;->access$300(Lcom/nuance/sns/SocialNetworkActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-static {v0}, Lcom/nuance/sns/SocialNetworkActivity;->access$300(Lcom/nuance/sns/SocialNetworkActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v0, p2}, Lcom/nuance/sns/SocialNetworkActivity;->onHandleUrlCallback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->handled:Z

    .line 259
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 262
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v0}, Lcom/nuance/sns/SocialNetworkActivity;->closing()V

    .line 245
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->handled:Z

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v0, p2}, Lcom/nuance/sns/SocialNetworkActivity;->onHandleUrlCallback(Ljava/lang/String;)Z

    move-result v0

    .line 237
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->handled:Z

    goto :goto_0
.end method
