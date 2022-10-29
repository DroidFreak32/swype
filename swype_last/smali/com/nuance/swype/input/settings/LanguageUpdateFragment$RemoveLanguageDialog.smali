.class public Lcom/nuance/swype/input/settings/LanguageUpdateFragment$RemoveLanguageDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "LanguageUpdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/LanguageUpdateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveLanguageDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$RemoveLanguageDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    .line 119
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$RemoveLanguageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->createRemoveLanguageDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
