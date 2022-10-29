.class public Lcom/nuance/swype/input/settings/ActionbarFragment;
.super Landroid/support/v4/app/Fragment;
.source "ActionbarFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 26
    invoke-static {}, Lcom/nuance/swype/input/settings/SettingsV11;->isTablet720DP()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 27
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ActionbarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 28
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1a

    .line 29
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 30
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 33
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/ActionbarFragment;->setHasOptionsMenu(Z)V

    .line 16
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 21
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 37
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_20

    .line 38
    invoke-static {}, Lcom/nuance/swype/input/settings/SettingsV11;->isTablet720DP()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 39
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ActionbarFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 43
    :goto_16
    const/4 v0, 0x1

    .line 45
    :goto_17
    return v0

    .line 41
    :cond_18
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ActionbarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_16

    .line 45
    :cond_20
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_17
.end method
