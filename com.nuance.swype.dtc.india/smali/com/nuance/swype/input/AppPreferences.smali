.class public final Lcom/nuance/swype/input/AppPreferences;
.super Lcom/nuance/swype/input/SwypePreferences;
.source "AppPreferences.java"


# static fields
.field private static final ACCOUNT_NOTIFICATION_PENDING:Ljava/lang/String; = "account_notification_pending"

.field private static final ACCOUNT_NOTIFICATION_SHOW_AT:Ljava/lang/String; = "account_notification_at"

.field public static final ALL_CATEGORYDBS:Ljava/lang/String; = "all_categorydbs"

.field public static final APP_PREFS_FILE:Ljava/lang/String; = "app_prefs"

.field public static final AVAILABLE_CATEGORYDBS:Ljava/lang/String; = "available_categorydbs"

.field public static final AVAILABLE_LANGUAGES:Ljava/lang/String; = "available_languages"

.field private static final BILINGUAL_TIP_SHOWN:Ljava/lang/String; = "bilingual_tip"

.field public static final BUILTIN_LANGUAGES:Ljava/lang/String; = "builtin_languages"

.field public static final CHINESE_CLOUD_ALL:Ljava/lang/String; = "chinese_cloud_all"

.field public static final CHINESE_CLOUD_DISABLED:Ljava/lang/String; = "chinese_cloud_diabled"

.field private static final CHINESE_CLOUD_NETWORK_SETTING:Ljava/lang/String; = "chinese_cloud_network_setting"

.field public static final CHINESE_CLOUD_WIFI_ONLY:Ljava/lang/String; = "chinese_cloud_wifi_only"

.field public static final CJK_FULL_SCREEN_ENABLED:Ljava/lang/String; = "fullscreen.enabled."

.field public static final CONNECT_ENABLED:Ljava/lang/String; = "enable_connect"

.field public static final CONNECT_PERMITTED:Ljava/lang/String; = "connect_permitted"

.field private static final CONNECT_UPDATE_AVAILABLE:Ljava/lang/String; = "connect_update_available"

.field private static final CONNECT_UPDATE_FILE_PATH:Ljava/lang/String; = "connect_update_file_path"

.field private static final CONNECT_UPDATE_NOTIFICATION_SENT:Ljava/lang/String; = "connect_update_notification_sent"

.field private static final CUSTOM_WORDS_SYNCHRONIZATION_FORCE_RESYNC_KEY:Ljava/lang/String; = "custom_words_synchronization_force_resync_key"

.field private static final CUSTOM_WORDS_SYNCHRONIZATION_SERVER_WORDS_COUNT_KEY:Ljava/lang/String; = "custom_words_synchronization_server_words_count_key"

.field public static final DEFAULT_LANGUAGE:Ljava/lang/String; = "default_language"

.field public static final DICTATION_LANGUAGE:Ljava/lang/String; = "dictation_language"

.field public static final ENABLED_CATEGORYDBS:Ljava/lang/String; = "enabled_categorydbs"

.field private static final ENABLE_CUSTOM_WORDS_SYNCHRONIZATION_KEY:Ljava/lang/String; = "enable_custom_words_synchronization_key"

.field public static final LANGUAGE_MODEL_KEY:Ljava/lang/String; = "language_model"

.field public static final LANGUAGE_MODEL_SETTING_DEFAULT:Z = true

.field private static final LAST_SMS_CALLLOG_SCRAPED_TIME_IN_MILLI_SECOND:Ljava/lang/String; = "last_sms_calllog_scraped_time_millis"

.field private static final NEW_THEMES_ANIMATION_ALREADY_SHOW:Ljava/lang/String; = "NEW_THEMES_ANIMATION_ARLEADY_SHOW"

.field private static final PASSWORD_TIP_SHOWN:Ljava/lang/String; = "PASSWORD_TIP_SHOWN"

.field public static final PREF_CHINESE_SYMBOL_RECENT_LIST:Ljava/lang/String; = "pref_chinese_symbol_recent_list"

.field private static final PREF_CONTACTS_PERIMSSION_PRE_NAG:Ljava/lang/String; = "pref_contacts_permission_pre_nag"

.field private static final PREF_CURRENT_BUILD_SWIB:Ljava/lang/String; = "pref_current_build_swib"

.field private static final PREF_EMOJI_RECENT_LIST:Ljava/lang/String; = "pref_emoji_recent_list"

.field private static final PREF_EMOJI_STATE_LAST_CATEGORY_ITEM:Ljava/lang/String; = "pref_emoji_state_last_category_item"

.field private static final PREF_EMOJI_STATE_LAST_CATEGORY_NAME:Ljava/lang/String; = "pref_emoji_state_last_category_name"

.field private static final PREF_HANDWRITING_INPUT_AREA:Ljava/lang/String; = "handwriting_input_area"

.field public static final PREF_HINDI_INPUT_MODE:Ljava/lang/String; = "pref_hindi_input_mode"

.field public static final PREF_ON_INSTALL_FIRST_MESSAGE:Ljava/lang/String; = "pref_on_install_first_message"

.field private static final PREF_SHOW_TIPS:Ljava/lang/String; = "show_tips"

.field private static final PREF_THEMES_AVAILABLE_IN_STORE:Ljava/lang/String; = "pref_themes_available_in_store"

.field private static final PREF_USER_VISITED_STORE:Ljava/lang/String; = "pref_user_visited_store"

.field private static final RECENT_EMOJIS_ETHNIC_SUPPORTED_LIST:Ljava/lang/String; = "pref_emoji_ethnic_supported_list"

.field private static final RECENT_LANGUAGE_TIP_SHOWN:Ljava/lang/String; = "recent_language_tip"

.field private static final SHOW_EDIT_GESTURE_TIP:Ljava/lang/String; = "SHOW_EDIT_GESTURE_TIP"

.field private static final SHOW_HOW_TO_USE_HWR:Ljava/lang/String; = "show_how_to_use_hwr"

.field private static final STARTUP_SEQUENCE_ACCOUNT_EMAIL:Ljava/lang/String; = "STARTUP_SEQUENCE_ACOUNT_EMAIL"

.field private static final STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_DISPLAY_NAME:Ljava/lang/String; = "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_DISPLAY_NAME"

.field private static final STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID:Ljava/lang/String; = "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID"

.field public static final SUPPORTED_LANGUAGES:Ljava/lang/String; = "supported_languages"

.field private static final THIRD_PARTY_LICENSE_INVALID_MESSAGE_TIMES:Ljava/lang/String; = "third_party_license_invalid_message_times"

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
    const-string/jumbo v0, "app_prefs"

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
    .line 325
    const-string/jumbo v0, "upgrade_swib"

    invoke-virtual {p0}, Lcom/nuance/swype/input/AppPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getSwib()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/AppPreferences;->upgrading:Z

    .line 327
    return-void
.end method

.method public final disableCustomWordsSynchronization()V
    .locals 2

    .prologue
    .line 220
    const-string/jumbo v0, "enable_custom_words_synchronization_key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 221
    return-void
.end method

.method public final enableCustomWordsSynchronization()V
    .locals 2

    .prologue
    .line 216
    const-string/jumbo v0, "enable_custom_words_synchronization_key"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 217
    return-void
.end method

.method public final enableShowEditGestureTip(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 307
    const-string/jumbo v0, "SHOW_EDIT_GESTURE_TIP"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 308
    return-void
.end method

.method public final getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/nuance/swype/input/AppPreferences;->accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    return-object v0
.end method

.method public final getAccountNotificationPending()Z
    .locals 2

    .prologue
    .line 388
    const-string/jumbo v0, "account_notification_pending"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getAccountNotificationShowAt()J
    .locals 4

    .prologue
    .line 396
    const-string/jumbo v0, "account_notification_at"

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swype/input/AppPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getChineseCloudNetworkOption()Ljava/lang/String;
    .locals 2

    .prologue
    .line 443
    const-string/jumbo v0, "chinese_cloud_network_setting"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getChineseSymbolRecentList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 459
    const-string/jumbo v0, "pref_chinese_symbol_recent_list"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentSWIB()Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    const-string/jumbo v0, "pref_current_build_swib"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomWordsSynchronizationAvailability()Z
    .locals 2

    .prologue
    .line 212
    const-string/jumbo v0, "enable_custom_words_synchronization_key"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getCustomWordsSynchronizationForceResync()Z
    .locals 2

    .prologue
    .line 225
    const-string/jumbo v0, "custom_words_synchronization_force_resync_key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getCustomWordsSynchronizationServerWordsCount()I
    .locals 2

    .prologue
    .line 233
    const-string/jumbo v0, "custom_words_synchronization_server_words_count_key"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getDefaultFullscreenHandwriting()Z
    .locals 1

    .prologue
    .line 352
    sget v0, Lcom/nuance/swype/input/R$bool;->fullscreen_cjk_hwr_default:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final getEmojiCategoryaRecentList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 534
    const-string/jumbo v0, "pref_emoji_ethnic_supported_list"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEmojiRecentList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 451
    const-string/jumbo v0, "pref_emoji_recent_list"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHandwritingInputArea(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .prologue
    .line 344
    const-string/jumbo v0, "handwriting_input_area"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getLastSmsCalllogScrapedTimeInMilliSecond(Ljava/lang/String;)J
    .locals 4
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "last_sms_calllog_scraped_time_millis"

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

.method public final getLastUsedEmojiCategoryItem()I
    .locals 2

    .prologue
    .line 475
    const-string/jumbo v0, "pref_emoji_state_last_category_item"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getLastUsedEmojiCategoryName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 471
    const-string/jumbo v0, "pref_emoji_state_last_category_name"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMultitapMode(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z

    .prologue
    .line 185
    const-string/jumbo v0, "multitap"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getOnInstallFirstMessage()Z
    .locals 2

    .prologue
    .line 508
    const-string/jumbo v0, "pref_on_install_first_message"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getStartupSequenceAccountEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    const-string/jumbo v0, "STARTUP_SEQUENCE_ACOUNT_EMAIL"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStartupSequenceDownloadLanguageDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    const-string/jumbo v0, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_DISPLAY_NAME"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStartupSequenceDownloadLanguageID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    const-string/jumbo v0, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getThirdPartyLicenseMessageTimes()I
    .locals 2

    .prologue
    .line 380
    const-string/jumbo v0, "third_party_license_invalid_message_times"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getUpdateAvailable()Z
    .locals 2

    .prologue
    .line 426
    const-string/jumbo v0, "connect_update_available"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getUpdateFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    const-string/jumbo v0, "connect_update_file_path"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUpdateNotificationSent()Z
    .locals 2

    .prologue
    .line 435
    const-string/jumbo v0, "connect_update_notification_sent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getUpgradeConnect()Z
    .locals 2

    .prologue
    .line 408
    const-string/jumbo v0, "upgrade_connect"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isBackupAndSyncSupported()Z
    .locals 1

    .prologue
    .line 259
    sget v0, Lcom/nuance/swype/input/R$bool;->enable_backup_and_sync:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isBilingualTipAlreadyShown()Z
    .locals 2

    .prologue
    .line 356
    const-string/jumbo v0, "bilingual_tip"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isChinesePersonalDictionaryEnabled()Z
    .locals 1

    .prologue
    .line 193
    sget v0, Lcom/nuance/swype/input/R$bool;->chinese_personal_dictionary_default:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isContactsPermissionPreNagShown()Z
    .locals 2

    .prologue
    .line 496
    const-string/jumbo v0, "pref_contacts_permission_pre_nag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isJapanesePersonalDictionaryEnabled()Z
    .locals 1

    .prologue
    .line 201
    sget v0, Lcom/nuance/swype/input/R$bool;->japanese_personal_dictionary_default:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isKoreanPersonalDictionaryEnabled()Z
    .locals 1

    .prologue
    .line 197
    sget v0, Lcom/nuance/swype/input/R$bool;->korean_personal_dictionary_default:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isLoadExternalLDBEnabled()Z
    .locals 1

    .prologue
    .line 527
    sget v0, Lcom/nuance/swype/input/R$bool;->enable_external_ldb_path:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isNewThemeAvailableInStore()Z
    .locals 2

    .prologue
    .line 512
    const-string/jumbo v0, "pref_themes_available_in_store"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isNewThemesAnimationAlreadyShown()Z
    .locals 2

    .prologue
    .line 488
    const-string/jumbo v0, "NEW_THEMES_ANIMATION_ARLEADY_SHOW"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isPasswordTipAlreadyShown()Z
    .locals 2

    .prologue
    .line 291
    const-string/jumbo v0, "PASSWORD_TIP_SHOWN"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isPersonalizationEnable()Z
    .locals 1

    .prologue
    .line 311
    sget v0, Lcom/nuance/swype/input/R$bool;->enable_sns_persionalization:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isRecentLanguageTipAlreadyShown()Z
    .locals 2

    .prologue
    .line 364
    const-string/jumbo v0, "recent_language_tip"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isSetVibrationDurationAllowed()Z
    .locals 1

    .prologue
    .line 263
    sget v0, Lcom/nuance/swype/input/R$bool;->allow_set_vibration_duration:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isShowAskBeforeAddEnabled()Z
    .locals 1

    .prologue
    .line 205
    sget v0, Lcom/nuance/swype/input/R$bool;->show_ask_before_add:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isShowEditGestureTip()Z
    .locals 2

    .prologue
    .line 303
    const-string/jumbo v0, "SHOW_EDIT_GESTURE_TIP"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isUpgrade()Z
    .locals 3

    .prologue
    .line 315
    const-string/jumbo v1, "upgrade_swib"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "oldSwib":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 318
    iget-boolean v1, p0, Lcom/nuance/swype/input/AppPreferences;->upgrading:Z

    .line 320
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

.method public final isUserVisitedStore()Z
    .locals 2

    .prologue
    .line 519
    const-string/jumbo v0, "pref_user_visited_store"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method final moveFromPrevious(Lcom/nuance/swype/input/UserPreferences;)V
    .locals 7
    .param p1, "userPrefs"    # Lcom/nuance/swype/input/UserPreferences;

    .prologue
    const/4 v6, 0x0

    .line 142
    iget-boolean v3, p0, Lcom/nuance/swype/input/AppPreferences;->upgrading:Z

    if-nez v3, :cond_0

    const-string/jumbo v3, "upgrade_swib"

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "upgrade_swib"

    invoke-virtual {p1, v3}, Lcom/nuance/swype/input/UserPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 144
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v2, "stringPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "upgrade_swib"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v3, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_DISPLAY_NAME"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v3, "STARTUP_SEQUENCE_ACOUNT_EMAIL"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v3, "default_language"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v3, "builtin_languages"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v3, "available_languages"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v3, "supported_languages"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v5, "%x"

    invoke-virtual {p1, v1, v3, v5}, Lcom/nuance/swype/input/UserPreferences;->getUpgradedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    invoke-virtual {p1, v1}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v0, "booleanPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string/jumbo v3, "PASSWORD_TIP_SHOWN"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v3, "SHOW_EDIT_GESTURE_TIP"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 166
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 168
    :cond_3
    invoke-virtual {p1, v1}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID"

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 173
    const-string/jumbo v3, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID"

    const-string/jumbo v4, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID"

    invoke-virtual {p1, v4, v6}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_5
    const-string/jumbo v3, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID"

    invoke-virtual {p1, v3}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v3, "current_language"

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AppPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 178
    const-string/jumbo v3, "current_language"

    const-string/jumbo v4, "current_language"

    invoke-virtual {p1, v4, v6}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_6
    const-string/jumbo v3, "current_language"

    invoke-virtual {p1, v3}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 182
    .end local v0    # "booleanPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2    # "stringPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    return-void
.end method

.method public final resetAccessibilityInfo(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-direct {v0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AppPreferences;->accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    .line 377
    return-void
.end method

.method public final setAccountNotificationPending(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 392
    const-string/jumbo v0, "account_notification_pending"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 393
    return-void
.end method

.method public final setAccountNotificationShowAt(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 400
    const-string/jumbo v0, "account_notification_at"

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/swype/input/AppPreferences;->setLong(Ljava/lang/String;J)V

    .line 401
    return-void
.end method

.method public final setBilingualTipShown()V
    .locals 2

    .prologue
    .line 360
    const-string/jumbo v0, "bilingual_tip"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 361
    return-void
.end method

.method public final setChineseCloudNetworkOption(Ljava/lang/String;)V
    .locals 1
    .param p1, "opt"    # Ljava/lang/String;

    .prologue
    .line 439
    const-string/jumbo v0, "chinese_cloud_network_setting"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public final setChineseSymbolRecentList(Ljava/lang/String;)V
    .locals 1
    .param p1, "recentList"    # Ljava/lang/String;

    .prologue
    .line 455
    const-string/jumbo v0, "pref_chinese_symbol_recent_list"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public final setContactsPermissionPreNagShown()V
    .locals 2

    .prologue
    .line 500
    const-string/jumbo v0, "pref_contacts_permission_pre_nag"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 501
    return-void
.end method

.method public final setCurrentSWIB(Ljava/lang/String;)V
    .locals 1
    .param p1, "swib"    # Ljava/lang/String;

    .prologue
    .line 479
    const-string/jumbo v0, "pref_current_build_swib"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public final setCustomWordsSynchronizationForceResync(Z)V
    .locals 1
    .param p1, "forceResync"    # Z

    .prologue
    .line 229
    const-string/jumbo v0, "custom_words_synchronization_force_resync_key"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 230
    return-void
.end method

.method public final setCustomWordsSynchronizationServerWordsCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 237
    const-string/jumbo v0, "custom_words_synchronization_server_words_count_key"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setInt(Ljava/lang/String;I)V

    .line 238
    return-void
.end method

.method public final setEmojiRecentCategoryList(Ljava/lang/String;)V
    .locals 1
    .param p1, "recentList"    # Ljava/lang/String;

    .prologue
    .line 530
    const-string/jumbo v0, "pref_emoji_ethnic_supported_list"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public final setEmojiRecentList(Ljava/lang/String;)V
    .locals 1
    .param p1, "recentList"    # Ljava/lang/String;

    .prologue
    .line 447
    const-string/jumbo v0, "pref_emoji_recent_list"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public final setHandwritingInputArea(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 348
    const-string/jumbo v0, "handwriting_input_area"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setInt(Ljava/lang/String;I)V

    .line 349
    return-void
.end method

.method public final setLastSmsCalllogScrapedTimeMilliSecond(Ljava/lang/String;J)V
    .locals 2
    .param p1, "langName"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "last_sms_calllog_scraped_time_millis"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/nuance/swype/input/AppPreferences;->setLong(Ljava/lang/String;J)V

    .line 337
    return-void
.end method

.method public final setLastUsedEmojiCategoryItem(I)V
    .locals 1
    .param p1, "pageNumber"    # I

    .prologue
    .line 467
    const-string/jumbo v0, "pref_emoji_state_last_category_item"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setInt(Ljava/lang/String;I)V

    .line 468
    return-void
.end method

.method public final setLastUsedEmojiCategoryName(Ljava/lang/String;)V
    .locals 1
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 463
    const-string/jumbo v0, "pref_emoji_state_last_category_name"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public final setMultitapMode(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 189
    const-string/jumbo v0, "multitap"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 190
    return-void
.end method

.method public final setNewThemeAvailableInStore(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 516
    const-string/jumbo v0, "pref_themes_available_in_store"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 517
    return-void
.end method

.method public final setNewThemesAnimationAlreadyShow()V
    .locals 2

    .prologue
    .line 492
    const-string/jumbo v0, "NEW_THEMES_ANIMATION_ARLEADY_SHOW"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 493
    return-void
.end method

.method public final setOnInstallFirstMessage(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 504
    const-string/jumbo v0, "pref_on_install_first_message"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 505
    return-void
.end method

.method public final setPassWordTipShown()V
    .locals 2

    .prologue
    .line 295
    const-string/jumbo v0, "PASSWORD_TIP_SHOWN"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 296
    return-void
.end method

.method public final setRecentLanguageTipShown()V
    .locals 2

    .prologue
    .line 368
    const-string/jumbo v0, "recent_language_tip"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 369
    return-void
.end method

.method public final setShowHowToUseHandWritingTip(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 247
    const-string/jumbo v0, "show_how_to_use_hwr"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 248
    return-void
.end method

.method public final setStartupSequenceAccountEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 267
    const-string/jumbo v0, "STARTUP_SEQUENCE_ACOUNT_EMAIL"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public final setStartupSequenceDownloadLanguageDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string/jumbo v0, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_DISPLAY_NAME"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public final setStartupSequenceDownloadLanguageID(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 283
    const-string/jumbo v0, "STARTUP_SEQUENCE_DOWNLOAD_LANGUAGE_ID"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public final setThirdPartyLicenseMessageTimes(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 384
    const-string/jumbo v0, "third_party_license_invalid_message_times"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setInt(Ljava/lang/String;I)V

    .line 385
    return-void
.end method

.method public final setUpdateAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 422
    const-string/jumbo v0, "connect_update_available"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 423
    return-void
.end method

.method public final setUpdateFilePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 412
    const-string/jumbo v0, "connect_update_file_path"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public final setUpdateNotificationSent(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 431
    const-string/jumbo v0, "connect_update_notification_sent"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 432
    return-void
.end method

.method public final setUpgradeConnect(Z)V
    .locals 1
    .param p1, "upgrade"    # Z

    .prologue
    .line 404
    const-string/jumbo v0, "upgrade_connect"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 405
    return-void
.end method

.method public final setUserVisitedStore(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 523
    const-string/jumbo v0, "pref_user_visited_store"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 524
    return-void
.end method

.method public final setshowToolTip(Z)V
    .locals 1
    .param p1, "val"    # Z

    .prologue
    .line 372
    const-string/jumbo v0, "show_tips"

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 373
    return-void
.end method

.method public final showHowToUseHandWritingTip()Z
    .locals 2

    .prologue
    .line 243
    const-string/jumbo v0, "show_how_to_use_hwr"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final showStartupRegistration()Z
    .locals 1

    .prologue
    .line 255
    sget v0, Lcom/nuance/swype/input/R$bool;->show_registration_startup:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final showSwypeWelcomeStartupScreens()Z
    .locals 1

    .prologue
    .line 251
    sget v0, Lcom/nuance/swype/input/R$bool;->show_startup_tip:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final showToolTip()Z
    .locals 2

    .prologue
    .line 299
    const-string/jumbo v0, "show_tips"

    sget v1, Lcom/nuance/swype/input/R$bool;->show_tips_default:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
