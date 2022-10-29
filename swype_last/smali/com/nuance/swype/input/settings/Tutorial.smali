.class public Lcom/nuance/swype/input/settings/Tutorial;
.super Ljava/lang/Object;
.source "Tutorial.java"


# static fields
.field public static final EXTRA_HELP_URL:Ljava/lang/String; = "help_url"


# instance fields
.field private loadedUrl:Ljava/lang/String;

.field private final webView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$layout;->tutorial_webview:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/Tutorial;->webView:Landroid/view/View;

    .line 24
    iget-object v1, p0, Lcom/nuance/swype/input/settings/Tutorial;->webView:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->webview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 27
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/nuance/swype/input/settings/Tutorial;->webView:Landroid/view/View;

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    if-le v1, v5, :cond_3f

    iget-object v1, p0, Lcom/nuance/swype/input/settings/Tutorial;->webView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    if-gt v1, v5, :cond_5e

    .line 29
    :cond_3f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 30
    .local v0, "padding":I
    iget-object v1, p0, Lcom/nuance/swype/input/settings/Tutorial;->webView:Landroid/view/View;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/Tutorial;->webView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/Tutorial;->webView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 32
    .end local v0    # "padding":I
    :cond_5e
    return-void
.end method


# virtual methods
.method public getLoadedUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Tutorial;->loadedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Tutorial;->webView:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->webview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Tutorial;->webView:Landroid/view/View;

    return-object v0
.end method

.method public load(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Tutorial;->webView:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->webview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Tutorial;->loadedUrl:Ljava/lang/String;

    .line 41
    return-void
.end method
