.class public Lcom/nuance/swype/startup/GettingStartedDelegate;
.super Lcom/nuance/swype/startup/StartupDelegate;
.source "GettingStartedDelegate.java"


# instance fields
.field private final gesturesButtonListener:Landroid/view/View$OnClickListener;

.field private final helpButtonListener:Landroid/view/View$OnClickListener;

.field private final settingsButtonListener:Landroid/view/View$OnClickListener;

.field private final startSwypingButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupDelegate;-><init>()V

    .line 53
    new-instance v0, Lcom/nuance/swype/startup/GettingStartedDelegate$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/GettingStartedDelegate$1;-><init>(Lcom/nuance/swype/startup/GettingStartedDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/GettingStartedDelegate;->startSwypingButtonListener:Landroid/view/View$OnClickListener;

    .line 60
    new-instance v0, Lcom/nuance/swype/startup/GettingStartedDelegate$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/GettingStartedDelegate$2;-><init>(Lcom/nuance/swype/startup/GettingStartedDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/GettingStartedDelegate;->helpButtonListener:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Lcom/nuance/swype/startup/GettingStartedDelegate$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/GettingStartedDelegate$3;-><init>(Lcom/nuance/swype/startup/GettingStartedDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/GettingStartedDelegate;->gesturesButtonListener:Landroid/view/View$OnClickListener;

    .line 76
    new-instance v0, Lcom/nuance/swype/startup/GettingStartedDelegate$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/GettingStartedDelegate$4;-><init>(Lcom/nuance/swype/startup/GettingStartedDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/GettingStartedDelegate;->settingsButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/GettingStartedDelegate;
    .locals 1
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    new-instance v0, Lcom/nuance/swype/startup/GettingStartedDelegate;

    invoke-direct {v0}, Lcom/nuance/swype/startup/GettingStartedDelegate;-><init>()V

    .line 17
    .local v0, "f":Lcom/nuance/swype/startup/GettingStartedDelegate;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/startup/GettingStartedDelegate;->setArguments(Landroid/os/Bundle;)V

    .line 18
    return-object v0
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/startup/GettingStartedDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    invoke-interface {v0}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->cancelSequence()V

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_getting_started:I

    sget v1, Lcom/nuance/swype/input/R$string;->startup_header_1:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/swype/startup/GettingStartedDelegate;->loadTemplateToContentView(Landroid/view/LayoutInflater;II)V

    .line 27
    iget-object v0, p0, Lcom/nuance/swype/startup/GettingStartedDelegate;->view:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->gs_help:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    iget-object v1, p0, Lcom/nuance/swype/startup/GettingStartedDelegate;->helpButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/nuance/swype/startup/GettingStartedDelegate;->view:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->gs_gestures:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 31
    iget-object v1, p0, Lcom/nuance/swype/startup/GettingStartedDelegate;->gesturesButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/nuance/swype/startup/GettingStartedDelegate;->view:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->gs_start_swyping:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    iget-object v1, p0, Lcom/nuance/swype/startup/GettingStartedDelegate;->startSwypingButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/nuance/swype/startup/GettingStartedDelegate;->view:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->gs_settings:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 37
    iget-object v1, p0, Lcom/nuance/swype/startup/GettingStartedDelegate;->settingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 44
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupDelegate;->onResume()V

    .line 45
    iget-object v0, p0, Lcom/nuance/swype/startup/GettingStartedDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    .line 1216
    sget-object v1, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "clearFlags"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1218
    invoke-virtual {v0, v4}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setShowBackupSync(Z)V

    .line 1620
    iput-boolean v4, v0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mShowTos:Z

    .line 1220
    invoke-virtual {v0, v4}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setShowCud(Z)V

    .line 1221
    invoke-virtual {v0, v4}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setShowGettingStarted(Z)V

    .line 1222
    invoke-virtual {v0, v4}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setShowSplash(Z)V

    .line 46
    return-void
.end method
