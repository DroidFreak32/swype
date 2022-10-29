.class public Lcom/nuance/swype/input/settings/ChinesePrefsFragment$ConnectDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ChinesePrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/ChinesePrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 326
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$ConnectDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    .line 331
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->createConnectDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
