.class public Lcom/nuance/swype/input/settings/LanguageUpdateActivity;
.super Landroid/app/ListActivity;
.source "LanguageUpdateActivity.java"


# static fields
.field protected static final CONNECTION_DIALOG:I = 0x2

.field protected static final REMOVE_LANGUAGE_DIALOG:I = 0x1

.field protected static final TIMEOUT_DIALOG:I = 0x3


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/LanguageUpdate;->onActivityResult(IILandroid/content/Intent;)V

    .line 100
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v0, Lcom/nuance/swype/input/R$layout;->language_download_list:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->setContentView(I)V

    .line 25
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/nuance/swype/input/settings/LanguageUpdateActivity$1;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdateActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    .line 55
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 104
    packed-switch p1, :pswitch_data_0

    .line 115
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/settings/LanguageUpdate;->createRemoveLanguageDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->createConnectDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->timeoutDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->onDestroy()V

    .line 88
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 92
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/settings/LanguageUpdate;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 94
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 75
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->onPause()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->onResume()V

    .line 70
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->onStart()V

    .line 64
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->onStop()V

    .line 82
    return-void
.end method
