.class public abstract Lcom/nuance/swype/input/settings/MyWordsPrefs;
.super Lcom/nuance/swype/preference/DialogPrefs;
.source "MyWordsPrefs.java"

# interfaces
.implements Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;
    }
.end annotation


# static fields
.field protected static final ACCOUNT_MANAGE_KEY:Ljava/lang/String; = "pref_account_manage"

.field protected static final ACTIVATION_CODE_KEY:Ljava/lang/String; = "pref_activation_code"

.field static final ACTIVATION_DIALOG:I = 0x5

.field static final ASK_BEFORE_ADD_DIALOG:I = 0x7

.field static final CONNECTION_DIALOG:I = 0x2

.field protected static final CONTRIBUTE_USAGE_DATA_KEY:Ljava/lang/String; = "pref_connect_contribute_usage_data"

.field protected static final DATA_MANAGEMENT_CAT:Ljava/lang/String; = "pref_data_management"

.field protected static final DICTIONARY_MANAGEMENT_CAT:Ljava/lang/String; = "dictionary_management"

.field static final DISABLE_USAGE_DATA_WARNING:I = 0x6

.field protected static final EDIT_MY_DICTIONARY:Ljava/lang/String; = "edit_dictionary_preference_key"

.field protected static final ERASE_UDB_KEY:Ljava/lang/String; = "erase_udb"

.field protected static final HOTWORDS_KEY:Ljava/lang/String; = "pref_connect_hotwords"

.field public static final INVALID_CODE_KEY:Ljava/lang/String; = "invalid_account_key"

.field public static final MY_WORDS_PREFS_XML:I

.field static final NO_NETWORK_DIALOG:I = 0x3

.field protected static final PERSONAL_DICTIONARY_BEHAVIOR_KEY:Ljava/lang/String; = "edit_dictionary_preference_change_behavior_key"

.field protected static final REGISTER_KEY:Ljava/lang/String; = "pref_account_register"

.field protected static final REQUEST_CODE_DATA_OPT_IN:I = 0x1

.field protected static final REQUEST_CODE_LIVING_LANGUAGE:I = 0x3

.field protected static final REQUEST_CODE_PERSONALIZATION_TOS:I = 0x4

.field static final SHOW_ERASE_UDB_DIALOG:I = 0x8

.field static final SHOW_NETWORK_NOTIFICATION_DIALOG:I = 0x9

.field protected static final SOCIAL_INTEGRATION:Ljava/lang/String; = "pref_social_integration"


# instance fields
.field private accountCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

.field activationDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

.field private final activity:Landroid/app/Activity;

.field private connect:Lcom/nuance/swype/connect/Connect;

.field private connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

.field private connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

.field connectionDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

.field private connectionListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field dataOptOutWarningDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

.field private eraseUdbConfirmation:Landroid/preference/Preference$OnPreferenceClickListener;

.field private livingLanguageLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

.field log:Lcom/nuance/connect/util/Logger$Log;

.field protected mPrefKey:Ljava/lang/String;

.field noNetworkDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

.field private screen:Landroid/preference/PreferenceScreen;

.field private settingsChanged:Z

.field private showAskBeforeAddListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private final userDictionaryIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    sget v0, Lcom/nuance/swype/input/R$xml;->mywordspreferences:I

    sput v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->MY_WORDS_PREFS_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/nuance/swype/preference/DialogPrefs;-><init>()V

    .line 102
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->accountCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    .line 152
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$2;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->livingLanguageLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    .line 180
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 553
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$8;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$8;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->eraseUdbConfirmation:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 562
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$9;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$9;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectionListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 575
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$10;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$10;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showAskBeforeAddListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 703
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$11;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$11;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectionDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 710
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$12;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activationDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 883
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$13;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->noNetworkDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 893
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$14;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$14;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->dataOptOutWarningDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 184
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    .line 185
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    .line 187
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 188
    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->createUserDictionaryIterator(Lcom/nuance/swype/input/InputMethods$Language;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->userDictionaryIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    .line 190
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectionDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 191
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->noNetworkDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 192
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activationDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 193
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->dataOptOutWarningDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 194
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$3;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$3;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .line 201
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->MY_WORDS:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v0}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 202
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/settings/MyWordsPrefs;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->settingsChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->userDictionaryIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectResetHotwords(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/MyWordsPrefs;IZZLandroid/os/Bundle;)Z
    .registers 6
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/MyWordsPrefs;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showDlmExportMessage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->livingLanguageLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/connect/Connect;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/preference/ConnectionAwarePreferences;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/MyWordsPrefs;Landroid/content/Context;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onClickConfirmButton(Landroid/content/Context;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/settings/MyWordsPrefs;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;
    .param p1, "x1"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onClickEmailChangeButton(Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/settings/MyWordsPrefs;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;
    .param p1, "x1"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onClickResendCodeButton(Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V

    return-void
.end method

.method private addConnectionAwarePreference(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V
    .registers 4
    .param p1, "category"    # Landroid/preference/PreferenceCategory;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 584
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 590
    :cond_4
    :goto_4
    return-void

    .line 587
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 588
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectionListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_4
.end method

.method private addDlmExportPreference(Landroid/preference/PreferenceCategory;)V
    .registers 5
    .param p1, "perPrefCat"    # Landroid/preference/PreferenceCategory;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 297
    if-eqz p1, :cond_f

    .line 298
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "state":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 338
    .end local v1    # "state":Ljava/lang/String;
    :cond_f
    :goto_f
    return-void

    .line 303
    .restart local v1    # "state":Ljava/lang/String;
    :cond_10
    new-instance v0, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 304
    .local v0, "exportDlmPref":Landroid/preference/Preference;
    const-string/jumbo v2, "export_dlm_pref"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 305
    const-string/jumbo v2, "Export Dlm to sd card"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 308
    new-instance v2, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_f
.end method

.method private static connectResetHotwords(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1070
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v1

    .line 1071
    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->disable()V

    .line 1074
    invoke-static {p0}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 1075
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_1e

    .line 1076
    const-string/jumbo v1, "Clear language data"

    const-string/jumbo v2, "Clear:Yes"

    const-string/jumbo v3, "Clear:NO"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1079
    :cond_1e
    return-void
.end method

.method private onClickConfirmButton(Landroid/content/Context;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlg"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 870
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v1

    if-nez v1, :cond_11

    .line 871
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 872
    invoke-virtual {p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->dismiss()V

    .line 881
    :goto_10
    return-void

    .line 874
    :cond_11
    sget v1, Lcom/nuance/swype/input/R$id;->editText_activation_code:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 875
    .local v0, "code":Landroid/widget/EditText;
    const-string/jumbo v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 876
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 877
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->validate(Ljava/lang/String;)Z

    .line 878
    invoke-virtual {p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->inProgress()V

    .line 879
    invoke-virtual {p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->updateView()V

    goto :goto_10
.end method

.method private onClickEmailChangeButton(Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V
    .registers 4
    .param p1, "dlg"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    .prologue
    .line 852
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    .line 853
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 858
    :goto_d
    return-void

    .line 855
    :cond_e
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->startRegisterActivity()V

    .line 856
    invoke-virtual {p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->dismiss()V

    goto :goto_d
.end method

.method private onClickResendCodeButton(Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V
    .registers 4
    .param p1, "dlg"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    .prologue
    .line 861
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    .line 862
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 867
    :goto_d
    return-void

    .line 864
    :cond_e
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->sendReverify()V

    .line 865
    invoke-virtual {p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->dismiss()V

    goto :goto_d
.end method

.method private recordMyWordsSettings()V
    .registers 9

    .prologue
    .line 1171
    iget-object v6, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 1172
    .local v1, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    .line 1178
    .local v5, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect$Accounts;->getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v0

    .line 1179
    .local v0, "account":Lcom/nuance/swypeconnect/ac/ACAccount;
    if-nez v0, :cond_33

    .line 1180
    sget-object v4, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->UNREGISTERED:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .line 1190
    .local v4, "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    :goto_1e
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->isEnabled()Z

    move-result v3

    .line 1193
    .local v3, "livingLanguageEnabled":Z
    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getAskBeforeAdd()Z

    move-result v2

    .line 1195
    .local v2, "askBeforeAdd":Z
    invoke-static {v4, v3, v2}, Lcom/nuance/swype/usagedata/UsageData;->recordMyWordsSettings(Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;ZZ)V

    .line 1197
    return-void

    .line 1181
    .end local v2    # "askBeforeAdd":Z
    .end local v3    # "livingLanguageEnabled":Z
    .end local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    :cond_33
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACAccount;->isLinked()Z

    move-result v6

    if-nez v6, :cond_3c

    .line 1182
    sget-object v4, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->REGISTERED:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .restart local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    goto :goto_1e

    .line 1183
    .end local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    :cond_3c
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect$Sync;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 1184
    sget-object v4, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->ON:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .restart local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    goto :goto_1e

    .line 1186
    .end local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    :cond_4d
    sget-object v4, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->OFF:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .restart local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    goto :goto_1e
.end method

.method private removePreference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "categoryName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 289
    .local v0, "category":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    .line 290
    .local v1, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    .line 291
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    :cond_11
    return-void
.end method

.method public static resetToDefault(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1083
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    .line 1084
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    .line 1083
    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/IMEApplication;->createUserDictionaryIterator(Lcom/nuance/swype/input/InputMethods$Language;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v3

    .line 1086
    invoke-virtual {v3}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->eraseAll()V

    .line 1089
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/Connect;->setContributeUsageData(Z)V

    .line 1091
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v2

    .line 1092
    .local v2, "sync":Lcom/nuance/swype/connect/Connect$Sync;
    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect$Sync;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1093
    const/4 v0, 0x1

    .line 1094
    .local v0, "coreId":I
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    .line 1095
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 1097
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1098
    const/4 v0, 0x4

    .line 1105
    :cond_39
    :goto_39
    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/Connect$Sync;->requestBackup(I)V

    .line 1106
    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/Connect$Sync;->requestRestore(I)V

    .line 1110
    .end local v0    # "coreId":I
    .end local v1    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_3f
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1111
    invoke-static {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectResetHotwords(Landroid/content/Context;)V

    .line 1113
    :cond_51
    return-void

    .line 1099
    .restart local v0    # "coreId":I
    .restart local v1    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_52
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v3

    if-nez v3, :cond_64

    .line 1100
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseSimplified()Z

    move-result v3

    if-nez v3, :cond_64

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseTraditional()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 1101
    :cond_64
    const/4 v0, 0x3

    goto :goto_39

    .line 1102
    :cond_66
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1103
    const/4 v0, 0x2

    goto :goto_39
.end method

.method private showDlmExportMessage(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # Z

    .prologue
    .line 341
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 342
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_f

    .line 343
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 345
    :cond_f
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 346
    const-string/jumbo v1, "Swype"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 347
    const-string/jumbo v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 348
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 349
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 350
    return-void
.end method

.method private showLegalRequirements(IZZLandroid/os/Bundle;)Z
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "tosRequired"    # Z
    .param p3, "optInRequired"    # Z
    .param p4, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v1, p2, p3, p4}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 1062
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_d

    .line 1063
    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doStartActivityForResult(Landroid/content/Intent;I)V

    .line 1064
    const/4 v1, 0x1

    .line 1066
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method public createAskBeforeAddCheckDlg()Landroid/app/Dialog;
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 947
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    sget v4, Lcom/nuance/swype/input/R$string;->dictionary_explicitadd:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    sget v4, Lcom/nuance/swype/input/R$string;->dictionary_autoadd:I

    .line 948
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 949
    .local v0, "str_items":[Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 950
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->change_dictionary_behavior_title:I

    .line 951
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v5, 0x0

    .line 952
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    .line 953
    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->getAskBeforeAdd()Z

    move-result v4

    if-eqz v4, :cond_4d

    :goto_3f
    new-instance v2, Lcom/nuance/swype/input/settings/MyWordsPrefs$16;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$16;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    invoke-virtual {v3, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 969
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_4d
    move v1, v2

    .line 953
    goto :goto_3f
.end method

.method public createEraseUdbConfirmationDlg()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 925
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->clear_language_data:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 927
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->pref_clear_lang_data_dialog:I

    .line 928
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->yes_button:I

    new-instance v2, Lcom/nuance/swype/input/settings/MyWordsPrefs$15;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$15;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    .line 929
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->no_button:I

    const/4 v2, 0x0

    .line 942
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 943
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public createNetworkNotificationDialg()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method abstract doCancelDialog(I)V
.end method

.method abstract doShowDialog(ILandroid/os/Bundle;)V
.end method

.method protected abstract doStartActivity(Landroid/content/Intent;)V
.end method

.method protected abstract doStartActivityForResult(Landroid/content/Intent;I)V
.end method

.method protected final findPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 249
    packed-switch p1, :pswitch_data_34

    .line 271
    :pswitch_4
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "No response to request code: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    :cond_10
    :goto_10
    return-void

    .line 251
    :pswitch_11
    if-ne p2, v1, :cond_10

    .line 252
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->setStatsCollection(Z)V

    goto :goto_10

    .line 257
    :pswitch_18
    if-ne p2, v1, :cond_10

    .line 258
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->livingLanguageLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    invoke-interface {v1}, Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;->accepted()V

    goto :goto_10

    .line 263
    :pswitch_20
    if-ne p2, v1, :cond_10

    .line 264
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doStartActivity(Landroid/content/Intent;)V

    goto :goto_10

    .line 249
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_11
        :pswitch_4
        :pswitch_18
        :pswitch_20
    .end packed-switch
.end method

.method public onNegativeButtonClick()Z
    .registers 2

    .prologue
    .line 1120
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onPause"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->accountCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    .line 238
    return-void
.end method

.method public onPositiveButtonClick()Z
    .registers 9

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1124
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    .line 1125
    if-nez v1, :cond_29

    .line 1126
    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_d4

    :cond_1c
    :goto_1c
    packed-switch v1, :pswitch_data_ea

    .line 1164
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Unknown key:"

    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1168
    :cond_29
    :goto_29
    return v3

    .line 1126
    :sswitch_2a
    const-string/jumbo v6, "pref_social_integration"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    move v1, v2

    goto :goto_1c

    :sswitch_35
    const-string/jumbo v6, "pref_account_manage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    move v1, v3

    goto :goto_1c

    :sswitch_40
    const-string/jumbo v6, "pref_connect_hotwords"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v1, 0x2

    goto :goto_1c

    :sswitch_4b
    const-string/jumbo v6, "pref_connect_contribute_usage_data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    move v1, v4

    goto :goto_1c

    :sswitch_56
    const-string/jumbo v6, "pref_account_register"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v1, 0x4

    goto :goto_1c

    .line 1129
    :pswitch_61
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showPreferenceFragment(Landroid/preference/Preference;)V

    goto :goto_29

    .line 1132
    :pswitch_6b
    const-string/jumbo v1, "pref_connect_hotwords"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 1133
    if-eqz v1, :cond_29

    .line 1134
    invoke-direct {p0, v4, v3, v3, v7}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1135
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->livingLanguageLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    invoke-interface {v1}, Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;->accepted()V

    goto :goto_29

    .line 1140
    :pswitch_82
    const-string/jumbo v1, "pref_connect_contribute_usage_data"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 1141
    if-eqz v1, :cond_29

    .line 1142
    invoke-direct {p0, v3, v3, v3, v7}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1143
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 1144
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_29

    .line 1145
    const-string/jumbo v1, "pref_connect_contribute_usage_data"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v4, v2}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_29

    .line 1152
    .end local v0    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :pswitch_aa
    const-string/jumbo v1, "pref_account_register"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 1153
    if-eqz v1, :cond_29

    .line 1154
    invoke-direct {p0, v3, v3, v3, v7}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1155
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 1156
    .restart local v0    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_29

    .line 1157
    const-string/jumbo v1, "pref_account_register"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v4, v2}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_29

    .line 1126
    nop

    :sswitch_data_d4
    .sparse-switch
        -0x5bf11c62 -> :sswitch_2a
        -0x48626aad -> :sswitch_35
        -0x2cd9e617 -> :sswitch_4b
        0xdb938cd -> :sswitch_40
        0x1610e311 -> :sswitch_56
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_61
        :pswitch_61
        :pswitch_6b
        :pswitch_82
        :pswitch_aa
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 594
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v4, "pref_account_register"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string/jumbo v4, "pref_account_manage"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string/jumbo v4, "pref_activation_code"

    .line 596
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string/jumbo v4, "pref_connect_hotwords"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string/jumbo v4, "pref_social_integration"

    .line 597
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string/jumbo v4, "pref_connect_contribute_usage_data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 598
    :cond_3e
    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 599
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 600
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 601
    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    .line 603
    const-string/jumbo v3, "pref_connect_hotwords"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    const-string/jumbo v3, "pref_connect_contribute_usage_data"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    .line 604
    const/16 v3, 0x9

    invoke-virtual {p0, v3, v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 637
    .end local v1    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_71
    :goto_71
    return v2

    .line 609
    .restart local v1    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_72
    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 610
    const-string/jumbo v4, "pref_activation_code"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 611
    invoke-virtual {p0, v7, v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    goto :goto_71

    .line 614
    :cond_87
    const-string/jumbo v4, "pref_account_register"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 615
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->startRegisterActivity()V

    goto :goto_71

    .line 618
    :cond_94
    const-string/jumbo v4, "pref_social_integration"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 619
    const/4 v4, 0x4

    invoke-direct {p0, v4, v2, v3, v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_71

    :cond_a4
    move v2, v3

    .line 625
    goto :goto_71

    .line 629
    .end local v1    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_a6
    const-string/jumbo v4, "pref_activation_code"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 630
    invoke-virtual {p0, v7, v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    goto :goto_71

    .line 633
    :cond_b3
    const-string/jumbo v4, "pref_account_register"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 634
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->startRegisterActivity()V

    goto :goto_71

    :cond_c0
    move v2, v3

    .line 637
    goto :goto_71
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onResume"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->accountCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->registerCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    .line 232
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->rebuildSettings()V

    .line 233
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 205
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$4;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$4;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 225
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->settingsChanged:Z

    .line 227
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 242
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->settingsChanged:Z

    if-eqz v0, :cond_c

    .line 243
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->recordMyWordsSettings()V

    .line 245
    :cond_c
    return-void
.end method

.method protected final rebuildSettings()V
    .registers 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 358
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v12

    .line 362
    .local v12, "im":Lcom/nuance/swype/input/InputMethods;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v5

    .line 363
    .local v5, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v12}, Lcom/nuance/swype/input/InputMethods;->isCJKOnDevice()Z

    move-result v18

    if-eqz v18, :cond_81

    .line 364
    invoke-virtual {v12}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v14

    .line 365
    .local v14, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v14}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v18

    if-eqz v18, :cond_4e

    .line 366
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "edit_dictionary_preference_change_behavior_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_4e
    invoke-virtual {v5}, Lcom/nuance/swype/input/AppPreferences;->isChinesePersonalDictionaryEnabled()Z

    move-result v18

    if-nez v18, :cond_5a

    invoke-virtual {v14}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v18

    if-nez v18, :cond_72

    .line 373
    :cond_5a
    invoke-virtual {v5}, Lcom/nuance/swype/input/AppPreferences;->isKoreanPersonalDictionaryEnabled()Z

    move-result v18

    if-nez v18, :cond_66

    invoke-virtual {v14}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v18

    if-nez v18, :cond_72

    .line 374
    :cond_66
    invoke-virtual {v5}, Lcom/nuance/swype/input/AppPreferences;->isJapanesePersonalDictionaryEnabled()Z

    move-result v18

    if-nez v18, :cond_81

    invoke-virtual {v14}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v18

    if-eqz v18, :cond_81

    .line 375
    :cond_72
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "edit_dictionary_preference_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .end local v14    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->getAutoCorrection()Z

    move-result v18

    if-eqz v18, :cond_a1

    .line 381
    invoke-virtual {v5}, Lcom/nuance/swype/input/AppPreferences;->isShowAskBeforeAddEnabled()Z

    move-result v18

    if-eqz v18, :cond_a1

    .line 382
    invoke-virtual {v12}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v18

    if-eqz v18, :cond_b0

    .line 383
    :cond_a1
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "edit_dictionary_preference_change_behavior_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const-string/jumbo v19, "edit_dictionary_preference_change_behavior_key"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 387
    .local v3, "aBehaviorPref":Landroid/preference/Preference;
    if-eqz v3, :cond_ca

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showAskBeforeAddListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 395
    :cond_ca
    const-string/jumbo v18, "erase_udb"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v10

    .line 396
    .local v10, "eraseUdbPref":Landroid/preference/Preference;
    if-eqz v10, :cond_eb

    .line 397
    invoke-virtual {v12}, Lcom/nuance/swype/input/InputMethods;->syncWithCurrentUserConfiguration()V

    .line 399
    invoke-virtual {v12}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v18

    .line 400
    if-eqz v18, :cond_eb

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->eraseUdbConfirmation:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 405
    :cond_eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/connect/Connect;->isLicensed()Z

    move-result v18

    if-eqz v18, :cond_115

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v18, v0

    .line 406
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v18

    if-nez v18, :cond_21e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-nez v18, :cond_21e

    .line 408
    :cond_115
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "pref_account_register"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "pref_activation_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "pref_account_manage"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "pref_connect_hotwords"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "pref_social_integration"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v18, "pref_data_management"

    const-string/jumbo v19, "pref_connect_contribute_usage_data"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_16f
    :goto_16f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    if-eqz v18, :cond_351

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/nuance/swype/input/R$bool;->enable_backup_and_sync:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-nez v18, :cond_351

    const/4 v9, 0x1

    .line 532
    .local v9, "disableBackupAndSync":Z
    :goto_18a
    if-nez v9, :cond_1ee

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    .line 534
    .local v6, "connect":Lcom/nuance/swype/connect/Connect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/IMEApplication;->getSystemState()Lcom/nuance/swype/input/SystemState;

    move-result-object v16

    .line 535
    .local v16, "systemState":Lcom/nuance/swype/input/SystemState;
    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect;->getISOCountry()Ljava/lang/String;

    move-result-object v7

    .line 541
    .local v7, "countryCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "rebuildSettings GeoIP: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "; MCC: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/SystemState;->getNetworkOperatorMCC()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 542
    const-string/jumbo v18, "RU"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1ed

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/SystemState;->getNetworkOperatorMCC()I

    move-result v18

    const/16 v19, 0xfa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1ee

    .line 543
    :cond_1ed
    const/4 v9, 0x1

    .line 546
    .end local v6    # "connect":Lcom/nuance/swype/connect/Connect;
    .end local v7    # "countryCode":Ljava/lang/String;
    .end local v16    # "systemState":Lcom/nuance/swype/input/SystemState;
    :cond_1ee
    if-eqz v9, :cond_21d

    .line 547
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "pref_account_register"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "pref_activation_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "pref_account_manage"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_21d
    return-void

    .line 418
    .end local v9    # "disableBackupAndSync":Z
    :cond_21e
    const-string/jumbo v18, "dictionary_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 419
    .local v8, "dicManagementCat":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/connect/Connect$Accounts;->getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v4

    .line 421
    .local v4, "account":Lcom/nuance/swypeconnect/ac/ACAccount;
    if-nez v4, :cond_306

    .line 422
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "pref_activation_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "pref_account_manage"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_259
    :goto_259
    const-string/jumbo v18, "pref_account_register"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->addConnectionAwarePreference(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V

    .line 435
    const-string/jumbo v18, "pref_activation_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->addConnectionAwarePreference(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V

    .line 448
    const-string/jumbo v18, "pref_connect_hotwords"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 449
    .local v11, "hotwords":Landroid/preference/CheckBoxPreference;
    if-eqz v11, :cond_2b3

    .line 450
    new-instance v18, Lcom/nuance/swype/input/settings/MyWordsPrefs$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$6;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->livingLanguageLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v13

    .line 480
    .local v13, "l":Lcom/nuance/swype/connect/Connect$LivingLanguage;
    invoke-virtual {v13}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->isEnabled()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 482
    .end local v13    # "l":Lcom/nuance/swype/connect/Connect$LivingLanguage;
    :cond_2b3
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->addConnectionAwarePreference(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/AppPreferences;->isPersonalizationEnable()Z

    move-result v18

    if-nez v18, :cond_2d8

    .line 486
    const-string/jumbo v18, "pref_social_integration"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 490
    :cond_2d8
    const-string/jumbo v18, "pref_connect_contribute_usage_data"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    .line 491
    .local v17, "usageData":Landroid/preference/CheckBoxPreference;
    if-eqz v17, :cond_16f

    .line 492
    new-instance v18, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/connect/Connect;->isDataUsageOptInAccepted()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_16f

    .line 424
    .end local v11    # "hotwords":Landroid/preference/CheckBoxPreference;
    .end local v17    # "usageData":Landroid/preference/CheckBoxPreference;
    :cond_306
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACAccount;->isLinked()Z

    move-result v18

    if-nez v18, :cond_331

    .line 425
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "pref_account_register"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string/jumbo v18, "pref_account_manage"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v15

    .line 427
    .local v15, "p":Landroid/preference/Preference;
    if-eqz v15, :cond_259

    .line 428
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_259

    .line 431
    .end local v15    # "p":Landroid/preference/Preference;
    :cond_331
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "pref_account_register"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string/jumbo v18, "dictionary_management"

    const-string/jumbo v19, "pref_activation_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_259

    .line 531
    .end local v4    # "account":Lcom/nuance/swypeconnect/ac/ACAccount;
    .end local v8    # "dicManagementCat":Landroid/preference/PreferenceCategory;
    :cond_351
    const/4 v9, 0x0

    goto/16 :goto_18a
.end method

.method protected sendReverify()V
    .registers 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Accounts;->reverify()V

    .line 665
    return-void
.end method

.method protected setStatsCollection(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 645
    const-string/jumbo v1, "pref_connect_contribute_usage_data"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 646
    .local v0, "usageData":Landroid/preference/Preference;
    if-eqz v0, :cond_18

    move-object v1, v0

    .line 647
    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 648
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/Connect;->setContributeUsageData(Z)V

    .line 651
    :cond_18
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->rebuildSettings()V

    .line 652
    if-eqz v0, :cond_20

    .line 653
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->settingsChanged:Z

    .line 655
    :cond_20
    return-void
.end method

.method protected abstract showPreferenceFragment(Landroid/preference/Preference;)V
.end method

.method protected startRegisterActivity()V
    .registers 4

    .prologue
    .line 668
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    const-class v2, Lcom/nuance/swype/startup/StartupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 669
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "launch_mode"

    const-string/jumbo v2, "standalone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    const-string/jumbo v1, "launch_screen"

    sget-object v2, Lcom/nuance/swype/startup/StartupActivity;->ACCOUNT_REGISTER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 673
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 675
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    .line 676
    return-void
.end method

.method protected validate(Ljava/lang/String;)Z
    .registers 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 658
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/Connect$Accounts;->verifyAccount(Ljava/lang/String;)Z

    move-result v0

    .line 659
    .local v0, "processed":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->rebuildSettings()V

    .line 660
    return v0
.end method
