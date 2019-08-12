.class public final Lcom/nuance/swype/input/AppPreferences;
.super Lcom/nuance/swype/input/SwypePreferences;
.source "AppPreferences.java"


# static fields
.field private static final ACCOUNT_NOTIFICATION_PENDING:Ljava/lang/String; = "account_notification_pending"

.field private static final ACCOUNT_NOTIFICATION_SHOW_AT:Ljava/lang/String; = "account_notification_at"

.field public static final ALL_CATEGORYDBS:Ljava/lang/String; = "all_categorydbs"

.field public static final AVAILABLE_CATEGORYDBS:Ljava/lang/String; = "available_categorydbs"

.field public static final AVAILABLE_LANGUAGES:Ljava/lang/String; = "available_languages"

.field private static final BILINGUAL_TIP_SHOWN:Ljava/lang/String; = "bilingual_tip"

.field public static final BUILTIN_LANGAUGES:Ljava/lang/String; = "builtin_languages"

.field public static final CJK_FULL_SCREEN_ENABLED:Ljava/lang/String; = "fullscreen.enabled."

.field public static final CONNECT_ENABLED:Ljava/lang/String; = "enable_connect"

.field public static final CONNECT_PERMITTED:Ljava/lang/String; = "connect_permitted"

.field private static final CONNECT_UPDATE_AVAILABLE:Ljava/lang/String; = "connect_update_available"

.field private static final CONNECT_UPDATE_FILE_PATH:Ljava/lang/String; = "connect_update_file_path"

.field private static final CONNECT_UPDATE_NOTIFICATION_SENT:Ljava/lang/String; = "connect_update_notification_sent"

.field public static final CUSTOM_WORDS_SYNCHRONIZATION_FORCE_RESYNC_KEY:Ljava/lang/String; = "custom_words_synchronization_force_resync_key"

.field public static final CUSTOM_WORDS_SYNCHRONIZATION_SERVER_WORDS_COUNT_KEY:Ljava/lang/String; = "custom_words_synchronization_server_words_count_key"

.field public static final DEFAULT_LANGUAGE:Ljava/lang/String; = "default_language"

.field public static final DICTATION_LANGUAGE:Ljava/lang/String; = "dictation_language"

.field public static final ENABLED_CATEGORYDBS:Ljava/lang/String; = "enabled_categorydbs"

.field public static final ENABLE_CUSTOM_WORDS_SYNCHRONIZATION_KEY:Ljava/lang/String; = "enable_custom_words_synchronization_key"

.field public static final EULA_ACCEPTED_KEY:Ljava/lang/String; = "eula_accepted"

.field public static final LANGUAGE_MODEL_KEY:Ljava/lang/String; = "language_model"

.field public static final LANGUAGE_MODEL_SETTING_DEFAULT:Z = true

.field private static final LAST_SMS_CALLLOG_SCRAPED_TIME_IN_MILLI_SECOND:Ljava/lang/String; = "last_sms_calllog_scraped_time_millis"

.field public static final LEGACY_TOS_ACCEPTED_KEY:Ljava/lang/String; = "tos_accepted"

.field public static final PASSWORD_TIP_SHOWN:Ljava/lang/String; = "PASSWORD_TIP_SHOWN"

.field public static final PREF_EMOJI_RECENT_LIST:Ljava/lang/String; = "pref_emoji_recent_list"

.field public static final PREF_EMOJI_STATE_LAST_CATEGORY_NAME:Ljava/lang/String; = "pref_emoji_state_last_category_name"

.field public static final PREF_EMOJI_STATE_LAST_PAGE_NUMBER:Ljava/lang/String; = "pref_emoji_state_last_page_number"

.field public static final PREF_HANDWRITING_INPUT_AREA:Ljava/lang/String; = "handwriting_input_area"

.field protected static final PREF_SHOW_TIPS:Ljava/lang/String; = "show_tips"

.field private static final RECENT_LANGUAGE_TIP_SHOWN:Ljava/lang/String; = "recent_language_tip"

.field public static final SHOW_EDIT_GESTURE_TIP:Ljava/lang/String; = "SHOW_EDIT_GESTURE_TIP"

.field protected static final SHOW_HOW_TO_USE_HWR:Ljava/lang/String; = "show_how_to_use_hwr"

.field public static final SHOW_STARTUP_TIP_ALREADY_SHOWN:Ljava/lang/String; = "SHOW_STARTUP_TIP_ALREADY_SHOWN"

.field public static final STARTUP_REGISTRATION_ALREADY_SHOWN:Ljava/lang/String; = "STARTUP_REGISTRATION_ALREADY_SHOWN"

.field public static final STARTUP_SEQUENCE_ACOUNT_EMAIL:Ljava/lang/String; = "STARTUP_SEQUENCE_ACOUNT_EMAIL"

.field public static final STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_DISPLAY_NAME:Ljava/lang/String; = "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_DISPLAY_NAME"

.field public static final STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID:Ljava/lang/String; = "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID"

.field public static final STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_NAME:Ljava/lang/String; = "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_NAME"

.field public static final STARTUP_SEQUENCE_EULA:Ljava/lang/String; = "Eula"

.field public static final STARTUP_SEQUENCE_INSTALLED_LANGUAGE_LENGTH:Ljava/lang/String; = "STARTUP_SEQUENCE_INSTALLED_LANGUAGE_LENGTH"

.field public static final STARTUP_SEQUENCE_SEND_DOWNLOADING_NOTIFICATION:Ljava/lang/String; = "STARTUP_SEQUENCE_SEND_DOWNLOADING_NOTIFICATION"

.field public static final STARTUP_SEQUENCE_STATUS:Ljava/lang/String; = "STARTUP_SEQUENCE_STATUS"

.field private static final STARTUP_UPGRADE:Ljava/lang/String; = "startup_upgrade"

.field public static final SUPPORTED_LANGUAGES:Ljava/lang/String; = "supported_languages"

.field public static final TOTAL_SWYPE_DISTANCE:Ljava/lang/String; = "total_swype_distance"

.field private static final UPGRADE_CONNECT:Ljava/lang/String; = "upgrade_connect"

.field private static final UPGRADE_SWIB:Ljava/lang/String; = "upgrade_swib"


# instance fields
.field private accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

.field private upgrading:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/BuildInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buildInfo"    # Lcom/nuance/swype/input/BuildInfo;

    .prologue
    .line 134
    const-string v0, "app_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/SwypePreferences;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 136
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-direct {v0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AppPreferences;->accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    .line 137
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final ackUpgrade()V
    .locals 2

    .prologue
    .line 402
    const-string v0, "upgrade_swib"

    invoke-virtual {p0}, Lcom/nuance/swype/input/AppPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getSwib()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/AppPreferences;->upgrading:Z

    .line 404
    return-void
.end method

.method public final disableCustomWordsSynchronization()V
    .locals 2

    .prologue
    .line 236
    const-string v0, "enable_custom_words_synchronization_key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 237
    return-void
.end method

.method public final enableCustomWordsSynchronization()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "enable_custom_words_synchronization_key"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 233
    return-void
.end method

.method public final enableShowEditGestureTip(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 384
    const-string v0, "SHOW_EDIT_GESTURE_TIP"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 385
    return-void
.end method

.method public final getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/nuance/swype/input/AppPreferences;->accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    return-object v0
.end method

.method public final getAccountNotificationPending()Z
    .locals 2

    .prologue
    .line 457
    const-string v0, "account_notification_pending"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getAccountNotificationShowAt()J
    .locals 4

    .prologue
    .line 465
    const-string v0, "account_notification_at"

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swype/input/AppPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCustomWordsSynchronizationAvailability()Z
    .locals 2

    .prologue
    .line 228
    const-string v0, "enable_custom_words_synchronization_key"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getCustomWordsSynchronizationForceResync()Z
    .locals 2

    .prologue
    .line 241
    const-string v0, "custom_words_synchronization_force_resync_key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getCustomWordsSynchronizationServerWordsCount()I
    .locals 2

    .prologue
    .line 249
    const-string v0, "custom_words_synchronization_server_words_count_key"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getDefaultFullscreenHandwriting()Z
    .locals 1

    .prologue
    .line 429
    sget v0, Lcom/nuance/swype/input/R$bool;->fullscreen_cjk_hwr_default:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final getEmojiRecentList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 521
    const-string v0, "pref_emoji_recent_list"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHandwritingInputArea(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .prologue
    .line 421
    const-string v0, "handwriting_input_area"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getLastSmsCalllogScrapedTimeInMilliSecond(Ljava/lang/String;)J
    .locals 4
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "last_sms_calllog_scraped_time_millis"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swype/input/AppPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastUsedEmojiCategoryName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 533
    const-string v0, "pref_emoji_state_last_category_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLastUserEmojiPageNumber()I
    .locals 2

    .prologue
    .line 537
    const-string v0, "pref_emoji_state_last_page_number"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getMultitapMode(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z

    .prologue
    .line 201
    const-string v0, "multitap"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getStartupSequenceAcountEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    const-string v0, "STARTUP_SEQUENCE_ACOUNT_EMAIL"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStartupSequenceDownloadLanguageDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    const-string v0, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_DISPLAY_NAME"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStartupSequenceDownloadLanguageID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    const-string v0, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStartupSequenceDownloadLanguageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    const-string v0, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_NAME"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStartupSequenceInstalledLanguageLength()I
    .locals 2

    .prologue
    .line 356
    const-string v0, "STARTUP_SEQUENCE_INSTALLED_LANGUAGE_LENGTH"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getStartupSequenceSendDownloadingNotification()Z
    .locals 2

    .prologue
    .line 364
    const-string v0, "STARTUP_SEQUENCE_SEND_DOWNLOADING_NOTIFICATION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getStartupSequenceStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    const-string v0, "STARTUP_SEQUENCE_STATUS"

    const-string v1, "Eula"

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStartupUpgrade()Z
    .locals 2

    .prologue
    .line 478
    const-string v0, "startup_upgrade"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getUpdateAvailable()Z
    .locals 2

    .prologue
    .line 504
    const-string v0, "connect_update_available"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getUpdateFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 494
    const-string v0, "connect_update_file_path"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUpdateNotificationSent()Z
    .locals 2

    .prologue
    .line 513
    const-string v0, "connect_update_notification_sent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getUpgradeConnect()Z
    .locals 2

    .prologue
    .line 486
    const-string v0, "upgrade_connect"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isBilingualTipAlreadyShown()Z
    .locals 2

    .prologue
    .line 433
    const-string v0, "bilingual_tip"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isChinesePersonalDictionaryEnabled()Z
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/nuance/swype/input/R$bool;->chinese_personal_dictionary_default:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isEulaAccepted()Z
    .locals 2

    .prologue
    .line 267
    const-string v0, "eula_accepted"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isJapanesePersonalDictionaryEnabled()Z
    .locals 1

    .prologue
    .line 217
    sget v0, Lcom/nuance/swype/input/R$bool;->japanese_personal_dictionary_default:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isKoreanPersonalDictionaryEnabled()Z
    .locals 1

    .prologue
    .line 213
    sget v0, Lcom/nuance/swype/input/R$bool;->korean_personal_dictionary_default:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isLegacyTosAccepted()Z
    .locals 2

    .prologue
    .line 275
    const-string v0, "tos_accepted"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isPasswordTipAlreadyShown()Z
    .locals 2

    .prologue
    .line 368
    const-string v0, "PASSWORD_TIP_SHOWN"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isPersionalizationEnable()Z
    .locals 1

    .prologue
    .line 388
    sget v0, Lcom/nuance/swype/input/R$bool;->enable_sns_persionalization:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isRecentLanguageTipAlreadyShown()Z
    .locals 2

    .prologue
    .line 441
    const-string v0, "recent_language_tip"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isSetVibrationDurationAllowed()Z
    .locals 1

    .prologue
    .line 312
    sget v0, Lcom/nuance/swype/input/R$bool;->allow_set_vibration_duration:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isShowAskBeforeAddEnabled()Z
    .locals 1

    .prologue
    .line 221
    sget v0, Lcom/nuance/swype/input/R$bool;->show_ask_before_add:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isShowEditGestureTip()Z
    .locals 2

    .prologue
    .line 380
    const-string v0, "SHOW_EDIT_GESTURE_TIP"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isShowStartupRegistration()Z
    .locals 1

    .prologue
    .line 296
    sget v0, Lcom/nuance/swype/input/R$bool;->show_registration_startup:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isShowStartupTip()Z
    .locals 1

    .prologue
    .line 283
    sget v0, Lcom/nuance/swype/input/R$bool;->show_startup_tip:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isStartupRegistrationAlreadyShown()Z
    .locals 2

    .prologue
    .line 304
    const-string v0, "STARTUP_REGISTRATION_ALREADY_SHOWN"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isStartupTipAlreadyShown()Z
    .locals 2

    .prologue
    .line 287
    const-string v0, "SHOW_STARTUP_TIP_ALREADY_SHOWN"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isUpgrade()Z
    .locals 3

    .prologue
    .line 392
    const-string v1, "upgrade_swib"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "oldSwib":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 395
    iget-boolean v1, p0, Lcom/nuance/swype/input/AppPreferences;->upgrading:Z

    .line 397
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AppPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getSwib()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/nuance/swype/input/AppPreferences;->upgrading:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final moveFromPrevious(Lcom/nuance/swype/input/UserPreferences;)V
    .locals 7
    .param p1, "userPrefs"    # Lcom/nuance/swype/input/UserPreferences;

    .prologue
    const/4 v5, 0x0

    .line 142
    const-string v4, "tos_accepted"

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "tos_accepted"

    invoke-virtual {p1, v4}, Lcom/nuance/swype/input/UserPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/nuance/swype/input/AppPreferences;->upgrading:Z

    .line 145
    iget-boolean v4, p0, Lcom/nuance/swype/input/AppPreferences;->upgrading:Z

    if-nez v4, :cond_1

    const-string v4, "upgrade_swib"

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "upgrade_swib"

    invoke-virtual {p1, v4}, Lcom/nuance/swype/input/UserPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 147
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 148
    .local v3, "stringPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "upgrade_swib"

    const-string v6, ""

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v4, "STARTUP_SEQUENCE_STATUS"

    const-string v6, "Eula"

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v4, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_NAME"

    const-string v6, ""

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v4, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_DISPLAY_NAME"

    const-string v6, ""

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v4, "STARTUP_SEQUENCE_ACOUNT_EMAIL"

    const-string v6, ""

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v4, "default_language"

    const-string v6, ""

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v4, "builtin_languages"

    const-string v6, ""

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v4, "available_languages"

    const-string v6, ""

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v4, "supported_languages"

    const-string v6, ""

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 160
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "%x"

    invoke-virtual {p1, v2, v4, v6}, Lcom/nuance/swype/input/UserPreferences;->getUpgradedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_2
    invoke-virtual {p1, v2}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "stringPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    move v4, v5

    .line 142
    goto/16 :goto_0

    .line 165
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "stringPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v0, "booleanPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v4, "eula_accepted"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v4, "tos_accepted"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v4, "SHOW_STARTUP_TIP_ALREADY_SHOWN"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v4, "STARTUP_REGISTRATION_ALREADY_SHOWN"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v4, "PASSWORD_TIP_SHOWN"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v4, "SHOW_EDIT_GESTURE_TIP"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v4, "STARTUP_SEQUENCE_SEND_DOWNLOADING_NOTIFICATION"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 175
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 176
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p1, v2, v4}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 178
    :cond_5
    invoke-virtual {p1, v2}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    goto :goto_2

    .line 182
    .end local v2    # "key":Ljava/lang/String;
    :cond_6
    const-string v4, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID"

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 183
    const-string v4, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID"

    const-string v6, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID"

    invoke-virtual {p1, v6, v5}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_7
    const-string v4, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID"

    invoke-virtual {p1, v4}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 187
    const-string v4, "current_language"

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 188
    const-string v4, "current_language"

    const-string v6, "current_language"

    invoke-virtual {p1, v6, v5}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_8
    const-string v4, "current_language"

    invoke-virtual {p1, v4}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 193
    const-string v4, "STARTUP_SEQUENCE_INSTALLED_LANGUAGE_LENGTH"

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 194
    const-string v4, "STARTUP_SEQUENCE_INSTALLED_LANGUAGE_LENGTH"

    const-string v6, "STARTUP_SEQUENCE_INSTALLED_LANGUAGE_LENGTH"

    invoke-virtual {p1, v6, v5}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/nuance/swype/input/AppPreferences;->setInt(Ljava/lang/String;I)V

    .line 196
    :cond_9
    const-string v4, "STARTUP_SEQUENCE_INSTALLED_LANGUAGE_LENGTH"

    invoke-virtual {p1, v4}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 198
    .end local v0    # "booleanPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "stringPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    return-void
.end method

.method public final removeLegacyTosAccepted()V
    .locals 1

    .prologue
    .line 279
    const-string v0, "tos_accepted"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->remove(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public final resetAccessibilityInfo(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 453
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-direct {v0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AppPreferences;->accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    .line 454
    return-void
.end method

.method public final setAccountNotificationPending(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 461
    const-string v0, "account_notification_pending"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 462
    return-void
.end method

.method public final setAccountNotificationShowAt(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 469
    const-string v0, "account_notification_at"

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/swype/input/AppPreferences;->setLong(Ljava/lang/String;J)V

    .line 470
    return-void
.end method

.method public final setBilingualTipShown()V
    .locals 2

    .prologue
    .line 437
    const-string v0, "bilingual_tip"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 438
    return-void
.end method

.method public final setCustomWordsSynchronizationForceResync(Z)V
    .locals 1
    .param p1, "forceResync"    # Z

    .prologue
    .line 245
    const-string v0, "custom_words_synchronization_force_resync_key"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 246
    return-void
.end method

.method public final setCustomWordsSynchronizationServerWordsCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 253
    const-string v0, "custom_words_synchronization_server_words_count_key"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setInt(Ljava/lang/String;I)V

    .line 254
    return-void
.end method

.method public final setEmojiRecentList(Ljava/lang/String;)V
    .locals 1
    .param p1, "recentList"    # Ljava/lang/String;

    .prologue
    .line 517
    const-string v0, "pref_emoji_recent_list"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public final setEulaAccepted()V
    .locals 2

    .prologue
    .line 271
    const-string v0, "eula_accepted"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 272
    return-void
.end method

.method public final setHandwritingInputArea(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 425
    const-string v0, "handwriting_input_area"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setInt(Ljava/lang/String;I)V

    .line 426
    return-void
.end method

.method public final setLastSmsCalllogScrapedTimeMilliSecond(Ljava/lang/String;J)V
    .locals 2
    .param p1, "langName"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "last_sms_calllog_scraped_time_millis"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/nuance/swype/input/AppPreferences;->setLong(Ljava/lang/String;J)V

    .line 414
    return-void
.end method

.method public final setLastUsedEmojiCategoryName(Ljava/lang/String;)V
    .locals 1
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 525
    const-string v0, "pref_emoji_state_last_category_name"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public final setLastUsedEmojiPageNumber(I)V
    .locals 1
    .param p1, "pageNumber"    # I

    .prologue
    .line 529
    const-string v0, "pref_emoji_state_last_page_number"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setInt(Ljava/lang/String;I)V

    .line 530
    return-void
.end method

.method public final setMultitapMode(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 205
    const-string v0, "multitap"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 206
    return-void
.end method

.method public final setPassWordTipShown()V
    .locals 2

    .prologue
    .line 372
    const-string v0, "PASSWORD_TIP_SHOWN"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 373
    return-void
.end method

.method public final setRecentLanguageTipShown()V
    .locals 2

    .prologue
    .line 445
    const-string v0, "recent_language_tip"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 446
    return-void
.end method

.method public final setShowHowToUseHandWritingTip(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 263
    const-string v0, "show_how_to_use_hwr"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 264
    return-void
.end method

.method public final setStartupRegistrationShown()V
    .locals 2

    .prologue
    .line 300
    const-string v0, "STARTUP_REGISTRATION_ALREADY_SHOWN"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 301
    return-void
.end method

.method public final setStartupSequenceAcountEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 328
    const-string v0, "STARTUP_SEQUENCE_ACOUNT_EMAIL"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public final setStartupSequenceDownloadLanguageDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 336
    const-string v0, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_DISPLAY_NAME"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public final setStartupSequenceDownloadLanguageID(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 344
    const-string v0, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public final setStartupSequenceDownloadLanguageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 320
    const-string v0, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_NAME"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public final setStartupSequenceInstalledLanguageLength(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 352
    const-string v0, "STARTUP_SEQUENCE_INSTALLED_LANGUAGE_LENGTH"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setInt(Ljava/lang/String;I)V

    .line 353
    return-void
.end method

.method public final setStartupSequenceSendDownloadingNotification(Z)V
    .locals 1
    .param p1, "sendNotification"    # Z

    .prologue
    .line 360
    const-string v0, "STARTUP_SEQUENCE_SEND_DOWNLOADING_NOTIFICATION"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 361
    return-void
.end method

.method public final setStartupSequenceStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 308
    const-string v0, "STARTUP_SEQUENCE_STATUS"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public final setStartupTipShown()V
    .locals 2

    .prologue
    .line 291
    const-string v0, "SHOW_STARTUP_TIP_ALREADY_SHOWN"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 292
    invoke-virtual {p0}, Lcom/nuance/swype/input/AppPreferences;->ackUpgrade()V

    .line 293
    return-void
.end method

.method public final setStartupUpgrade(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 474
    const-string v0, "startup_upgrade"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 475
    return-void
.end method

.method public final setUpdateAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 500
    const-string v0, "connect_update_available"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 501
    return-void
.end method

.method public final setUpdateFilePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 490
    const-string v0, "connect_update_file_path"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public final setUpdateNotificationSent(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 509
    const-string v0, "connect_update_notification_sent"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 510
    return-void
.end method

.method public final setUpgradeConnect(Z)V
    .locals 1
    .param p1, "upgrade"    # Z

    .prologue
    .line 482
    const-string v0, "upgrade_connect"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 483
    return-void
.end method

.method public final setshowToolTip(Z)V
    .locals 1
    .param p1, "val"    # Z

    .prologue
    .line 449
    const-string v0, "show_tips"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 450
    return-void
.end method

.method public final showHowToUseHandWritingTip()Z
    .locals 2

    .prologue
    .line 259
    const-string v0, "show_how_to_use_hwr"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final showToolTip()Z
    .locals 2

    .prologue
    .line 376
    const-string v0, "show_tips"

    sget v1, Lcom/nuance/swype/input/R$bool;->show_tips_default:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
