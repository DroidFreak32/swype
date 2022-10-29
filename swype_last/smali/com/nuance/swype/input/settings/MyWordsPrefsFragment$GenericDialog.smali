.class public Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$GenericDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "MyWordsPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$GenericDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 215
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$GenericDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "DIALOG_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$GenericDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 216
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$GenericDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 215
    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doCreateDialog(ILandroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
