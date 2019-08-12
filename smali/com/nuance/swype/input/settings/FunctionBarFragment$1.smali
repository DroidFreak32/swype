.class Lcom/nuance/swype/input/settings/FunctionBarFragment$1;
.super Lcom/nuance/swype/input/settings/FunctionBar;
.source "FunctionBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/FunctionBarFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/FunctionBarFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/FunctionBarFragment;Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;
    .param p3, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nuance/swype/input/settings/FunctionBarFragment$1;->this$0:Lcom/nuance/swype/input/settings/FunctionBarFragment;

    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/settings/FunctionBar;-><init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V

    return-void
.end method


# virtual methods
.method protected showMaxCountdialog()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/nuance/swype/input/settings/FunctionBarFragment$MaxItemDlg;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/FunctionBarFragment$MaxItemDlg;-><init>()V

    .line 25
    .local v0, "dialog":Lcom/nuance/swype/input/settings/FunctionBarFragment$MaxItemDlg;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/FunctionBarFragment$1;->this$0:Lcom/nuance/swype/input/settings/FunctionBarFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/FunctionBarFragment$MaxItemDlg;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 26
    iget-object v1, p0, Lcom/nuance/swype/input/settings/FunctionBarFragment$1;->this$0:Lcom/nuance/swype/input/settings/FunctionBarFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/FunctionBarFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/FunctionBarFragment$1;->this$0:Lcom/nuance/swype/input/settings/FunctionBarFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/FunctionBarFragment;->access$000(Lcom/nuance/swype/input/settings/FunctionBarFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/FunctionBarFragment$MaxItemDlg;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 27
    return-void
.end method
