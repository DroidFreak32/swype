.class public Lcom/nuance/swype/input/about/AboutWebViewActivity;
.super Landroid/app/Activity;
.source "AboutWebViewActivity.java"


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
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 19
    .local v3, "webView":Landroid/webkit/WebView;
    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 20
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 21
    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 23
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 24
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->finish()V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    const-string/jumbo v4, "about_url"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 30
    .local v1, "url":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->finish()V

    goto :goto_0

    .line 35
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->setContentView(Landroid/view/View;)V

    .line 39
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "urlString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->url_dragon_website:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 41
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->url_dragon_twitter:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 42
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->url_dragon_facebook:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 43
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->url_dragon_youtube:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    :cond_4
    sget v4, Lcom/nuance/swype/input/R$string;->dragon:I

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/about/AboutWebViewActivity;->setTitle(I)V

    goto :goto_0
.end method
