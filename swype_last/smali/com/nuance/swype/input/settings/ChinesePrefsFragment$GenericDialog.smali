.class public Lcom/nuance/swype/input/settings/ChinesePrefsFragment$GenericDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ChinesePrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/ChinesePrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 297
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$GenericDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    .line 302
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$GenericDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "DIALOG_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$GenericDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 303
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$GenericDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 302
    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/settings/ChinesePrefs;->doCreateDialog(ILandroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
