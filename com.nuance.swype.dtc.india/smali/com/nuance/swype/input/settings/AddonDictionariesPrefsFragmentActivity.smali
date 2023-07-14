.class public Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragmentActivity;
.super Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;
.source "AddonDictionariesPrefsFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 10
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    invoke-direct {v2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;-><init>()V

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 21
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;->onResume()V

    .line 26
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showMainSettings()V

    .line 29
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragmentActivity;->finish()V

    .line 32
    :cond_0
    return-void
.end method
