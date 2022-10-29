.class public Lcom/nuance/swype/startup/SelectSwypeDelegate;
.super Lcom/nuance/swype/startup/StartupDelegate;
.source "SelectSwypeDelegate.java"


# instance fields
.field private showPopupTip:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupDelegate;-><init>()V

    return-void
.end method

.method static synthetic access$002$11ff5da5(Lcom/nuance/swype/startup/SelectSwypeDelegate;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/startup/SelectSwypeDelegate;

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate;->showPopupTip:Z

    return v0
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/SelectSwypeDelegate;
    .registers 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    new-instance v0, Lcom/nuance/swype/startup/SelectSwypeDelegate;

    invoke-direct {v0}, Lcom/nuance/swype/startup/SelectSwypeDelegate;-><init>()V

    .line 24
    .local v0, "f":Lcom/nuance/swype/startup/SelectSwypeDelegate;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/startup/SelectSwypeDelegate;->setArguments(Landroid/os/Bundle;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public final onBackPressed()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isSwypeSelected()Z

    move-result v0

    if-nez v0, :cond_b

    .line 72
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeDelegate;->showSelectSwypeDialog()V

    .line 74
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate;->showPopupTip:Z

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 32
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->startup_select_swype:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 34
    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "msg":Ljava/lang/String;
    sget v3, Lcom/nuance/swype/input/R$layout;->startup_template_three_quarters:I

    sget v4, Lcom/nuance/swype/input/R$layout;->startup_select_swype:I

    invoke-virtual {p0, p1, v3, v4, v0}, Lcom/nuance/swype/startup/SelectSwypeDelegate;->loadTemplateToContentView(Landroid/view/LayoutInflater;IILjava/lang/String;)V

    .line 36
    iget-object v3, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate;->view:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->select_swype_button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 37
    .local v1, "selectSwypeButton":Landroid/widget/ImageView;
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 38
    new-instance v3, Lcom/nuance/swype/startup/SelectSwypeDelegate$1;

    invoke-direct {v3, p0}, Lcom/nuance/swype/startup/SelectSwypeDelegate$1;-><init>(Lcom/nuance/swype/startup/SelectSwypeDelegate;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 9
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    iget-object v3, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isSwypeSelected()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 57
    iget-object v3, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget v4, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate;->mFlags:I

    iget-object v5, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v3, v4, v5}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 67
    :cond_13
    :goto_13
    return-void

    .line 58
    :cond_14
    iget-boolean v3, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate;->showPopupTip:Z

    if-eqz v3, :cond_13

    if-eqz p1, :cond_13

    .line 59
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->startup_select_swype_toast:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 61
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "msg":Ljava/lang/String;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 63
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 64
    invoke-virtual {p0}, Lcom/nuance/swype/startup/SelectSwypeDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v1, v6, v4}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 65
    iput-boolean v5, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate;->showPopupTip:Z

    goto :goto_13
.end method
