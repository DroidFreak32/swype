.class public Lcom/nuance/swype/input/settings/UpdatesFragment$ConnectDialog;
.super Landroid/app/DialogFragment;
.source "UpdatesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/UpdatesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/UpdatesFragment$ConnectDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/UpdatesFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/UpdatesFragment;->delegate:Lcom/nuance/swype/input/settings/Updates;

    .line 94
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->createConnectDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
