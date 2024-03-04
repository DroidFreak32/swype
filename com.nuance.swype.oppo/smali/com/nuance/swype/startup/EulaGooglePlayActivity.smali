.class public Lcom/nuance/swype/startup/EulaGooglePlayActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "EulaGooglePlayActivity.java"


# instance fields
.field private acceptEulaButtonListener:Landroid/view/View$OnClickListener;

.field private imeApp:Lcom/nuance/swype/input/IMEApplication;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    .line 67
    new-instance v0, Lcom/nuance/swype/startup/EulaGooglePlayActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/EulaGooglePlayActivity$1;-><init>(Lcom/nuance/swype/startup/EulaGooglePlayActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->acceptEulaButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->showSelectSwypeDialog()V

    .line 61
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 28
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->finish()V

    .line 43
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/startup/StartupActivity;->targetClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v6

    .line 33
    .local v6, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v6, v0, :cond_1

    const-class v0, Lcom/nuance/swype/startup/GettingStartedActivity;

    if-eq v6, v0, :cond_1

    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->startActivity(Landroid/content/Intent;)V

    .line 35
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->finish()V

    goto :goto_0

    .line 36
    :cond_1
    const-class v0, Lcom/nuance/swype/startup/GettingStartedActivity;

    if-ne v6, v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showSettings()V

    .line 38
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->finish()V

    goto :goto_0

    .line 40
    :cond_2
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_template_one_button_dtc:I

    sget v2, Lcom/nuance/swype/input/R$layout;->startup_eula:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->loadTemplateToContentView(IILjava/lang/String;)V

    sget v0, Lcom/nuance/swype/input/R$id;->eula_message:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->getEula()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->accept_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->acceptEulaButtonListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->setupPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onPause()V

    .line 56
    return-void
.end method
