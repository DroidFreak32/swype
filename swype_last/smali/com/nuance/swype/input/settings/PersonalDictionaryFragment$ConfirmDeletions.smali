.class public Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$ConfirmDeletions;
.super Landroid/support/v4/app/DialogFragment;
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
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$ConfirmDeletions;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;

    # getter for: Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->pd:Lcom/nuance/swype/input/settings/PersonalDictionary;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->access$000(Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;)Lcom/nuance/swype/input/settings/PersonalDictionary;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
