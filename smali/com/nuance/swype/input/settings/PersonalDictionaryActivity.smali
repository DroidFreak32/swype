.class public Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;
.super Landroid/app/ListActivity;
.source "PersonalDictionaryActivity.java"


# static fields
.field protected static final DELETE_DIALOG:I = 0x1


# instance fields
.field private final confirmDeletions:Landroid/view/View$OnClickListener;

.field private pd:Lcom/nuance/swype/input/settings/PersonalDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 15
    new-instance v0, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity$1;-><init>(Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;->confirmDeletions:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance v0, Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/PersonalDictionary;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;->confirmDeletions:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/settings/PersonalDictionary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;->setContentView(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 51
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/settings/PersonalDictionary;->onListItemClick(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 57
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/settings/PersonalDictionary;->prepareDialog(Landroid/app/Dialog;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->onResume()V

    .line 36
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/PersonalDictionary;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method
