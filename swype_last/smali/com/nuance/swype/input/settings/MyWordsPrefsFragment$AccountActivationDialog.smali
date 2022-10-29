.class public Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "MyWordsPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountActivationDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;
    .registers 1

    .prologue
    .line 256
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 281
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doCancelDialog(I)V

    .line 282
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 283
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, "inProgress":Z
    if-eqz p1, :cond_a

    .line 264
    const-string/jumbo v2, "progress_showing"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 267
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 268
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "DIALOG_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 269
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 268
    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doCreateDialog(ILandroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 270
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 272
    instance-of v2, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    if-eqz v2, :cond_3d

    if-eqz v1, :cond_3d

    move-object v2, v0

    .line 273
    check-cast v2, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->inProgress()V

    .line 275
    :cond_3d
    return-object v0
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 298
    .local v0, "d":Landroid/app/Dialog;
    instance-of v1, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    .line 299
    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->isProgressShowing()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 300
    check-cast v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    .end local v0    # "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->updateView()V

    .line 302
    :cond_16
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 303
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 288
    .local v0, "d":Landroid/app/Dialog;
    instance-of v1, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    if-eqz v1, :cond_14

    .line 289
    const-string/jumbo v1, "progress_showing"

    check-cast v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    .line 290
    .end local v0    # "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->isProgressShowing()Z

    move-result v2

    .line 289
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    :cond_14
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 293
    return-void
.end method
