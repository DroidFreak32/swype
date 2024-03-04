.class public Lcom/nuance/swype/startup/ConnectTOSActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "ConnectTOSActivity.java"


# instance fields
.field private acceptTosButtonListener:Landroid/view/View$OnClickListener;

.field private cancelButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/nuance/swype/startup/ConnectTOSActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ConnectTOSActivity$1;-><init>(Lcom/nuance/swype/startup/ConnectTOSActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSActivity;->cancelButtonListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcom/nuance/swype/startup/ConnectTOSActivity$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ConnectTOSActivity$2;-><init>(Lcom/nuance/swype/startup/ConnectTOSActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSActivity;->acceptTosButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method final doShowDialog$13462e()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/ConnectTOSActivity;->showDialog(I)V

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 24
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ConnectTOSActivity;->finish()V

    .line 31
    :goto_0
    return-void

    .line 30
    :cond_0
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_tos:I

    sget v2, Lcom/nuance/swype/input/R$string;->terms_of_service_connect_title:I

    invoke-virtual {p0, v0, v2}, Lcom/nuance/swype/startup/ConnectTOSActivity;->loadTemplateToContentView(II)V

    sget v0, Lcom/nuance/swype/input/R$id;->cpi:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/ConnectTOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSActivity;->resultData:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSActivity;->resultData:Landroid/os/Bundle;

    const-string v3, "ui_page_ind"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSActivity;->resultData:Landroid/os/Bundle;

    const-string v3, "ui_page_ind"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/nuance/swype/startup/ConnectTOSActivity;->activityOrder:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSActivity;->activityOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v6, :cond_2

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    sget v0, Lcom/nuance/swype/input/R$id;->tos_message:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/ConnectTOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->getTos()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ConnectTOSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->accept_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/ConnectTOSActivity;->acceptTosButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1, v6}, Lcom/nuance/swype/startup/ConnectTOSActivity;->setupPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    invoke-virtual {p0}, Lcom/nuance/swype/startup/ConnectTOSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->cancel_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/ConnectTOSActivity;->cancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/startup/ConnectTOSActivity;->setupNegativeButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1, p0}, Lcom/nuance/swype/startup/ConnectTOSActivity;->doCreateDialog(ILandroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected final onSkip$13462e()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 49
    iget v1, p0, Lcom/nuance/swype/startup/ConnectTOSActivity;->startFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_0

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "result_data"

    iget-object v2, p0, Lcom/nuance/swype/startup/ConnectTOSActivity;->resultData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v3, v0}, Lcom/nuance/swype/startup/ConnectTOSActivity;->setResult(ILandroid/content/Intent;)V

    .line 56
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ConnectTOSActivity;->finish()V

    .line 57
    return-void

    .line 54
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nuance/swype/startup/GettingStartedActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/ConnectTOSActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
