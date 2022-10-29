.class final Lio/fabric/sdk/android/services/settings/DefaultSettingsJsonTransform;
.super Ljava/lang/Object;
.source "DefaultSettingsJsonTransform.java"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/SettingsJsonTransform;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildFromJson(Lio/fabric/sdk/android/services/common/CurrentTimeProvider;Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/SettingsData;
    .registers 23
    .param p1, "currentTimeProvider"    # Lio/fabric/sdk/android/services/common/CurrentTimeProvider;
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    const-string/jumbo v6, "settings_version"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    .line 21
    .local v16, "settingsVersion":I
    const-string/jumbo v6, "cache_duration"

    const/16 v7, 0xe10

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 24
    .local v17, "cacheDuration":I
    const-string/jumbo v6, "app"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 1069
    const-string/jumbo v6, "identifier"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1070
    const-string/jumbo v6, "status"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1071
    const-string/jumbo v6, "url"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1072
    const-string/jumbo v6, "reports_url"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1073
    const-string/jumbo v7, "update_required"

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1077
    const/4 v8, 0x0

    .line 1080
    const-string/jumbo v11, "icon"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7d

    const-string/jumbo v11, "icon"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "hash"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7d

    .line 1082
    const-string/jumbo v11, "icon"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 1089
    const-string/jumbo v11, "hash"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1090
    const-string/jumbo v12, "width"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 1091
    const-string/jumbo v14, "height"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1093
    new-instance v8, Lio/fabric/sdk/android/services/settings/AppIconSettingsData;

    invoke-direct {v8, v11, v12, v10}, Lio/fabric/sdk/android/services/settings/AppIconSettingsData;-><init>(Ljava/lang/String;II)V

    .line 1085
    :cond_7d
    new-instance v2, Lio/fabric/sdk/android/services/settings/AppSettingsData;

    invoke-direct/range {v2 .. v8}, Lio/fabric/sdk/android/services/settings/AppSettingsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/fabric/sdk/android/services/settings/AppIconSettingsData;)V

    .line 26
    .local v2, "appData":Lio/fabric/sdk/android/services/settings/AppSettingsData;
    const-string/jumbo v6, "session"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 1135
    const-string/jumbo v6, "log_buffer_size"

    const v7, 0xfa00

    invoke-virtual {v10, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 1138
    const-string/jumbo v6, "max_chained_exception_depth"

    const/16 v7, 0x8

    invoke-virtual {v10, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 1141
    const-string/jumbo v6, "max_custom_exception_events"

    const/16 v7, 0x40

    invoke-virtual {v10, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 1144
    const-string/jumbo v7, "max_custom_key_value_pairs"

    const/16 v11, 0x40

    invoke-virtual {v10, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 1147
    const-string/jumbo v11, "identifier_mask"

    const/16 v12, 0xff

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 1150
    const-string/jumbo v11, "send_session_without_crash"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1154
    new-instance v3, Lio/fabric/sdk/android/services/settings/SessionSettingsData;

    invoke-direct/range {v3 .. v9}, Lio/fabric/sdk/android/services/settings/SessionSettingsData;-><init>(IIIIIZ)V

    .line 28
    .local v3, "settingsData":Lio/fabric/sdk/android/services/settings/SessionSettingsData;
    const-string/jumbo v6, "prompt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 1160
    const-string/jumbo v6, "title"

    const-string/jumbo v7, "Send Crash Report?"

    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1163
    const-string/jumbo v6, "message"

    const-string/jumbo v7, "Looks like we crashed! Please help us fix the problem by sending a crash report."

    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1166
    const-string/jumbo v7, "send_button_title"

    const-string/jumbo v10, "Send"

    invoke-virtual {v11, v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1169
    const-string/jumbo v10, "show_cancel_button"

    const/4 v12, 0x1

    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1172
    const-string/jumbo v10, "cancel_button_title"

    const-string/jumbo v12, "Don\'t Send"

    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1175
    const-string/jumbo v10, "show_always_send_button"

    const/4 v12, 0x1

    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 1178
    const-string/jumbo v12, "always_send_button_title"

    const-string/jumbo v14, "Always Send"

    invoke-virtual {v11, v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1182
    new-instance v4, Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    invoke-direct/range {v4 .. v11}, Lio/fabric/sdk/android/services/settings/PromptSettingsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 30
    .local v4, "promptData":Lio/fabric/sdk/android/services/settings/PromptSettingsData;
    const-string/jumbo v6, "features"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2097
    const-string/jumbo v7, "prompt_enabled"

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 2100
    const-string/jumbo v10, "collect_logged_exceptions"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 2103
    const-string/jumbo v11, "collect_reports"

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 2106
    const-string/jumbo v12, "collect_analytics"

    const/4 v14, 0x0

    invoke-virtual {v6, v12, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 2110
    new-instance v13, Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;

    invoke-direct {v13, v7, v10, v11, v6}, Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;-><init>(ZZZZ)V

    .line 32
    .local v13, "featureData":Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;
    const-string/jumbo v6, "analytics"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 2115
    const-string/jumbo v6, "url"

    const-string/jumbo v7, "https://e.crashlytics.com/spi/v2/events"

    invoke-virtual {v10, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2118
    const-string/jumbo v7, "flush_interval_secs"

    const/16 v11, 0x258

    invoke-virtual {v10, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 2120
    const-string/jumbo v11, "max_byte_size_per_file"

    const/16 v12, 0x1f40

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 2123
    const-string/jumbo v11, "max_file_count_per_send"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 2126
    const-string/jumbo v11, "max_pending_send_file_count"

    const/16 v12, 0x64

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 2130
    new-instance v5, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;

    invoke-direct/range {v5 .. v10}, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;-><init>(Ljava/lang/String;IIII)V

    .line 34
    .local v5, "analyticsData":Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;
    const-string/jumbo v6, "beta"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2187
    const-string/jumbo v7, "update_endpoint"

    sget-object v10, Lio/fabric/sdk/android/services/settings/SettingsJsonConstants;->BETA_UPDATE_ENDPOINT_DEFAULT:Ljava/lang/String;

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2190
    const-string/jumbo v10, "update_suspend_duration"

    const/16 v11, 0xe10

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 2194
    new-instance v15, Lio/fabric/sdk/android/services/settings/BetaSettingsData;

    invoke-direct {v15, v7, v6}, Lio/fabric/sdk/android/services/settings/BetaSettingsData;-><init>(Ljava/lang/String;I)V

    .line 37
    .local v15, "betaData":Lio/fabric/sdk/android/services/settings/BetaSettingsData;
    move/from16 v0, v17

    int-to-long v6, v0

    .line 2201
    const-string/jumbo v10, "expires_at"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c0

    .line 2203
    const-string/jumbo v6, "expires_at"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 39
    .local v8, "expiresAtMillis":J
    :goto_1b6
    new-instance v7, Lio/fabric/sdk/android/services/settings/SettingsData;

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v14, v5

    invoke-direct/range {v7 .. v17}, Lio/fabric/sdk/android/services/settings/SettingsData;-><init>(JLio/fabric/sdk/android/services/settings/AppSettingsData;Lio/fabric/sdk/android/services/settings/SessionSettingsData;Lio/fabric/sdk/android/services/settings/PromptSettingsData;Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Lio/fabric/sdk/android/services/settings/BetaSettingsData;II)V

    return-object v7

    .line 2207
    .end local v8    # "expiresAtMillis":J
    :cond_1c0
    invoke-interface/range {p1 .. p1}, Lio/fabric/sdk/android/services/common/CurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v10

    .line 2208
    const-wide/16 v18, 0x3e8

    mul-long v6, v6, v18

    add-long v8, v10, v6

    goto :goto_1b6
.end method

.method public final sanitizeTraceInfo(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "sanitized":Lorg/json/JSONObject;
    const-string/jumbo v1, "features"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "collect_analytics"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v1, "analytics"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    return-object v0
.end method
