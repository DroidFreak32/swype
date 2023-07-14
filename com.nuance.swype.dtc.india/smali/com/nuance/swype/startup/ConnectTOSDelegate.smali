.class public Lcom/nuance/swype/startup/ConnectTOSDelegate;
.super Lcom/nuance/swype/startup/StartupDelegate;
.source "ConnectTOSDelegate.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final acceptTosButtonListener:Landroid/view/View$OnClickListener;

.field private final closeTosButtonListener:Landroid/view/View$OnClickListener;

.field private final declineButtonListener:Landroid/view/View$OnClickListener;

.field private skipRegistrationDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "ConnectTOSDelegate"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupDelegate;-><init>()V

    .line 83
    new-instance v0, Lcom/nuance/swype/startup/ConnectTOSDelegate$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ConnectTOSDelegate$2;-><init>(Lcom/nuance/swype/startup/ConnectTOSDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->declineButtonListener:Landroid/view/View$OnClickListener;

    .line 105
    new-instance v0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;-><init>(Lcom/nuance/swype/startup/ConnectTOSDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->acceptTosButtonListener:Landroid/view/View$OnClickListener;

    .line 130
    new-instance v0, Lcom/nuance/swype/startup/ConnectTOSDelegate$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ConnectTOSDelegate$4;-><init>(Lcom/nuance/swype/startup/ConnectTOSDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->closeTosButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/startup/ConnectTOSDelegate;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/ConnectTOSDelegate;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->skipRegistrationDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/startup/ConnectTOSDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/startup/ConnectTOSDelegate;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->removeFlag()V

    return-void
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/ConnectTOSDelegate;
    .locals 1
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    new-instance v0, Lcom/nuance/swype/startup/ConnectTOSDelegate;

    invoke-direct {v0}, Lcom/nuance/swype/startup/ConnectTOSDelegate;-><init>()V

    .line 25
    .local v0, "f":Lcom/nuance/swype/startup/ConnectTOSDelegate;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->setArguments(Landroid/os/Bundle;)V

    .line 26
    return-object v0
.end method

.method private removeFlag()V
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mFlags:I

    and-int/lit8 v0, v0, -0x2b

    iput v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mFlags:I

    .line 81
    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 3

    .prologue
    .line 140
    iget v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->removeFlag()V

    .line 143
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget v1, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->restartSequence(ILandroid/os/Bundle;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    invoke-interface {v0}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->cancelSequence()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->agree_to_terms:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->startup_tos_warning:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->skip_button:I

    new-instance v2, Lcom/nuance/swype/startup/ConnectTOSDelegate$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/startup/ConnectTOSDelegate$1;-><init>(Lcom/nuance/swype/startup/ConnectTOSDelegate;)V

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->ok_button:I

    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->skipRegistrationDialog:Landroid/app/Dialog;

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 50
    iget v3, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mFlags:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 51
    sget v3, Lcom/nuance/swype/input/R$layout;->startup_template_one_button:I

    sget v4, Lcom/nuance/swype/input/R$layout;->startup_legaldoc:I

    sget v5, Lcom/nuance/swype/input/R$string;->terms_of_service_connect_title:I

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->loadTemplateToContentView(Landroid/view/LayoutInflater;III)V

    .line 56
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->startup_close:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->closeTosButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->setupPositiveButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 68
    :goto_0
    iget-object v3, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->view:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->message:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 69
    .local v0, "web":Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectLegal;->getTos()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "tos":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 71
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 59
    .end local v0    # "web":Landroid/webkit/WebView;
    .end local v2    # "tos":Ljava/lang/String;
    :cond_1
    sget v3, Lcom/nuance/swype/input/R$layout;->startup_template:I

    sget v4, Lcom/nuance/swype/input/R$layout;->startup_legaldoc:I

    sget v5, Lcom/nuance/swype/input/R$string;->terms_of_service_connect_title:I

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->loadTemplateToContentView(Landroid/view/LayoutInflater;III)V

    .line 64
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->accept_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->acceptTosButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->setupPositiveButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->decline_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->declineButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->setupNegativeButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
