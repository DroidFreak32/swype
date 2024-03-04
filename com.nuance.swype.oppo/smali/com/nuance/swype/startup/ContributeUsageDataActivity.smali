.class public Lcom/nuance/swype/startup/ContributeUsageDataActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "ContributeUsageDataActivity.java"


# instance fields
.field private acceptButton:Landroid/widget/Button;

.field private acceptButtonListener:Landroid/view/View$OnClickListener;

.field private declineButton:Landroid/widget/Button;

.field private declineButtonListener:Landroid/view/View$OnClickListener;

.field private imeApp:Lcom/nuance/swype/input/IMEApplication;

.field private settings:Lcom/nuance/swype/input/AppPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    .line 76
    new-instance v0, Lcom/nuance/swype/startup/ContributeUsageDataActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ContributeUsageDataActivity$1;-><init>(Lcom/nuance/swype/startup/ContributeUsageDataActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->declineButtonListener:Landroid/view/View$OnClickListener;

    .line 84
    new-instance v0, Lcom/nuance/swype/startup/ContributeUsageDataActivity$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ContributeUsageDataActivity$2;-><init>(Lcom/nuance/swype/startup/ContributeUsageDataActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->acceptButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/startup/ContributeUsageDataActivity;)Lcom/nuance/swype/input/AppPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/ContributeUsageDataActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->settings:Lcom/nuance/swype/input/AppPreferences;

    return-object v0
.end method


# virtual methods
.method final doShowDialog$13462e()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->showDialog(I)V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->finish()V

    .line 45
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 40
    iget-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->settings:Lcom/nuance/swype/input/AppPreferences;

    .line 41
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_template_dtc:I

    sget v2, Lcom/nuance/swype/input/R$layout;->startup_contribute_usage_data:I

    sget v3, Lcom/nuance/swype/input/R$string;->usage_statistics_log_title:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->loadTemplateToContentView(III)V

    sget v0, Lcom/nuance/swype/input/R$id;->decline:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->declineButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->declineButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->declineButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nuance/swype/input/R$id;->accept:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->acceptButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->acceptButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->acceptButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->getOptIn()Ljava/lang/String;

    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->getOptIn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v6, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    sget v0, Lcom/nuance/swype/input/R$id;->opt_in:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->settings:Lcom/nuance/swype/input/AppPreferences;

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->GettingStarted:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p1, p0}, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->doCreateDialog(ILandroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected final onSkip$13462e()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 63
    iget v1, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->startFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_0

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "result_data"

    iget-object v2, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->resultData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v3, v0}, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->setResult(ILandroid/content/Intent;)V

    .line 68
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nuance/swype/startup/GettingStartedActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->finish()V

    .line 70
    return-void
.end method
