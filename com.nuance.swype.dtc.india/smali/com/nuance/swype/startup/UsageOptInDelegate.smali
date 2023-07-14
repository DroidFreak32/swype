.class public Lcom/nuance/swype/startup/UsageOptInDelegate;
.super Lcom/nuance/swype/startup/StartupDelegate;
.source "UsageOptInDelegate.java"


# instance fields
.field private final acceptButtonListener:Landroid/view/View$OnClickListener;

.field private final declineButtonListener:Landroid/view/View$OnClickListener;

.field private skipRegistrationDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupDelegate;-><init>()V

    .line 83
    new-instance v0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/UsageOptInDelegate$2;-><init>(Lcom/nuance/swype/startup/UsageOptInDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate;->declineButtonListener:Landroid/view/View$OnClickListener;

    .line 105
    new-instance v0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/UsageOptInDelegate$3;-><init>(Lcom/nuance/swype/startup/UsageOptInDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate;->acceptButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/startup/UsageOptInDelegate;)V
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/UsageOptInDelegate;

    .prologue
    .line 18
    .line 1079
    iget v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mFlags:I

    and-int/lit8 v0, v0, -0xb

    iput v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mFlags:I

    .line 18
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/startup/UsageOptInDelegate;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/UsageOptInDelegate;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate;->skipRegistrationDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/UsageOptInDelegate;
    .locals 1
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    new-instance v0, Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-direct {v0}, Lcom/nuance/swype/startup/UsageOptInDelegate;-><init>()V

    .line 23
    .local v0, "f":Lcom/nuance/swype/startup/UsageOptInDelegate;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->setArguments(Landroid/os/Bundle;)V

    .line 24
    return-object v0
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    invoke-interface {v0}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->cancelSequence()V

    .line 133
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->agree_to_terms:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->startup_tos_warning:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->skip_button:I

    new-instance v2, Lcom/nuance/swype/startup/UsageOptInDelegate$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/startup/UsageOptInDelegate$1;-><init>(Lcom/nuance/swype/startup/UsageOptInDelegate;)V

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->ok_button:I

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate;->skipRegistrationDialog:Landroid/app/Dialog;

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 54
    sget v3, Lcom/nuance/swype/input/R$layout;->startup_template:I

    sget v4, Lcom/nuance/swype/input/R$layout;->startup_contribute_usage_data:I

    sget v5, Lcom/nuance/swype/input/R$string;->usage_statistics_log_title:I

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/nuance/swype/startup/UsageOptInDelegate;->loadTemplateToContentView(Landroid/view/LayoutInflater;III)V

    .line 56
    invoke-virtual {p0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->decline_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/startup/UsageOptInDelegate;->declineButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/startup/UsageOptInDelegate;->setupNegativeButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->accept_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/startup/UsageOptInDelegate;->acceptButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/startup/UsageOptInDelegate;->setupPositiveButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v6, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 62
    .local v6, "sv":Landroid/widget/ScrollView;
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "web":Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectLegal;->getOptIn()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "optIn":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 65
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-virtual {v6, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 69
    iget-object v1, p0, Lcom/nuance/swype/startup/UsageOptInDelegate;->view:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->opt_in:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 70
    .local v7, "vg":Landroid/view/ViewGroup;
    if-eqz v7, :cond_1

    .line 71
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 72
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
