.class public Lcom/nuance/swype/startup/CustomWebviewActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "CustomWebviewActivity.java"


# instance fields
.field private acceptEulaButtonListener:Landroid/view/View$OnClickListener;

.field private cancelEulaButtonListener:Landroid/view/View$OnClickListener;

.field private eulaText:Ljava/lang/String;

.field private eulaUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    .line 45
    new-instance v0, Lcom/nuance/swype/startup/CustomWebviewActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/CustomWebviewActivity$1;-><init>(Lcom/nuance/swype/startup/CustomWebviewActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/CustomWebviewActivity;->acceptEulaButtonListener:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v0, Lcom/nuance/swype/startup/CustomWebviewActivity$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/CustomWebviewActivity$2;-><init>(Lcom/nuance/swype/startup/CustomWebviewActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/CustomWebviewActivity;->cancelEulaButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    iget-object v0, p0, Lcom/nuance/swype/startup/CustomWebviewActivity;->resultData:Landroid/os/Bundle;

    const-string v1, "PROP_EULATITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/CustomWebviewActivity;->title:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/nuance/swype/startup/CustomWebviewActivity;->resultData:Landroid/os/Bundle;

    const-string v1, "PROP_EULATEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/CustomWebviewActivity;->eulaText:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/nuance/swype/startup/CustomWebviewActivity;->resultData:Landroid/os/Bundle;

    const-string v1, "PROP_EULAURL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/CustomWebviewActivity;->eulaUrl:Ljava/lang/String;

    .line 30
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_template:I

    sget v1, Lcom/nuance/swype/input/R$layout;->startup_fallbackwebview:I

    iget-object v2, p0, Lcom/nuance/swype/startup/CustomWebviewActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/startup/CustomWebviewActivity;->loadTemplateToContentView(IILjava/lang/String;)V

    sget v0, Lcom/nuance/swype/input/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/CustomWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    new-instance v1, Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;

    iget-object v2, p0, Lcom/nuance/swype/startup/CustomWebviewActivity;->eulaText:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/nuance/swype/startup/CustomWebviewActivity;->eulaUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swype/startup/CustomWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->ok_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/CustomWebviewActivity;->acceptEulaButtonListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/startup/CustomWebviewActivity;->setupPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    invoke-virtual {p0}, Lcom/nuance/swype/startup/CustomWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->cancel_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/CustomWebviewActivity;->cancelEulaButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/startup/CustomWebviewActivity;->setupNegativeButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method
