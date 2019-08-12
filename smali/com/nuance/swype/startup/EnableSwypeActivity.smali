.class public Lcom/nuance/swype/startup/EnableSwypeActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "EnableSwypeActivity.java"


# instance fields
.field private enableSwypeButton:Landroid/widget/Button;

.field private showPopupTip:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EnableSwypeActivity;->isSwypeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EnableSwypeActivity;->showSelectSwypeDialog()V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/startup/EnableSwypeActivity;->showPopupTip:Z

    .line 42
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 24
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget v0, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/EnableSwypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->startup_enable_swype:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/EnableSwypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$layout;->startup_template_dtc_three_quarters:I

    sget v2, Lcom/nuance/swype/input/R$layout;->startup_enable_swype:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/nuance/swype/startup/EnableSwypeActivity;->loadTemplateToContentView(IILjava/lang/String;)V

    .line 26
    sget v0, Lcom/nuance/swype/input/R$id;->enable_swype_button:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/EnableSwypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nuance/swype/startup/EnableSwypeActivity;->enableSwypeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nuance/swype/startup/EnableSwypeActivity;->enableSwypeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/nuance/swype/startup/EnableSwypeActivity;->enableSwypeButton:Landroid/widget/Button;

    new-instance v1, Lcom/nuance/swype/startup/EnableSwypeActivity$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/startup/EnableSwypeActivity$1;-><init>(Lcom/nuance/swype/startup/EnableSwypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->EnableSwype:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onPause()V

    .line 34
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 48
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onResume()V

    .line 49
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EnableSwypeActivity;->isSwypeEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    iget-boolean v2, p0, Lcom/nuance/swype/startup/EnableSwypeActivity;->showPopupTip:Z

    if-eqz v2, :cond_0

    .line 51
    sget v2, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/startup/EnableSwypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "version":Ljava/lang/String;
    sget v2, Lcom/nuance/swype/input/R$string;->startup_enable_swype_toast:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/startup/EnableSwypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EnableSwypeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {p0, v0, v5, v2}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 64
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "version":Ljava/lang/String;
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/nuance/swype/startup/EnableSwypeActivity;->showPopupTip:Z

    .line 65
    return-void

    .line 59
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nuance/swype/startup/SelectSwypeActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/nuance/swype/startup/EnableSwypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->SelectSwype:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v3}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EnableSwypeActivity;->finish()V

    goto :goto_0
.end method
