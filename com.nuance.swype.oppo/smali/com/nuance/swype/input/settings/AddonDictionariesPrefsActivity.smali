.class public Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;
.super Landroid/app/ListActivity;
.source "AddonDictionariesPrefsActivity.java"


# static fields
.field protected static final CONNECTION_DIALOG:I = 0x2

.field protected static final REMOVE_DICTIONARY_DIALOG:I = 0x1

.field protected static final TIMEOUT_DIALOG:I = 0x3


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private createProgressBar(Landroid/app/Activity;)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "progressBar":Landroid/widget/ProgressBar;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 110
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->onActivityResult(IILandroid/content/Intent;)V

    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x2

    .line 29
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v1, Lcom/nuance/swype/input/R$layout;->language_download_list:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->setContentView(I)V

    .line 31
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 34
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 36
    invoke-direct {p0, p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->createProgressBar(Landroid/app/Activity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    new-instance v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity$1;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .line 64
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 126
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->createRemoveDictionaryDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->createConnectDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->timeoutDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 101
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 103
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->onPause()V

    .line 91
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->onResume()V

    .line 85
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->onStart()V

    .line 74
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->onStop()V

    .line 97
    return-void
.end method
