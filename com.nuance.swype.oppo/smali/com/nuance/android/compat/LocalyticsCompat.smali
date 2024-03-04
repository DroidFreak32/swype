.class public Lcom/nuance/android/compat/LocalyticsCompat;
.super Ljava/lang/Object;
.source "LocalyticsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/android/compat/LocalyticsCompat$DummyAnalytics;
    }
.end annotation


# static fields
.field private static final ARGS_LocalyticsSession:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final CLASS_LocalyticsSession:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static CONSTRUCTOR_LocalyticsSession:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public static final SESSION_ERR_LVL_LIC_FAIL:Ljava/lang/String; = "lvl license error"

.field public static final SESSION_START_ATTRIBUTE_BILINGUAL:Ljava/lang/String; = "bilingual"

.field public static final SESSION_START_ATTRIBUTE_DEVICE_TYPE:Ljava/lang/String; = "device type"

.field public static final SESSION_START_ATTRIBUTE_KEYBOARD:Ljava/lang/String; = "keyboard"

.field public static final SESSION_START_ATTRIBUTE_KEYBOARD_LANGUAGE:Ljava/lang/String; = "keyboard language"

.field public static final SESSION_START_ATTRIBUTE_KEYBOARD_LAYOUT:Ljava/lang/String; = "keyboard layout"

.field public static final SESSION_START_ATTRIBUTE_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final SESSION_START_ATTRIBUTE_STARTUP_TIME:Ljava/lang/String; = "startup time"

.field public static final SESSION_START_ATTRIBUTE_THEME:Ljava/lang/String; = "theme"

.field public static final SESSION_START_EVENT:Ljava/lang/String; = "Session Start"

.field public static final SETTINGS_CLOSED_ATTRIBUTE_ENTRY_POINT:Ljava/lang/String; = "entry point"

.field public static final SETTINGS_CLOSED_EVENT:Ljava/lang/String; = "Settings Closed"

.field public static final SETTING_SUMMARY_ATTRIBUTE_AUTO_CAPITALIZATION:Ljava/lang/String; = "auto-capitalization"

.field public static final SETTING_SUMMARY_ATTRIBUTE_AUTO_CORRECTION:Ljava/lang/String; = "auto-correction"

.field public static final SETTING_SUMMARY_ATTRIBUTE_AUTO_SPACING:Ljava/lang/String; = "auto-spacing"

.field public static final SETTING_SUMMARY_ATTRIBUTE_DETECT_END_OF_SPEECH:Ljava/lang/String; = "detect end of speech"

.field public static final SETTING_SUMMARY_ATTRIBUTE_DICTIONARY_BEHAVIOR:Ljava/lang/String; = "dictionary behavior"

.field public static final SETTING_SUMMARY_ATTRIBUTE_ENABLE_HANDWRITING:Ljava/lang/String; = "enable handwriting"

.field public static final SETTING_SUMMARY_ATTRIBUTE_FONT_SIZE:Ljava/lang/String; = "font size"

.field public static final SETTING_SUMMARY_ATTRIBUTE_IMPORT_RECENT_CONTACTS:Ljava/lang/String; = "import recent contacts"

.field public static final SETTING_SUMMARY_ATTRIBUTE_KEYBOARD_HEIGHT_LANDSCAPE:Ljava/lang/String; = "keyboard height landscape"

.field public static final SETTING_SUMMARY_ATTRIBUTE_KEYBOARD_HEIGHT_PORTRAIT:Ljava/lang/String; = "keyboard height portrait"

.field public static final SETTING_SUMMARY_ATTRIBUTE_LONG_PRESS_DELAY:Ljava/lang/String; = "long-press delay"

.field public static final SETTING_SUMMARY_ATTRIBUTE_NEXT_WORD_PREDICTION:Ljava/lang/String; = "next word prediction"

.field public static final SETTING_SUMMARY_ATTRIBUTE_POPUP_ON_KEYPRESS:Ljava/lang/String; = "pop-up on keypress"

.field public static final SETTING_SUMMARY_ATTRIBUTE_SHOW_COMPLETE_TRACE:Ljava/lang/String; = "show complete trace"

.field public static final SETTING_SUMMARY_ATTRIBUTE_SHOW_VOICE_KEY:Ljava/lang/String; = "show voice key"

.field public static final SETTING_SUMMARY_ATTRIBUTE_SOUND_ON_KEYPRESS:Ljava/lang/String; = "sound on keypress"

.field public static final SETTING_SUMMARY_ATTRIBUTE_VIBRATION_DURATION:Ljava/lang/String; = "vibration"

.field public static final SETTING_SUMMARY_EVENT:Ljava/lang/String; = "Settings Summary"

.field public static final SETTING_THEME_ATTRIBUTE_KBD_FONT_BOLD:Ljava/lang/String; = "use bold font on key"

.field private static localyticsSession:Lcom/nuance/swype/stats/LocalyticsUtils;

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const-string v0, "LocalyticsCompat"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 56
    const-string v0, "com.localytics.android.LocalyticsSession"

    invoke-static {v0}, Lcom/nuance/android/compat/CompatUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->CLASS_LocalyticsSession:Ljava/lang/Class;

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->ARGS_LocalyticsSession:[Ljava/lang/Class;

    .line 63
    sget-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->CLASS_LocalyticsSession:Ljava/lang/Class;

    sget-object v1, Lcom/nuance/android/compat/LocalyticsCompat;->ARGS_LocalyticsSession:[Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/nuance/android/compat/CompatUtil;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->CONSTRUCTOR_LocalyticsSession:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static close()V
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->localyticsSession:Lcom/nuance/swype/stats/LocalyticsUtils;

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->localyticsSession:Lcom/nuance/swype/stats/LocalyticsUtils;

    invoke-virtual {v0}, Lcom/nuance/swype/stats/LocalyticsUtils;->close()V

    .line 139
    sget-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Localytics session closed "

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 141
    :cond_0
    return-void
.end method

.method public static createLocalyticsSession(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/swype/stats/LocalyticsUtils;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-object v2, Lcom/nuance/android/compat/LocalyticsCompat;->CLASS_LocalyticsSession:Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 78
    sget-object v2, Lcom/nuance/android/compat/LocalyticsCompat;->localyticsSession:Lcom/nuance/swype/stats/LocalyticsUtils;

    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/nuance/android/compat/LocalyticsCompat;->isLocalyticsEnabledForThisDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 83
    .local v0, "args":[Ljava/lang/Object;
    sget-object v2, Lcom/nuance/android/compat/LocalyticsCompat;->CONSTRUCTOR_LocalyticsSession:Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_0

    .line 84
    sget-object v2, Lcom/nuance/android/compat/LocalyticsCompat;->CLASS_LocalyticsSession:Ljava/lang/Class;

    sget-object v3, Lcom/nuance/android/compat/LocalyticsCompat;->ARGS_LocalyticsSession:[Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/nuance/android/compat/CompatUtil;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/nuance/android/compat/LocalyticsCompat;->CONSTRUCTOR_LocalyticsSession:Ljava/lang/reflect/Constructor;

    .line 87
    :cond_0
    sget-object v2, Lcom/nuance/android/compat/LocalyticsCompat;->CONSTRUCTOR_LocalyticsSession:Ljava/lang/reflect/Constructor;

    invoke-static {v2, v0}, Lcom/nuance/android/compat/CompatUtil;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 88
    .local v1, "ls":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 89
    check-cast v1, Lcom/nuance/swype/stats/LocalyticsUtils;

    .end local v1    # "ls":Ljava/lang/Object;
    sput-object v1, Lcom/nuance/android/compat/LocalyticsCompat;->localyticsSession:Lcom/nuance/swype/stats/LocalyticsUtils;

    .line 91
    :cond_1
    sget-object v2, Lcom/nuance/android/compat/LocalyticsCompat;->localyticsSession:Lcom/nuance/swype/stats/LocalyticsUtils;

    if-eqz v2, :cond_2

    .line 92
    sget-object v2, Lcom/nuance/android/compat/LocalyticsCompat;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "using localytics object"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 96
    .end local v0    # "args":[Ljava/lang/Object;
    :cond_2
    sget-object v2, Lcom/nuance/android/compat/LocalyticsCompat;->localyticsSession:Lcom/nuance/swype/stats/LocalyticsUtils;

    if-nez v2, :cond_3

    .line 97
    sget-object v2, Lcom/nuance/android/compat/LocalyticsCompat;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "using dummy localytics object"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 98
    new-instance v2, Lcom/nuance/android/compat/LocalyticsCompat$DummyAnalytics;

    invoke-direct {v2, p0}, Lcom/nuance/android/compat/LocalyticsCompat$DummyAnalytics;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/nuance/android/compat/LocalyticsCompat;->localyticsSession:Lcom/nuance/swype/stats/LocalyticsUtils;

    .line 101
    :cond_3
    sget-object v2, Lcom/nuance/android/compat/LocalyticsCompat;->localyticsSession:Lcom/nuance/swype/stats/LocalyticsUtils;

    return-object v2
.end method

.method public static isLocalyticsClassExistingAndContributionaAllowed(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->isDataUsageOptAccepted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    sget-object v1, Lcom/nuance/android/compat/LocalyticsCompat;->CLASS_LocalyticsSession:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 152
    :cond_0
    return v0
.end method

.method public static isLocalyticsEnabledForThisDevice(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 115
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 118
    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    move v1, v2

    .line 120
    :goto_0
    return v1

    .line 118
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 120
    goto :goto_0
.end method

.method public static open()V
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->localyticsSession:Lcom/nuance/swype/stats/LocalyticsUtils;

    invoke-virtual {v0}, Lcom/nuance/swype/stats/LocalyticsUtils;->open()V

    .line 126
    sget-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Localytics session opened "

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public static shouldUploadDataToLocalytics(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 172
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/BuildInfo;->isLocalyticsOfficialAppKeyForGoogleProductionBuild()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 173
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 174
    .local v0, "currentTime":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 175
    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 176
    .local v2, "currentTimeInSeconds":J
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    const-string v8, "upload_localytics"

    invoke-virtual {v7, v8, v10, v11}, Lcom/nuance/swype/input/UserPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 177
    .local v4, "lastTime":J
    cmp-long v7, v4, v10

    if-nez v7, :cond_0

    .line 179
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v6

    const-string v7, "upload_localytics"

    invoke-virtual {v6, v7, v2, v3}, Lcom/nuance/swype/input/UserPreferences;->setLong(Ljava/lang/String;J)V

    .line 180
    sget-object v6, Lcom/nuance/android/compat/LocalyticsCompat;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v7, "Localytics allowed to upload data to server"

    invoke-virtual {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 195
    .end local v0    # "currentTime":Landroid/text/format/Time;
    .end local v2    # "currentTimeInSeconds":J
    .end local v4    # "lastTime":J
    :goto_0
    return v1

    .line 183
    .restart local v0    # "currentTime":Landroid/text/format/Time;
    .restart local v2    # "currentTimeInSeconds":J
    .restart local v4    # "lastTime":J
    :cond_0
    cmp-long v7, v2, v4

    if-lez v7, :cond_1

    sub-long v8, v2, v4

    const-wide/32 v10, 0xa4cb800

    cmp-long v7, v8, v10

    if-ltz v7, :cond_2

    .line 186
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v6

    const-string v7, "upload_localytics"

    invoke-virtual {v6, v7, v2, v3}, Lcom/nuance/swype/input/UserPreferences;->setLong(Ljava/lang/String;J)V

    .line 187
    sget-object v6, Lcom/nuance/android/compat/LocalyticsCompat;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v7, "Localytics allowed to upload data"

    invoke-virtual {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_2
    sget-object v1, Lcom/nuance/android/compat/LocalyticsCompat;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v7, "Localytics refused to upload data to server due to 2 days\' interval"

    invoke-virtual {v1, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    move v1, v6

    .line 191
    goto :goto_0

    .line 194
    .end local v0    # "currentTime":Landroid/text/format/Time;
    .end local v2    # "currentTimeInSeconds":J
    .end local v4    # "lastTime":J
    :cond_3
    sget-object v6, Lcom/nuance/android/compat/LocalyticsCompat;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v7, "Localytics instantly upload data to server for test purpose"

    const-string v8, "formal build has 2 days\' interval"

    invoke-virtual {v6, v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static tagEvent(Ljava/lang/String;)V
    .locals 2
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 144
    sget-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Localytics tagEvent Event: "

    invoke-virtual {v0, v1, p0}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->localyticsSession:Lcom/nuance/swype/stats/LocalyticsUtils;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/stats/LocalyticsUtils;->tagEvent(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Localytics tagEvent Event: "

    const-string v2, " attributes: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    sget-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->localyticsSession:Lcom/nuance/swype/stats/LocalyticsUtils;

    invoke-virtual {v0, p0, p1}, Lcom/nuance/swype/stats/LocalyticsUtils;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 160
    :cond_0
    return-void
.end method

.method public static tagScreen(Ljava/lang/String;)V
    .locals 2
    .param p0, "screen"    # Ljava/lang/String;

    .prologue
    .line 163
    sget-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Localytics tagScreen Screen: "

    invoke-virtual {v0, v1, p0}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    sget-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->localyticsSession:Lcom/nuance/swype/stats/LocalyticsUtils;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/stats/LocalyticsUtils;->tagScreen(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static upload(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-static {p0}, Lcom/nuance/android/compat/LocalyticsCompat;->shouldUploadDataToLocalytics(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->localyticsSession:Lcom/nuance/swype/stats/LocalyticsUtils;

    invoke-virtual {v0}, Lcom/nuance/swype/stats/LocalyticsUtils;->upload()V

    .line 132
    sget-object v0, Lcom/nuance/android/compat/LocalyticsCompat;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Localytics uploaded data."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 134
    :cond_0
    return-void
.end method
