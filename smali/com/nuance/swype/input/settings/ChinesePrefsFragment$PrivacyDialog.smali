.class public Lcom/nuance/swype/input/settings/ChinesePrefsFragment$PrivacyDialog;
.super Landroid/app/DialogFragment;
.source "ChinesePrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/ChinesePrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacyDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$PrivacyDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    .line 282
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 283
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$PrivacyDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    .line 275
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$PrivacyDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DIALOG_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$PrivacyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$PrivacyDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/settings/ChinesePrefs;->doCreateDialog(ILandroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
