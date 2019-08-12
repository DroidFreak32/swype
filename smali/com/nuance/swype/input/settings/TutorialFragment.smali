.class public Lcom/nuance/swype/input/settings/TutorialFragment;
.super Lcom/nuance/swype/input/settings/ActionbarFragment;
.source "TutorialFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/TutorialFragment$OverrideContext;
    }
.end annotation


# instance fields
.field private tutorial:Lcom/nuance/swype/input/settings/Tutorial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarFragment;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "helpUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/TutorialFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 82
    const-string v3, "help_url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    :cond_0
    if-nez v1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/TutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->fullhelp_file:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/TutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/nuance/swype/util/LocalizationUtils;->getHtmlFileUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/TutorialFragment;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/Tutorial;->getLoadedUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 99
    iget-object v3, p0, Lcom/nuance/swype/input/settings/TutorialFragment;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/settings/Tutorial;->load(Ljava/lang/String;)V

    .line 101
    :cond_2
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/TutorialFragment;->setRetainInstance(Z)V

    .line 109
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/settings/TutorialFragment;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/nuance/swype/input/settings/Tutorial;

    new-instance v1, Lcom/nuance/swype/input/settings/TutorialFragment$OverrideContext;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/TutorialFragment$OverrideContext;-><init>(Lcom/nuance/swype/input/settings/TutorialFragment;)V

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/Tutorial;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/TutorialFragment;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/TutorialFragment;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Tutorial;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
