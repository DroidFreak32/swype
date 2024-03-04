.class public Lcom/nuance/swype/startup/UsageOptInActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "UsageOptInActivity.java"


# instance fields
.field private acceptButtonListener:Landroid/view/View$OnClickListener;

.field private cancelButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/nuance/swype/startup/UsageOptInActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/UsageOptInActivity$1;-><init>(Lcom/nuance/swype/startup/UsageOptInActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/UsageOptInActivity;->cancelButtonListener:Landroid/view/View$OnClickListener;

    .line 80
    new-instance v0, Lcom/nuance/swype/startup/UsageOptInActivity$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/UsageOptInActivity$2;-><init>(Lcom/nuance/swype/startup/UsageOptInActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/UsageOptInActivity;->acceptButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method final doShowDialog$13462e()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/UsageOptInActivity;->showDialog(I)V

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 25
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/nuance/swype/startup/UsageOptInActivity;->finish()V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_data_opt_in:I

    sget v2, Lcom/nuance/swype/input/R$string;->usage_statistics_log_title:I

    invoke-virtual {p0, v0, v2}, Lcom/nuance/swype/startup/UsageOptInActivity;->loadTemplateToContentView(II)V

    sget v0, Lcom/nuance/swype/input/R$id;->cpi:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/UsageOptInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/startup/UsageOptInActivity;->activityOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v3, :cond_2

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/startup/UsageOptInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/nuance/swype/input/R$string;->cancel_button:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/startup/UsageOptInActivity;->cancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v2}, Lcom/nuance/swype/startup/UsageOptInActivity;->setupNegativeButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/nuance/swype/startup/UsageOptInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/nuance/swype/input/R$string;->accept_button:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/startup/UsageOptInActivity;->acceptButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swype/startup/UsageOptInActivity;->setupPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->getOptIn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v6, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    sget v0, Lcom/nuance/swype/input/R$id;->opt_in:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/UsageOptInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1, p0}, Lcom/nuance/swype/startup/UsageOptInActivity;->doCreateDialog(ILandroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected final onSkip$13462e()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 49
    iget v1, p0, Lcom/nuance/swype/startup/UsageOptInActivity;->startFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_0

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "result_data"

    iget-object v2, p0, Lcom/nuance/swype/startup/UsageOptInActivity;->resultData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v3, v0}, Lcom/nuance/swype/startup/UsageOptInActivity;->setResult(ILandroid/content/Intent;)V

    .line 56
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/startup/UsageOptInActivity;->finish()V

    .line 57
    return-void

    .line 54
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nuance/swype/startup/GettingStartedActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/UsageOptInActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
