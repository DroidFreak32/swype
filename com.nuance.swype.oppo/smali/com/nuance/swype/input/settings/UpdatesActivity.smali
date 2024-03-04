.class public Lcom/nuance/swype/input/settings/UpdatesActivity;
.super Landroid/preference/PreferenceActivity;
.source "UpdatesActivity.java"


# static fields
.field protected static final CONNECTION_DIALOG:I = 0x1

.field protected static final UNKNOWN_SOURCES_DIALOG:I = 0x2


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/Updates;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesActivity;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/Updates;->onActivityResult(IILandroid/content/Intent;)V

    .line 72
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    new-instance v0, Lcom/nuance/swype/input/settings/UpdatesActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/nuance/swype/input/settings/UpdatesActivity$1;-><init>(Lcom/nuance/swype/input/settings/UpdatesActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesActivity;->delegate:Lcom/nuance/swype/input/settings/Updates;

    .line 42
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 79
    packed-switch p1, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesActivity;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->createConnectDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesActivity;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->createUnknownSourcesDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesActivity;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->onPause()V

    .line 60
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesActivity;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->onResume()V

    .line 54
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesActivity;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->onStart()V

    .line 48
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesActivity;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->onStop()V

    .line 66
    return-void
.end method
