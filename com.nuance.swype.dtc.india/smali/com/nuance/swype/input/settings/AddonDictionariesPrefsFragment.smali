.class public Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarListFragment;
.source "AddonDictionariesPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$TimeoutDialog;,
        Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$ConnectDialog;,
        Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$RemoveDictionaryDialog;
    }
.end annotation


# instance fields
.field protected delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 20
    new-instance v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$1;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .line 44
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    .line 45
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 86
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 88
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onPause()V

    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->onPause()V

    .line 71
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->onResume()V

    .line 65
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onStart()V

    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->onStart()V

    .line 59
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onStop()V

    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->onStop()V

    .line 77
    return-void
.end method
