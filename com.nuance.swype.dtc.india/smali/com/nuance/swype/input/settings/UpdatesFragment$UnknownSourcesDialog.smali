.class public Lcom/nuance/swype/input/settings/UpdatesFragment$UnknownSourcesDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "UpdatesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/UpdatesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnknownSourcesDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/UpdatesFragment$UnknownSourcesDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/UpdatesFragment;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/UpdatesFragment;->access$000(Lcom/nuance/swype/input/settings/UpdatesFragment;)Lcom/nuance/swype/input/settings/Updates;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->createUnknownSourcesDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
