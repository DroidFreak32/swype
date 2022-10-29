.class public Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;
.super Lcom/nuance/swype/input/settings/ActionbarListFragment;
.source "PersonalDictionaryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$ConfirmDeletions;
    }
.end annotation


# instance fields
.field private final confirmDeletions:Landroid/view/View$OnClickListener;

.field private pd:Lcom/nuance/swype/input/settings/PersonalDictionary;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;-><init>()V

    .line 15
    new-instance v0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$1;-><init>(Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->confirmDeletions:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;)Lcom/nuance/swype/input/settings/PersonalDictionary;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nuance/swype/input/settings/PersonalDictionary;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->confirmDeletions:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/nuance/swype/input/settings/PersonalDictionary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/settings/PersonalDictionary;->onListItemClick(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onResume()V

    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->onResume()V

    .line 42
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/PersonalDictionary;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarListFragment;->onStop()V

    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->onStop()V

    .line 48
    return-void
.end method
