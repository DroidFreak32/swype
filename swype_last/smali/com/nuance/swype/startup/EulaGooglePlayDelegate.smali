.class public Lcom/nuance/swype/startup/EulaGooglePlayDelegate;
.super Lcom/nuance/swype/startup/StartupDelegate;
.source "EulaGooglePlayDelegate.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final closeEulaButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string/jumbo v0, "EulaGooglePlayDelegate"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupDelegate;-><init>()V

    .line 41
    new-instance v0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/EulaGooglePlayDelegate$1;-><init>(Lcom/nuance/swype/startup/EulaGooglePlayDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->closeEulaButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/startup/EulaGooglePlayDelegate;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/EulaGooglePlayDelegate;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->removeFlag()V

    return-void
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/EulaGooglePlayDelegate;
    .registers 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    new-instance v0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;

    invoke-direct {v0}, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;-><init>()V

    .line 21
    .local v0, "f":Lcom/nuance/swype/startup/EulaGooglePlayDelegate;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->setArguments(Landroid/os/Bundle;)V

    .line 22
    return-object v0
.end method

.method private removeFlag()V
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->mFlags:I

    .line 52
    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .registers 4

    .prologue
    .line 56
    iget v0, p0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_15

    .line 58
    invoke-direct {p0}, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->removeFlag()V

    .line 59
    iget-object v0, p0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget v1, p0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->restartSequence(ILandroid/os/Bundle;)V

    .line 64
    :goto_14
    return-void

    .line 62
    :cond_15
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupDelegate;->onBackPressed()V

    goto :goto_14
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 28
    sget v3, Lcom/nuance/swype/input/R$layout;->startup_template_one_button:I

    sget v4, Lcom/nuance/swype/input/R$layout;->startup_legaldoc:I

    invoke-virtual {p0, p1, v3, v4, v1}, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->loadTemplateToContentView(Landroid/view/LayoutInflater;IILjava/lang/String;)V

    .line 30
    iget-object v3, p0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->view:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->message:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 31
    .local v0, "web":Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectLegal;->getEula()Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "eula":Ljava/lang/String;
    if-eqz v2, :cond_2a

    .line 33
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_2a
    invoke-virtual {p0}, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/nuance/swype/input/R$string;->startup_close:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->closeEulaButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v3}, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->setupPositiveButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
