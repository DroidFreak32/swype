.class public abstract Lcom/nuance/swype/input/settings/SettingsPrefs;
.super Lcom/nuance/swype/preference/DialogPrefs;
.source "SettingsPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ADVANCED_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "advanced_category"

.field private static final AUTO_IMPORT_FREQUENT_CONTACTS_KEY:Ljava/lang/String; = "auto_import_frequent_contacts"

.field private static final BASIC_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "basic_category"

.field protected static final DIALOG_LONG_PRESS_DURATION:I = 0xa

.field protected static final DIALOG_RECOGNITION_SPEED:I = 0xb

.field protected static final DIALOG_VIBRATION_DURATION:I = 0x9

.field private static final LANGUAGE_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "language_setting_category"

.field private static final LONG_PRESS_DURATION_STEPSIZE:I = 0xa

.field private static final PREDICTION_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "prediction_category"

.field public static final PREFERENCES_XML:I

.field private static final QVGA_DEVICE:F = 0.8f

.field private static final RECOGNITION_SPEED_STEPSIZE:I = 0x32

.field private static final VIBRATION_DURATION_STEPSIZE:I = 0x5

.field private static final VOICE_HANDWRITING_CATEGORY_KEY:Ljava/lang/String; = "voice_handwriting_category"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private mValue:I

.field private screen:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/nuance/swype/input/R$xml;->settingspreferences:I

    sput v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->PREFERENCES_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/nuance/swype/preference/DialogPrefs;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    const-string v1, "preferences"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->recordScreenVisited(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 39
    iget v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/settings/SettingsPrefs;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/SettingsPrefs;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->saveAutoDelay(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private static enableCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "screen"    # Landroid/preference/PreferenceScreen;
    .param p1, "categoryName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 295
    .local v0, "category":Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_0

    .line 296
    invoke-static {v0, p2, p3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->enablePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 298
    :cond_0
    return-void
.end method

.method private static enablePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "group"    # Landroid/preference/PreferenceGroup;
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 303
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 306
    :cond_0
    return-void
.end method

.method public static getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I
    .locals 2
    .param p0, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 505
    move v0, p2

    .line 507
    .local v0, "delay":I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 512
    :goto_0
    return v0

    .line 509
    :catch_0
    move-exception v1

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private static removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "screen"    # Landroid/preference/PreferenceScreen;
    .param p1, "categoryName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 274
    .local v0, "category":Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_0

    .line 275
    invoke-static {v0, p2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 278
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    :cond_0
    return-void
.end method

.method private static removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V
    .locals 1
    .param p0, "group"    # Landroid/preference/PreferenceGroup;
    .param p1, "prefName"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 286
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    :cond_0
    return-void
.end method

.method public static resetSettings(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 341
    .local v1, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/UserPreferences;->reset()V

    .line 343
    invoke-static {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->resetToDefault(Landroid/content/Context;)V

    .line 345
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    .line 346
    .local v0, "accounts":Lcom/nuance/swype/connect/Connect$Accounts;
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/connect/Connect;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Accounts;->getDevices()[Lcom/nuance/swypeconnect/ac/ACDevice;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 348
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Accounts;->getDevices()[Lcom/nuance/swypeconnect/ac/ACDevice;

    move-result-object v2

    .local v2, "arr$":[Lcom/nuance/swypeconnect/ac/ACDevice;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v2, v5

    .line 349
    .local v3, "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 350
    invoke-virtual {v0, v3}, Lcom/nuance/swype/connect/Connect$Accounts;->unlinkDevice(Lcom/nuance/swypeconnect/ac/ACDevice;)V

    .line 348
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 356
    .end local v2    # "arr$":[Lcom/nuance/swypeconnect/ac/ACDevice;
    .end local v3    # "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    invoke-static {p0}, Lcom/nuance/sns/OAuthPreference;->reset(Landroid/content/Context;)V

    .line 359
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->resetScrapperStatus()V

    .line 360
    return-void
.end method

.method private saveAutoDelay(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delay"    # I

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    .line 517
    return-void
.end method

.method private setupPreferenceHandler(Landroid/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 328
    instance-of v3, p1, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 329
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 330
    .local v1, "group":Landroid/preference/PreferenceGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 331
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->setupPreferenceHandler(Landroid/preference/Preference;)V

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/preference/PreferenceGroup;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 336
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method public buildLanguagesScreen()V
    .locals 8

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    .line 222
    .local v1, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods;->syncWithCurrentUserConfiguration()V

    .line 224
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 225
    .local v2, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v2, :cond_2

    .line 227
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isJK()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 228
    iget-object v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v6, "language_setting_category"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 230
    .local v0, "cat":Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 232
    invoke-static {v2}, Lcom/nuance/swype/input/settings/LanguagePrefs;->createArgs(Lcom/nuance/swype/input/InputMethods$Language;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/SettingsPrefs;->createInputLanguagePref(Landroid/os/Bundle;)Landroid/preference/Preference;

    move-result-object v3

    .line 233
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 241
    .end local v0    # "cat":Landroid/preference/PreferenceCategory;
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 242
    iget-object v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v6, "prediction_category"

    const-string v7, "auto_correction"

    invoke-static {v5, v6, v7}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_1
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 248
    iget-object v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v6, "voice_handwriting_category"

    const-string v7, "hwr_auto_recognize_delay_alpha"

    invoke-static {v5, v6, v7}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_2
    :goto_1
    return-void

    .line 237
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v6, "language_setting_category"

    invoke-static {v5, v6}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_4
    iget-object v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v6, "hwr_auto_recognize_delay_alpha"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 253
    .local v4, "recognitionSpeedPref":Landroid/preference/Preference;
    if-eqz v4, :cond_2

    .line 254
    new-instance v5, Lcom/nuance/swype/input/settings/SettingsPrefs$3;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/settings/SettingsPrefs$3;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1
.end method

.method public buildPreferenceScreen()V
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 93
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    .line 95
    .local v1, "info":Lcom/nuance/swype/input/BuildInfo;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    .line 96
    .local v2, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->syncWithCurrentUserConfiguration()V

    .line 98
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    .line 99
    .local v3, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v3, :cond_c

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getHandwritingType()Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    move-result-object v11

    sget-object v12, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->FULL_SUPPORT:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    if-ne v11, v12, :cond_0

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_0
    move v11, v9

    .line 104
    :goto_0
    if-eqz v11, :cond_1

    .line 105
    iget-object v11, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v12, "voice_handwriting_category"

    const-string v13, "enable_handwriting"

    invoke-static {v11, v12, v13}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v11

    .line 109
    if-eqz v11, :cond_d

    move v11, v9

    .line 111
    :goto_1
    if-eqz v11, :cond_2

    .line 112
    iget-object v11, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v12, "voice_handwriting_category"

    const-string v13, "end_of_speech_detection"

    invoke-static {v11, v12, v13}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 117
    sget v12, Lcom/nuance/swype/input/R$bool;->dictation_enabled:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 118
    if-nez v11, :cond_3

    .line 119
    iget-object v11, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v12, "voice_handwriting_category"

    const-string v13, "show_voice_key"

    invoke-static {v11, v12, v13}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v6

    .line 124
    .local v6, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v6}, Lcom/nuance/swype/input/UserPreferences;->isShowCharsOnKeypressEnabled()Z

    move-result v11

    if-nez v11, :cond_4

    .line 125
    iget-object v11, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v12, "basic_category"

    const-string v13, "show_chars_on_keypress"

    invoke-static {v11, v12, v13}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_4
    invoke-virtual {v6}, Lcom/nuance/swype/input/UserPreferences;->isShowAutoCorrectionPrefEnabled()Z

    move-result v11

    if-nez v11, :cond_5

    .line 130
    iget-object v11, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v12, "prediction_category"

    const-string v13, "auto_correction"

    invoke-static {v11, v12, v13}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/IMEApplication;->getSystemState()Lcom/nuance/swype/input/SystemState;

    move-result-object v5

    .line 137
    .local v5, "sysState":Lcom/nuance/swype/input/SystemState;
    iget-object v11, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v12, "basic_category"

    const-string v13, "vibrate_on"

    invoke-virtual {v5}, Lcom/nuance/swype/input/SystemState;->isHapticFeedbackEnabled()Z

    move-result v14

    invoke-static {v11, v12, v13, v14}, Lcom/nuance/swype/input/settings/SettingsPrefs;->enableCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 139
    iget-object v11, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v12, "basic_category"

    const-string v13, "vibration_duration"

    invoke-virtual {v5}, Lcom/nuance/swype/input/SystemState;->isHapticFeedbackEnabled()Z

    move-result v14

    invoke-static {v11, v12, v13, v14}, Lcom/nuance/swype/input/settings/SettingsPrefs;->enableCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    iget-object v11, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v12, "basic_category"

    const-string v13, "sound_on"

    invoke-virtual {v5}, Lcom/nuance/swype/input/SystemState;->isSilentMode()Z

    move-result v14

    if-nez v14, :cond_e

    :goto_2
    invoke-static {v11, v12, v13, v9}, Lcom/nuance/swype/input/settings/SettingsPrefs;->enableCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "vibration_duration"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 145
    .local v7, "vibrationPref":Landroid/preference/Preference;
    if-eqz v7, :cond_6

    .line 146
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/nuance/swype/input/UserPreferences;->getVibrationDuration()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    new-instance v9, Lcom/nuance/swype/input/settings/SettingsPrefs$1;

    invoke-direct {v9, p0}, Lcom/nuance/swype/input/settings/SettingsPrefs$1;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 158
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 162
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 163
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "basic_category"

    const-string v11, "long_press_delay"

    invoke-static {v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "basic_category"

    const-string v11, "show_chars_on_keypress"

    invoke-static {v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "basic_category"

    const-string v11, "show_complete_trace"

    invoke-static {v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "voice_handwriting_category"

    const-string v11, "enable_handwriting"

    invoke-static {v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "prediction_category"

    const-string v11, "auto_correction"

    invoke-static {v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "voice_handwriting_category"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 176
    .local v8, "voiceHandwritingCategory":Landroid/preference/PreferenceCategory;
    if-eqz v8, :cond_7

    .line 177
    sget v9, Lcom/nuance/swype/input/R$string;->accessibility_setting_voice:I

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 180
    :cond_7
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "basic_category"

    const-string v11, "sound_on"

    invoke-static {v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v5}, Lcom/nuance/swype/input/SystemState;->hasHapticHardwareSupport()Z

    move-result v9

    if-nez v9, :cond_8

    .line 184
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "basic_category"

    invoke-static {v9, v10}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V

    .line 188
    :cond_8
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "voice_handwriting_category"

    const-string v11, "end_of_speech_detection"

    invoke-static {v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v8    # "voiceHandwritingCategory":Landroid/preference/PreferenceCategory;
    :cond_9
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "long_press_delay"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 193
    .local v4, "longPressDelayPref":Landroid/preference/Preference;
    if-eqz v4, :cond_a

    .line 194
    new-instance v9, Lcom/nuance/swype/input/settings/SettingsPrefs$2;

    invoke-direct {v9, p0}, Lcom/nuance/swype/input/settings/SettingsPrefs$2;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 204
    :cond_a
    invoke-virtual {v5}, Lcom/nuance/swype/input/SystemState;->hasHapticHardwareSupport()Z

    move-result v9

    if-nez v9, :cond_b

    .line 205
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "basic_category"

    const-string v11, "vibrate_on"

    invoke-static {v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "basic_category"

    const-string v11, "vibration_duration"

    invoke-static {v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_b
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/AppPreferences;->isSetVibrationDurationAllowed()Z

    move-result v9

    if-nez v9, :cond_f

    .line 212
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "basic_category"

    const-string v11, "vibration_duration"

    invoke-static {v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_3
    return-void

    .end local v0    # "ime":Lcom/nuance/swype/input/IME;
    .end local v4    # "longPressDelayPref":Landroid/preference/Preference;
    .end local v5    # "sysState":Lcom/nuance/swype/input/SystemState;
    .end local v6    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    .end local v7    # "vibrationPref":Landroid/preference/Preference;
    :cond_c
    move v11, v10

    .line 99
    goto/16 :goto_0

    :cond_d
    move v11, v10

    .line 109
    goto/16 :goto_1

    .restart local v5    # "sysState":Lcom/nuance/swype/input/SystemState;
    .restart local v6    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_e
    move v9, v10

    .line 141
    goto/16 :goto_2

    .line 215
    .restart local v0    # "ime":Lcom/nuance/swype/input/IME;
    .restart local v4    # "longPressDelayPref":Landroid/preference/Preference;
    .restart local v7    # "vibrationPref":Landroid/preference/Preference;
    :cond_f
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "basic_category"

    const-string v11, "vibrate_on"

    invoke-static {v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected abstract createInputLanguagePref(Landroid/os/Bundle;)Landroid/preference/Preference;
.end method

.method public createLongPressDurationDialog()Landroid/app/Dialog;
    .locals 15

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 439
    .local v2, "display":Landroid/util/DisplayMetrics;
    iget-object v11, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 440
    sget v12, Lcom/nuance/swype/input/R$layout;->longpress_delay_dialog:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 442
    .local v10, "view":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 443
    .local v7, "res":Landroid/content/res/Resources;
    sget v11, Lcom/nuance/swype/input/R$integer;->long_press_timeout_min_ms:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 445
    .local v5, "min":I
    sget v11, Lcom/nuance/swype/input/R$integer;->long_press_timeout_max_ms:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    sub-int v4, v11, v5

    .line 446
    .local v4, "max":I
    sget v11, Lcom/nuance/swype/input/R$integer;->long_press_timeout_ms:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 447
    .local v1, "defaultValue":I
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v8

    .line 448
    .local v8, "sp":Lcom/nuance/swype/input/UserPreferences;
    const-string v11, "long_press_delay"

    invoke-static {v8, v11, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    .line 449
    iget v6, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    .line 451
    .local v6, "oldValue":I
    sget v11, Lcom/nuance/swype/input/R$id;->valueLongPress:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 452
    .local v9, "valueLongPress":Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    sget v11, Lcom/nuance/swype/input/R$id;->longpress_seekbar:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 455
    .local v3, "longPressSeekBar":Landroid/widget/SeekBar;
    iget v11, v2, Landroid/util/DisplayMetrics;->density:F

    const v12, 0x3f4ccccd    # 0.8f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x0

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, 0x0

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 459
    :cond_0
    div-int/lit8 v11, v4, 0xa

    invoke-virtual {v3, v11}, Landroid/widget/SeekBar;->setMax(I)V

    .line 460
    iget v11, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    sub-int/2addr v11, v5

    div-int/lit8 v11, v11, 0xa

    invoke-virtual {v3, v11}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 461
    new-instance v11, Lcom/nuance/swype/input/settings/SettingsPrefs$6;

    invoke-direct {v11, p0, v5, v9}, Lcom/nuance/swype/input/settings/SettingsPrefs$6;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;ILandroid/widget/TextView;)V

    invoke-virtual {v3, v11}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 483
    new-instance v11, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v12, Lcom/nuance/swype/input/R$string;->pref_long_press_title:I

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    sget v12, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    sget v12, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v13, Lcom/nuance/swype/input/settings/SettingsPrefs$7;

    invoke-direct {v13, p0, v6}, Lcom/nuance/swype/input/settings/SettingsPrefs$7;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;I)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    sget v12, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 499
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 501
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    return-object v11
.end method

.method public createRecognitionSpeedDialog()Landroid/app/Dialog;
    .locals 18

    .prologue
    .line 520
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 521
    .local v4, "display":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 522
    sget v14, Lcom/nuance/swype/input/R$layout;->longpress_delay_dialog:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 524
    .local v12, "view":Landroid/view/ViewGroup;
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 525
    .local v8, "res":Landroid/content/res/Resources;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v14, Lcom/nuance/swype/input/R$string;->handwriting_recognize_speed_accept_dialog_unit:I

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 527
    .local v10, "unit":Ljava/lang/String;
    sget v13, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_alpha_min_ms:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 528
    .local v6, "min":I
    sget v13, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_alpha_max_ms:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    sub-int v5, v13, v6

    .line 529
    .local v5, "max":I
    sget v13, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_alpha_default_ms:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 530
    .local v3, "defaultValue":I
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v9

    .line 531
    .local v9, "sp":Lcom/nuance/swype/input/UserPreferences;
    const-string v13, "hwr_auto_recognize_delay_alpha"

    invoke-static {v9, v13, v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    .line 533
    sget v13, Lcom/nuance/swype/input/R$id;->valueLongPress:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 534
    .local v11, "valueLongPress":Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    int-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    sget v13, Lcom/nuance/swype/input/R$id;->longpress_seekbar:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    .line 537
    .local v7, "recognitionDelaySeekBar":Landroid/widget/SeekBar;
    iget v13, v4, Landroid/util/DisplayMetrics;->density:F

    const v14, 0x3f4ccccd    # 0.8f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    .line 538
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v13, v14, v15, v0}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 541
    :cond_0
    div-int/lit8 v13, v5, 0x32

    invoke-virtual {v7, v13}, Landroid/widget/SeekBar;->setMax(I)V

    .line 542
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    sub-int/2addr v13, v6

    div-int/lit8 v13, v13, 0x32

    invoke-virtual {v7, v13}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 543
    new-instance v13, Lcom/nuance/swype/input/settings/SettingsPrefs$8;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6, v11, v10}, Lcom/nuance/swype/input/settings/SettingsPrefs$8;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;ILandroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 565
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v14, Lcom/nuance/swype/input/R$string;->handwriting_recognize_speed_title:I

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v15, Lcom/nuance/swype/input/settings/SettingsPrefs$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Lcom/nuance/swype/input/settings/SettingsPrefs$9;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;I)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 580
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 582
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    return-object v13
.end method

.method public createVibrationDurationDialog()Landroid/app/Dialog;
    .locals 17

    .prologue
    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 364
    .local v3, "display":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 365
    sget v14, Lcom/nuance/swype/input/R$layout;->vibration_duration_dialog:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 367
    .local v12, "view":Landroid/view/ViewGroup;
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 368
    .local v7, "res":Landroid/content/res/Resources;
    sget v13, Lcom/nuance/swype/input/R$integer;->vibrate_duration_min_ms:I

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 370
    .local v6, "min":I
    sget v13, Lcom/nuance/swype/input/R$integer;->vibrate_duration_max_ms:I

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    sub-int v5, v13, v6

    .line 371
    .local v5, "max":I
    sget v13, Lcom/nuance/swype/input/R$integer;->vibrate_duration_ms:I

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 372
    .local v2, "defaultValue":I
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v8

    .line 373
    .local v8, "sp":Lcom/nuance/swype/input/UserPreferences;
    const-string v13, "vibration_duration"

    invoke-static {v8, v13, v2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    .line 375
    sget v13, Lcom/nuance/swype/input/R$id;->valueVibration:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 376
    .local v10, "valueDuration":Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    sget v13, Lcom/nuance/swype/input/R$id;->valueTextMin:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 379
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    sget v13, Lcom/nuance/swype/input/R$id;->valueTextMax:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 382
    .local v11, "valueMax":Landroid/widget/TextView;
    add-int v9, v5, v6

    .line 383
    .local v9, "value":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    sget v13, Lcom/nuance/swype/input/R$id;->duration_seekbar:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 386
    .local v4, "longPressSeekBar":Landroid/widget/SeekBar;
    iget v13, v3, Landroid/util/DisplayMetrics;->density:F

    const v14, 0x3f4ccccd    # 0.8f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 390
    :cond_0
    div-int/lit8 v13, v5, 0x5

    invoke-virtual {v4, v13}, Landroid/widget/SeekBar;->setMax(I)V

    .line 391
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    sub-int/2addr v13, v6

    div-int/lit8 v13, v13, 0x5

    invoke-virtual {v4, v13}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 392
    new-instance v13, Lcom/nuance/swype/input/settings/SettingsPrefs$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6, v10}, Lcom/nuance/swype/input/settings/SettingsPrefs$4;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;ILandroid/widget/TextView;)V

    invoke-virtual {v4, v13}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 415
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v14, Lcom/nuance/swype/input/R$string;->pref_vibration_title:I

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v15, Lcom/nuance/swype/input/settings/SettingsPrefs$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lcom/nuance/swype/input/settings/SettingsPrefs$5;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;I)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 432
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 434
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    return-object v13
.end method

.method abstract doShowDialog(ILandroid/os/Bundle;)V
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 309
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v2

    .line 310
    .local v2, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v2, :cond_0

    .line 311
    instance-of v4, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 312
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 313
    .local v3, "value":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    if-nez v3, :cond_2

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v6, v7, v4}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    .end local v3    # "value":Z
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 318
    .local v1, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v1, :cond_1

    .line 319
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 320
    .local v0, "currentIME":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->clearSavedKeyboardState()V

    .line 324
    .end local v0    # "currentIME":Lcom/nuance/swype/input/IME;
    :cond_1
    return v5

    .line 313
    .end local v1    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .restart local v3    # "value":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->rebuildSettings()V

    .line 69
    return-void
.end method

.method protected final rebuildSettings()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    .line 84
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->buildPreferenceScreen()V

    .line 85
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->buildLanguagesScreen()V

    .line 88
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->setupPreferenceHandler(Landroid/preference/Preference;)V

    .line 89
    return-void
.end method
