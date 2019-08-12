.class public Lcom/nuance/swype/input/settings/LanguageUpdateFragment;
.super Lcom/nuance/swype/input/settings/ActionbarListFragment;
.source "LanguageUpdateFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/LanguageUpdateFragment$TimeoutDialog;,
        Lcom/nuance/swype/input/settings/LanguageUpdateFragment$ConnectDialog;,
        Lcom/nuance/swype/input/settings/LanguageUpdateFragment$RemoveLanguageDialog;
    }
.end annotation


# instance fields
.field protected delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;-><init>()V

    .line 131
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 28
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$1;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdateFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    .line 62
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/LanguageUpdate;->onActivityResult(IILandroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    sget v0, Lcom/nuance/swype/input/R$layout;->language_download_list:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->onDestroy()V

    .line 99
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 109
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 110
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/settings/LanguageUpdate;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 111
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onPause()V

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->onPause()V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->onResume()V

    .line 81
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onStart()V

    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->onStart()V

    .line 75
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onStop()V

    .line 92
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->onStop()V

    .line 93
    return-void
.end method
