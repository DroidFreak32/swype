.class public Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;
.super Landroid/app/DialogFragment;
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
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;-><init>()V

    .line 250
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 274
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doCancelDialog(I)V

    .line 275
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 276
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, "inProgress":Z
    if-eqz p1, :cond_0

    .line 257
    const-string v2, "progress_showing"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 261
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DIALOG_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doCreateDialog(ILandroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 263
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 265
    instance-of v2, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    move-object v2, v0

    .line 266
    check-cast v2, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->inProgress()V

    .line 268
    :cond_1
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 291
    .local v0, "d":Landroid/app/Dialog;
    instance-of v1, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->isProgressShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    check-cast v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    .end local v0    # "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->updateView()V

    .line 295
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 296
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 281
    .local v0, "d":Landroid/app/Dialog;
    instance-of v1, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    if-eqz v1, :cond_0

    .line 282
    const-string v1, "progress_showing"

    check-cast v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    .end local v0    # "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->isProgressShowing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 286
    return-void
.end method
