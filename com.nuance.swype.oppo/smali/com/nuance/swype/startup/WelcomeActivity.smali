.class public Lcom/nuance/swype/startup/WelcomeActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "WelcomeActivity.java"


# instance fields
.field private continueButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/nuance/swype/startup/WelcomeActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/WelcomeActivity$1;-><init>(Lcom/nuance/swype/startup/WelcomeActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/WelcomeActivity;->continueButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->setStartupTipShown()V

    .line 20
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_template_one_button:I

    sget v1, Lcom/nuance/swype/input/R$layout;->startup_welcome:I

    sget v2, Lcom/nuance/swype/input/R$string;->startup_header_1:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/startup/WelcomeActivity;->loadTemplateToContentView(III)V

    invoke-virtual {p0}, Lcom/nuance/swype/startup/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->continue_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/WelcomeActivity;->continueButtonListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/startup/WelcomeActivity;->setupPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    .line 21
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onPause()V

    .line 26
    return-void
.end method
