.class Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$1;
.super Ljava/lang/Object;
.source "PersonalDictionaryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$1;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 18
    new-instance v0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$ConfirmDeletions;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$ConfirmDeletions;-><init>()V

    .line 19
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$1;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 20
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment$1;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/PersonalDictionaryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 21
    return-void
.end method
