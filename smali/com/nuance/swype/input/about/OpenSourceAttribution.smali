.class public Lcom/nuance/swype/input/about/OpenSourceAttribution;
.super Landroid/app/Activity;
.source "OpenSourceAttribution.java"


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
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/swype/input/about/OpenSourceAttribution;->webView:Landroid/webkit/WebView;

    .line 21
    iget-object v1, p0, Lcom/nuance/swype/input/about/OpenSourceAttribution;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 22
    iget-object v1, p0, Lcom/nuance/swype/input/about/OpenSourceAttribution;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 23
    iget-object v1, p0, Lcom/nuance/swype/input/about/OpenSourceAttribution;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 25
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/OpenSourceAttribution;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->open_source_attribution_file:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/about/OpenSourceAttribution;->webView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nuance/swype/util/LocalizationUtils;->ASSETS_URL_PREFIX_HELPS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/nuance/swype/input/about/OpenSourceAttribution;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/about/OpenSourceAttribution;->setContentView(Landroid/view/View;)V

    .line 30
    return-void
.end method
