.class public Lcom/nuance/swype/input/settings/UpdatesFragment;
.super Lcom/android/support/v4/preference/PreferenceFragment;
.source "UpdatesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/UpdatesFragment$UnknownSourcesDialog;,
        Lcom/nuance/swype/input/settings/UpdatesFragment$ConnectDialog;
    }
.end annotation


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/Updates;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/support/v4/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/UpdatesFragment;)Lcom/nuance/swype/input/settings/Updates;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/UpdatesFragment;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment;->delegate:Lcom/nuance/swype/input/settings/Updates;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/android/support/v4/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/Updates;->onActivityResult(IILandroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/android/support/v4/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance v0, Lcom/nuance/swype/input/settings/UpdatesFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/UpdatesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/UpdatesFragment$1;-><init>(Lcom/nuance/swype/input/settings/UpdatesFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment;->delegate:Lcom/nuance/swype/input/settings/Updates;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/UpdatesFragment;->setHasOptionsMenu(Z)V

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->onDestroy()V

    .line 54
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->onPause()V

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->onPause()V

    .line 72
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->onResume()V

    .line 66
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->onStart()V

    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->onStart()V

    .line 60
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/settings/UpdatesFragment;->delegate:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->onStop()V

    .line 77
    invoke-super {p0}, Lcom/android/support/v4/preference/PreferenceFragment;->onStop()V

    .line 78
    return-void
.end method
