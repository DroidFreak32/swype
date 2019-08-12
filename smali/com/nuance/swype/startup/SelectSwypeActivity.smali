.class public Lcom/nuance/swype/startup/SelectSwypeActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "SelectSwypeActivity.java"


# instance fields
.field private selectSwypeButton:Landroid/widget/Button;

.field private showPopupTip:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002$7d0461d1(Lcom/nuance/swype/startup/SelectSwypeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/SelectSwypeActivity;

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/startup/SelectSwypeActivity;->showPopupTip:Z

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeActivity;->isSwypeSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeActivity;->showSelectSwypeDialog()V

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onBackPressed()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/startup/SelectSwypeActivity;->showPopupTip:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 26
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v0, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/SelectSwypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->startup_select_swype:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/SelectSwypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$layout;->startup_template_dtc_three_quarters:I

    sget v2, Lcom/nuance/swype/input/R$layout;->startup_select_swype:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/nuance/swype/startup/SelectSwypeActivity;->loadTemplateToContentView(IILjava/lang/String;)V

    .line 28
    sget v0, Lcom/nuance/swype/input/R$id;->select_swype_button:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/SelectSwypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nuance/swype/startup/SelectSwypeActivity;->selectSwypeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nuance/swype/startup/SelectSwypeActivity;->selectSwypeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/nuance/swype/startup/SelectSwypeActivity;->selectSwypeButton:Landroid/widget/Button;

    new-instance v1, Lcom/nuance/swype/startup/SelectSwypeActivity$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/startup/SelectSwypeActivity$1;-><init>(Lcom/nuance/swype/startup/SelectSwypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->SelectSwype:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onPause()V

    .line 36
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 50
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onResume()V

    .line 51
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeActivity;->isSwypeSelected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    iget-boolean v2, p0, Lcom/nuance/swype/startup/SelectSwypeActivity;->showPopupTip:Z

    if-eqz v2, :cond_0

    .line 54
    sget v2, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/startup/SelectSwypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "version":Ljava/lang/String;
    sget v2, Lcom/nuance/swype/input/R$string;->startup_enable_swype_toast:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/startup/SelectSwypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {p0, v0, v5, v2}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 66
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "version":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nuance/swype/startup/SelectSwypeActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/nuance/swype/startup/SelectSwypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->ChooseLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v3}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeActivity;->finish()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onWindowFocusChanged(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeActivity;->isSwypeSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/nuance/swype/startup/SelectSwypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->ChooseLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v3}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeActivity;->finish()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-boolean v2, p0, Lcom/nuance/swype/startup/SelectSwypeActivity;->showPopupTip:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 119
    sget v2, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/startup/SelectSwypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "version":Ljava/lang/String;
    sget v2, Lcom/nuance/swype/input/R$string;->startup_enable_swype_toast:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/startup/SelectSwypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {p0, v0, v5, v2}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 124
    iput-boolean v4, p0, Lcom/nuance/swype/startup/SelectSwypeActivity;->showPopupTip:Z

    goto :goto_0
.end method
