.class public Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$ConnectDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "AddonDictionariesPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment$ConnectDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .line 108
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->createConnectDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
