.class public Lcom/nuance/swype/input/about/AboutWebViewActivity;
.super Landroid/app/Activity;
.source "AboutWebViewActivity.java"


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/swype/input/about/AboutWebViewActivity;->webView:Landroid/webkit/WebView;

    .line 21
    iget-object v3, p0, Lcom/nuance/swype/input/about/AboutWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 22
    iget-object v3, p0, Lcom/nuance/swype/input/about/AboutWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 23
    iget-object v3, p0, Lcom/nuance/swype/input/about/AboutWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 25
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->finish()V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string v3, "about_url"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 32
    .local v1, "url":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->finish()V

    goto :goto_0

    .line 37
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/about/AboutWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 39
    iget-object v3, p0, Lcom/nuance/swype/input/about/AboutWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->setContentView(Landroid/view/View;)V

    .line 41
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "urlString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->url_dragon_website:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->url_dragon_twitter:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->url_dragon_facebook:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->url_dragon_youtube:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    :cond_4
    sget v3, Lcom/nuance/swype/input/R$string;->dragon:I

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->setTitle(I)V

    goto :goto_0
.end method
