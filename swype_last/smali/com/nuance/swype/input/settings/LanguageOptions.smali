.class public abstract Lcom/nuance/swype/input/settings/LanguageOptions;
.super Ljava/lang/Object;
.source "LanguageOptions.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;
.implements Lcom/nuance/swype/preference/CurrentLanguagePreference$CurrentLanguagePreferenceListener;
.implements Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;


# static fields
.field private static final ADDITIONAL_LANGUAGE_KEY:Ljava/lang/String; = "additional_language"

.field protected static final LANGUAGE_KEY:Ljava/lang/String; = "language"

.field public static final LANGUAGE_PREFS_XML:I

.field private static final PREF_KEY_CURRENT_LANGUAGE:Ljava/lang/String; = "current_language"

.field protected static final PREF_KEY_DOWNLOAD_LANGUAGES:Ljava/lang/String; = "download_languages"

.field private static final PREF_KEY_RECENT_LANGUAGES:Ljava/lang/String; = "recent_languages"

.field protected static final REQUEST_CODE_ALM_INSTALL:I = 0x2

.field protected static final REQUEST_CODE_LANGUAGE_DOWNLOAD:I = 0x1


# instance fields
.field protected final activity:Landroid/app/Activity;

.field private connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

.field private final connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

.field private isDialogShowing:Z

.field protected keyIsDown:Z

.field private final languageDownloadListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field mJapaneseLayoutsValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPrefKey:Ljava/lang/String;

.field private final screen:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    sget v0, Lcom/nuance/swype/input/R$xml;->prefs_language:I

    sput v0, Lcom/nuance/swype/input/settings/LanguageOptions;->LANGUAGE_PREFS_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->isDialogShowing:Z

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->mPrefKey:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->keyIsDown:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->mJapaneseLayoutsValueList:Ljava/util/List;

    .line 464
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptions$10;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/LanguageOptions$10;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->languageDownloadListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 78
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    .line 79
    iput-object p2, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    .line 81
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptions$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/LanguageOptions$1;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .line 89
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->LANGUAGES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v0}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/input/InputMethods$Language;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageOptions;
    .param p1, "x1"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLanguageDialog(Lcom/nuance/swype/input/InputMethods$Language;)V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/LanguageOptions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageOptions;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->handleDownloadClick()Z

    move-result v0

    return v0
.end method

.method private getLanguageDownloadPref()Landroid/preference/Preference;
    .registers 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "download_languages"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method private handleDownloadClick()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 473
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnectedWifi()Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 474
    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnectedCellular()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->isDataConnectionPermitted()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 475
    :cond_1a
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->showConnectDialog()V

    .line 496
    :cond_1d
    :goto_1d
    return v1

    .line 479
    :cond_1e
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 480
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 482
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 483
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->getLanguageDownloadPref()Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/LanguageOptions;->showNetworkNotificationDialog(Ljava/lang/String;)V

    goto :goto_1d

    .line 487
    :cond_44
    const/4 v3, 0x0

    invoke-direct {p0, v1, v1, v2, v3}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 488
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnectedWifi()Z

    move-result v3

    if-nez v3, :cond_63

    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 489
    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_65

    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->isDataConnectionPermitted()Z

    move-result v3

    if-eqz v3, :cond_65

    :cond_63
    move v1, v2

    .line 491
    goto :goto_1d

    .line 493
    :cond_65
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->showConnectDialog()V

    goto :goto_1d
.end method

.method private isDialogShowing()Z
    .registers 2

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->isDialogShowing:Z

    return v0
.end method

.method private showLanguageDialog(Lcom/nuance/swype/input/InputMethods$Language;)V
    .registers 6
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    const/4 v3, 0x1

    .line 445
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->isDialogShowing()Z

    move-result v1

    if-nez v1, :cond_22

    .line 446
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "language"

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string/jumbo v1, "additional_language"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 449
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLanguageDialog(Landroid/os/Bundle;)V

    .line 450
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/LanguageOptions;->setDialogShowing(Z)V

    .line 452
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_22
    return-void
.end method

.method private showLegalRequirements(IZZLandroid/os/Bundle;)Z
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "tosRequired"    # Z
    .param p3, "optInRequired"    # Z
    .param p4, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 501
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v1, p2, p3, p4}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 502
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_d

    .line 503
    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/settings/LanguageOptions;->doStartActivityForResult(Landroid/content/Intent;I)V

    .line 504
    const/4 v1, 0x1

    .line 506
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method


# virtual methods
.method protected buildLanguagePrefs()V
    .registers 14

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 319
    iget-object v8, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/preference/LanguagePreference;->getDefaultTitleTextSize(Landroid/content/Context;)F

    move-result v4

    .line 321
    .local v4, "langPrefTitleFontSize":F
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->getLanguageDownloadPref()Landroid/preference/Preference;

    move-result-object v2

    .line 322
    .local v2, "downloadLanguages":Landroid/preference/Preference;
    if-eqz v2, :cond_71

    .line 323
    instance-of v8, v2, Lcom/nuance/swype/preference/ViewClickPreference;

    if-eqz v8, :cond_107

    move-object v8, v2

    .line 324
    check-cast v8, Lcom/nuance/swype/preference/ViewClickPreference;

    invoke-virtual {v8, p0}, Lcom/nuance/swype/preference/ViewClickPreference;->setListener(Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;)V

    move-object v8, v2

    .line 325
    check-cast v8, Lcom/nuance/swype/preference/ViewClickPreference;

    invoke-virtual {v8, v10}, Lcom/nuance/swype/preference/ViewClickPreference;->setFocusable(Z)V

    move-object v8, v2

    .line 326
    check-cast v8, Lcom/nuance/swype/preference/ViewClickPreference;

    new-instance v11, Lcom/nuance/swype/input/settings/LanguageOptions$7;

    invoke-direct {v11, p0}, Lcom/nuance/swype/input/settings/LanguageOptions$7;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;)V

    .line 2082
    iput-object v11, v8, Lcom/nuance/swype/preference/ViewClickPreference;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 2083
    iget-object v12, v8, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    if-eqz v12, :cond_35

    .line 2084
    iget-object v8, v8, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_35
    :goto_35
    move-object v8, v2

    .line 335
    check-cast v8, Lcom/nuance/swype/preference/NoMarginClassActionPreference;

    .line 3045
    iput v4, v8, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->titleTextSize:F

    .line 336
    iget-object v8, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/connect/Connect;->isLicensed()Z

    move-result v8

    if-eqz v8, :cond_6c

    iget-object v8, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    .line 337
    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v11, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_60

    iget-object v8, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    .line 338
    invoke-static {v8}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v8

    if-eqz v8, :cond_6c

    :cond_60
    iget-object v8, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->isTrialExpired()Z

    move-result v8

    if-eqz v8, :cond_71

    .line 339
    :cond_6c
    iget-object v8, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 343
    :cond_71
    iget-object v8, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    .line 344
    .local v3, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 346
    .local v0, "curLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    iget-object v8, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v11, "current_language"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/preference/CurrentLanguagePreference;

    .line 347
    .local v1, "currentLangPref":Lcom/nuance/swype/preference/CurrentLanguagePreference;
    invoke-virtual {v1, v0}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->setLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 348
    invoke-virtual {v1, p0}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->setLanguagePreferenceListener(Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;)V

    .line 349
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayModes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v10, :cond_a2

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v8

    if-nez v8, :cond_a2

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v8

    if-eqz v8, :cond_10e

    :cond_a2
    move v8, v10

    :goto_a3
    invoke-virtual {v1, v8}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->setKeyboardVisible(Z)V

    .line 350
    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/InputMethods;->getCompatibleInputLanguages(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_110

    move v8, v10

    :goto_b1
    invoke-virtual {v1, v8}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->setAdditionalLanguageVisible(Z)V

    .line 3178
    iput v4, v1, Lcom/nuance/swype/preference/LanguagePreference;->titleTextSize:F

    .line 353
    iget-object v8, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v11, "recent_languages"

    .line 354
    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 355
    .local v7, "recentCategory":Landroid/preference/PreferenceCategory;
    if-eqz v7, :cond_114

    .line 356
    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 357
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_ce
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_114

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/InputMethods$Language;

    .line 358
    .local v5, "language":Lcom/nuance/swype/input/InputMethods$Language;
    new-instance v6, Lcom/nuance/swype/preference/LanguagePreference;

    iget-object v8, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-direct {v6, v8}, Lcom/nuance/swype/preference/LanguagePreference;-><init>(Landroid/content/Context;)V

    .line 359
    .local v6, "preference":Lcom/nuance/swype/preference/LanguagePreference;
    invoke-virtual {v6, v5}, Lcom/nuance/swype/preference/LanguagePreference;->setLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 360
    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/InputMethods$Language;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/nuance/swype/preference/LanguagePreference;->setCurrent(Z)V

    .line 361
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayModes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v10, :cond_112

    move v8, v10

    :goto_f6
    invoke-virtual {v6, v8}, Lcom/nuance/swype/preference/LanguagePreference;->setKeyboardVisible(Z)V

    .line 4178
    iput v4, v6, Lcom/nuance/swype/preference/LanguagePreference;->titleTextSize:F

    .line 363
    new-instance v8, Lcom/nuance/swype/input/settings/LanguageOptions$8;

    invoke-direct {v8, p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptions$8;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/input/InputMethods$Language;)V

    invoke-virtual {v6, v8}, Lcom/nuance/swype/preference/LanguagePreference;->setLanguagePreferenceListener(Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;)V

    .line 388
    invoke-virtual {v7, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_ce

    .line 333
    .end local v0    # "curLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v1    # "currentLangPref":Lcom/nuance/swype/preference/CurrentLanguagePreference;
    .end local v3    # "inputMethods":Lcom/nuance/swype/input/InputMethods;
    .end local v5    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v6    # "preference":Lcom/nuance/swype/preference/LanguagePreference;
    .end local v7    # "recentCategory":Landroid/preference/PreferenceCategory;
    :cond_107
    iget-object v8, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->languageDownloadListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_35

    .restart local v0    # "curLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v1    # "currentLangPref":Lcom/nuance/swype/preference/CurrentLanguagePreference;
    .restart local v3    # "inputMethods":Lcom/nuance/swype/input/InputMethods;
    :cond_10e
    move v8, v9

    .line 349
    goto :goto_a3

    :cond_110
    move v8, v9

    .line 350
    goto :goto_b1

    .restart local v5    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v6    # "preference":Lcom/nuance/swype/preference/LanguagePreference;
    .restart local v7    # "recentCategory":Landroid/preference/PreferenceCategory;
    :cond_112
    move v8, v9

    .line 361
    goto :goto_f6

    .line 391
    .end local v5    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v6    # "preference":Lcom/nuance/swype/preference/LanguagePreference;
    :cond_114
    return-void
.end method

.method public createConnectDialog()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public createKeyboardDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 250
    const-string/jumbo v5, "language"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    .line 252
    invoke-virtual {v5, v2}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    .line 253
    .local v4, "language":Lcom/nuance/swype/input/InputMethods$Language;
    new-instance v3, Lcom/nuance/swype/preference/KeyboardListAdapter;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-direct {v3, v5, v4}, Lcom/nuance/swype/preference/KeyboardListAdapter;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 1089
    .local v3, "keyboardAdapter":Lcom/nuance/swype/preference/KeyboardListAdapter;
    iget-object v1, v3, Lcom/nuance/swype/preference/KeyboardListAdapter;->curInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 257
    .local v1, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 258
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 259
    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 260
    sget v5, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 262
    new-instance v5, Lcom/nuance/swype/input/settings/LanguageOptions$4;

    invoke-direct {v5, p0, v3}, Lcom/nuance/swype/input/settings/LanguageOptions$4;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/preference/KeyboardListAdapter;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    :goto_3e
    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    sget v6, Lcom/nuance/swype/input/R$string;->keyboard_input:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 313
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 269
    :cond_4e
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 270
    new-instance v5, Lcom/nuance/swype/input/settings/LanguageOptions$5;

    invoke-direct {v5, p0, v3, v4}, Lcom/nuance/swype/input/settings/LanguageOptions$5;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/preference/KeyboardListAdapter;Lcom/nuance/swype/input/InputMethods$Language;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3e

    .line 283
    :cond_5d
    new-instance v5, Lcom/nuance/swype/input/settings/LanguageOptions$6;

    invoke-direct {v5, p0, v3, v4, v1}, Lcom/nuance/swype/input/settings/LanguageOptions$6;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/preference/KeyboardListAdapter;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$InputMode;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3e
.end method

.method public createLanguageDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 15
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 159
    const-string/jumbo v0, "language"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 160
    .local v11, "languageKey":Ljava/lang/String;
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v10

    .line 161
    .local v10, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v10, v11}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    .line 162
    .local v5, "originalLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    const-string/jumbo v0, "additional_language"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 164
    .local v4, "isAdditionalLanguage":Z
    move-object v8, v5

    .line 165
    .local v8, "checkedLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    move-object v9, v5

    .line 166
    .local v9, "firstLanguageTemp":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v4, :cond_2e

    .line 167
    instance-of v0, v8, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v0, :cond_6c

    move-object v0, v8

    .line 168
    check-cast v0, Lcom/nuance/swype/input/BilingualLanguage;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BilingualLanguage;->getFirstLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v9

    .line 169
    check-cast v8, Lcom/nuance/swype/input/BilingualLanguage;

    .end local v8    # "checkedLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v8}, Lcom/nuance/swype/input/BilingualLanguage;->getSecondLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v8

    .line 175
    .restart local v8    # "checkedLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_2e
    :goto_2e
    move-object v3, v9

    .line 176
    .local v3, "firstLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    move-object v6, v8

    .line 178
    .local v6, "secondaryLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v4, :cond_6e

    .line 179
    invoke-virtual {v10, v3}, Lcom/nuance/swype/input/InputMethods;->getCompatibleInputLanguages(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/util/List;

    move-result-object v12

    .line 182
    .local v12, "languageList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    :goto_36
    new-instance v2, Lcom/nuance/swype/input/LanguageListAdapter;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-direct {v2, v0, v12, v8, v4}, Lcom/nuance/swype/input/LanguageListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/nuance/swype/input/InputMethods$Language;Z)V

    .line 185
    .local v2, "languageAdapter":Lcom/nuance/swype/input/LanguageListAdapter;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 188
    sget v0, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 189
    sget v0, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 190
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptions$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/settings/LanguageOptions$3;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/input/LanguageListAdapter;Lcom/nuance/swype/input/InputMethods$Language;ZLcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$Language;)V

    invoke-virtual {v7, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    sget v1, Lcom/nuance/swype/input/R$string;->pref_current_languages:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 171
    .end local v2    # "languageAdapter":Lcom/nuance/swype/input/LanguageListAdapter;
    .end local v3    # "firstLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v6    # "secondaryLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v7    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "languageList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    :cond_6c
    const/4 v8, 0x0

    goto :goto_2e

    .line 180
    .restart local v3    # "firstLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v6    # "secondaryLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_6e
    invoke-virtual {v10}, Lcom/nuance/swype/input/InputMethods;->getInputLanguagesCopy()Ljava/util/List;

    move-result-object v12

    goto :goto_36
.end method

.method public createNetworkNotificationDialg()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected abstract doStartActivityForResult(Landroid/content/Intent;I)V
.end method

.method protected final findPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_12

    .line 134
    :cond_3
    :goto_3
    return-void

    .line 121
    :pswitch_4
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 122
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->getLanguageDownloadPref()Landroid/preference/Preference;

    move-result-object v0

    .line 123
    .local v0, "languageDownloadPref":Landroid/preference/Preference;
    if-eqz v0, :cond_3

    .line 124
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLanguageDownload(Landroid/preference/Preference;)V

    goto :goto_3

    .line 119
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onAdditionalLanguageClicked(Lcom/nuance/swype/input/InputMethods$Language;)V
    .registers 6
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 415
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 416
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isBilingualTipAlreadyShown()Z

    move-result v2

    if-nez v2, :cond_38

    .line 417
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 418
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 419
    sget v2, Lcom/nuance/swype/input/R$string;->pref_bilingual_popupheader:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 420
    sget v2, Lcom/nuance/swype/input/R$string;->bilingual_first_time_tip:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 421
    const v2, 0x104000a

    new-instance v3, Lcom/nuance/swype/input/settings/LanguageOptions$9;

    invoke-direct {v3, p0, p1}, Lcom/nuance/swype/input/settings/LanguageOptions$9;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/input/InputMethods$Language;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 428
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 429
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->setBilingualTipShown()V

    .line 433
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_37
    return-void

    .line 431
    :cond_38
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLanguageDialog(Lcom/nuance/swype/input/InputMethods$Language;)V

    goto :goto_37
.end method

.method protected onKeyForFocusChanging(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v6, 0x16

    const/16 v5, 0x15

    const/16 v4, 0x13

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 535
    const/16 v3, 0x14

    if-eq p2, v3, :cond_13

    if-eq p2, v4, :cond_13

    if-eq p2, v5, :cond_13

    if-eq p2, v6, :cond_13

    .line 571
    :goto_12
    return v1

    .line 541
    :cond_13
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1d

    .line 542
    iput-boolean v2, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->keyIsDown:Z

    move v1, v2

    .line 543
    goto :goto_12

    .line 548
    :cond_1d
    iget-boolean v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->keyIsDown:Z

    if-nez v3, :cond_23

    move v1, v2

    .line 549
    goto :goto_12

    .line 551
    :cond_23
    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->keyIsDown:Z

    .line 554
    if-ne p2, v4, :cond_34

    .line 555
    const/16 v1, 0x21

    invoke-virtual {p1, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 567
    .local v0, "nextView":Landroid/view/View;
    :goto_2d
    if-eqz v0, :cond_32

    .line 568
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_32
    move v1, v2

    .line 571
    goto :goto_12

    .line 557
    .end local v0    # "nextView":Landroid/view/View;
    :cond_34
    if-ne p2, v5, :cond_3d

    .line 558
    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "nextView":Landroid/view/View;
    goto :goto_2d

    .line 560
    .end local v0    # "nextView":Landroid/view/View;
    :cond_3d
    if-ne p2, v6, :cond_46

    .line 561
    const/16 v1, 0x42

    invoke-virtual {p1, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "nextView":Landroid/view/View;
    goto :goto_2d

    .line 564
    .end local v0    # "nextView":Landroid/view/View;
    :cond_46
    const/16 v1, 0x82

    invoke-virtual {p1, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "nextView":Landroid/view/View;
    goto :goto_2d
.end method

.method public onKeyboardClicked(Lcom/nuance/swype/input/InputMethods$Language;)V
    .registers 5
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->isDialogShowing()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 406
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 407
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "language"

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->showKeyboardDialog(Landroid/os/Bundle;)V

    .line 409
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/LanguageOptions;->setDialogShowing(Z)V

    .line 411
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1c
    return-void
.end method

.method public onLanguageClicked(Lcom/nuance/swype/input/InputMethods$Language;)V
    .registers 5
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->isDialogShowing()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 397
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "language"

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLanguageDialog(Landroid/os/Bundle;)V

    .line 399
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/LanguageOptions;->setDialogShowing(Z)V

    .line 401
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1c
    return-void
.end method

.method public onNegativeButtonClick()Z
    .registers 2

    .prologue
    .line 526
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 111
    return-void
.end method

.method public onPositiveButtonClick()Z
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLanguageDownload(Ljava/lang/String;)V

    .line 531
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->buildLanguagePrefs()V

    .line 107
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 458
    const-string/jumbo v0, "current_language"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/nuance/swype/input/InputMethods;->CJK_SETTINGS:Ljava/util/Set;

    .line 459
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 460
    :cond_11
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->buildLanguagePrefs()V

    .line 462
    :cond_14
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    if-nez v0, :cond_d

    .line 94
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptions$2;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/LanguageOptions$2;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 101
    :cond_d
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 102
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 115
    return-void
.end method

.method public onViewClick(Landroid/preference/Preference;)V
    .registers 3
    .param p1, "pf"    # Landroid/preference/Preference;

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->handleDownloadClick()Z

    move-result v0

    if-nez v0, :cond_9

    .line 440
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLanguageDownload(Landroid/preference/Preference;)V

    .line 442
    :cond_9
    return-void
.end method

.method protected abstract refresh()V
.end method

.method public setDialogShowing(Z)V
    .registers 2
    .param p1, "isDialogShowing"    # Z

    .prologue
    .line 514
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->isDialogShowing:Z

    .line 515
    return-void
.end method

.method protected abstract showConnectDialog()V
.end method

.method protected abstract showKeyboardDialog(Landroid/os/Bundle;)V
.end method

.method protected abstract showLanguageDialog(Landroid/os/Bundle;)V
.end method

.method protected abstract showLanguageDownload(Landroid/preference/Preference;)V
.end method

.method protected abstract showLanguageDownload(Ljava/lang/String;)V
.end method

.method protected abstract showNetworkNotificationDialog(Ljava/lang/String;)V
.end method
