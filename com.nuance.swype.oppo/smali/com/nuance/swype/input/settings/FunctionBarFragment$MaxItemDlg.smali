.class public Lcom/nuance/swype/input/settings/FunctionBarFragment$MaxItemDlg;
.super Landroid/app/DialogFragment;
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
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/FunctionBarFragment$MaxItemDlg;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/FunctionBarFragment;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/FunctionBarFragment;->access$100(Lcom/nuance/swype/input/settings/FunctionBarFragment;)Lcom/nuance/swype/input/settings/FunctionBar;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/FunctionBar;->createMaxItemDlg()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
