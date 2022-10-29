.class public Lcom/nuance/swype/input/about/MainAboutFragmentActivity;
.super Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;
.source "MainAboutFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 13
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/MainAboutFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/MainAboutFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 18
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/MainAboutFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/nuance/swype/input/about/MainAboutFragment;

    invoke-direct {v2}, Lcom/nuance/swype/input/about/MainAboutFragment;-><init>()V

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 21
    return-void
.end method
