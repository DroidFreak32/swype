.class public Lcom/nuance/swype/input/settings/LanguageOptionsFragment$CommonDialog;
.super Landroid/app/DialogFragment;
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
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 194
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$CommonDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    iget-object v1, v2, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    .line 195
    .local v1, "delegate":Lcom/nuance/swype/input/settings/LanguageOptions;
    if-eqz v1, :cond_0

    .line 196
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/LanguageOptions;->setDialogShowing(Z)V

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$CommonDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 199
    .local v0, "a":Landroid/app/Activity;
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    .line 200
    check-cast v0, Landroid/preference/PreferenceActivity;

    .end local v0    # "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 202
    :cond_1
    return-void
.end method
