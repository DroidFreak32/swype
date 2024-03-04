.class Lcom/nuance/swype/input/settings/TutorialFragment$OverrideContext;
.super Landroid/content/ContextWrapper;
.source "TutorialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/TutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OverrideContext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/TutorialFragment;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/settings/TutorialFragment;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/nuance/swype/input/settings/TutorialFragment$OverrideContext;->this$0:Lcom/nuance/swype/input/settings/TutorialFragment;

    .line 54
    invoke-virtual {p1}, Lcom/nuance/swype/input/settings/TutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method


# virtual methods
.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    iget-object v1, p0, Lcom/nuance/swype/input/settings/TutorialFragment$OverrideContext;->this$0:Lcom/nuance/swype/input/settings/TutorialFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/TutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 38
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 41
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 45
    iget-object v1, p0, Lcom/nuance/swype/input/settings/TutorialFragment$OverrideContext;->this$0:Lcom/nuance/swype/input/settings/TutorialFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/TutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 46
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 49
    :cond_0
    return-void
.end method
