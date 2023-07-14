.class public Lcom/nuance/swype/input/settings/GesturesFragment;
.super Lcom/nuance/swype/input/settings/ActionbarFragment;
.source "GesturesFragment.java"


# instance fields
.field private tutorial:Lcom/nuance/swype/input/settings/Tutorial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/GesturesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->fullhelp_gestures_file:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/GesturesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/swype/util/LocalizationUtils;->getHtmlFileUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/GesturesFragment;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/Tutorial;->getLoadedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/nuance/swype/input/settings/GesturesFragment;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/Tutorial;->load(Ljava/lang/String;)V

    .line 43
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Screen;->GESTURES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v1}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/GesturesFragment;->setHasOptionsMenu(Z)V

    .line 21
    iget-object v0, p0, Lcom/nuance/swype/input/settings/GesturesFragment;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/nuance/swype/input/settings/Tutorial;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/GesturesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/Tutorial;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/GesturesFragment;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/GesturesFragment;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Tutorial;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
