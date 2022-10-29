.class public Lcom/nuance/swype/startup/StartupDelegate;
.super Landroid/app/Fragment;
.source "StartupDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/startup/StartupDelegate$StartupListener;,
        Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/nuance/swype/startup/StartupDelegate",
        "<TT;>;>",
        "Landroid/app/Fragment;"
    }
.end annotation


# static fields
.field private static final CONTENT_AREA_ID:I

.field private static final DEFAULT_LAYOUT_TEMPLATE:I

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field protected mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

.field private mDialog:Landroid/app/Dialog;

.field protected mFlags:I

.field protected mResultData:Landroid/os/Bundle;

.field protected mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

.field protected view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string/jumbo v0, "StartupDelegate"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/startup/StartupDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 36
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_template:I

    sput v0, Lcom/nuance/swype/startup/StartupDelegate;->DEFAULT_LAYOUT_TEMPLATE:I

    .line 41
    sget v0, Lcom/nuance/swype/input/R$id;->firstStartContent:I

    sput v0, Lcom/nuance/swype/startup/StartupDelegate;->CONTENT_AREA_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method protected static createDelegate(Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;IILandroid/os/Bundle;)Lcom/nuance/swype/startup/StartupDelegate;
    .registers 7
    .param p0, "desScreen"    # Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    .param p1, "themeId"    # I
    .param p2, "flags"    # I
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 353
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 355
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "param_data"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 356
    const-string/jumbo v1, "param_flags"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    const-string/jumbo v2, "param_next_screen_is_null"

    iget-object v1, p0, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->nextScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    if-nez v1, :cond_31

    const/4 v1, 0x1

    :goto_19
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 358
    const-string/jumbo v1, "param_show_registration_warning"

    iget-boolean v2, p0, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->showWarning:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    const-string/jumbo v1, "param_theme_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    iget-object v1, p0, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nuance/swype/startup/StartupDelegate;->createDelegate(Ljava/lang/String;Landroid/os/Bundle;)Lcom/nuance/swype/startup/StartupDelegate;

    move-result-object v1

    return-object v1

    .line 357
    :cond_31
    const/4 v1, 0x0

    goto :goto_19
.end method

.method protected static createDelegate(Ljava/lang/String;II)Lcom/nuance/swype/startup/StartupDelegate;
    .registers 6
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "themeId"    # I
    .param p2, "flags"    # I

    .prologue
    .line 374
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 376
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "param_flags"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    const-string/jumbo v1, "param_theme_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    const-string/jumbo v1, "param_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 381
    const-string/jumbo v1, "param_next_screen_is_null"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 382
    const-string/jumbo v1, "param_show_registration_warning"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 384
    invoke-static {p0, v0}, Lcom/nuance/swype/startup/StartupDelegate;->createDelegate(Ljava/lang/String;Landroid/os/Bundle;)Lcom/nuance/swype/startup/StartupDelegate;

    move-result-object v1

    return-object v1
.end method

.method private static createDelegate(Ljava/lang/String;Landroid/os/Bundle;)Lcom/nuance/swype/startup/StartupDelegate;
    .registers 6
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 390
    .local v0, "startupDelegate":Lcom/nuance/swype/startup/StartupDelegate;
    const-class v1, Lcom/nuance/swype/startup/AccountRegisterDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 391
    invoke-static {p1}, Lcom/nuance/swype/startup/AccountRegisterDelegate;->newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/AccountRegisterDelegate;

    move-result-object v0

    .line 422
    :goto_11
    return-object v0

    .line 392
    :cond_12
    const-class v1, Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 393
    invoke-static {p1}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    move-result-object v0

    goto :goto_11

    .line 394
    :cond_23
    const-class v1, Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 395
    invoke-static {p1}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    move-result-object v0

    goto :goto_11

    .line 396
    :cond_34
    const-class v1, Lcom/nuance/swype/startup/ConnectTOSDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 397
    invoke-static {p1}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/ConnectTOSDelegate;

    move-result-object v0

    goto :goto_11

    .line 398
    :cond_45
    const-class v1, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 399
    invoke-static {p1}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    move-result-object v0

    goto :goto_11

    .line 400
    :cond_56
    const-class v1, Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 401
    invoke-static {p1}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    move-result-object v0

    goto :goto_11

    .line 402
    :cond_67
    const-class v1, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 403
    invoke-static {p1}, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/EulaGooglePlayDelegate;

    move-result-object v0

    goto :goto_11

    .line 404
    :cond_78
    const-class v1, Lcom/nuance/swype/startup/EnableSwypeDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 405
    invoke-static {p1}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/EnableSwypeDelegate;

    move-result-object v0

    goto :goto_11

    .line 406
    :cond_89
    const-class v1, Lcom/nuance/swype/startup/GettingStartedDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 407
    invoke-static {p1}, Lcom/nuance/swype/startup/GettingStartedDelegate;->newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/GettingStartedDelegate;

    move-result-object v0

    goto/16 :goto_11

    .line 408
    :cond_9b
    const-class v1, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 409
    invoke-static {p1}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    move-result-object v0

    goto/16 :goto_11

    .line 410
    :cond_ad
    const-class v1, Lcom/nuance/swype/startup/LegalDocsSplashOemDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 411
    invoke-static {p1}, Lcom/nuance/swype/startup/LegalDocsSplashOemDelegate;->newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/LegalDocsSplashOemDelegate;

    move-result-object v0

    goto/16 :goto_11

    .line 412
    :cond_bf
    const-class v1, Lcom/nuance/swype/startup/StartupConnectTOSDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 413
    invoke-static {p1}, Lcom/nuance/swype/startup/StartupConnectTOSDelegate;->newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/StartupConnectTOSDelegate;

    move-result-object v0

    goto/16 :goto_11

    .line 414
    :cond_d1
    const-class v1, Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 415
    invoke-static {p1}, Lcom/nuance/swype/startup/UsageOptInDelegate;->newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/UsageOptInDelegate;

    move-result-object v0

    goto/16 :goto_11

    .line 416
    :cond_e3
    const-class v1, Lcom/nuance/swype/startup/SelectSwypeDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 417
    invoke-static {p1}, Lcom/nuance/swype/startup/SelectSwypeDelegate;->newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/SelectSwypeDelegate;

    move-result-object v0

    goto/16 :goto_11

    .line 419
    :cond_f5
    sget-object v1, Lcom/nuance/swype/startup/StartupDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unknown start-up delegate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_11
.end method

.method static isSwypeEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-static {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->getSwypeIMEState(Landroid/content/Context;)Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->DISABLED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method final enableUsageOption()V
    .registers 10

    .prologue
    .line 323
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    iget-object v4, p0, Lcom/nuance/swype/startup/StartupDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    .line 1506
    sget-object v5, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "acceptOptIn"

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1507
    iget-object v4, v4, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectLegal;->acceptOptIn()V

    .line 325
    iget v4, p0, Lcom/nuance/swype/startup/StartupDelegate;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_27

    .line 326
    iget v4, p0, Lcom/nuance/swype/startup/StartupDelegate;->mFlags:I

    and-int/lit8 v4, v4, -0x5

    iput v4, p0, Lcom/nuance/swype/startup/StartupDelegate;->mFlags:I

    .line 347
    :cond_26
    :goto_26
    return-void

    .line 330
    :cond_27
    iget-object v4, p0, Lcom/nuance/swype/startup/StartupDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isTosAccepted()Z

    move-result v4

    if-eqz v4, :cond_47

    iget-object v4, p0, Lcom/nuance/swype/startup/StartupDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isOptInAccepted()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 333
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->enable()V

    .line 336
    :cond_47
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v3

    .line 338
    .local v3, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v3, :cond_26

    .line 339
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 340
    .local v1, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 341
    .local v0, "currentLocale":Ljava/util/Locale;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Initial Locale:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|Lang:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|KeyboardLayoutId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 344
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v5

    iget v5, v5, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "localeSetting":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordInitialLocaleSetting(Ljava/lang/String;)V

    goto/16 :goto_26
.end method

.method protected final getShowRegistrationWarning()Z
    .registers 3

    .prologue
    .line 118
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "param_show_registration_warning"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final getThemeID()I
    .registers 3

    .prologue
    .line 122
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "param_theme_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final isNextScreenNull()Z
    .registers 3

    .prologue
    .line 126
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "param_next_screen_is_null"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final loadTemplateToContentView(Landroid/view/LayoutInflater;II)V
    .registers 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "innerContentId"    # I
    .param p3, "titleId"    # I

    .prologue
    .line 230
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    sget v0, Lcom/nuance/swype/startup/StartupDelegate;->DEFAULT_LAYOUT_TEMPLATE:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/nuance/swype/startup/StartupDelegate;->loadTemplateToContentView(Landroid/view/LayoutInflater;III)V

    .line 231
    return-void
.end method

.method protected final loadTemplateToContentView(Landroid/view/LayoutInflater;III)V
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "layoutTemplateId"    # I
    .param p3, "innerContentId"    # I
    .param p4, "titleId"    # I

    .prologue
    .line 234
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nuance/swype/startup/StartupDelegate;->loadTemplateToContentView(Landroid/view/LayoutInflater;IILjava/lang/String;)V

    .line 235
    return-void
.end method

.method protected final loadTemplateToContentView(Landroid/view/LayoutInflater;IILjava/lang/String;)V
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "layoutTemplateId"    # I
    .param p3, "innerContentId"    # I
    .param p4, "title"    # Ljava/lang/String;

    .prologue
    .line 238
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/startup/StartupDelegate;->view:Landroid/view/View;

    .line 240
    iget-object v2, p0, Lcom/nuance/swype/startup/StartupDelegate;->view:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->pageDesc:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 241
    .local v1, "pageTitle":Landroid/widget/TextView;
    if-eqz v1, :cond_1a

    .line 242
    if-nez p4, :cond_2b

    .line 243
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    :cond_1a
    :goto_1a
    iget-object v2, p0, Lcom/nuance/swype/startup/StartupDelegate;->view:Landroid/view/View;

    sget v3, Lcom/nuance/swype/startup/StartupDelegate;->CONTENT_AREA_ID:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 249
    .local v0, "pageContents":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 250
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 251
    return-void

    .line 245
    .end local v0    # "pageContents":Landroid/view/ViewGroup;
    :cond_2b
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 131
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 133
    sget-object v1, Lcom/nuance/swype/startup/StartupDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onAttach: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 138
    :try_start_29
    move-object v0, p1

    check-cast v0, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    move-object v1, v0

    iput-object v1, p0, Lcom/nuance/swype/startup/StartupDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;
    :try_end_2f
    .catch Ljava/lang/ClassCastException; {:try_start_29 .. :try_end_2f} :catch_38

    .line 144
    iget-object v1, p0, Lcom/nuance/swype/startup/StartupDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    invoke-interface {v1}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/startup/StartupDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    .line 145
    return-void

    .line 140
    :catch_38
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must implement StartupActivityCallbacks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onBackPressed()V
    .registers 5

    .prologue
    .line 179
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    sget-object v0, Lcom/nuance/swype/startup/StartupDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onBackPressed"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->showSelectSwypeDialog()V

    .line 181
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget-object v0, Lcom/nuance/swype/startup/StartupDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onCreate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bundle data required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2d
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "param_next_screen_is_null"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "param_next_screen_is_null value required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_43
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "param_show_registration_warning"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "param_show_registration_warning value required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_59
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "param_theme_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "param_theme_id value required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_6f
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "param_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/StartupDelegate;->mResultData:Landroid/os/Bundle;

    .line 108
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "param_flags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/startup/StartupDelegate;->mFlags:I

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupDelegate;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 6

    .prologue
    .line 171
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 172
    sget-object v0, Lcom/nuance/swype/startup/StartupDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onDestroy: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public onPause()V
    .registers 6

    .prologue
    .line 155
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 156
    sget-object v0, Lcom/nuance/swype/startup/StartupDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onPause: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 149
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 150
    sget-object v0, Lcom/nuance/swype/startup/StartupDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onResume: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public onStop()V
    .registers 6

    .prologue
    .line 161
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 162
    sget-object v0, Lcom/nuance/swype/startup/StartupDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onStop: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupDelegate;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/nuance/swype/startup/StartupDelegate;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 165
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupDelegate;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 167
    :cond_2f
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 176
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    return-void
.end method

.method final setupNegativeButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 6
    .param p1, "buttonText"    # Ljava/lang/String;
    .param p2, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 268
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    iget-object v1, p0, Lcom/nuance/swype/startup/StartupDelegate;->view:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->startup_button_negative:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 269
    .local v0, "b":Landroid/widget/Button;
    if-eqz v0, :cond_1c

    .line 270
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 271
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 272
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    if-eqz p2, :cond_1c

    .line 274
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    :cond_1c
    return-void
.end method

.method final setupPositiveButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 6
    .param p1, "buttonText"    # Ljava/lang/String;
    .param p2, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 294
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    iget-object v1, p0, Lcom/nuance/swype/startup/StartupDelegate;->view:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->startup_button_positive:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 295
    .local v0, "b":Landroid/widget/Button;
    if-eqz v0, :cond_1c

    .line 296
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 298
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 299
    if-eqz p2, :cond_1c

    .line 300
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    :cond_1c
    return-void
.end method

.method protected final showDialog(Landroid/app/Dialog;)V
    .registers 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 210
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    iput-object p1, p0, Lcom/nuance/swype/startup/StartupDelegate;->mDialog:Landroid/app/Dialog;

    .line 211
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupDelegate;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 212
    return-void
.end method

.method final showSelectSwypeDialog()V
    .registers 5

    .prologue
    .line 188
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate;, "Lcom/nuance/swype/startup/StartupDelegate<TT;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1030132

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/nuance/swype/input/R$string;->legal_doc_cud_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->startup_exit_error:I

    .line 190
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 191
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v3, 0x0

    .line 192
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->legal_doc_decline:I

    new-instance v3, Lcom/nuance/swype/startup/StartupDelegate$1;

    invoke-direct {v3, p0}, Lcom/nuance/swype/startup/StartupDelegate$1;-><init>(Lcom/nuance/swype/startup/StartupDelegate;)V

    .line 193
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 200
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 201
    return-void
.end method
