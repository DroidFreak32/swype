.class public Lcom/nuance/swype/startup/ContributeUsageDataDelegate;
.super Lcom/nuance/swype/startup/StartupDelegate;
.source "ContributeUsageDataDelegate.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final acceptButtonListener:Landroid/view/View$OnClickListener;

.field private final declineButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "ContributeUsageDataDelegate"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupDelegate;-><init>()V

    .line 71
    new-instance v0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;-><init>(Lcom/nuance/swype/startup/ContributeUsageDataDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->declineButtonListener:Landroid/view/View$OnClickListener;

    .line 99
    new-instance v0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$2;-><init>(Lcom/nuance/swype/startup/ContributeUsageDataDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->acceptButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/ContributeUsageDataDelegate;
    .locals 1
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    new-instance v0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    invoke-direct {v0}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;-><init>()V

    .line 30
    .local v0, "f":Lcom/nuance/swype/startup/ContributeUsageDataDelegate;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 38
    sget v3, Lcom/nuance/swype/input/R$layout;->startup_template:I

    sget v4, Lcom/nuance/swype/input/R$layout;->startup_contribute_usage_data:I

    sget v5, Lcom/nuance/swype/input/R$string;->usage_statistics_log_title:I

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->loadTemplateToContentView(Landroid/view/LayoutInflater;III)V

    .line 40
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->accept_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->acceptButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->setupPositiveButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->decline_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->declineButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->setupNegativeButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance v6, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 44
    .local v6, "sv":Landroid/widget/ScrollView;
    iget-object v3, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isOptInChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    iget-object v3, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->view:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->changed_notice:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 46
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "web":Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectLegal;->getOptIn()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "cachedText":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 54
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    invoke-virtual {v6, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 58
    iget-object v1, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->view:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->opt_in:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 59
    .local v7, "vg":Landroid/view/ViewGroup;
    if-eqz v7, :cond_2

    .line 60
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 61
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
