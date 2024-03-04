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

.field protected static final ENABLE_DATA_CONNECTION_KEY:Ljava/lang/String; = "pref_connect_enable_data_connection"

.field protected static final ERASE_UDB_KEY:Ljava/lang/String; = "erase_udb"

.field protected static final HOTWORDS_KEY:Ljava/lang/String; = "pref_connect_hotwords"

.field public static final INVALID_CODE_KEY:Ljava/lang/String; = "invalid_account_key"

.field public static final MY_WORDS_PREFS_XML:I

.field static final NO_NETWORK_DIALOG:I = 0x3

.field protected static final PERSONAL_DICTIONARY_BEHAVIOR_KEY:Ljava/lang/String; = "edit_dictionary_preference_change_behavior_key"

.field public static final PRIVACY_PREFERENCE_KEY:Ljava/lang/String; = "privacy_preference_key"

.field protected static final REGISTER_KEY:Ljava/lang/String; = "pref_account_register"

.field protected static final REQUEST_CODE_DATA_OPT_IN:I = 0x1

.field protected static final REQUEST_CODE_LIVING_LANGUAGE:I = 0x3

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

.field private showAskBeforeAddListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private final userDictionaryIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/nuance/swype/input/R$xml;->mywordspreferences:I

    sput v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->MY_WORDS_PREFS_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/nuance/swype/preference/DialogPrefs;-><init>()V

    .line 95
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->accountCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    .line 143
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$2;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->livingLanguageLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    .line 171
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 564
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$9;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$9;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->eraseUdbConfirmation:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 573
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$10;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$10;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectionListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 582
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$11;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$11;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showAskBeforeAddListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 744
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$12;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectionDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 753
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$13;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activationDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 869
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$14;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$14;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->noNetworkDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 879
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$15;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$15;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->dataOptOutWarningDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 174
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    .line 175
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    .line 177
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->createUserDictionaryIterator(Lcom/nuance/swype/input/InputMethods$Language;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->userDictionaryIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    .line 180
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectionDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 181
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->noNetworkDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 182
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activationDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 183
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->dataOptOutWarningDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 184
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$3;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$3;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .line 191
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    const-string v1, "my words"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->recordScreenVisited(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;IZZLandroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectResetHotwords(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/MyWordsPrefs;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showDlmExportMessage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->livingLanguageLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/connect/Connect;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/preference/ConnectionAwarePreferences;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/MyWordsPrefs;Landroid/content/Context;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onClickConfirmButton(Landroid/content/Context;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onClickEmailChangeButton()V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/settings/MyWordsPrefs;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;
    .param p1, "x1"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onClickResendCodeButton(Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->userDictionaryIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    return-object v0
.end method

.method private addConnectionAwarePreference(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V
    .locals 1
    .param p1, "category"    # Landroid/preference/PreferenceCategory;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 591
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectionListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private addDlmExportPreference(Landroid/preference/PreferenceCategory;)V
    .locals 3
    .param p1, "perPrefCat"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 278
    if-eqz p1, :cond_0

    .line 279
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    .end local v1    # "state":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 284
    .restart local v1    # "state":Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 285
    .local v0, "exportDlmPref":Landroid/preference/Preference;
    const-string v2, "export_dlm_pref"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 286
    const-string v2, "Export Dlm to sd card"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 289
    new-instance v2, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$5;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private static connectResetBackupAndSync(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1074
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->connect_dlm_sync_default:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/UserPreferences;->getDefaultBoolean(I)Z

    move-result v0

    .line 1075
    if-eqz v0, :cond_0

    .line 1076
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->enable()V

    .line 1080
    :goto_0
    return-void

    .line 1078
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->disable()V

    goto :goto_0
.end method

.method private static connectResetHotwords(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1062
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v1

    .line 1063
    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->disable()V

    .line 1065
    invoke-static {p0}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 1067
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 1068
    const-string v1, "Clear language data"

    const-string v2, "Clear:Yes"

    const-string v3, "Clear:NO"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1071
    :cond_0
    return-void
.end method

.method private onClickConfirmButton(Landroid/content/Context;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlg"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 856
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 857
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 858
    invoke-virtual {p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->dismiss()V

    .line 867
    :goto_0
    return-void

    .line 860
    :cond_0
    sget v1, Lcom/nuance/swype/input/R$id;->editText_activation_code:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 861
    .local v0, "code":Landroid/widget/EditText;
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 862
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 863
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->validate(Ljava/lang/String;)Z

    .line 864
    invoke-virtual {p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->inProgress()V

    .line 865
    invoke-virtual {p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->updateView()V

    goto :goto_0
.end method

.method private onClickEmailChangeButton()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 844
    :goto_0
    return-void

    .line 842
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->startRegisterActivity()V

    goto :goto_0
.end method

.method private onClickResendCodeButton(Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V
    .locals 2
    .param p1, "dlg"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    .prologue
    .line 847
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 853
    :goto_0
    return-void

    .line 850
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->sendReverify()V

    .line 851
    invoke-virtual {p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method private removeCategory(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "categoryName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 271
    .local v0, "category":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    .line 272
    .local v1, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 275
    :cond_0
    return-void
.end method

.method public static resetToDefault(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1084
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/IMEApplication;->createUserDictionaryIterator(Lcom/nuance/swype/input/InputMethods$Language;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v3

    .line 1087
    invoke-virtual {v3}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->eraseAll()V

    .line 1090
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/Connect;->setDataUsageOptInStatus(Z)V

    .line 1092
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v2

    .line 1093
    .local v2, "sync":Lcom/nuance/swype/connect/Connect$Sync;
    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect$Sync;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1094
    const/4 v0, 0x1

    .line 1095
    .local v0, "coreId":I
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    .line 1096
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 1098
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1099
    const/4 v0, 0x4

    .line 1106
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/Connect$Sync;->requestBackup(I)V

    .line 1107
    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/Connect$Sync;->requestRestore(I)V

    .line 1111
    .end local v0    # "coreId":I
    .end local v1    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1112
    invoke-static {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectResetHotwords(Landroid/content/Context;)V

    .line 1114
    :cond_2
    return-void

    .line 1100
    .restart local v0    # "coreId":I
    .restart local v1    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_3
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseSimplified()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseTraditional()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1102
    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    .line 1103
    :cond_5
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1104
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private showDlmExportMessage(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # Z

    .prologue
    .line 315
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_0

    .line 317
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 319
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 320
    const-string v1, "Swype"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 321
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 323
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 324
    return-void
.end method

.method private showLegalRequirements(IZZLandroid/os/Bundle;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "tosRequired"    # Z
    .param p3, "optInRequired"    # Z
    .param p4, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 1053
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v1, p2, p3, p4}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 1054
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doStartActivityForResult(Landroid/content/Intent;I)V

    .line 1056
    const/4 v1, 0x1

    .line 1058
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method public createAskBeforeAddCheckDlg()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 945
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    sget v4, Lcom/nuance/swype/input/R$string;->dictionary_explicitadd:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    sget v4, Lcom/nuance/swype/input/R$string;->dictionary_autoadd:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 947
    .local v0, "str_items":[Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->change_dictionary_behavior_title:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->getAskBeforeAdd()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    new-instance v2, Lcom/nuance/swype/input/settings/MyWordsPrefs$18;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$18;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    invoke-virtual {v3, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 966
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_0
    move v1, v2

    .line 947
    goto :goto_0
.end method

.method public createEraseUdbConfirmationDlg()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 903
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->clear_language_data:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->pref_clear_lang_data_dialog:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->yes_button:I

    new-instance v2, Lcom/nuance/swype/input/settings/MyWordsPrefs$16;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$16;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->no_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 941
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public createNetworkNotificationDialg()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method abstract doCancelDialog(I)V
.end method

.method abstract doShowDialog(ILandroid/os/Bundle;)V
.end method

.method protected abstract doStartActivityForResult(Landroid/content/Intent;I)V
.end method

.method protected final findPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 234
    packed-switch p1, :pswitch_data_0

    .line 248
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 236
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 237
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->setStatsCollection(Z)V

    goto :goto_0

    .line 242
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->livingLanguageLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    invoke-interface {v0}, Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;->accepted()V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onNegativeButtonClick()Z
    .locals 1

    .prologue
    .line 1121
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "onPause"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->accountCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    .line 227
    return-void
.end method

.method public onPositiveButtonClick()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1125
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    .line 1126
    if-nez v1, :cond_1

    .line 1127
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    const-string v2, "pref_social_integration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    const-string v2, "pref_account_manage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1128
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showPreferenceFragment(Landroid/preference/Preference;)V

    .line 1149
    :cond_1
    :goto_0
    return v4

    .line 1129
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    const-string v2, "pref_connect_hotwords"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1130
    const-string v1, "pref_connect_hotwords"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 1131
    if-eqz v1, :cond_1

    .line 1132
    const/4 v1, 0x3

    invoke-direct {p0, v1, v4, v4, v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1133
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->livingLanguageLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    invoke-interface {v1}, Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;->accepted()V

    goto :goto_0

    .line 1136
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    const-string v2, "pref_connect_contribute_usage_data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1137
    const-string v1, "pref_connect_contribute_usage_data"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 1138
    if-eqz v1, :cond_1

    .line 1139
    invoke-direct {p0, v4, v4, v4, v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1140
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 1141
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_1

    .line 1142
    const-string v1, "pref_connect_contribute_usage_data"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    const/16 v8, 0xe

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 601
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "key":Ljava/lang/String;
    const-string v6, "pref_account_register"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "pref_account_manage"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "pref_activation_code"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "pref_connect_hotwords"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "pref_social_integration"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "pref_connect_contribute_usage_data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 605
    :cond_0
    iget-object v6, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    .line 606
    .local v3, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v6, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreement()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreementNotAsk()Z

    move-result v6

    if-nez v6, :cond_2

    .line 608
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    .line 610
    const-string v4, "pref_connect_hotwords"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "pref_connect_contribute_usage_data"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 611
    const/16 v4, 0x9

    invoke-virtual {p0, v4, v9}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 675
    .end local v3    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    .end local p2    # "pref":Landroid/preference/Preference;
    :cond_1
    :goto_0
    return v5

    .line 616
    .restart local v3    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    .restart local p2    # "pref":Landroid/preference/Preference;
    :cond_2
    const-string v6, "pref_connect_enable_data_connection"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "checked":Z
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v8, :cond_5

    instance-of v6, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_5

    .line 619
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "pref":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 624
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, " ENABLE_DATA_CONNECTION_KEY "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 625
    iget-object v6, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/nuance/swype/input/UserPreferences;->setConnectUseCellularData(Z)V

    .line 627
    iget-object v6, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/nuance/swype/connect/Connect;->enableCellularData(Z)V

    .line 628
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->rebuildSettings()V

    .line 629
    iget-object v6, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v2

    .line 631
    .local v2, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v2, :cond_1

    .line 632
    const-string v6, "pref_connect_enable_data_connection"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    if-nez v0, :cond_4

    move v4, v5

    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v6, v7, v4}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 620
    .end local v2    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    .restart local p2    # "pref":Landroid/preference/Preference;
    :cond_5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_3

    instance-of v6, p2, Lcom/nuance/swype/preference/CustomCheckBoxPreference;

    if-eqz v6, :cond_3

    .line 621
    check-cast p2, Lcom/nuance/swype/preference/CustomCheckBoxPreference;

    .end local p2    # "pref":Landroid/preference/Preference;
    invoke-virtual {p2}, Lcom/nuance/swype/preference/CustomCheckBoxPreference;->isChecked()Z

    move-result v0

    goto :goto_1

    .line 636
    .end local v0    # "checked":Z
    .restart local p2    # "pref":Landroid/preference/Preference;
    :cond_6
    const-string v6, "pref_activation_code"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 637
    invoke-virtual {p0, v10, v9}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 640
    :cond_7
    const-string v6, "pref_account_register"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 641
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->startRegisterActivity()V

    goto :goto_0

    :cond_8
    move v5, v4

    .line 645
    goto :goto_0

    .line 648
    .end local v3    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_9
    const-string v6, "pref_connect_enable_data_connection"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 649
    const/4 v0, 0x0

    .line 650
    .restart local v0    # "checked":Z
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v8, :cond_c

    instance-of v6, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_c

    .line 651
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "pref":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 655
    :cond_a
    :goto_2
    iget-object v6, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, " ENABLE_DATA_CONNECTION_KEY "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 656
    iget-object v6, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/nuance/swype/input/UserPreferences;->setConnectUseCellularData(Z)V

    .line 657
    iget-object v6, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/nuance/swype/connect/Connect;->enableCellularData(Z)V

    .line 658
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->rebuildSettings()V

    .line 659
    iget-object v6, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v2

    .line 661
    .restart local v2    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v2, :cond_1

    .line 662
    const-string v6, "pref_connect_enable_data_connection"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    if-nez v0, :cond_b

    move v4, v5

    :cond_b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v6, v7, v4}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 652
    .end local v2    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    .restart local p2    # "pref":Landroid/preference/Preference;
    :cond_c
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_a

    instance-of v6, p2, Lcom/nuance/swype/preference/CustomCheckBoxPreference;

    if-eqz v6, :cond_a

    .line 653
    check-cast p2, Lcom/nuance/swype/preference/CustomCheckBoxPreference;

    .end local p2    # "pref":Landroid/preference/Preference;
    invoke-virtual {p2}, Lcom/nuance/swype/preference/CustomCheckBoxPreference;->isChecked()Z

    move-result v0

    goto :goto_2

    .line 666
    .end local v0    # "checked":Z
    .restart local p2    # "pref":Landroid/preference/Preference;
    :cond_d
    const-string v6, "pref_activation_code"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 667
    invoke-virtual {p0, v10, v9}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 670
    :cond_e
    const-string v6, "pref_account_register"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 671
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->startRegisterActivity()V

    goto/16 :goto_0

    :cond_f
    move v5, v4

    .line 675
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "onResume"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->accountCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->registerCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    .line 221
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->rebuildSettings()V

    .line 222
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$4;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$4;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 215
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 216
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 231
    return-void
.end method

.method protected final rebuildSettings()V
    .locals 20

    .prologue
    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 331
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v11

    .line 335
    .local v11, "im":Lcom/nuance/swype/input/InputMethods;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v5

    .line 336
    .local v5, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v11}, Lcom/nuance/swype/input/InputMethods;->isCJKOnDevice()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 337
    invoke-virtual {v11}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v13

    .line 338
    .local v13, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v13}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 339
    const-string v18, "dictionary_management"

    const-string v19, "edit_dictionary_preference_change_behavior_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_1
    invoke-virtual {v5}, Lcom/nuance/swype/input/AppPreferences;->isChinesePersonalDictionaryEnabled()Z

    move-result v18

    if-nez v18, :cond_2

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v18

    if-nez v18, :cond_4

    :cond_2
    invoke-virtual {v5}, Lcom/nuance/swype/input/AppPreferences;->isKoreanPersonalDictionaryEnabled()Z

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v18

    if-nez v18, :cond_4

    :cond_3
    invoke-virtual {v5}, Lcom/nuance/swype/input/AppPreferences;->isJapanesePersonalDictionaryEnabled()Z

    move-result v18

    if-nez v18, :cond_5

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 348
    :cond_4
    const-string v18, "dictionary_management"

    const-string v19, "edit_dictionary_preference_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .end local v13    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const-string v19, "auto_import_frequent_contacts"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 353
    .local v6, "autoImportRecentContacts":Landroid/preference/Preference;
    if-eqz v6, :cond_6

    .line 354
    new-instance v18, Lcom/nuance/swype/input/settings/MyWordsPrefs$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$6;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 383
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->getAutoCorrection()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual {v5}, Lcom/nuance/swype/input/AppPreferences;->isShowAskBeforeAddEnabled()Z

    move-result v18

    if-nez v18, :cond_8

    .line 384
    :cond_7
    const-string v18, "dictionary_management"

    const-string v19, "edit_dictionary_preference_change_behavior_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const-string v19, "edit_dictionary_preference_change_behavior_key"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 388
    .local v3, "aBehaviorPref":Landroid/preference/Preference;
    if-eqz v3, :cond_9

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->showAskBeforeAddListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 396
    :cond_9
    const-string v18, "erase_udb"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v9

    .line 397
    .local v9, "eraseUdbPref":Landroid/preference/Preference;
    if-eqz v9, :cond_a

    .line 398
    invoke-virtual {v11}, Lcom/nuance/swype/input/InputMethods;->syncWithCurrentUserConfiguration()V

    .line 400
    invoke-virtual {v11}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v14

    .line 401
    .local v14, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v14, :cond_a

    .line 402
    invoke-virtual {v14}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 403
    const-string v18, "pref_data_management"

    const-string v19, "erase_udb"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .end local v14    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_a
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/connect/Connect;->isLicensed()Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/IMEApplication;->isLVLLicenseValid()Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v18

    if-nez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-nez v18, :cond_e

    .line 414
    :cond_b
    const-string v18, "dictionary_management"

    const-string v19, "pref_account_register"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v18, "dictionary_management"

    const-string v19, "pref_activation_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v18, "dictionary_management"

    const-string v19, "pref_account_manage"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v18, "dictionary_management"

    const-string v19, "pref_connect_hotwords"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v18, "dictionary_management"

    const-string v19, "pref_social_integration"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v18, "pref_data_management"

    const-string v19, "pref_connect_enable_data_connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v18, "pref_data_management"

    const-string v19, "pref_connect_contribute_usage_data"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_c
    :goto_1
    return-void

    .line 405
    .restart local v14    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->eraseUdbConfirmation:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 425
    .end local v14    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_e
    const-string v18, "dictionary_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 426
    .local v7, "dicManagementCat":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/connect/Connect$Accounts;->getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v4

    .line 428
    .local v4, "account":Lcom/nuance/swypeconnect/ac/ACAccount;
    if-nez v4, :cond_13

    .line 429
    const-string v18, "dictionary_management"

    const-string v19, "pref_activation_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v18, "dictionary_management"

    const-string v19, "pref_account_manage"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_f
    :goto_2
    const-string v18, "pref_account_register"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->addConnectionAwarePreference(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V

    .line 442
    const-string v18, "pref_activation_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->addConnectionAwarePreference(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V

    .line 455
    const-string v18, "pref_connect_hotwords"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    .line 456
    .local v10, "hotwords":Landroid/preference/CheckBoxPreference;
    if-eqz v10, :cond_10

    .line 457
    new-instance v18, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->livingLanguageLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v12

    .line 488
    .local v12, "l":Lcom/nuance/swype/connect/Connect$LivingLanguage;
    invoke-virtual {v12}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->isEnabled()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 490
    .end local v12    # "l":Lcom/nuance/swype/connect/Connect$LivingLanguage;
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->addConnectionAwarePreference(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/AppPreferences;->isPersionalizationEnable()Z

    move-result v18

    if-nez v18, :cond_11

    .line 498
    const-string v18, "pref_social_integration"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 505
    :cond_11
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_15

    .line 506
    const-string v18, "pref_connect_enable_data_connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/CheckBoxPreference;

    .line 507
    .local v16, "pref":Landroid/preference/CheckBoxPreference;
    if-eqz v16, :cond_12

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->connectUseCellularData()Z

    move-result v8

    .line 510
    .local v8, "enableConnection":Z
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 521
    .end local v8    # "enableConnection":Z
    .end local v16    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_12
    :goto_3
    const-string v18, "pref_connect_contribute_usage_data"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    .line 522
    .local v17, "usageData":Landroid/preference/CheckBoxPreference;
    if-eqz v17, :cond_c

    .line 523
    new-instance v18, Lcom/nuance/swype/input/settings/MyWordsPrefs$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$8;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/connect/Connect;->isDataUsageOptInAccepted()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 431
    .end local v10    # "hotwords":Landroid/preference/CheckBoxPreference;
    .end local v17    # "usageData":Landroid/preference/CheckBoxPreference;
    :cond_13
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACAccount;->isLinked()Z

    move-result v18

    if-nez v18, :cond_14

    .line 432
    const-string v18, "dictionary_management"

    const-string v19, "pref_account_register"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v18, "pref_account_manage"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v15

    .line 434
    .local v15, "p":Landroid/preference/Preference;
    if-eqz v15, :cond_f

    .line 435
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 438
    .end local v15    # "p":Landroid/preference/Preference;
    :cond_14
    const-string v18, "dictionary_management"

    const-string v19, "pref_account_register"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v18, "dictionary_management"

    const-string v19, "pref_activation_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 513
    .restart local v10    # "hotwords":Landroid/preference/CheckBoxPreference;
    :cond_15
    const-string v18, "pref_connect_enable_data_connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Lcom/nuance/swype/preference/CustomCheckBoxPreference;

    .line 514
    .local v16, "pref":Lcom/nuance/swype/preference/CustomCheckBoxPreference;
    if-eqz v16, :cond_12

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->connectUseCellularData()Z

    move-result v8

    .line 517
    .restart local v8    # "enableConnection":Z
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/nuance/swype/preference/CustomCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3
.end method

.method protected final removeCategory(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 262
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removeCategory(Landroid/preference/Preference;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendReverify()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Accounts;->reverify()V

    .line 711
    return-void
.end method

.method protected setDlmSyncStatus(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 696
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->enable()V

    .line 701
    return-void
.end method

.method protected setStatsCollection(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 683
    const-string v1, "pref_connect_contribute_usage_data"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 684
    .local v0, "usageData":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 685
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .end local v0    # "usageData":Landroid/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 686
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/Connect;->setDataUsageOptInStatus(Z)V

    .line 689
    :cond_0
    if-nez p1, :cond_1

    .line 690
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->disable()V

    .line 692
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->rebuildSettings()V

    .line 693
    return-void
.end method

.method protected abstract showPreferenceFragment(Landroid/preference/Preference;)V
.end method

.method protected startRegisterActivity()V
    .locals 3

    .prologue
    .line 714
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    const-class v2, Lcom/nuance/swype/startup/AccountRegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 715
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 717
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 718
    return-void
.end method

.method protected validate(Ljava/lang/String;)Z
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 704
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/Connect$Accounts;->verifyAccount(Ljava/lang/String;)Z

    move-result v0

    .line 705
    .local v0, "processed":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->rebuildSettings()V

    .line 706
    return v0
.end method
