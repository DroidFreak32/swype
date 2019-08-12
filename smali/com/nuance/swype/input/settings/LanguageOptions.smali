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

.field private final languageDownloadListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field protected mPrefKey:Ljava/lang/String;

.field private final screen:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/nuance/swype/input/R$xml;->prefs_language:I

    sput v0, Lcom/nuance/swype/input/settings/LanguageOptions;->LANGUAGE_PREFS_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->isDialogShowing:Z

    .line 453
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptions$8;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/LanguageOptions$8;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->languageDownloadListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 70
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    .line 71
    iput-object p2, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    .line 73
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptions$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/LanguageOptions$1;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    const-string v1, "languages"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->recordScreenVisited(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/LanguageOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageOptions;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->handleDownloadClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageOptions;
    .param p1, "x1"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLanguageDialog(Lcom/nuance/swype/input/InputMethods$Language;)V

    return-void
.end method

.method private getLanguageDownloadPref()Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    const-string v1, "download_languages"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method private handleDownloadClick()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 462
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 463
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->getLanguageDownloadPref()Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/LanguageOptions;->showNetworkNotificationDialog(Ljava/lang/String;)V

    .line 479
    :cond_0
    :goto_0
    return v1

    .line 470
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v1, v1, v2, v3}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 471
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnectedWifi()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->isDataConnectionPermitted()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 474
    goto :goto_0

    .line 476
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->showConnectDialog()V

    goto :goto_0
.end method

.method private isDialogShowing()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->isDialogShowing:Z

    return v0
.end method

.method private showLanguageDialog(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 4
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    const/4 v3, 0x1

    .line 434
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->isDialogShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 436
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "language"

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v1, "additional_language"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 438
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLanguageDialog(Landroid/os/Bundle;)V

    .line 439
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/LanguageOptions;->setDialogShowing(Z)V

    .line 441
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private showLegalRequirements(IZZLandroid/os/Bundle;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "tosRequired"    # Z
    .param p3, "optInRequired"    # Z
    .param p4, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 484
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v1, p2, p3, p4}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 485
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/settings/LanguageOptions;->doStartActivityForResult(Landroid/content/Intent;I)V

    .line 487
    const/4 v1, 0x1

    .line 489
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected buildLanguagePrefs()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 314
    iget-object v9, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/preference/LanguagePreference;->getDefaultTitleTextSize(Landroid/content/Context;)F

    move-result v5

    .line 316
    .local v5, "langPrefTitleFontSize":F
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->getLanguageDownloadPref()Landroid/preference/Preference;

    move-result-object v2

    .line 317
    .local v2, "downloadLanguages":Landroid/preference/Preference;
    if-eqz v2, :cond_1

    .line 318
    instance-of v9, v2, Lcom/nuance/swype/preference/ViewClickPreference;

    if-eqz v9, :cond_2

    move-object v9, v2

    .line 319
    check-cast v9, Lcom/nuance/swype/preference/ViewClickPreference;

    invoke-virtual {v9, p0}, Lcom/nuance/swype/preference/ViewClickPreference;->setListener(Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;)V

    :goto_0
    move-object v9, v2

    .line 323
    check-cast v9, Lcom/nuance/swype/preference/NoMarginClassActionPreference;

    invoke-virtual {v9, v5}, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->setTitleTextSize(F)V

    .line 324
    iget-object v9, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/connect/Connect;->isLicensed()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->isLVLLicenseValid()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v12, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v9

    if-nez v9, :cond_1

    .line 327
    :cond_0
    iget-object v9, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    :cond_1
    iget-object v9, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    .line 332
    .local v4, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 333
    .local v0, "curLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    iget-object v9, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    .line 335
    iget-object v9, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    const-string v12, "current_language"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/preference/CurrentLanguagePreference;

    .line 336
    .local v1, "currentLangPref":Lcom/nuance/swype/preference/CurrentLanguagePreference;
    invoke-virtual {v1, v0}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->setLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 337
    invoke-virtual {v1, p0}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->setLanguagePreferenceListener(Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;)V

    .line 338
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayModes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v10, :cond_3

    move v9, v10

    :goto_1
    invoke-virtual {v1, v9}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->setKeyboardVisible(Z)V

    .line 339
    invoke-virtual {v4, v0}, Lcom/nuance/swype/input/InputMethods;->getCompatibleInputLanguages(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    move v9, v10

    :goto_2
    invoke-virtual {v1, v9}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->setAdditionaLanguageVisible(Z)V

    .line 340
    invoke-virtual {v1, v5}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->setTitleTextSize(F)V

    .line 342
    iget-object v9, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    const-string v12, "recent_languages"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 344
    .local v8, "recentCategory":Landroid/preference/PreferenceCategory;
    if-eqz v8, :cond_6

    .line 345
    invoke-virtual {v8}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 346
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/InputMethods$Language;

    .line 347
    .local v6, "language":Lcom/nuance/swype/input/InputMethods$Language;
    new-instance v7, Lcom/nuance/swype/preference/LanguagePreference;

    iget-object v9, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-direct {v7, v9}, Lcom/nuance/swype/preference/LanguagePreference;-><init>(Landroid/content/Context;)V

    .line 348
    .local v7, "preference":Lcom/nuance/swype/preference/LanguagePreference;
    invoke-virtual {v7, v6}, Lcom/nuance/swype/preference/LanguagePreference;->setLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 349
    invoke-virtual {v0, v6}, Lcom/nuance/swype/input/InputMethods$Language;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/nuance/swype/preference/LanguagePreference;->setCurrent(Z)V

    .line 350
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayModes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v10, :cond_5

    move v9, v10

    :goto_4
    invoke-virtual {v7, v9}, Lcom/nuance/swype/preference/LanguagePreference;->setKeyboardVisible(Z)V

    .line 351
    invoke-virtual {v7, v5}, Lcom/nuance/swype/preference/LanguagePreference;->setTitleTextSize(F)V

    .line 352
    new-instance v9, Lcom/nuance/swype/input/settings/LanguageOptions$6;

    invoke-direct {v9, p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptions$6;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/input/InputMethods$Language;)V

    invoke-virtual {v7, v9}, Lcom/nuance/swype/preference/LanguagePreference;->setLanguagePreferenceListener(Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;)V

    .line 377
    invoke-virtual {v8, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 321
    .end local v0    # "curLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v1    # "currentLangPref":Lcom/nuance/swype/preference/CurrentLanguagePreference;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "inputMethods":Lcom/nuance/swype/input/InputMethods;
    .end local v6    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v7    # "preference":Lcom/nuance/swype/preference/LanguagePreference;
    .end local v8    # "recentCategory":Landroid/preference/PreferenceCategory;
    :cond_2
    iget-object v9, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->languageDownloadListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .restart local v0    # "curLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v1    # "currentLangPref":Lcom/nuance/swype/preference/CurrentLanguagePreference;
    .restart local v4    # "inputMethods":Lcom/nuance/swype/input/InputMethods;
    :cond_3
    move v9, v11

    .line 338
    goto :goto_1

    :cond_4
    move v9, v11

    .line 339
    goto :goto_2

    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v7    # "preference":Lcom/nuance/swype/preference/LanguagePreference;
    .restart local v8    # "recentCategory":Landroid/preference/PreferenceCategory;
    :cond_5
    move v9, v11

    .line 350
    goto :goto_4

    .line 380
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v7    # "preference":Lcom/nuance/swype/preference/LanguagePreference;
    :cond_6
    return-void
.end method

.method public createConnectDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public createKeyboardDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 270
    const-string v5, "language"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    .line 272
    invoke-virtual {v5, v2}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    .line 273
    .local v4, "language":Lcom/nuance/swype/input/InputMethods$Language;
    new-instance v3, Lcom/nuance/swype/preference/KeyboardListAdapter;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-direct {v3, v5, v4}, Lcom/nuance/swype/preference/KeyboardListAdapter;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 275
    .local v3, "keyboardAdapter":Lcom/nuance/swype/preference/KeyboardListAdapter;
    invoke-virtual {v3}, Lcom/nuance/swype/preference/KeyboardListAdapter;->getCurrentMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 277
    .local v1, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 280
    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 281
    sget v5, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    new-instance v5, Lcom/nuance/swype/input/settings/LanguageOptions$5;

    invoke-direct {v5, p0, v3, v4, v1}, Lcom/nuance/swype/input/settings/LanguageOptions$5;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/preference/KeyboardListAdapter;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$InputMode;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 307
    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    sget v6, Lcom/nuance/swype/input/R$string;->keyboard_input:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public createLanguageDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 155
    const-string v0, "language"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 156
    .local v12, "languageKey":Ljava/lang/String;
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v10

    .line 157
    .local v10, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v10, v12}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    .line 158
    .local v5, "originalLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    const-string v0, "additional_language"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 160
    .local v4, "isAdditionalLanguage":Z
    move-object v8, v5

    .line 161
    .local v8, "checkedLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    move-object v9, v5

    .line 162
    .local v9, "firstLanguageTemp":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v4, :cond_0

    .line 163
    instance-of v0, v8, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v0, :cond_2

    move-object v0, v8

    .line 164
    check-cast v0, Lcom/nuance/swype/input/BilingualLanguage;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BilingualLanguage;->getFirstLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v9

    .line 165
    check-cast v8, Lcom/nuance/swype/input/BilingualLanguage;

    .end local v8    # "checkedLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v8}, Lcom/nuance/swype/input/BilingualLanguage;->getSecondLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v8

    .line 171
    .restart local v8    # "checkedLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_0
    :goto_0
    move-object v3, v9

    .line 172
    .local v3, "firstLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    move-object v6, v8

    .line 174
    .local v6, "secondaryLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v4, :cond_3

    invoke-virtual {v10, v3}, Lcom/nuance/swype/input/InputMethods;->getCompatibleInputLanguages(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/util/List;

    move-result-object v13

    .line 178
    .local v13, "languageList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    :goto_1
    new-instance v2, Lcom/nuance/swype/input/LanguageListAdapter;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-direct {v2, v0, v13, v8, v4}, Lcom/nuance/swype/input/LanguageListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/nuance/swype/input/InputMethods$Language;Z)V

    .line 181
    .local v2, "languageAdapter":Lcom/nuance/swype/input/LanguageListAdapter;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 184
    sget v0, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 185
    sget v0, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->getLanguageDownloadPref()Landroid/preference/Preference;

    move-result-object v11

    .line 187
    .local v11, "languageDownloadPref":Landroid/preference/Preference;
    if-eqz v11, :cond_1

    .line 188
    sget v0, Lcom/nuance/swype/input/R$string;->pref_download_language_title:I

    new-instance v1, Lcom/nuance/swype/input/settings/LanguageOptions$3;

    invoke-direct {v1, p0, v11}, Lcom/nuance/swype/input/settings/LanguageOptions$3;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;Landroid/preference/Preference;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    :cond_1
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptions$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/settings/LanguageOptions$4;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/input/LanguageListAdapter;Lcom/nuance/swype/input/InputMethods$Language;ZLcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$Language;)V

    invoke-virtual {v7, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    sget v1, Lcom/nuance/swype/input/R$string;->language_category_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 265
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 167
    .end local v2    # "languageAdapter":Lcom/nuance/swype/input/LanguageListAdapter;
    .end local v3    # "firstLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v6    # "secondaryLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v7    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v11    # "languageDownloadPref":Landroid/preference/Preference;
    .end local v13    # "languageList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 174
    .restart local v3    # "firstLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v6    # "secondaryLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_3
    invoke-virtual {v10}, Lcom/nuance/swype/input/InputMethods;->getInputLanguagesCopy()Ljava/util/List;

    move-result-object v13

    goto :goto_1
.end method

.method public createNetworkNotificationDialg()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected abstract doStartActivityForResult(Landroid/content/Intent;I)V
.end method

.method protected final findPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 112
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 113
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 114
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->showLanguageDownloads()V

    goto :goto_0

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->getLanguageDownloadPref()Landroid/preference/Preference;

    move-result-object v0

    .line 117
    .local v0, "languageDownloadPref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLanguageDownload(Landroid/preference/Preference;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAdditionalLanguageClicked(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 4
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 404
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 405
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isBilingualTipAlreadyShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 407
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 408
    sget v2, Lcom/nuance/swype/input/R$string;->pref_bilingual_popupheader:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 409
    sget v2, Lcom/nuance/swype/input/R$string;->bilingual_first_time_tip:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 410
    const v2, 0x104000a

    new-instance v3, Lcom/nuance/swype/input/settings/LanguageOptions$7;

    invoke-direct {v3, p0, p1}, Lcom/nuance/swype/input/settings/LanguageOptions$7;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/input/InputMethods$Language;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 418
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->setBilingualTipShown()V

    .line 422
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLanguageDialog(Lcom/nuance/swype/input/InputMethods$Language;)V

    goto :goto_0
.end method

.method public onKeyboardClicked(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 3
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->isDialogShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 396
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "language"

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->showKeyboardDialog(Landroid/os/Bundle;)V

    .line 398
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/LanguageOptions;->setDialogShowing(Z)V

    .line 400
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onLanguageClicked(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 3
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->isDialogShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 386
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "language"

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLanguageDialog(Landroid/os/Bundle;)V

    .line 388
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/LanguageOptions;->setDialogShowing(Z)V

    .line 390
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onNegativeButtonClick()Z
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 103
    return-void
.end method

.method public onPositiveButtonClick()Z
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLanguageDownload(Ljava/lang/String;)V

    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->buildLanguagePrefs()V

    .line 99
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 447
    const-string v0, "current_language"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/swype/input/InputMethods;->CJK_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->buildLanguagePrefs()V

    .line 451
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptions$2;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/LanguageOptions$2;-><init>(Lcom/nuance/swype/input/settings/LanguageOptions;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 94
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 107
    return-void
.end method

.method public onViewClick(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "pf"    # Landroid/preference/Preference;

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptions;->handleDownloadClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLanguageDownload(Landroid/preference/Preference;)V

    .line 431
    :cond_0
    return-void
.end method

.method protected abstract refresh()V
.end method

.method public setDialogShowing(Z)V
    .locals 0
    .param p1, "isDialogShowing"    # Z

    .prologue
    .line 497
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions;->isDialogShowing:Z

    .line 498
    return-void
.end method

.method public abstract showAlmAvailableDialog(Landroid/content/Context;Landroid/os/Bundle;)V
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
