.class public Lcom/nuance/swype/input/settings/PersonalDictionaryFragmentActivity;
.super Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;
.source "PersonalDictionaryFragmentActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


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
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 12
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 16
    :cond_18
    if-nez p1, :cond_31

    .line 17
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;

    invoke-direct {v2}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;-><init>()V

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 21
    :cond_31
    return-void
.end method
