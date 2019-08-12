.class public Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;
.super Lcom/nuance/swype/input/settings/ActionbarListFragment;
.source "PersonalDictionaryFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$ConfirmDeletions;
    }
.end annotation


# instance fields
.field private final confirmDeletions:Landroid/view/View$OnClickListener;

.field protected pd:Lcom/nuance/swype/input/settings/PersonalDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;-><init>()V

    .line 17
    new-instance v0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$1;-><init>(Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->confirmDeletions:Landroid/view/View$OnClickListener;

    .line 57
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance v0, Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nuance/swype/input/settings/PersonalDictionary;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    .line 32
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->confirmDeletions:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/nuance/swype/input/settings/PersonalDictionary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/settings/PersonalDictionary;->onListItemClick(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onResume()V

    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->onResume()V

    .line 44
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/PersonalDictionary;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method
