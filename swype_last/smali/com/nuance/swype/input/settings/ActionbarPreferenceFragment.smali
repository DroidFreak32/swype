.class public Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.super Lcom/android/support/v4/preference/PreferenceFragment;
.source "ActionbarPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/support/v4/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/support/v4/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    invoke-static {}, Lcom/nuance/swype/input/settings/SettingsV11;->isTablet720DP()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 45
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 46
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1a

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 51
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/android/support/v4/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 21
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/android/support/v4/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/android/support/v4/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 28
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_13

    .line 29
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 30
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 33
    :cond_13
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 55
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_20

    .line 56
    invoke-static {}, Lcom/nuance/swype/input/settings/SettingsV11;->isTablet720DP()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 57
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 61
    :goto_16
    const/4 v0, 0x1

    .line 63
    :goto_17
    return v0

    .line 59
    :cond_18
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_16

    .line 63
    :cond_20
    invoke-super {p0, p1}, Lcom/android/support/v4/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_17
.end method
