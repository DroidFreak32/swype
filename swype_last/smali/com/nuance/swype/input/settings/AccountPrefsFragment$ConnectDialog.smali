.class public Lcom/nuance/swype/input/settings/AccountPrefsFragment$ConnectDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "AccountPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AccountPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$ConnectDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    .line 118
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->createConnectDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
