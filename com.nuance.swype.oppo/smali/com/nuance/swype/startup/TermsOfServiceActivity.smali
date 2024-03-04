.class public Lcom/nuance/swype/startup/TermsOfServiceActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "TermsOfServiceActivity.java"


# instance fields
.field private acceptButton:Landroid/widget/Button;

.field private acceptTosButtonListener:Landroid/view/View$OnClickListener;

.field private declineButton:Landroid/widget/Button;

.field private declineButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    .line 68
    new-instance v0, Lcom/nuance/swype/startup/TermsOfServiceActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/TermsOfServiceActivity$1;-><init>(Lcom/nuance/swype/startup/TermsOfServiceActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity;->declineButtonListener:Landroid/view/View$OnClickListener;

    .line 76
    new-instance v0, Lcom/nuance/swype/startup/TermsOfServiceActivity$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/TermsOfServiceActivity$2;-><init>(Lcom/nuance/swype/startup/TermsOfServiceActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity;->acceptTosButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method final doShowDialog$13462e()V
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/TermsOfServiceActivity;->showDialog(I)V

    .line 51
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/nuance/swype/startup/TermsOfServiceActivity;->finish()V

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_0
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_template_dtc:I

    sget v2, Lcom/nuance/swype/input/R$layout;->startup_terms_of_service:I

    sget v3, Lcom/nuance/swype/input/R$string;->terms_of_service:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swype/startup/TermsOfServiceActivity;->loadTemplateToContentView(III)V

    sget v0, Lcom/nuance/swype/input/R$id;->decline:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity;->declineButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity;->declineButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity;->declineButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nuance/swype/input/R$id;->accept:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity;->acceptButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity;->acceptButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity;->acceptTosButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nuance/swype/input/R$id;->tos_message:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->getTos()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->GettingStarted:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1, p0}, Lcom/nuance/swype/startup/TermsOfServiceActivity;->doCreateDialog(ILandroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected final onSkip$13462e()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 55
    iget v1, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity;->startFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_0

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "result_data"

    iget-object v2, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity;->resultData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v3, v0}, Lcom/nuance/swype/startup/TermsOfServiceActivity;->setResult(ILandroid/content/Intent;)V

    .line 60
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nuance/swype/startup/GettingStartedActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/TermsOfServiceActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lcom/nuance/swype/startup/TermsOfServiceActivity;->finish()V

    .line 62
    return-void
.end method
