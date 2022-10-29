.class public Lcom/nuance/swype/input/settings/TutorialFragment;
.super Lcom/nuance/swype/input/settings/ActionbarFragment;
.source "TutorialFragment.java"


# instance fields
.field private tutorial:Lcom/nuance/swype/input/settings/Tutorial;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, "helpUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/TutorialFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_e

    .line 31
    const-string/jumbo v3, "help_url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    :cond_e
    if-nez v1, :cond_1e

    .line 35
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/TutorialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->fullhelp_file:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    :cond_1e
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/TutorialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/nuance/swype/util/LocalizationUtils;->getHtmlFileUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/TutorialFragment;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/Tutorial;->getLoadedUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 48
    iget-object v3, p0, Lcom/nuance/swype/input/settings/TutorialFragment;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/settings/Tutorial;->load(Ljava/lang/String;)V

    .line 50
    :cond_37
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nuance/swype/input/settings/TutorialFragment;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    if-nez v0, :cond_f

    .line 21
    new-instance v0, Lcom/nuance/swype/input/settings/Tutorial;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/TutorialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/Tutorial;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/TutorialFragment;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    .line 23
    :cond_f
    iget-object v0, p0, Lcom/nuance/swype/input/settings/TutorialFragment;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Tutorial;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
