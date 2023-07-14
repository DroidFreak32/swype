.class Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;
.super Landroid/webkit/WebViewClient;
.source "SocialNetworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/sns/SocialNetworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewClientCallback"
.end annotation


# instance fields
.field private logout:Z

.field final synthetic this$0:Lcom/nuance/sns/SocialNetworkActivity;


# direct methods
.method private constructor <init>(Lcom/nuance/sns/SocialNetworkActivity;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/sns/SocialNetworkActivity;Lcom/nuance/sns/SocialNetworkActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/sns/SocialNetworkActivity;
    .param p2, "x1"    # Lcom/nuance/sns/SocialNetworkActivity$1;

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;-><init>(Lcom/nuance/sns/SocialNetworkActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-static {}, Lcom/nuance/sns/SocialNetworkActivity;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageFinished url  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 337
    iget-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->logout:Z

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v0}, Lcom/nuance/sns/SocialNetworkActivity;->dismissSpinner()V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->logout:Z

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 325
    invoke-static {}, Lcom/nuance/sns/SocialNetworkActivity;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onPageStarted url  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 326
    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v1}, Lcom/nuance/sns/SocialNetworkActivity;->showSpinner()V

    .line 327
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 328
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "logout"

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/nuance/sns/SocialNetworkActivity;->sentAuthUrlRequest:Z

    .line 330
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->logout:Z

    .line 332
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-static {}, Lcom/nuance/sns/SocialNetworkActivity;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceivedError : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v0}, Lcom/nuance/sns/SocialNetworkActivity;->closing()V

    .line 321
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-static {}, Lcom/nuance/sns/SocialNetworkActivity;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldOverrideUrlLoading url  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$WebViewClientCallback;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v0, p2}, Lcom/nuance/sns/SocialNetworkActivity;->onHandleUrlCallback(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
