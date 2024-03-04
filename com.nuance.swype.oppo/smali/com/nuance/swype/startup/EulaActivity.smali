.class public Lcom/nuance/swype/startup/EulaActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "EulaActivity.java"


# instance fields
.field private acceptEulaButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    .line 43
    new-instance v0, Lcom/nuance/swype/startup/EulaActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/EulaActivity$1;-><init>(Lcom/nuance/swype/startup/EulaActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/EulaActivity;->acceptEulaButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EulaActivity;->finish()V

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_template_one_button:I

    sget v2, Lcom/nuance/swype/input/R$layout;->startup_eula:I

    sget v3, Lcom/nuance/swype/input/R$string;->beta_eula_title:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swype/startup/EulaActivity;->loadTemplateToContentView(III)V

    sget v0, Lcom/nuance/swype/input/R$id;->eula_message:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->getEula()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EulaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->accept_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/EulaActivity;->acceptEulaButtonListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/startup/EulaActivity;->setupPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    goto :goto_0
.end method
