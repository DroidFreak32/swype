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

.field private final whitelist:Lcom/nuance/swype/input/Whitelist;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "ShowFirstTimeStartupMessages"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/Whitelist;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "whitelist"    # Lcom/nuance/swype/input/Whitelist;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "ShowFirstTimeStartupMessages"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 30
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 31
    iput-object p2, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->whitelist:Lcom/nuance/swype/input/Whitelist;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;)Lcom/nuance/swype/input/IMEApplication;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    return-object v0
.end method

.method private showAlertDialogMessage(Landroid/os/IBinder;IIILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "resId"    # I
    .param p3, "positiveLabelId"    # I
    .param p4, "negativeLabelId"    # I
    .param p5, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->dismiss()V

    .line 125
    new-instance v0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$DialogMessages;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$DialogMessages;-><init>(IIILandroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    .line 126
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    iget-object v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/SwypeDialog;->createDialog(Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    iget-object v1, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/input/SwypeDialog;->show(Landroid/os/IBinder;Landroid/content/Context;)V

    .line 128
    return-void
.end method


# virtual methods
.method public canShow(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 35
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
    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isTrialBuild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isTrialExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isExpireDialogRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 62
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isGooglePlayChina()Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    sget v2, Lcom/nuance/swype/input/R$string;->trial_period_expiration_msg:I

    sget v3, Lcom/nuance/swype/input/R$string;->license_buy_now:I

    sget v4, Lcom/nuance/swype/input/R$string;->label_back:I

    new-instance v5, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$1;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$1;-><init>(Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->showAlertDialogMessage(Landroid/os/IBinder;IIILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 79
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
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SwypeDialog;->dismiss()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    .line 43
    :cond_0
    return-void
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 46
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

.method public onInstallMessage(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isTrialBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isTrialBuildFirstMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget v2, Lcom/nuance/swype/input/R$string;->trial_welcome_msg:I

    sget v3, Lcom/nuance/swype/input/R$string;->license_buy_now:I

    sget v4, Lcom/nuance/swype/input/R$string;->dismiss_button:I

    new-instance v5, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$2;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages$2;-><init>(Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->showAlertDialogMessage(Landroid/os/IBinder;IIILandroid/content/DialogInterface$OnClickListener;)V

    .line 180
    :cond_0
    return-void
.end method

.method public showStartup(ZZLandroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/input/InputFieldInfo;)Z
    .locals 6
    .param p1, "fromSettingsDispatch"    # Z
    .param p2, "needToClearPreviousTask"    # Z
    .param p3, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    iget-object v4, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->isTrialExpired()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    sget-object v4, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "showStandardStartup - trial expired"

    aput-object v5, v3, v2

    invoke-interface {v4, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 119
    :cond_0
    :goto_0
    return v2

    .line 98
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v4

    if-nez v4, :cond_2

    .line 99
    sget-object v4, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "showStandardStartup - unlock is still in progress with direct boot mode"

    aput-object v5, v3, v2

    invoke-interface {v4, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Lcom/nuance/swype/startup/StartupSequenceInfo;->shouldShowStartup(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/input/InputFieldInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    iget-object v2, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 104
    iget-object v2, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->close()V

    .line 106
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    const-class v4, Lcom/nuance/swype/startup/StartupActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "launch_to_settings"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    const-string/jumbo v2, "launch_mode"

    const-string/jumbo v4, "startup_sequence"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const/high16 v0, 0x10000000

    .line 110
    .local v0, "flag":I
    if-eqz p2, :cond_4

    .line 111
    const v0, 0x10008000

    .line 113
    :cond_4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    iget-object v2, p0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/IMEApplication;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 116
    goto :goto_0
.end method
