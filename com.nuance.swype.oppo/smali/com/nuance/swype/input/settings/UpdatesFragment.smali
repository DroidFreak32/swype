.class public Lcom/nuance/swype/input/settings/UpdatesFragment;
.super Landroid/preference/PreferenceFragment;
.source "UpdatesFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/UpdatesFragment$UnknownSourcesDialog;,
        Lcom/nuance/swype/input/settings/UpdatesFragment$ConnectDialog;
    }
.end annotation


# instance fields
.field protected delegate:Lcom/nuance/swype/input/settings/Updates;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 98
    return-void
.end method


# virtual methods
.method protected getDelegate()Lcom/nuance/swype/input/settings/Updates;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment;->delegate:Lcom/nuance/swype/input/settings/Updates;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/Updates;->onActivityResult(IILandroid/content/Intent;)V

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance v0, Lcom/nuance/swype/input/settings/UpdatesFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/UpdatesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/UpdatesFragment$1;-><init>(Lcom/nuance/swype/input/settings/UpdatesFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment;->delegate:Lcom/nuance/swype/input/settings/Updates;

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 53
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->onPause()V

    .line 71
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->onResume()V

    .line 65
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->onStart()V

    .line 59
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->onStop()V

    .line 76
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 77
    return-void
.end method
