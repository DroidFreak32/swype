.class public Lcom/nuance/swype/input/settings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# static fields
.field private static final PREF_KEY_ADD_ONS:Ljava/lang/String; = "addons"

.field private static final PREF_KEY_CHINESE:Ljava/lang/String; = "chinese_settings"

.field private static final PREF_KEY_THEME_ACTIVITY:Ljava/lang/String; = "themes_activity"

.field private static final PREF_KEY_THEME_CATEGORY:Ljava/lang/String; = "themes_category_activity"

.field private static final PREF_KEY_THEME_PREF:Ljava/lang/String; = "themes_prefs"

.field private static final PREF_KEY_UPDATES:Ljava/lang/String; = "updates"


# instance fields
.field private localyticsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final refreshReceiver:Landroid/content/BroadcastReceiver;

.field private updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

.field private visitedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Settings;->visitedMap:Ljava/util/Map;

    .line 42
    new-instance v0, Lcom/nuance/swype/input/settings/Settings$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/Settings$1;-><init>(Lcom/nuance/swype/input/settings/Settings;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Settings;->refreshReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/Settings;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Settings;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Settings;->buildSettings()V

    return-void
.end method

.method private buildSettings()V
    .locals 10

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 86
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 90
    :cond_0
    sget v8, Lcom/nuance/swype/input/R$xml;->settings:I

    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/settings/Settings;->addPreferencesFromResource(I)V

    .line 91
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 94
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    .line 96
    .local v2, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    const-string v8, "themes_category_activity"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 97
    .local v5, "themeCategoryPref":Landroid/preference/Preference;
    const-string v8, "themes_activity"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 98
    .local v4, "themeActivityPref":Landroid/preference/Preference;
    const-string v8, "themes_prefs"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 99
    .local v6, "themePrefs":Landroid/preference/Preference;
    sget-boolean v8, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v8, :cond_4

    .line 100
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    .line 101
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    :cond_1
    :goto_0
    const-string v8, "chinese_settings"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 119
    .local v1, "chinesePref":Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v8

    .line 120
    invoke-virtual {v8}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    :cond_2
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    .line 126
    .local v0, "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    const-string v8, "updates"

    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 129
    .local v7, "updates":Landroid/preference/Preference;
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v8

    if-nez v8, :cond_6

    .line 130
    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    :cond_3
    :goto_1
    return-void

    .line 105
    .end local v0    # "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    .end local v1    # "chinesePref":Landroid/preference/Preference;
    .end local v7    # "updates":Landroid/preference/Preference;
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager;->getSwypeThemeCount()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_5

    .line 106
    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 107
    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 108
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 111
    :cond_5
    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 112
    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 131
    .restart local v0    # "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    .restart local v1    # "chinesePref":Landroid/preference/Preference;
    .restart local v7    # "updates":Landroid/preference/Preference;
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 133
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 134
    if-eqz v3, :cond_3

    if-eqz v7, :cond_3

    .line 135
    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 137
    :cond_7
    if-eqz v7, :cond_3

    .line 139
    invoke-static {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/connect/SDKUpdateManager;->isAvailable()Z

    move-result v8

    if-nez v8, :cond_3

    .line 143
    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private getLongPressDelay(J)Ljava/lang/String;
    .locals 13
    .param p1, "time"    # J

    .prologue
    const-wide/16 v10, 0x1f4

    const-wide/16 v8, 0xc8

    const-wide/16 v6, 0x64

    const-wide/16 v4, 0x14

    const-wide/16 v2, 0xa

    .line 150
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    .line 151
    const-string v0, "0-10ms"

    .line 165
    :goto_0
    return-object v0

    .line 152
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    cmp-long v0, p1, v4

    if-gtz v0, :cond_1

    .line 153
    const-string v0, "10-20ms"

    goto :goto_0

    .line 154
    :cond_1
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    cmp-long v0, p1, v6

    if-gtz v0, :cond_2

    .line 155
    const-string v0, "20-100ms"

    goto :goto_0

    .line 156
    :cond_2
    cmp-long v0, p1, v6

    if-lez v0, :cond_3

    cmp-long v0, p1, v8

    if-gtz v0, :cond_3

    .line 157
    const-string v0, "100-200ms"

    goto :goto_0

    .line 158
    :cond_3
    cmp-long v0, p1, v8

    if-lez v0, :cond_4

    cmp-long v0, p1, v10

    if-gtz v0, :cond_4

    .line 159
    const-string v0, "200-500ms"

    goto :goto_0

    .line 160
    :cond_4
    cmp-long v0, p1, v10

    if-lez v0, :cond_5

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gtz v0, :cond_5

    .line 161
    const-string v0, "500-1000ms"

    goto :goto_0

    .line 162
    :cond_5
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_6

    .line 163
    const-string v0, "1000ms +"

    goto :goto_0

    .line 165
    :cond_6
    const-string v0, "0-10ms"

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 8

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    .line 170
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 171
    .local v0, "usrPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getRecordedEntryPoints()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "visited":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/android/compat/LocalyticsCompat;->isLocalyticsClassExistingAndContributionaAllowed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 174
    invoke-static {}, Lcom/nuance/android/compat/LocalyticsCompat;->open()V

    .line 175
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 176
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v4, "vibration"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isVibrateOn()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "on"

    :goto_0
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v4, "sound on keypress"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isKeySoundOn()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "on"

    :goto_1
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v4, "pop-up on keypress"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getShowPressDownPreview()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "on"

    :goto_2
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v3, "long-press delay"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getLongPressDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, v4, v5}, Lcom/nuance/swype/input/settings/Settings;->getLongPressDelay(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v4, "show complete trace"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getShowCompleteTrace()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "on"

    :goto_3
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v4, "auto-correction"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAutoCorrection()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "on"

    :goto_4
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v4, "auto-capitalization"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAutoCap()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "on"

    :goto_5
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v4, "auto-spacing"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAutoSpace()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "on"

    :goto_6
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v4, "next word prediction"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isNextWordPredictionEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "on"

    :goto_7
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v4, "import recent contacts"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAutoImportContacts()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "on"

    :goto_8
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v4, "show voice key"

    const-string v2, "show_voice_key"

    sget v5, Lcom/nuance/swype/input/R$bool;->show_voice_key_default:I

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/UserPreferences;->getDefaultBoolean(I)Z

    move-result v5

    invoke-virtual {v0, v2, v5}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "on"

    :goto_9
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v4, "detect end of speech"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isEndOfSpeechDetectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "on"

    :goto_a
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v4, "enable handwriting"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "on"

    :goto_b
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v3, "keyboard height portrait"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v5

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v3, "keyboard height landscape"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v5

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v3, "font size"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Candidates_Size"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5, v6}, Lcom/nuance/swype/input/UserPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v4, "dictionary behavior"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAskBeforeAdd()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "manual add"

    :goto_c
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    const-string v4, "use bold font on key"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardFontBold()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "bold"

    :goto_d
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    const-string v2, "Settings Summary"

    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->localyticsMap:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/nuance/android/compat/LocalyticsCompat;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Settings;->visitedMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 218
    if-eqz v1, :cond_4

    .line 219
    const-string v2, "swypekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Settings;->visitedMap:Ljava/util/Map;

    const-string v3, "entry point"

    const-string v4, "swype key"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_1
    const-string v2, "functionbar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Settings;->visitedMap:Ljava/util/Map;

    const-string v3, "entry point"

    const-string v4, "function bar"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_2
    const-string v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 228
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Settings;->visitedMap:Ljava/util/Map;

    const-string v3, "entry point"

    const-string v4, "system & app tray"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->resetRecordedEntryPoints()V

    .line 232
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Settings;->visitedMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 233
    const-string v2, "Settings Closed"

    iget-object v3, p0, Lcom/nuance/swype/input/settings/Settings;->visitedMap:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/nuance/android/compat/LocalyticsCompat;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 237
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/android/compat/LocalyticsCompat;->upload(Landroid/content/Context;)V

    .line 239
    :cond_5
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 240
    return-void

    .line 176
    :cond_6
    const-string v2, "off"

    goto/16 :goto_0

    .line 178
    :cond_7
    const-string v2, "off"

    goto/16 :goto_1

    .line 180
    :cond_8
    const-string v2, "off"

    goto/16 :goto_2

    .line 184
    :cond_9
    const-string v2, "off"

    goto/16 :goto_3

    .line 186
    :cond_a
    const-string v2, "off"

    goto/16 :goto_4

    .line 188
    :cond_b
    const-string v2, "off"

    goto/16 :goto_5

    .line 190
    :cond_c
    const-string v2, "off"

    goto/16 :goto_6

    .line 192
    :cond_d
    const-string v2, "off"

    goto/16 :goto_7

    .line 194
    :cond_e
    const-string v2, "off"

    goto/16 :goto_8

    .line 196
    :cond_f
    const-string v2, "off"

    goto/16 :goto_9

    .line 199
    :cond_10
    const-string v2, "off"

    goto/16 :goto_a

    .line 201
    :cond_11
    const-string v2, "off"

    goto/16 :goto_b

    .line 209
    :cond_12
    const-string v2, "automatic add"

    goto/16 :goto_c

    .line 211
    :cond_13
    const-string v2, "normal"

    goto/16 :goto_d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->getBuildDate()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/nuance/swype/input/DatabaseConfig;->refreshDatabaseConfig(Landroid/content/Context;J)V

    .line 52
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/LocalyticsCompat;->isLocalyticsClassExistingAndContributionaAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getSwypePreferenceAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/android/compat/LocalyticsCompat;->createLocalyticsSession(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/swype/stats/LocalyticsUtils;

    .line 55
    invoke-static {}, Lcom/nuance/android/compat/LocalyticsCompat;->open()V

    .line 57
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 245
    invoke-static {}, Lcom/nuance/swype/widget/LoadingImageView;->recycleBitmaps()V

    .line 246
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Settings;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/Settings;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Settings;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    .line 81
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 62
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Settings;->buildSettings()V

    .line 63
    invoke-static {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/nuance/swype/input/settings/Settings$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/Settings$2;-><init>(Lcom/nuance/swype/input/settings/Settings;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Settings;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    .line 71
    invoke-static {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/Settings;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->registerCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V

    .line 73
    :cond_0
    return-void
.end method
