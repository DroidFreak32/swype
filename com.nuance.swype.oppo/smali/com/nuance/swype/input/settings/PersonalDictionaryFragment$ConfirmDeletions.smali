.class public Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$ConfirmDeletions;
.super Landroid/app/DialogFragment;
.source "PersonalDictionaryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDeletions"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$ConfirmDeletions;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;

    .line 62
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
