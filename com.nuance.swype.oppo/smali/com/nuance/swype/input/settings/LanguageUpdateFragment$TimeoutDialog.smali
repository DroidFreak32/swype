.class public Lcom/nuance/swype/input/settings/LanguageUpdateFragment$TimeoutDialog;
.super Landroid/app/DialogFragment;
.source "LanguageUpdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/LanguageUpdateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeoutDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdateFragment$TimeoutDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/LanguageUpdateFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageUpdate;

    .line 136
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->timeoutDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
