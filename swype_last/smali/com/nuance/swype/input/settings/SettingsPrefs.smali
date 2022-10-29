.class public abstract Lcom/nuance/swype/input/settings/SettingsPrefs;
.super Lcom/nuance/swype/preference/DialogPrefs;
.source "SettingsPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final AD_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "ad_settings"

.field private static final BASIC_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "basic_category"

.field public static final CANDIDATES_SIZE:Ljava/lang/String; = "Candidates_Size"

.field private static final CANDIDATES_SIZES_SETTINGS_KEY:Ljava/lang/String; = "candidates_size_setting_preference"

.field public static final CANDIDATES_SUMMARY:Ljava/lang/String; = "Candidates_summary"

.field private static final CANDIDATE_SIZE_BAR_MAX:I = 0xa

.field private static final CANDIDATE_SIZE_BAR_OFFSET:I = 0x64

.field protected static final DATA_MANAGEMENT_CAT:Ljava/lang/String; = "pref_data_management"

.field protected static final DIALOG_LONG_PRESS_DURATION:I = 0xa

.field protected static final DIALOG_RECOGNITION_SPEED:I = 0xb

.field protected static final DIALOG_VIBRATION_DURATION:I = 0x9

.field private static final EMOJI_CATEGORY_KEY:Ljava/lang/String; = "emoji_category"

.field protected static final ENABLE_DATA_CONNECTION_KEY:Ljava/lang/String; = "pref_connect_enable_data_connection"

.field private static final KEYBOARD_HEIGHT_BAR_MAX:I = 0x4

.field private static final KEYBOARD_HEIGHT_BAR_OFFSET:I = 0x8

.field private static final KEYBOARD_HEIGHT_SETTINGS_KEY:Ljava/lang/String; = "keyboard_height_settings"

.field private static final KEYBOARD_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "keyboard_category"

.field private static final LONG_PRESS_DURATION_STEPSIZE:I = 0xa

.field private static final PERMISSIONS_REQUEST_RECORD_AUDIO_END_OF_SPEECH:I = 0x1

.field private static final PERMISSIONS_REQUEST_RECORD_AUDIO_VOICE_KEY:I = 0x0

.field private static final PREDICTION_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "prediction_category"

.field public static final PREFERENCES_XML:I

.field private static final QVGA_DEVICE:F = 0.8f

.field private static final RECOGNITION_SPEED_STEPSIZE:I = 0x32

.field private static final STATE_EMOJI_LDB:Ljava/lang/String; = "state_emoji_ldb"

.field private static final STATE_NULL_LDB:Ljava/lang/String; = "state_null_ldb"

.field private static final STATE_NUMBER_ROW_KB:Ljava/lang/String; = "state_number_row_kb"

.field private static final UNIT_CONVERSION_CONSTANT:F = 1000.0f

.field private static final VIBRATION_DURATION_STEPSIZE:I = 0x5

.field private static final VOICE_HANDWRITING_CATEGORY_KEY:Ljava/lang/String; = "voice_handwriting_category"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private candidateSizePrefs:Landroid/preference/Preference;

.field private changedProgress:F

.field private connect:Lcom/nuance/swype/connect/Connect;

.field private emojiSkinTonePreference:Landroid/preference/Preference;

.field private fontSize:Ljava/lang/String;

.field private isPermissionDialogRationale:Z

.field private keyboardHeightPrefs:Landroid/preference/Preference;

.field private mStateEmojiLdb:Z

.field private mStateNullLdb:Z

.field private mStateNumberRowKb:Z

.field private mValue:I

.field private mValueKeyboardHeightLandscape:F

.field private mValueKeyboardHeightPortrait:F

.field private scalingFactor:I

.field private screen:Landroid/preference/PreferenceScreen;

.field private settingsChanged:Z

.field private skinToneDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const-string/jumbo v0, "SettingsPrefs"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 74
    sget v0, Lcom/nuance/swype/input/R$xml;->settingspreferences:I

    sput v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->PREFERENCES_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/nuance/swype/preference/DialogPrefs;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->isPermissionDialogRationale:Z

    .line 127
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    .line 128
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    .line 129
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->PREFERENCES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v0}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_22

    .line 131
    const-string/jumbo v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->isPermissionDialogRationale:Z

    .line 133
    :cond_22
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 68
    iget v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/settings/SettingsPrefs;I)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 68
    iget v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->scalingFactor:I

    return v0
.end method

.method static synthetic access$1002(Lcom/nuance/swype/input/settings/SettingsPrefs;I)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->scalingFactor:I

    return p1
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/settings/SettingsPrefs;Ljava/lang/String;F)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # F

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->saveCandidatesSize(Ljava/lang/String;F)V

    return-void
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/preference/Preference;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->candidateSizePrefs:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->skinToneDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/SettingsPrefs;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->saveAutoDelay(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/preference/PreferenceScreen;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/SettingsPrefs;D)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;
    .param p1, "x1"    # D

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->formatNumberByLocale(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/UserPreferences;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/SettingsPrefs;)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 68
    iget v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValueKeyboardHeightPortrait:F

    return v0
.end method

.method static synthetic access$702(Lcom/nuance/swype/input/settings/SettingsPrefs;F)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;
    .param p1, "x1"    # F

    .prologue
    .line 68
    iput p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValueKeyboardHeightPortrait:F

    return p1
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/settings/SettingsPrefs;)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 68
    iget v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValueKeyboardHeightLandscape:F

    return v0
.end method

.method static synthetic access$802(Lcom/nuance/swype/input/settings/SettingsPrefs;F)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;
    .param p1, "x1"    # F

    .prologue
    .line 68
    iput p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValueKeyboardHeightLandscape:F

    return p1
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/settings/SettingsPrefs;)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 68
    iget v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->changedProgress:F

    return v0
.end method

.method static synthetic access$902(Lcom/nuance/swype/input/settings/SettingsPrefs;F)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;
    .param p1, "x1"    # F

    .prologue
    .line 68
    iput p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->changedProgress:F

    return p1
.end method

.method private buildAdSettings()V
    .registers 7

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    .line 190
    .local v3, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v5, "ad_setting_first_time"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 191
    .local v0, "firstTime":Landroid/preference/EditTextPreference;
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAdStartSession()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAdStartSession()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 194
    iget-object v4, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v5, "ad_setting_step_size"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 195
    .local v2, "stepSize":Landroid/preference/EditTextPreference;
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAdSessionStepSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAdSessionStepSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 198
    iget-object v4, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v5, "ad_setting_max_ad_in_day"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    .line 199
    .local v1, "maxPerDay":Landroid/preference/EditTextPreference;
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAdMaxPerDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAdMaxPerDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method private buildLanguagesScreen()V
    .registers 7

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    .line 554
    .local v0, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->syncWithCurrentUserConfiguration()V

    .line 556
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 557
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v1, :cond_22

    .line 559
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 560
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "voice_handwriting_category"

    const-string/jumbo v5, "hwr_auto_recognize_delay_alpha"

    invoke-static {v3, v4, v5}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_22
    :goto_22
    return-void

    .line 564
    :cond_23
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "hwr_auto_recognize_delay_alpha"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 565
    .local v2, "recognitionSpeedPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->recognitionSpeedSummary()V

    .line 566
    if-eqz v2, :cond_22

    .line 567
    instance-of v3, v2, Lcom/nuance/swype/preference/ViewClickPreference;

    if-eqz v3, :cond_40

    .line 568
    check-cast v2, Lcom/nuance/swype/preference/ViewClickPreference;

    .end local v2    # "recognitionSpeedPref":Landroid/preference/Preference;
    new-instance v3, Lcom/nuance/swype/input/settings/SettingsPrefs$11;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/settings/SettingsPrefs$11;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    invoke-virtual {v2, v3}, Lcom/nuance/swype/preference/ViewClickPreference;->setListener(Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;)V

    goto :goto_22

    .line 577
    .restart local v2    # "recognitionSpeedPref":Landroid/preference/Preference;
    :cond_40
    new-instance v3, Lcom/nuance/swype/input/settings/SettingsPrefs$12;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/settings/SettingsPrefs$12;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_22
.end method

.method private buildPreferenceScreen()V
    .registers 33

    .prologue
    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v11

    .line 208
    .local v11, "info":Lcom/nuance/swype/input/BuildInfo;
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v12

    .line 209
    .local v12, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v12}, Lcom/nuance/swype/input/InputMethods;->syncWithCurrentUserConfiguration()V

    .line 211
    invoke-virtual {v12}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v16

    .line 212
    .local v16, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v16, :cond_56d

    .line 213
    invoke-virtual {v11}, Lcom/nuance/swype/input/BuildInfo;->getHandwritingType()Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    move-result-object v28

    sget-object v29, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->FULL_SUPPORT:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_2b

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v28

    if-eqz v28, :cond_56d

    :cond_2b
    const/16 v28, 0x1

    .line 217
    :goto_2d
    if-eqz v28, :cond_3e

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "voice_handwriting_category"

    const-string/jumbo v30, "enable_handwriting"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_3e
    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v28

    if-eqz v28, :cond_ca

    invoke-virtual {v11}, Lcom/nuance/swype/input/BuildInfo;->getHandwritingType()Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    move-result-object v28

    sget-object v29, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->NONE:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_ca

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "voice_handwriting_category"

    const-string/jumbo v30, "handwriting_settings"

    const/16 v31, 0x1

    invoke-static/range {v28 .. v31}, Lcom/nuance/swype/input/settings/SettingsPrefs;->enableCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "voice_handwriting_category"

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceCategory;

    .line 225
    .local v25, "voiceCategory":Landroid/preference/PreferenceCategory;
    if-eqz v25, :cond_ca

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "handwriting_settings"

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    .line 228
    if-nez v28, :cond_ca

    .line 229
    new-instance v9, Landroid/preference/Preference;

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 230
    .local v9, "hwrPref":Landroid/preference/Preference;
    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/input/settings/InputPrefs;->createArgs(Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/os/Bundle;

    move-result-object v4

    .line 231
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v28, "handwriting_settings"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 232
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/nuance/swype/input/R$string;->handwriting:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v28, Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v29

    const-class v30, Lcom/nuance/swype/input/settings/InputPrefsFragmentActivity;

    invoke-direct/range {v28 .. v30}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 234
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 239
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v9    # "hwrPref":Landroid/preference/Preference;
    .end local v25    # "voiceCategory":Landroid/preference/PreferenceCategory;
    :cond_ca
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v28

    .line 240
    if-eqz v28, :cond_571

    const/16 v28, 0x1

    .line 242
    :goto_da
    if-eqz v28, :cond_eb

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "voice_handwriting_category"

    const-string/jumbo v30, "end_of_speech_detection"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_eb
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 248
    .local v19, "res":Landroid/content/res/Resources;
    sget v28, Lcom/nuance/swype/input/R$bool;->dictation_enabled:I

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v28

    .line 249
    if-nez v28, :cond_10e

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "voice_handwriting_category"

    const-string/jumbo v30, "show_voice_key"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_10e
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v23

    .line 255
    .local v23, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual/range {v23 .. v23}, Lcom/nuance/swype/input/UserPreferences;->isShowCharsOnKeypressEnabled()Z

    move-result v28

    if-nez v28, :cond_12b

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "keyboard_category"

    const-string/jumbo v30, "show_chars_on_keypress"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_12b
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateNullLdb:Z

    .line 262
    .local v8, "hideAutoCorrectPref":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateEmojiLdb:Z

    move/from16 v20, v0

    .line 263
    .local v20, "showEmojiSuggestionsPref":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateNumberRowKb:Z

    move/from16 v21, v0

    .line 265
    .local v21, "showNumberRowPref":Z
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v10

    .line 266
    .local v10, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v10, :cond_17e

    invoke-virtual {v10}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v28

    if-eqz v28, :cond_17e

    .line 267
    invoke-virtual {v10}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v13

    .line 268
    .local v13, "iv":Lcom/nuance/swype/input/InputView;
    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    .line 270
    .local v5, "currentLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v28

    if-eqz v28, :cond_575

    .line 272
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateNullLdb:Z

    .line 278
    :goto_162
    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->isLanguageHaveEmojiPrediction()Z

    move-result v20

    .end local v20    # "showEmojiSuggestionsPref":Z
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateEmojiLdb:Z

    .line 279
    .restart local v20    # "showEmojiSuggestionsPref":Z
    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/KeyboardEx;->hasNumRow()Z

    move-result v21

    .end local v21    # "showNumberRowPref":Z
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateNumberRowKb:Z

    .line 283
    .end local v5    # "currentLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v13    # "iv":Lcom/nuance/swype/input/InputView;
    .restart local v21    # "showNumberRowPref":Z
    :cond_17e
    invoke-virtual/range {v23 .. v23}, Lcom/nuance/swype/input/UserPreferences;->isShowAutoCorrectionPrefEnabled()Z

    move-result v28

    if-eqz v28, :cond_186

    if-eqz v8, :cond_195

    .line 284
    :cond_186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "prediction_category"

    const-string/jumbo v30, "auto_correction"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_195
    if-eqz v20, :cond_19f

    if-eqz v10, :cond_1ae

    .line 289
    invoke-virtual {v10}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v28

    if-eqz v28, :cond_1ae

    .line 290
    :cond_19f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "emoji_category"

    const-string/jumbo v30, "emoji_suggestions"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_1ae
    if-eqz v10, :cond_1c5

    invoke-virtual {v10}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v28

    if-eqz v28, :cond_1c5

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "emoji_category"

    const-string/jumbo v30, "emoji_choice_list"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_1c5
    if-nez v21, :cond_1d6

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "keyboard_category"

    const-string/jumbo v30, "number_row"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_1d6
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/IMEApplication;->getSystemState()Lcom/nuance/swype/input/SystemState;

    move-result-object v22

    .line 305
    .local v22, "sysState":Lcom/nuance/swype/input/SystemState;
    invoke-virtual/range {v22 .. v22}, Lcom/nuance/swype/input/SystemState;->isKeyboardVibrateEnabled()I

    move-result v7

    .line 306
    .local v7, "enabled":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v29, v0

    const-string/jumbo v30, "keyboard_category"

    const-string/jumbo v31, "vibrate_on"

    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v7, v0, :cond_58e

    .line 308
    invoke-virtual/range {v22 .. v22}, Lcom/nuance/swype/input/SystemState;->isHapticFeedbackEnabled()Z

    move-result v28

    .line 306
    :goto_1fc
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->enableCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 309
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v7, v0, :cond_232

    .line 310
    if-eqz v7, :cond_592

    const/16 v28, 0x1

    :goto_211
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/SystemState;->setKeyboardVibrate(Z)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "vibrate_on"

    .line 312
    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    .line 313
    .local v15, "keyboardVibrationPref":Landroid/preference/CheckBoxPreference;
    if-eqz v15, :cond_232

    .line 314
    if-eqz v7, :cond_596

    const/16 v28, 0x1

    :goto_22d
    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 318
    .end local v15    # "keyboardVibrationPref":Landroid/preference/CheckBoxPreference;
    :cond_232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v29, v0

    const-string/jumbo v30, "keyboard_category"

    const-string/jumbo v31, "vibration_duration"

    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v7, v0, :cond_59a

    .line 320
    invoke-virtual/range {v22 .. v22}, Lcom/nuance/swype/input/SystemState;->isHapticFeedbackEnabled()Z

    move-result v28

    .line 318
    :goto_248
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->enableCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 321
    invoke-virtual/range {v22 .. v22}, Lcom/nuance/swype/input/SystemState;->isKeyboardSoundEnabled()I

    move-result v7

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v29, v0

    const-string/jumbo v30, "keyboard_category"

    const-string/jumbo v31, "sound_on"

    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v7, v0, :cond_59e

    .line 323
    invoke-virtual/range {v22 .. v22}, Lcom/nuance/swype/input/SystemState;->isSilentMode()Z

    move-result v28

    if-eqz v28, :cond_59e

    const/16 v28, 0x0

    .line 322
    :goto_271
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->enableCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 324
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v7, v0, :cond_2a7

    .line 325
    if-eqz v7, :cond_5a2

    const/16 v28, 0x1

    :goto_286
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/SystemState;->setKeyboardSound(Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "sound_on"

    .line 327
    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    .line 328
    .local v14, "keyboardSoundPref":Landroid/preference/CheckBoxPreference;
    if-eqz v14, :cond_2a7

    .line 329
    if-eqz v7, :cond_5a6

    const/16 v28, 0x1

    :goto_2a2
    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 333
    .end local v14    # "keyboardSoundPref":Landroid/preference/CheckBoxPreference;
    :cond_2a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "vibration_duration"

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 334
    .local v24, "vibrationPref":Landroid/preference/Preference;
    if-eqz v24, :cond_2f7

    .line 335
    sget v28, Lcom/nuance/swype/input/R$string;->millisecond:I

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/nuance/swype/input/UserPreferences;->getVibrationDuration()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v0, v19

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/nuance/swype/preference/ViewClickPreference;

    move/from16 v28, v0

    if-eqz v28, :cond_5aa

    .line 337
    check-cast v24, Lcom/nuance/swype/preference/ViewClickPreference;

    .end local v24    # "vibrationPref":Landroid/preference/Preference;
    new-instance v28, Lcom/nuance/swype/input/settings/SettingsPrefs$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs$1;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/nuance/swype/preference/ViewClickPreference;->setListener(Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;)V

    .line 359
    :cond_2f7
    :goto_2f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "pref_emoji_skin_tone"

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/settings/SettingsPrefs;->emojiSkinTonePreference:Landroid/preference/Preference;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->emojiSkinTonePreference:Landroid/preference/Preference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_333

    .line 362
    sget v28, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v29, 0x17

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_324

    if-eqz v10, :cond_5bc

    .line 363
    invoke-virtual {v10}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v28

    if-eqz v28, :cond_5bc

    .line 364
    :cond_324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "emoji_category"

    const-string/jumbo v30, "pref_emoji_skin_tone"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_333
    :goto_333
    if-eqz v10, :cond_3d0

    invoke-virtual {v10}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v28

    if-eqz v28, :cond_3d0

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "keyboard_category"

    const-string/jumbo v30, "long_press_delay"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "keyboard_category"

    const-string/jumbo v30, "show_chars_on_keypress"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "keyboard_category"

    const-string/jumbo v30, "show_complete_trace"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "voice_handwriting_category"

    const-string/jumbo v30, "enable_handwriting"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "prediction_category"

    const-string/jumbo v30, "auto_correction"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "voice_handwriting_category"

    .line 404
    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/PreferenceCategory;

    .line 405
    .local v26, "voiceHandwritingCategory":Landroid/preference/PreferenceCategory;
    if-eqz v26, :cond_3a0

    .line 406
    sget v28, Lcom/nuance/swype/input/R$string;->accessibility_setting_voice:I

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 409
    :cond_3a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "keyboard_category"

    const-string/jumbo v30, "sound_on"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {v22 .. v22}, Lcom/nuance/swype/input/SystemState;->hasHapticHardwareSupport()Z

    move-result v28

    if-nez v28, :cond_3c1

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "keyboard_category"

    invoke-static/range {v28 .. v29}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V

    .line 417
    :cond_3c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "voice_handwriting_category"

    const-string/jumbo v30, "end_of_speech_detection"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .end local v26    # "voiceHandwritingCategory":Landroid/preference/PreferenceCategory;
    :cond_3d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "long_press_delay"

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 422
    .local v17, "longPressDelayPref":Landroid/preference/Preference;
    if-eqz v17, :cond_4a0

    .line 423
    sget v28, Lcom/nuance/swype/input/R$string;->millisecond:I

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/nuance/swype/input/UserPreferences;->getLongPressDelay()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v0, v19

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 424
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/nuance/swype/preference/ViewClickPreference;

    move/from16 v28, v0

    if-eqz v28, :cond_60c

    .line 425
    check-cast v17, Lcom/nuance/swype/preference/ViewClickPreference;

    .end local v17    # "longPressDelayPref":Landroid/preference/Preference;
    new-instance v28, Lcom/nuance/swype/input/settings/SettingsPrefs$5;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs$5;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/nuance/swype/preference/ViewClickPreference;->setListener(Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;)V

    .line 445
    :goto_420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "keyboard_height_settings"

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/settings/SettingsPrefs;->keyboardHeightPrefs:Landroid/preference/Preference;

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->keyboardHeightSummaryUpdate()V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->keyboardHeightPrefs:Landroid/preference/Preference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_45b

    .line 448
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v28

    .line 449
    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/UserPreferences;->isShowKeyboardHeightPrefEnabled()Z

    move-result v28

    if-nez v28, :cond_61e

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "keyboard_category"

    const-string/jumbo v30, "keyboard_height_settings"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_45b
    :goto_45b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "candidates_size_setting_preference"

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/settings/SettingsPrefs;->candidateSizePrefs:Landroid/preference/Preference;

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->candidateSizePrefs:Landroid/preference/Preference;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->wordChoiceListFontSummary(Landroid/preference/Preference;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->candidateSizePrefs:Landroid/preference/Preference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4a0

    .line 478
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v28

    .line 479
    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/UserPreferences;->isShowWordChoiceSizePrefEnabled()Z

    move-result v28

    if-nez v28, :cond_656

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "keyboard_category"

    const-string/jumbo v30, "candidates_size_setting_preference"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_4a0
    :goto_4a0
    invoke-virtual/range {v22 .. v22}, Lcom/nuance/swype/input/SystemState;->hasHapticHardwareSupport()Z

    move-result v28

    if-nez v28, :cond_4c4

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "keyboard_category"

    const-string/jumbo v30, "vibrate_on"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "keyboard_category"

    const-string/jumbo v30, "vibration_duration"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_4c4
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/AppPreferences;->isSetVibrationDurationAllowed()Z

    move-result v28

    if-nez v28, :cond_68e

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "keyboard_category"

    const-string/jumbo v30, "vibration_duration"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :goto_4e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "show_voice_key"

    .line 521
    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/CheckBoxPreference;

    .line 522
    .local v27, "voiceKeyPref":Landroid/preference/CheckBoxPreference;
    if-eqz v27, :cond_51e

    .line 523
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/IMEApplication;->isTrialExpired()Z

    move-result v28

    if-eqz v28, :cond_69f

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "voice_handwriting_category"

    const-string/jumbo v30, "show_voice_key"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "voice_handwriting_category"

    const-string/jumbo v30, "end_of_speech_detection"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_51e
    :goto_51e
    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v28

    if-nez v28, :cond_533

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "prediction_category"

    const-string/jumbo v30, "enable_korean_consonant_input"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/connect/Connect;->isLicensed()Z

    move-result v28

    if-eqz v28, :cond_55d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v28, v0

    .line 537
    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v28

    if-nez v28, :cond_6b4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v28

    if-nez v28, :cond_6b4

    .line 540
    :cond_55d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "basic_category"

    const-string/jumbo v30, "pref_connect_enable_data_connection"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_56c
    :goto_56c
    return-void

    .line 213
    .end local v7    # "enabled":I
    .end local v8    # "hideAutoCorrectPref":Z
    .end local v10    # "ime":Lcom/nuance/swype/input/IME;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "showEmojiSuggestionsPref":Z
    .end local v21    # "showNumberRowPref":Z
    .end local v22    # "sysState":Lcom/nuance/swype/input/SystemState;
    .end local v23    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    .end local v27    # "voiceKeyPref":Landroid/preference/CheckBoxPreference;
    :cond_56d
    const/16 v28, 0x0

    goto/16 :goto_2d

    .line 240
    :cond_571
    const/16 v28, 0x0

    goto/16 :goto_da

    .line 274
    .restart local v5    # "currentLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v8    # "hideAutoCorrectPref":Z
    .restart local v10    # "ime":Lcom/nuance/swype/input/IME;
    .restart local v13    # "iv":Lcom/nuance/swype/input/InputView;
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "showEmojiSuggestionsPref":Z
    .restart local v21    # "showNumberRowPref":Z
    .restart local v23    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_575
    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v28

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setLanguage(I)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 275
    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->isNullLdb()Z

    move-result v8

    .end local v8    # "hideAutoCorrectPref":Z
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateNullLdb:Z

    .restart local v8    # "hideAutoCorrectPref":Z
    goto/16 :goto_162

    .line 308
    .end local v5    # "currentLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v13    # "iv":Lcom/nuance/swype/input/InputView;
    .restart local v7    # "enabled":I
    .restart local v22    # "sysState":Lcom/nuance/swype/input/SystemState;
    :cond_58e
    const/16 v28, 0x1

    goto/16 :goto_1fc

    .line 310
    :cond_592
    const/16 v28, 0x0

    goto/16 :goto_211

    .line 314
    .restart local v15    # "keyboardVibrationPref":Landroid/preference/CheckBoxPreference;
    :cond_596
    const/16 v28, 0x0

    goto/16 :goto_22d

    .line 320
    .end local v15    # "keyboardVibrationPref":Landroid/preference/CheckBoxPreference;
    :cond_59a
    const/16 v28, 0x1

    goto/16 :goto_248

    .line 323
    :cond_59e
    const/16 v28, 0x1

    goto/16 :goto_271

    .line 325
    :cond_5a2
    const/16 v28, 0x0

    goto/16 :goto_286

    .line 329
    .restart local v14    # "keyboardSoundPref":Landroid/preference/CheckBoxPreference;
    :cond_5a6
    const/16 v28, 0x0

    goto/16 :goto_2a2

    .line 347
    .end local v14    # "keyboardSoundPref":Landroid/preference/CheckBoxPreference;
    .restart local v24    # "vibrationPref":Landroid/preference/Preference;
    :cond_5aa
    new-instance v28, Lcom/nuance/swype/input/settings/SettingsPrefs$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs$2;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_2f7

    .line 367
    .end local v24    # "vibrationPref":Landroid/preference/Preference;
    :cond_5bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->emojiSkinTonePreference:Landroid/preference/Preference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;

    move/from16 v28, v0

    if-eqz v28, :cond_5f8

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->emojiSkinTonePreference:Landroid/preference/Preference;

    move-object/from16 v28, v0

    check-cast v28, Lcom/nuance/swype/preference/EmojiSkinTonePreference;

    new-instance v29, Lcom/nuance/swype/input/settings/SettingsPrefs$3;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs$3;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    .line 2081
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mViewClickPreferenceListener:Lcom/nuance/swype/preference/EmojiSkinTonePreference$ViewClickPreferenceListener;

    .line 2082
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mCurrentView:Landroid/view/View;

    move-object/from16 v29, v0

    if-eqz v29, :cond_333

    .line 2083
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mCurrentView:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_333

    .line 377
    :cond_5f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->emojiSkinTonePreference:Landroid/preference/Preference;

    move-object/from16 v28, v0

    new-instance v29, Lcom/nuance/swype/input/settings/SettingsPrefs$4;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs$4;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    invoke-virtual/range {v28 .. v29}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_333

    .line 434
    .restart local v17    # "longPressDelayPref":Landroid/preference/Preference;
    :cond_60c
    new-instance v28, Lcom/nuance/swype/input/settings/SettingsPrefs$6;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs$6;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_420

    .line 453
    .end local v17    # "longPressDelayPref":Landroid/preference/Preference;
    :cond_61e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->keyboardHeightPrefs:Landroid/preference/Preference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/nuance/swype/preference/ViewClickPreference;

    move/from16 v28, v0

    if-eqz v28, :cond_642

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->keyboardHeightPrefs:Landroid/preference/Preference;

    move-object/from16 v28, v0

    check-cast v28, Lcom/nuance/swype/preference/ViewClickPreference;

    new-instance v29, Lcom/nuance/swype/input/settings/SettingsPrefs$7;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs$7;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    invoke-virtual/range {v28 .. v29}, Lcom/nuance/swype/preference/ViewClickPreference;->setListener(Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;)V

    goto/16 :goto_45b

    .line 462
    :cond_642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->keyboardHeightPrefs:Landroid/preference/Preference;

    move-object/from16 v28, v0

    new-instance v29, Lcom/nuance/swype/input/settings/SettingsPrefs$8;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs$8;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    invoke-virtual/range {v28 .. v29}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_45b

    .line 483
    :cond_656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->candidateSizePrefs:Landroid/preference/Preference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/nuance/swype/preference/ViewClickPreference;

    move/from16 v28, v0

    if-eqz v28, :cond_67a

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->candidateSizePrefs:Landroid/preference/Preference;

    move-object/from16 v28, v0

    check-cast v28, Lcom/nuance/swype/preference/ViewClickPreference;

    new-instance v29, Lcom/nuance/swype/input/settings/SettingsPrefs$9;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs$9;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    invoke-virtual/range {v28 .. v29}, Lcom/nuance/swype/preference/ViewClickPreference;->setListener(Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;)V

    goto/16 :goto_4a0

    .line 493
    :cond_67a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->candidateSizePrefs:Landroid/preference/Preference;

    move-object/from16 v28, v0

    new-instance v29, Lcom/nuance/swype/input/settings/SettingsPrefs$10;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs$10;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    invoke-virtual/range {v28 .. v29}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_4a0

    .line 517
    :cond_68e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "keyboard_category"

    const-string/jumbo v30, "vibrate_on"

    invoke-static/range {v28 .. v30}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4e1

    .line 527
    .restart local v27    # "voiceKeyPref":Landroid/preference/CheckBoxPreference;
    :cond_69f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "voice_handwriting_category"

    const-string/jumbo v30, "end_of_speech_detection"

    .line 528
    invoke-virtual/range {v27 .. v27}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v31

    .line 527
    invoke-static/range {v28 .. v31}, Lcom/nuance/swype/input/settings/SettingsPrefs;->enableCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_51e

    .line 544
    :cond_6b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const-string/jumbo v29, "pref_connect_enable_data_connection"

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/nuance/swype/preference/CustomCheckBoxPreference;

    .line 545
    .local v18, "pref":Lcom/nuance/swype/preference/CustomCheckBoxPreference;
    if-eqz v18, :cond_56c

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v28

    .line 547
    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/UserPreferences;->connectUseCellularData()Z

    move-result v6

    .line 548
    .local v6, "enableConnection":Z
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/nuance/swype/preference/CustomCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_56c
.end method

.method private static enableCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "screen"    # Landroid/preference/PreferenceScreen;
    .param p1, "categoryName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 618
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 619
    .local v0, "category":Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_b

    .line 620
    invoke-static {v0, p2, p3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->enablePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 622
    :cond_b
    return-void
.end method

.method private static enablePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "group"    # Landroid/preference/PreferenceGroup;
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 627
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_9

    .line 628
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 630
    :cond_9
    return-void
.end method

.method private formatNumberByLocale(D)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # D

    .prologue
    .line 930
    new-instance v0, Ljava/util/Locale;

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 931
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 932
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I
    .registers 5
    .param p0, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 936
    move v0, p2

    .line 938
    .local v0, "delay":I
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_6

    move-result v0

    .line 943
    :goto_5
    return v0

    .line 940
    :catch_6
    move-exception v1

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    goto :goto_5
.end method

.method public static getCandidatesSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;F)F
    .registers 4
    .param p0, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 1221
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getCandidatesSummarySize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I
    .registers 4
    .param p0, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 1225
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getEmojiSkinToneCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1349
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmojiList()Ljava/util/List;

    move-result-object v0

    .line 1350
    .local v0, "emojis":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/Emoji;>;"
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    .line 1351
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getDefaultEmojiSkin()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v2

    .line 1352
    .local v2, "skinToneEnum":Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_56

    .line 1353
    sget-object v3, Lcom/nuance/swype/input/settings/SettingsPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "getEmojiSkinToneCode()"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " called >>>>> emojiSkinToneCode ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->getSkinValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1354
    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->getSkinValue()I

    move-result v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/Emoji;->getDefaultSkinToneColor()I

    move-result v3

    if-ne v4, v3, :cond_53

    .line 1355
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v3

    .line 1359
    :goto_52
    return-object v3

    .line 1352
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1359
    :cond_56
    const/4 v3, 0x0

    goto :goto_52
.end method

.method private rebuildSettings()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_9

    .line 170
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 173
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    .line 175
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    .line 178
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "ad_settings"

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->buildPreferenceScreen()V

    .line 181
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->buildLanguagesScreen()V

    .line 184
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->setupPreferenceHandler(Landroid/preference/Preference;)V

    .line 185
    return-void
.end method

.method private recordUserActionForPermissionDialog(I[Ljava/lang/String;[I)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1276
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2b

    .line 1278
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    .line 1280
    .local v0, "isPermissionDialogRationale":Z
    if-nez p1, :cond_2b

    array-length v2, p3

    if-eqz v2, :cond_2b

    aget-object v2, p2, v4

    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    .line 1281
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1283
    aget v2, p3, v4

    if-nez v2, :cond_2c

    .line 1284
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->ALLOWED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    .line 1297
    .local v1, "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    :goto_26
    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Permission;->RECORD_AUDIO_SHOW_VOICE_KEY:Lcom/nuance/swype/usagedata/UsageData$Permission;

    invoke-static {v2, v1}, Lcom/nuance/swype/usagedata/UsageData;->recordPermissionRequest(Lcom/nuance/swype/usagedata/UsageData$Permission;Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;)V

    .line 1300
    .end local v0    # "isPermissionDialogRationale":Z
    .end local v1    # "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    :cond_2b
    return-void

    .line 1286
    .restart local v0    # "isPermissionDialogRationale":Z
    :cond_2c
    if-eqz v0, :cond_33

    .line 1287
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->DENIED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    .line 1294
    .restart local v1    # "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    :goto_30
    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->isPermissionDialogRationale:Z

    goto :goto_26

    .line 1288
    .end local v1    # "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    :cond_33
    iget-boolean v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->isPermissionDialogRationale:Z

    if-eqz v2, :cond_3a

    .line 1289
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->NEVER_SHOW_AGAIN:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    .restart local v1    # "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    goto :goto_30

    .line 1292
    .end local v1    # "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    :cond_3a
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->BLOCKED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    .restart local v1    # "userAction":Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    goto :goto_30
.end method

.method private static removeCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "screen"    # Landroid/preference/PreferenceScreen;
    .param p1, "categoryName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 598
    .local v0, "category":Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_14

    .line 599
    invoke-static {v0, p2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_14

    .line 602
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 605
    :cond_14
    return-void
.end method

.method private static removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V
    .registers 3
    .param p0, "group"    # Landroid/preference/PreferenceGroup;
    .param p1, "prefName"    # Ljava/lang/String;

    .prologue
    .line 609
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 610
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_9

    .line 611
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 613
    :cond_9
    return-void
.end method

.method public static resetSettings(Landroid/content/Context;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 757
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 759
    .local v1, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->reset()V

    .line 761
    invoke-static {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->resetToDefault(Landroid/content/Context;)V

    .line 763
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    .line 764
    .local v0, "accounts":Lcom/nuance/swype/connect/Connect$Accounts;
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 765
    .local v3, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Accounts;->getDevices()[Lcom/nuance/swypeconnect/ac/ACDevice;

    move-result-object v4

    if-eqz v4, :cond_51

    .line 766
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Accounts;->getDevices()[Lcom/nuance/swypeconnect/ac/ACDevice;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_2d
    if-ge v4, v7, :cond_51

    aget-object v2, v6, v4

    .line 767
    .local v2, "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 768
    invoke-virtual {v0, v2}, Lcom/nuance/swype/connect/Connect$Accounts;->unlinkDevice(Lcom/nuance/swypeconnect/ac/ACDevice;)V

    .line 769
    sget-object v8, Lcom/nuance/swype/input/settings/SettingsPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "resetSettings...unlink device..."

    aput-object v10, v9, v5

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 766
    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 775
    .end local v2    # "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    :cond_51
    invoke-static {p0}, Lcom/nuance/sns/OAuthPreference;->reset(Landroid/content/Context;)V

    .line 778
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->resetScrapperStatus()V

    .line 779
    return-void
.end method

.method private saveAutoDelay(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delay"    # I

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    .line 948
    return-void
.end method

.method private saveCandidatesSize(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "size"    # F

    .prologue
    .line 1229
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1230
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setFloat(Ljava/lang/String;F)V

    .line 1231
    return-void
.end method

.method private setupPreferenceHandler(Landroid/preference/Preference;)V
    .registers 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 746
    instance-of v3, p1, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_18

    move-object v1, p1

    .line 747
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 748
    .local v1, "group":Landroid/preference/PreferenceGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .local v0, "count":I
    :goto_c
    if-ge v2, v0, :cond_1b

    .line 749
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->setupPreferenceHandler(Landroid/preference/Preference;)V

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 752
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/preference/PreferenceGroup;
    .end local v2    # "i":I
    :cond_18
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 754
    :cond_1b
    return-void
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method protected createCandidateSizeDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 17
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1141
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1142
    .local v3, "display":Landroid/util/DisplayMetrics;
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    const-string/jumbo v10, "layout_inflater"

    .line 1143
    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1144
    .local v8, "systemInflater":Landroid/view/LayoutInflater;
    sget v9, Lcom/nuance/swype/input/R$layout;->candidate_size_dialog:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1147
    .local v5, "scrollView":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1148
    sget v10, Lcom/nuance/swype/input/R$layout;->candidate_size_setting_view:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1149
    .local v1, "candidateView":Landroid/view/View;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$attr;->keyboardSuggestStrip:I

    invoke-virtual {v9, v10}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1151
    sget v9, Lcom/nuance/swype/input/R$id;->candidate_size_group:I

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1152
    const/4 v10, 0x0

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    .line 1154
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$dimen;->candidates_list_height:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1152
    invoke-virtual {v9, v1, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1156
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    .line 1157
    .local v7, "sp":Lcom/nuance/swype/input/UserPreferences;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$string;->swype:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "displayText":Ljava/lang/String;
    move-object v2, v1

    .line 1158
    check-cast v2, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;

    .line 1159
    .local v2, "cs":Lcom/nuance/swype/input/settings/CandidateSizeSettingView;
    const-string/jumbo v9, "Candidates_Size"

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v7, v9, v10}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getCandidatesSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->changedProgress:F

    .line 1160
    iget v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->changedProgress:F

    invoke-virtual {v2, v9}, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->setTextSize(F)V

    .line 1161
    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->setDisplayText(Ljava/lang/String;)V

    .line 1162
    sget v9, Lcom/nuance/swype/input/R$id;->size_seekbar:I

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    .line 1163
    .local v6, "sizeSeekBar":Landroid/widget/SeekBar;
    iget v9, v3, Landroid/util/DisplayMetrics;->density:F

    const v10, 0x3f4ccccd    # 0.8f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_c5

    .line 1164
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    .line 1165
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x0

    .line 1164
    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 1167
    :cond_c5
    const/16 v9, 0xa

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1168
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 1169
    const-string/jumbo v9, "Candidates_Size"

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v7, v9, v10}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getCandidatesSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;F)F

    move-result v9

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    sub-float/2addr v9, v10

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1170
    new-instance v9, Lcom/nuance/swype/input/settings/SettingsPrefs$22;

    invoke-direct {v9, p0, v2, v4}, Lcom/nuance/swype/input/settings/SettingsPrefs$22;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;Lcom/nuance/swype/input/settings/CandidateSizeSettingView;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1194
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v10, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 1195
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$string;->pref_word_choice_title:I

    .line 1196
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v11, 0x0

    .line 1197
    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v11, Lcom/nuance/swype/input/settings/SettingsPrefs$23;

    invoke-direct {v11, p0}, Lcom/nuance/swype/input/settings/SettingsPrefs$23;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    .line 1198
    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1216
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1217
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9
.end method

.method protected abstract createInputLanguagePref(Landroid/os/Bundle;)Landroid/preference/Preference;
.end method

.method protected createKeyboardHeightDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 15
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1024
    .local v1, "display":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    const-string/jumbo v9, "layout_inflater"

    .line 1025
    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1026
    sget v9, Lcom/nuance/swype/input/R$layout;->keyboard_height_dialog:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1028
    .local v2, "scrollView":Landroid/view/ViewGroup;
    sget v8, Lcom/nuance/swype/input/R$id;->valueTextPortrait:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1029
    .local v7, "valueTextPortrait":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    .line 1030
    .local v5, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v8

    iput v8, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValueKeyboardHeightPortrait:F

    .line 1031
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->percent:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValueKeyboardHeightPortrait:F

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 1032
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1031
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    sget v8, Lcom/nuance/swype/input/R$id;->portrait_seekbar:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 1035
    .local v4, "seekBarPortrait":Landroid/widget/SeekBar;
    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    const v9, 0x3f4ccccd    # 0.8f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_93

    .line 1037
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    const/4 v9, 0x0

    .line 1038
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    const/4 v11, 0x0

    .line 1036
    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 1040
    :cond_93
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1041
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 1042
    iget v8, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValueKeyboardHeightPortrait:F

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0xa

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1043
    new-instance v8, Lcom/nuance/swype/input/settings/SettingsPrefs$19;

    invoke-direct {v8, p0, v7}, Lcom/nuance/swype/input/settings/SettingsPrefs$19;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;Landroid/widget/TextView;)V

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1067
    sget v8, Lcom/nuance/swype/input/R$id;->valueTextLandscape:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1068
    .local v6, "valueTextLandscape":Landroid/widget/TextView;
    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v8

    iput v8, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValueKeyboardHeightLandscape:F

    .line 1069
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->percent:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValueKeyboardHeightLandscape:F

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    sget v8, Lcom/nuance/swype/input/R$id;->landscape_seekbar:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 1072
    .local v3, "seekBarLandscape":Landroid/widget/SeekBar;
    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    const v9, 0x3f4ccccd    # 0.8f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_115

    .line 1073
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    .line 1074
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    const/4 v9, 0x0

    .line 1075
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    const/4 v11, 0x0

    .line 1073
    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 1077
    :cond_115
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1078
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 1079
    iget v8, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValueKeyboardHeightLandscape:F

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x8

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1081
    new-instance v8, Lcom/nuance/swype/input/settings/SettingsPrefs$20;

    invoke-direct {v8, p0, v6}, Lcom/nuance/swype/input/settings/SettingsPrefs$20;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;Landroid/widget/TextView;)V

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1105
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v9, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 1106
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->pref_kb_height_title:I

    .line 1107
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v10, 0x0

    .line 1108
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v10, Lcom/nuance/swype/input/settings/SettingsPrefs$21;

    invoke-direct {v10, p0}, Lcom/nuance/swype/input/settings/SettingsPrefs$21;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    .line 1109
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1136
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method

.method public createLongPressDurationDialog()Landroid/app/Dialog;
    .registers 21
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 860
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 861
    .local v6, "display":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    const-string/jumbo v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 862
    sget v16, Lcom/nuance/swype/input/R$layout;->longpress_delay_dialog:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 864
    .local v14, "view":Landroid/view/ViewGroup;
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 866
    .local v11, "res":Landroid/content/res/Resources;
    sget v15, Lcom/nuance/swype/input/R$integer;->long_press_timeout_min_ms:I

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 867
    .local v9, "min":I
    sget v15, Lcom/nuance/swype/input/R$integer;->long_press_timeout_max_ms:I

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    sub-int v8, v15, v9

    .line 868
    .local v8, "max":I
    sget v15, Lcom/nuance/swype/input/R$integer;->long_press_timeout_ms:I

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 869
    .local v5, "defaultValue":I
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v12

    .line 870
    .local v12, "sp":Lcom/nuance/swype/input/UserPreferences;
    const-string/jumbo v15, "long_press_delay"

    invoke-static {v12, v15, v5}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    .line 871
    move-object/from16 v0, p0

    iget v10, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    .line 873
    .local v10, "oldValue":I
    sget v15, Lcom/nuance/swype/input/R$id;->valueLongPress:I

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 874
    .local v13, "valueLongPress":Landroid/widget/TextView;
    sget v15, Lcom/nuance/swype/input/R$string;->millisecond:I

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->formatNumberByLocale(D)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    sget v15, Lcom/nuance/swype/input/R$id;->longpress_seekbar:I

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    .line 877
    .local v7, "longPressSeekBar":Landroid/widget/SeekBar;
    iget v15, v6, Landroid/util/DisplayMetrics;->density:F

    const v16, 0x3f4ccccd    # 0.8f

    cmpg-float v15, v15, v16

    if-gez v15, :cond_ce

    .line 878
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    const/16 v16, 0x0

    .line 879
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    .line 878
    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v7, v15, v0, v1, v2}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 881
    :cond_ce
    div-int/lit8 v15, v8, 0xa

    invoke-virtual {v7, v15}, Landroid/widget/SeekBar;->setMax(I)V

    .line 882
    move-object/from16 v0, p0

    iget v15, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    sub-int/2addr v15, v9

    div-int/lit8 v15, v15, 0xa

    invoke-virtual {v7, v15}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 883
    new-instance v15, Lcom/nuance/swype/input/settings/SettingsPrefs$15;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9, v13}, Lcom/nuance/swype/input/settings/SettingsPrefs$15;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;ILandroid/widget/TextView;)V

    invoke-virtual {v7, v15}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 906
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v16, Lcom/nuance/swype/input/R$string;->pref_long_press_title:I

    .line 907
    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 908
    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v17, Lcom/nuance/swype/input/settings/SettingsPrefs$16;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v10}, Lcom/nuance/swype/input/settings/SettingsPrefs$16;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;Landroid/content/res/Resources;I)V

    .line 909
    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/16 v17, 0x0

    .line 923
    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 924
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 926
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    return-object v15
.end method

.method public createRecognitionSpeedDialog()Landroid/app/Dialog;
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 952
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 953
    .local v2, "display":Landroid/util/DisplayMetrics;
    iget-object v10, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    const-string/jumbo v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 954
    sget v11, Lcom/nuance/swype/input/R$layout;->longpress_delay_dialog:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 956
    .local v9, "view":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 957
    .local v6, "res":Landroid/content/res/Resources;
    sget v10, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_alpha_min_ms:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 958
    .local v4, "min":I
    sget v10, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_alpha_max_ms:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    sub-int v3, v10, v4

    .line 959
    .local v3, "max":I
    sget v10, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_alpha_default_ms:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 960
    .local v1, "defaultValue":I
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    .line 961
    .local v7, "sp":Lcom/nuance/swype/input/UserPreferences;
    const-string/jumbo v10, "hwr_auto_recognize_delay_alpha"

    invoke-static {v7, v10, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    .line 963
    sget v10, Lcom/nuance/swype/input/R$id;->valueLongPress:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 964
    .local v8, "valueLongPress":Landroid/widget/TextView;
    sget v10, Lcom/nuance/swype/input/R$string;->second:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    int-to-float v13, v13

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    sget v10, Lcom/nuance/swype/input/R$id;->longpress_seekbar:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 967
    .local v5, "recognitionDelaySeekBar":Landroid/widget/SeekBar;
    iget v10, v2, Landroid/util/DisplayMetrics;->density:F

    const v11, 0x3f4ccccd    # 0.8f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_aa

    .line 968
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    const/4 v11, 0x0

    .line 969
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    const/4 v13, 0x0

    .line 968
    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 971
    :cond_aa
    div-int/lit8 v10, v3, 0x32

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 972
    iget v10, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    sub-int/2addr v10, v4

    div-int/lit8 v10, v10, 0x32

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 973
    new-instance v10, Lcom/nuance/swype/input/settings/SettingsPrefs$17;

    invoke-direct {v10, p0, v4, v8}, Lcom/nuance/swype/input/settings/SettingsPrefs$17;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;ILandroid/widget/TextView;)V

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 996
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v11, Lcom/nuance/swype/input/R$string;->handwriting_recognize_speed_title:I

    .line 997
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    sget v11, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 998
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    sget v11, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v12, Lcom/nuance/swype/input/settings/SettingsPrefs$18;

    invoke-direct {v12, p0, v6, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs$18;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;Landroid/content/res/Resources;I)V

    .line 999
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    sget v11, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v12, 0x0

    .line 1014
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1015
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1017
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    return-object v10
.end method

.method protected createSkinToneDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 1319
    iget-object v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    const-string/jumbo v6, "layout_inflater"

    .line 1320
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 1321
    sget v6, Lcom/nuance/swype/input/R$layout;->skin_tone_dialog:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1324
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmojiList()Ljava/util/List;

    move-result-object v2

    .line 1325
    .local v2, "emojis":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/Emoji;>;"
    new-instance v1, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v5, p0}, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/nuance/swype/input/settings/SettingsPrefs;)V

    .line 1326
    .local v1, "emojiSkinToneListAdapter":Lcom/nuance/swype/input/EmojiSkinToneListAdapter;
    sget v5, Lcom/nuance/swype/input/R$id;->skin_listView:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1327
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1328
    new-instance v5, Lcom/nuance/swype/input/settings/SettingsPrefs$24;

    invoke-direct {v5, p0, v2}, Lcom/nuance/swype/input/settings/SettingsPrefs$24;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1338
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1339
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1340
    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1341
    sget v5, Lcom/nuance/swype/input/R$string;->cancel_button:I

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1342
    iget-object v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    sget v6, Lcom/nuance/swype/input/R$string;->dialog_title_default_skintone:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1343
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1344
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->skinToneDialog:Landroid/app/Dialog;

    .line 1345
    iget-object v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->skinToneDialog:Landroid/app/Dialog;

    return-object v5
.end method

.method public createVibrationDurationDialog()Landroid/app/Dialog;
    .registers 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 783
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 784
    .local v3, "display":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    const-string/jumbo v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 785
    sget v14, Lcom/nuance/swype/input/R$layout;->vibration_duration_dialog:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 787
    .local v12, "view":Landroid/view/ViewGroup;
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 789
    .local v7, "res":Landroid/content/res/Resources;
    sget v13, Lcom/nuance/swype/input/R$integer;->vibrate_duration_min_ms:I

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 790
    .local v6, "min":I
    sget v13, Lcom/nuance/swype/input/R$integer;->vibrate_duration_max_ms:I

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    sub-int v5, v13, v6

    .line 791
    .local v5, "max":I
    sget v13, Lcom/nuance/swype/input/R$integer;->vibrate_duration_ms:I

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 792
    .local v2, "defaultValue":I
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v8

    .line 793
    .local v8, "sp":Lcom/nuance/swype/input/UserPreferences;
    const-string/jumbo v13, "vibration_duration"

    invoke-static {v8, v13, v2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    .line 795
    sget v13, Lcom/nuance/swype/input/R$id;->valueVibration:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 796
    .local v10, "valueDuration":Landroid/widget/TextView;
    sget v13, Lcom/nuance/swype/input/R$string;->millisecond:I

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    sget v13, Lcom/nuance/swype/input/R$id;->valueTextMin:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 799
    const-string/jumbo v14, "%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    sget v13, Lcom/nuance/swype/input/R$id;->valueTextMax:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 802
    .local v11, "valueMax":Landroid/widget/TextView;
    add-int v9, v5, v6

    .line 803
    .local v9, "value":I
    sget v13, Lcom/nuance/swype/input/R$string;->millisecond:I

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    sget v13, Lcom/nuance/swype/input/R$id;->duration_seekbar:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 806
    .local v4, "longPressSeekBar":Landroid/widget/SeekBar;
    iget v13, v3, Landroid/util/DisplayMetrics;->density:F

    const v14, 0x3f4ccccd    # 0.8f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_ef

    .line 807
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, 0x0

    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    const/16 v16, 0x0

    .line 807
    move/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 810
    :cond_ef
    div-int/lit8 v13, v5, 0x5

    invoke-virtual {v4, v13}, Landroid/widget/SeekBar;->setMax(I)V

    .line 811
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    sub-int/2addr v13, v6

    div-int/lit8 v13, v13, 0x5

    invoke-virtual {v4, v13}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 812
    new-instance v13, Lcom/nuance/swype/input/settings/SettingsPrefs$13;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6, v10}, Lcom/nuance/swype/input/settings/SettingsPrefs$13;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;ILandroid/widget/TextView;)V

    invoke-virtual {v4, v13}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 836
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v14, Lcom/nuance/swype/input/R$string;->pref_vibration_title:I

    .line 837
    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 838
    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v15, Lcom/nuance/swype/input/settings/SettingsPrefs$14;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v7, v2}, Lcom/nuance/swype/input/settings/SettingsPrefs$14;-><init>(Lcom/nuance/swype/input/settings/SettingsPrefs;Landroid/content/res/Resources;I)V

    .line 839
    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v15, 0x0

    .line 852
    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 853
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 855
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    return-object v13
.end method

.method abstract doShowDialog(ILandroid/os/Bundle;)V
.end method

.method public keyboardHeightSummaryUpdate()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    .line 1374
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    .line 1375
    .local v4, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v5

    iput v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValueKeyboardHeightPortrait:F

    .line 1376
    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v5

    iput v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValueKeyboardHeightLandscape:F

    .line 1377
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1378
    .local v2, "res":Landroid/content/res/Resources;
    sget v5, Lcom/nuance/swype/input/R$string;->accessibility_notification_on_keyboard_portrait_short:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1379
    .local v1, "portrait":Ljava/lang/String;
    sget v5, Lcom/nuance/swype/input/R$string;->accessibility_notification_on_keyboard_landscape_short:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1380
    .local v0, "lanscape":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1381
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValueKeyboardHeightPortrait:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "% & "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1382
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValueKeyboardHeightLandscape:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    iget-object v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->keyboardHeightPrefs:Landroid/preference/Preference;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1384
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 140
    if-eqz p1, :cond_1f

    .line 141
    const-string/jumbo v0, "state_null_ldb"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateNullLdb:Z

    .line 142
    const-string/jumbo v0, "state_number_row_kb"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateNumberRowKb:Z

    .line 143
    const-string/jumbo v0, "state_emoji_ldb"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateEmojiLdb:Z

    .line 149
    :goto_1e
    return-void

    .line 145
    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateNullLdb:Z

    .line 146
    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateNumberRowKb:Z

    .line 147
    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateEmojiLdb:Z

    goto :goto_1e
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 20
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 637
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_9a

    move-object/from16 v12, p2

    .line 638
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 639
    .local v1, "checked":Z
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v12

    if-nez v12, :cond_73

    const/4 v6, 0x1

    .line 641
    .local v6, "providerIsDragon":Z
    :goto_1d
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->getSystemState()Lcom/nuance/swype/input/SystemState;

    move-result-object v8

    .line 642
    .local v8, "systemState":Lcom/nuance/swype/input/SystemState;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v12}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v10

    .line 643
    .local v10, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    const-string/jumbo v12, "show_voice_key"

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ff

    .line 644
    if-eqz v1, :cond_75

    if-eqz v6, :cond_75

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    .line 645
    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "android.permission.RECORD_AUDIO"

    .line 644
    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_75

    .line 647
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "android.permission.RECORD_AUDIO"

    aput-object v14, v12, v13

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/nuance/swype/input/settings/SettingsPrefs;->requestPermissions([Ljava/lang/String;I)V

    .line 649
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    const-string/jumbo v13, "android.permission.RECORD_AUDIO"

    .line 650
    invoke-virtual {v12, v13}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->isPermissionDialogRationale:Z

    .line 651
    const/4 v12, 0x0

    .line 742
    .end local v1    # "checked":Z
    .end local v6    # "providerIsDragon":Z
    .end local v8    # "systemState":Lcom/nuance/swype/input/SystemState;
    .end local v10    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :goto_72
    return v12

    .line 639
    .restart local v1    # "checked":Z
    :cond_73
    const/4 v6, 0x0

    goto :goto_1d

    .line 653
    .restart local v6    # "providerIsDragon":Z
    .restart local v8    # "systemState":Lcom/nuance/swype/input/SystemState;
    .restart local v10    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_75
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v14, "voice_handwriting_category"

    const-string/jumbo v15, "end_of_speech_detection"

    if-eqz v1, :cond_fd

    if-eqz v6, :cond_fd

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    .line 656
    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v16, "android.permission.RECORD_AUDIO"

    .line 655
    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_fd

    const/4 v12, 0x1

    .line 653
    :goto_97
    invoke-static {v13, v14, v15, v12}, Lcom/nuance/swype/input/settings/SettingsPrefs;->enableCategorySubPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 711
    .end local v1    # "checked":Z
    .end local v6    # "providerIsDragon":Z
    .end local v8    # "systemState":Lcom/nuance/swype/input/SystemState;
    .end local v10    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_9a
    :goto_9a
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v7

    .line 712
    .local v7, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v7, :cond_c4

    .line 713
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_c4

    move-object/from16 v12, p2

    .line 714
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 715
    .local v11, "value":Z
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    if-nez v11, :cond_238

    const/4 v12, 0x1

    :goto_bd
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v7, v13, v14, v12}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 719
    .end local v11    # "value":Z
    :cond_c4
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 720
    .local v4, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v4, :cond_d7

    .line 721
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    .line 722
    .local v2, "currentIME":Lcom/nuance/swype/input/IME;
    if-eqz v2, :cond_d7

    .line 723
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->clearSavedKeyboardState()V

    .line 727
    .end local v2    # "currentIME":Lcom/nuance/swype/input/IME;
    :cond_d7
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "ad_setting_first_time"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_262

    .line 728
    const-string/jumbo v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_fa

    const-string/jumbo v12, "0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23b

    :cond_fa
    const/4 v12, 0x0

    goto/16 :goto_72

    .line 655
    .end local v4    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .end local v7    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    .restart local v1    # "checked":Z
    .restart local v6    # "providerIsDragon":Z
    .restart local v8    # "systemState":Lcom/nuance/swype/input/SystemState;
    .restart local v10    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_fd
    const/4 v12, 0x0

    goto :goto_97

    .line 660
    :cond_ff
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "vibrate_on"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_155

    .line 661
    invoke-virtual {v8}, Lcom/nuance/swype/input/SystemState;->isKeyboardVibrateEnabled()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_155

    .line 662
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_148

    .line 665
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_148

    .line 666
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v12, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v12, "package"

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 668
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 669
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 670
    const/4 v12, 0x0

    goto/16 :goto_72

    .line 674
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_148
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 675
    .local v3, "currentValue":Z
    invoke-virtual {v8, v3}, Lcom/nuance/swype/input/SystemState;->setKeyboardVibrate(Z)V

    goto/16 :goto_9a

    .line 676
    .end local v3    # "currentValue":Z
    :cond_155
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "sound_on"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1ab

    .line 677
    invoke-virtual {v8}, Lcom/nuance/swype/input/SystemState;->isKeyboardSoundEnabled()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1ab

    .line 678
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_19e

    .line 681
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_19e

    .line 682
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v12, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 683
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string/jumbo v12, "package"

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 684
    .restart local v9    # "uri":Landroid/net/Uri;
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 685
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 686
    const/4 v12, 0x0

    goto/16 :goto_72

    .line 690
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_19e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 691
    .restart local v3    # "currentValue":Z
    invoke-virtual {v8, v3}, Lcom/nuance/swype/input/SystemState;->setKeyboardSound(Z)V

    goto/16 :goto_9a

    .line 692
    .end local v3    # "currentValue":Z
    :cond_1ab
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "number_row"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1bf

    .line 693
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->settingsChanged:Z

    goto/16 :goto_9a

    .line 694
    :cond_1bf
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "hide_secondaries"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1e8

    .line 695
    sget-object v12, Lcom/nuance/swype/input/settings/SettingsPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "show secondary characters:"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-interface {v12, v13}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 696
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->settingsChanged:Z

    goto/16 :goto_9a

    .line 698
    :cond_1e8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_201

    .line 699
    invoke-virtual {v10}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v12

    if-eqz v12, :cond_201

    .line 701
    const/4 v12, 0x1

    goto/16 :goto_72

    .line 702
    :cond_201
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "pref_connect_enable_data_connection"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9a

    .line 703
    sget-object v12, Lcom/nuance/swype/input/settings/SettingsPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, " ENABLE_DATA_CONNECTION_KEY "

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-interface {v12, v13}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 704
    invoke-virtual {v10, v1}, Lcom/nuance/swype/input/UserPreferences;->setConnectUseCellularData(Z)V

    .line 705
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    invoke-static {v12}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/nuance/swype/connect/Connect;->enableCellularData(Z)V

    .line 706
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/nuance/swype/input/settings/SettingsPrefs;->settingsChanged:Z

    goto/16 :goto_9a

    .line 715
    .end local v1    # "checked":Z
    .end local v6    # "providerIsDragon":Z
    .end local v8    # "systemState":Lcom/nuance/swype/input/SystemState;
    .end local v10    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    .restart local v7    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    .restart local v11    # "value":Z
    :cond_238
    const/4 v12, 0x0

    goto/16 :goto_bd

    .line 729
    .end local v11    # "value":Z
    .restart local v4    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    :cond_23b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 730
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->getAdSessionTracker()Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->updateStart(I)V

    .line 742
    :cond_25f
    :goto_25f
    const/4 v12, 0x1

    goto/16 :goto_72

    .line 731
    :cond_262
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "ad_setting_step_size"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2ad

    .line 732
    const-string/jumbo v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_285

    const-string/jumbo v12, "0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_288

    :cond_285
    const/4 v12, 0x0

    goto/16 :goto_72

    .line 733
    :cond_288
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 734
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->getAdSessionTracker()Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->updateStepSize(I)V

    goto :goto_25f

    .line 735
    :cond_2ad
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "ad_setting_max_ad_in_day"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_25f

    .line 736
    const-string/jumbo v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2d0

    const-string/jumbo v12, "0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d3

    :cond_2d0
    const/4 v12, 0x0

    goto/16 :goto_72

    .line 737
    :cond_2d3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 738
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->getAdSessionTracker()Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->updateMaxNumberOfTimes(I)V

    goto/16 :goto_25f
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 13
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1242
    if-nez p1, :cond_43

    array-length v4, p3

    if-eqz v4, :cond_43

    .line 1243
    const/4 v0, 0x1

    .line 1244
    .local v0, "isGrantedAllPermissions":Z
    array-length v7, p3

    move v4, v6

    :goto_a
    if-ge v4, v7, :cond_11

    aget v8, p3, v4

    .line 1245
    if-eqz v8, :cond_47

    .line 1246
    const/4 v0, 0x0

    .line 1251
    :cond_11
    if-eqz v0, :cond_43

    .line 1252
    iget-object v4, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "show_voice_key"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 1253
    .local v3, "voiceKeyPref":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_43

    .line 1254
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 1255
    .local v1, "oldValue":Z
    if-nez v1, :cond_4a

    move v4, v5

    :goto_27
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1256
    iget-object v4, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;

    .line 1257
    invoke-static {v4}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v2

    .line 1258
    .local v2, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v2, :cond_43

    .line 1259
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_4c

    :goto_38
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1260
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1259
    invoke-interface {v2, v4, v5, v6}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1265
    .end local v0    # "isGrantedAllPermissions":Z
    .end local v1    # "oldValue":Z
    .end local v2    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    .end local v3    # "voiceKeyPref":Landroid/preference/CheckBoxPreference;
    :cond_43
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->recordUserActionForPermissionDialog(I[Ljava/lang/String;[I)V

    .line 1266
    return-void

    .line 1244
    .restart local v0    # "isGrantedAllPermissions":Z
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .restart local v1    # "oldValue":Z
    .restart local v3    # "voiceKeyPref":Landroid/preference/CheckBoxPreference;
    :cond_4a
    move v4, v6

    .line 1255
    goto :goto_27

    .restart local v2    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :cond_4c
    move v5, v6

    .line 1259
    goto :goto_38
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->rebuildSettings()V

    .line 154
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 157
    const-string/jumbo v0, "state_null_ldb"

    iget-boolean v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateNullLdb:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    const-string/jumbo v0, "state_number_row_kb"

    iget-boolean v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateNumberRowKb:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    const-string/jumbo v0, "state_emoji_ldb"

    iget-boolean v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mStateEmojiLdb:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 1303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->settingsChanged:Z

    .line 1304
    return-void
.end method

.method protected onStop()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1307
    iget-boolean v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->settingsChanged:Z

    if-eqz v3, :cond_31

    .line 1308
    sget-object v3, Lcom/nuance/swype/input/settings/SettingsPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "Settings for My Words have been changed, tag them before leaving"

    aput-object v5, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1309
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1310
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getShowNumberRow()Z

    move-result v3

    .line 1311
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardHideSecondaries()Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getShowNumberRow()Z

    move-result v4

    if-nez v4, :cond_32

    .line 1312
    :goto_2a
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->connectUseCellularData()Z

    move-result v2

    .line 1310
    invoke-static {v3, v1, v2}, Lcom/nuance/swype/usagedata/UsageData;->recordSettingsSummary(ZZZ)V

    .line 1314
    .end local v0    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_31
    return-void

    .restart local v0    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_32
    move v1, v2

    .line 1311
    goto :goto_2a
.end method

.method public recognitionSpeedSummary()V
    .registers 10

    .prologue
    .line 1387
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 1388
    .local v2, "sp":Lcom/nuance/swype/input/UserPreferences;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1389
    .local v1, "res":Landroid/content/res/Resources;
    sget v3, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_alpha_default_ms:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1390
    .local v0, "defaultValue":I
    const-string/jumbo v3, "hwr_auto_recognize_delay_alpha"

    invoke-static {v2, v3, v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    .line 1391
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "hwr_auto_recognize_delay_alpha"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1392
    sget v4, Lcom/nuance/swype/input/R$string;->second:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1393
    return-void
.end method

.method abstract requestPermissions([Ljava/lang/String;I)V
.end method

.method public setCandidateFontSize(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # I

    .prologue
    .line 1235
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1236
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    .line 1238
    return-void
.end method

.method public setUserSelectEmojiSkinTone()V
    .registers 3

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->emojiSkinTonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_13

    .line 1364
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->emojiSkinTonePreference:Landroid/preference/Preference;

    check-cast v0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getEmojiSkinToneCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->setEmojiText(Ljava/lang/String;)V

    .line 1367
    :cond_13
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->skinToneDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->skinToneDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1368
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->skinToneDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1371
    :cond_24
    return-void
.end method

.method protected abstract showCandidateSizeDialog(Landroid/os/Bundle;)V
.end method

.method protected abstract showEmojiSkinToneDialog(Landroid/os/Bundle;)V
.end method

.method protected abstract showKeyboardHeightDialog(Landroid/os/Bundle;)V
.end method

.method public wordChoiceListFontSummary(Landroid/preference/Preference;)V
    .registers 6
    .param p1, "candidateSizePrefs"    # Landroid/preference/Preference;

    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 1397
    .local v1, "sp":Lcom/nuance/swype/input/UserPreferences;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1398
    .local v0, "res":Landroid/content/res/Resources;
    const-string/jumbo v2, "Candidates_summary"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getCandidatesSummarySize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->scalingFactor:I

    .line 1399
    iget v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->scalingFactor:I

    if-ltz v2, :cond_35

    iget v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->scalingFactor:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_35

    .line 1400
    sget v2, Lcom/nuance/swype/input/R$string;->settings_word_font_small:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->fontSize:Ljava/lang/String;

    .line 1408
    :goto_2f
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->fontSize:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1409
    return-void

    .line 1402
    :cond_35
    iget v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->scalingFactor:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_43

    .line 1403
    sget v2, Lcom/nuance/swype/input/R$string;->settings_word_font_normal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->fontSize:Ljava/lang/String;

    goto :goto_2f

    .line 1406
    :cond_43
    sget v2, Lcom/nuance/swype/input/R$string;->settings_word_font_large:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs;->fontSize:Ljava/lang/String;

    goto :goto_2f
.end method
