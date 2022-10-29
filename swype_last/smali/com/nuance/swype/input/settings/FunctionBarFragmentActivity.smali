.class public Lcom/nuance/swype/input/settings/FunctionBarFragmentActivity;
.super Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;
.source "FunctionBarFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 10
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/FunctionBarFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 12
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/FunctionBarFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/FunctionBarFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 16
    :cond_18
    if-nez p1, :cond_31

    .line 17
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/FunctionBarFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/nuance/swype/input/settings/FunctionBarFragment;

    invoke-direct {v2}, Lcom/nuance/swype/input/settings/FunctionBarFragment;-><init>()V

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 21
    :cond_31
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;->onResume()V

    .line 26
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/FunctionBarFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-nez v0, :cond_27

    .line 28
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/FunctionBarFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showMainSettings()V

    .line 29
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/FunctionBarFragmentActivity;->finish()V

    .line 32
    :cond_27
    return-void
.end method
