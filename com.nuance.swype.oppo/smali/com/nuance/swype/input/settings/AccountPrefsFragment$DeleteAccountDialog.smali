.class public Lcom/nuance/swype/input/settings/AccountPrefsFragment$DeleteAccountDialog;
.super Landroid/app/DialogFragment;
.source "AccountPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AccountPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteAccountDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefsFragment$DeleteAccountDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/AccountPrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AccountPrefs;

    .line 95
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->createDeleteAccountDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
