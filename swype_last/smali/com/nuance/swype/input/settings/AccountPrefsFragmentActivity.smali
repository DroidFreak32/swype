.class public Lcom/nuance/swype/input/settings/AccountPrefsFragmentActivity;
.super Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;
.source "AccountPrefsFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 8
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 9
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefsFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 10
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefsFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 11
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefsFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 15
    :cond_18
    if-nez p1, :cond_31

    .line 16
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefsFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    invoke-direct {v2}, Lcom/nuance/swype/input/settings/AccountPrefsFragment;-><init>()V

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 20
    :cond_31
    return-void
.end method
