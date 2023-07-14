.class public Lcom/nuance/swype/startup/AccountRegisterDelegate;
.super Lcom/nuance/swype/startup/BackupAndSyncDelegate;
.source "AccountRegisterDelegate.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final cancelButtonListener:Landroid/view/View$OnClickListener;

.field private mStartupListener:Lcom/nuance/swype/startup/StartupDelegate$StartupListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "AccountRegisterDelegate"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;-><init>()V

    .line 17
    new-instance v0, Lcom/nuance/swype/startup/AccountRegisterDelegate$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/AccountRegisterDelegate$1;-><init>(Lcom/nuance/swype/startup/AccountRegisterDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->cancelButtonListener:Landroid/view/View$OnClickListener;

    .line 24
    new-instance v0, Lcom/nuance/swype/startup/AccountRegisterDelegate$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/AccountRegisterDelegate$2;-><init>(Lcom/nuance/swype/startup/AccountRegisterDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mStartupListener:Lcom/nuance/swype/startup/StartupDelegate$StartupListener;

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/AccountRegisterDelegate;
    .locals 1
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    new-instance v0, Lcom/nuance/swype/startup/AccountRegisterDelegate;

    invoke-direct {v0}, Lcom/nuance/swype/startup/AccountRegisterDelegate;-><init>()V

    .line 51
    .local v0, "f":Lcom/nuance/swype/startup/AccountRegisterDelegate;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/startup/AccountRegisterDelegate;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v0
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    invoke-interface {v0}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->cancelSequence()V

    .line 110
    return-void
.end method

.method protected final register(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 62
    iget-object v5, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->view:Landroid/view/View;

    sget v7, Lcom/nuance/swype/input/R$id;->emailSelect:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 63
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "email":Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->isValidEmail(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 66
    iget-object v5, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->invalidEmailDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v5}, Lcom/nuance/swype/startup/AccountRegisterDelegate;->showDialog(Landroid/app/Dialog;)V

    move v5, v6

    .line 103
    :goto_0
    return v5

    .line 70
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    invoke-interface {v5}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->getCurrentDelegate()Lcom/nuance/swype/startup/StartupDelegate;

    move-result-object v5

    .line 71
    if-eqz v5, :cond_7

    .line 72
    iget-object v5, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isTosAccepted()Z

    move-result v4

    .line 73
    .local v4, "tosAccepted":Z
    iget-object v5, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isOptInAccepted()Z

    move-result v2

    .line 75
    .local v2, "optInAccepted":Z
    if-eqz v4, :cond_1

    if-nez v2, :cond_6

    .line 77
    :cond_1
    const/4 v3, 0x0

    .line 78
    .local v3, "startupDelegate":Lcom/nuance/swype/startup/StartupDelegate;
    const/4 v0, 0x0

    .line 80
    .local v0, "desScreen":Ljava/lang/String;
    if-nez v4, :cond_5

    .line 81
    const-class v5, Lcom/nuance/swype/startup/ConnectTOSDelegate;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/nuance/swype/startup/AccountRegisterDelegate;->getThemeID()I

    move-result v5

    const/4 v7, 0x6

    invoke-static {v0, v5, v7}, Lcom/nuance/swype/startup/AccountRegisterDelegate;->createDelegate(Ljava/lang/String;II)Lcom/nuance/swype/startup/StartupDelegate;

    move-result-object v3

    .line 92
    :cond_3
    if-eqz v3, :cond_4

    .line 93
    iget-object v5, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v7, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mStartupListener:Lcom/nuance/swype/startup/StartupDelegate$StartupListener;

    invoke-interface {v5, v7}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->registerListener(Lcom/nuance/swype/startup/StartupDelegate$StartupListener;)V

    .line 94
    iget-object v5, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    invoke-interface {v5, v3}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->showDelegate(Lcom/nuance/swype/startup/StartupDelegate;)V

    :cond_4
    move v5, v6

    .line 96
    goto :goto_0

    .line 82
    :cond_5
    if-nez v2, :cond_2

    .line 83
    const-class v5, Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 98
    .end local v0    # "desScreen":Ljava/lang/String;
    .end local v3    # "startupDelegate":Lcom/nuance/swype/startup/StartupDelegate;
    :cond_6
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v5

    .line 99
    invoke-static {p1}, Lcom/nuance/swype/service/impl/AccountUtil;->isTablet(Landroid/content/Context;)Z

    move-result v6

    .line 100
    invoke-static {p1}, Lcom/nuance/swype/service/impl/AccountUtil;->buildDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 98
    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/nuance/swype/connect/Connect$Accounts;->createAccount(Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result v5

    goto :goto_0

    .end local v2    # "optInAccepted":Z
    .end local v4    # "tosAccepted":Z
    :cond_7
    move v5, v6

    .line 103
    goto :goto_0
.end method

.method protected final setUpNegativeButton()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/nuance/swype/startup/AccountRegisterDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->cancel_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->cancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/startup/AccountRegisterDelegate;->setupNegativeButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method
