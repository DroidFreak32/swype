.class public Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;
.super Ljava/lang/Object;
.source "ShowFirstTimeStartupMessages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$DialogMessages;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final imeApp:Lcom/nuance/swype/input/IMEApplication;

.field private mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

.field private final settings:Lcom/nuance/swype/input/AppPreferences;

.field private startupShown:Z

.field private final whitelist:Lcom/nuance/swype/input/Whitelist;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "ShowFirstTimeStartupMessages"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/Whitelist;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "whitelist"    # Lcom/nuance/swype/input/Whitelist;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->settings:Lcom/nuance/swype/input/AppPreferences;

    .line 41
    iput-object p2, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->whitelist:Lcom/nuance/swype/input/Whitelist;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;)Lcom/nuance/swype/input/IMEApplication;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    return-object v0
.end method

.method private isTrialExpired()Z
    .locals 2

    .prologue
    .line 230
    iget-object v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    .line 232
    .local v0, "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isTrialBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->updateExpirationPeriod()V

    .line 234
    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isTrialPeriodExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const/4 v1, 0x1

    .line 238
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showAlertDialogMessage(Landroid/os/IBinder;IIILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "resId"    # I
    .param p3, "positiveLabelId"    # I
    .param p4, "negativeLabelId"    # I
    .param p5, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->dismiss()V

    .line 193
    new-instance v0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$DialogMessages;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$DialogMessages;-><init>(IIILandroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    .line 194
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    iget-object v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/SwypeDialog;->createDialog(Landroid/content/Context;)V

    .line 195
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    iget-object v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/input/SwypeDialog;->show(Landroid/os/IBinder;Landroid/content/Context;)V

    .line 196
    return-void
.end method

.method private showEulaStartup()Z
    .locals 2

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, "show":Z
    iget-object v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->isShowEulaOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v1}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectLegal;->isEulaAccepted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 247
    :cond_0
    return v0
.end method

.method private showStandardStartup(Z)Z
    .locals 7
    .param p1, "needToClearPreviousTask"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 100
    invoke-direct {p0}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->isTrialExpired()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v5

    .line 104
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v4, "sequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 106
    iget-object v6, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v6}, Lcom/nuance/swype/startup/StartupActivity;->targetClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 124
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 125
    .local v1, "firstActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-direct {v3, v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v3, "i":Landroid/content/Intent;
    const-string v5, "launch_mode"

    const-string v6, "startup_sequence"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v5, "activity_order"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 129
    const/high16 v2, 0x10000000

    .line 131
    .local v2, "flag":I
    if-eqz p1, :cond_3

    .line 132
    const v2, 0x10008000

    .line 135
    :cond_3
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v5, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v5, v3}, Lcom/nuance/swype/input/IMEApplication;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1    # "firstActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "flag":I
    .end local v3    # "i":Landroid/content/Intent;
    :goto_2
    const/4 v5, 0x1

    goto :goto_0

    .line 108
    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->showEulaStartup()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 109
    const-class v6, Lcom/nuance/swype/startup/EulaActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->showStartupWelcome()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 112
    const-class v6, Lcom/nuance/swype/startup/WelcomeActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->showStartupRegister()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 115
    const-class v6, Lcom/nuance/swype/startup/AccountRegisterActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_7
    invoke-direct {p0}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->showStartupWelcome()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    const-class v6, Lcom/nuance/swype/startup/GettingStartedActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v5, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private showStartupRegister()Z
    .locals 3

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, "show":Z
    iget-object v2, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 265
    .local v0, "settings":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isShowStartupRegistration()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isStartupRegistrationAlreadyShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    const/4 v1, 0x1

    .line 269
    :cond_0
    return v1
.end method

.method private showStartupWelcome()Z
    .locals 3

    .prologue
    .line 251
    const/4 v1, 0x0

    .line 253
    .local v1, "show":Z
    iget-object v2, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 254
    .local v0, "settings":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isShowStartupTip()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isShowStartupRegistration()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    :cond_0
    const/4 v1, 0x1

    .line 258
    :cond_1
    return v1
.end method

.method private showUpgradeStartup()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 148
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v3, "sequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect$Accounts;->checkAccountExists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 151
    const-class v5, Lcom/nuance/swype/startup/AccountRegisterActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 156
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 157
    .local v1, "firstActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-direct {v2, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v2, "i":Landroid/content/Intent;
    const-string v4, "launch_mode"

    const-string v5, "startup_sequence"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v4, "activity_order"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 161
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 162
    iget-object v4, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v4, v2}, Lcom/nuance/swype/input/IMEApplication;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v1    # "firstActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "i":Landroid/content/Intent;
    :goto_0
    const/4 v4, 0x1

    .line 170
    :cond_1
    return v4

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public canShow(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->whitelist:Lcom/nuance/swype/input/Whitelist;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->whitelist:Lcom/nuance/swype/input/Whitelist;

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/Whitelist;->allows(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAndShowTrialExpired(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isTrialBuild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->isTrialExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isExpireDialogRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget v2, Lcom/nuance/swype/input/R$string;->trial_period_expiration_msg:I

    sget v3, Lcom/nuance/swype/input/R$string;->license_buy_now:I

    sget v4, Lcom/nuance/swype/input/R$string;->label_back:I

    new-instance v5, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$1;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$1;-><init>(Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->showAlertDialogMessage(Landroid/os/IBinder;IIILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 88
    :cond_2
    sget v2, Lcom/nuance/swype/input/R$string;->trial_period_expiration_msg:I

    const v3, 0x104000a

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->showAlertDialogMessage(Landroid/os/IBinder;IIILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SwypeDialog;->dismiss()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    .line 53
    :cond_0
    return-void
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SwypeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showStartup(Z)Z
    .locals 3
    .param p1, "needToClearPreviousTask"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 174
    iget-boolean v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->startupShown:Z

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->isStartupTipAlreadyShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->getStartupUpgrade()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iput-boolean v2, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->startupShown:Z

    .line 177
    iget-object v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/AppPreferences;->setStartupUpgrade(Z)V

    .line 178
    invoke-direct {p0}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->showUpgradeStartup()Z

    move-result v0

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->isStartupTipAlreadyShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    iput-boolean v2, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->startupShown:Z

    goto :goto_0

    .line 185
    :cond_2
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->showStandardStartup(Z)Z

    move-result v0

    goto :goto_0
.end method
