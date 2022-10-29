.class public Lcom/nuance/swype/input/settings/FunctionBarFragment$MaxItemDlg;
.super Landroid/support/v4/app/DialogFragment;
.source "FunctionBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/FunctionBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaxItemDlg"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/FunctionBarFragment$MaxItemDlg;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/FunctionBarFragment;

    # getter for: Lcom/nuance/swype/input/settings/FunctionBarFragment;->delegate:Lcom/nuance/swype/input/settings/FunctionBar;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/FunctionBarFragment;->access$100(Lcom/nuance/swype/input/settings/FunctionBarFragment;)Lcom/nuance/swype/input/settings/FunctionBar;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/FunctionBar;->createMaxItemDlg()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
