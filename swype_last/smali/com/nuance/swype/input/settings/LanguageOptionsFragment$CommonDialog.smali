.class public Lcom/nuance/swype/input/settings/LanguageOptionsFragment$CommonDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "LanguageOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/LanguageOptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 179
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$CommonDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    iget-object v1, v2, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    .line 180
    .local v1, "delegate":Lcom/nuance/swype/input/settings/LanguageOptions;
    if-eqz v1, :cond_11

    .line 181
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/LanguageOptions;->setDialogShowing(Z)V

    .line 183
    :cond_11
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$CommonDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 184
    .local v0, "a":Landroid/app/Activity;
    instance-of v2, v0, Lcom/nuance/swype/input/settings/SettingsV11;

    if-eqz v2, :cond_1e

    .line 185
    check-cast v0, Lcom/nuance/swype/input/settings/SettingsV11;

    .end local v0    # "a":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->updateDrawerList()V

    .line 190
    :cond_1e
    return-void
.end method
