.class public final Lcom/google/android/gms/internal/zziq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# static fields
.field private static final zzcel:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/gms/internal/zziq;->zzcel:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .registers 48

    :try_start_0
    new-instance v28, Lorg/json/JSONObject;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "ad_base_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "ad_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v4, "ad_size"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v4, "ad_slot_size"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    if-eqz p1, :cond_d1

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcax:I

    if-eqz v4, :cond_d1

    const/16 v27, 0x1

    :goto_3c
    const-string/jumbo v4, "ad_json"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_52

    const-string/jumbo v4, "ad_html"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_52
    if-nez v5, :cond_5e

    const-string/jumbo v4, "body"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_5e
    const-wide/16 v20, -0x1

    const-string/jumbo v4, "debug_dialog"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v4, "interstitial_timeout"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d5

    const-string/jumbo v4, "interstitial_timeout"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-long v12, v8

    :goto_85
    const-string/jumbo v4, "orientation"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v18, -0x1

    const-string/jumbo v8, "portrait"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzki;->zztk()I

    move-result v18

    :cond_a2
    :goto_a2
    const/4 v4, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_27e

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_27e

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/zzip;->zza$6bacb101(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zziu;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzio;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbto:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    iget-wide v0, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccc:J

    move-wide/from16 v20, v0

    :goto_c8
    if-nez v7, :cond_ea

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :goto_d0
    return-object v4

    :cond_d1
    const/16 v27, 0x0

    goto/16 :goto_3c

    :cond_d5
    const-wide/16 v12, -0x1

    goto :goto_85

    :cond_d8
    const-string/jumbo v8, "landscape"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzki;->zztj()I

    move-result v18

    goto :goto_a2

    :cond_ea
    const-string/jumbo v5, "click_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v4, :cond_269

    const/4 v8, 0x0

    :goto_f6
    if-eqz v5, :cond_fc

    invoke-static {v5, v8}, Lcom/google/android/gms/internal/zziq;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    :cond_fc
    const-string/jumbo v5, "impression_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v4, :cond_26d

    const/4 v9, 0x0

    :goto_108
    if-eqz v5, :cond_10e

    invoke-static {v5, v9}, Lcom/google/android/gms/internal/zziq;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    :cond_10e
    const-string/jumbo v5, "manual_impression_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v4, :cond_271

    const/4 v15, 0x0

    :goto_11a
    if-eqz v5, :cond_120

    invoke-static {v5, v15}, Lcom/google/android/gms/internal/zziq;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    :cond_120
    if-eqz v4, :cond_27b

    iget v5, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    const/4 v10, -0x1

    if-eq v5, v10, :cond_12b

    iget v0, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move/from16 v18, v0

    :cond_12b
    iget-wide v10, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbx:J

    const-wide/16 v16, 0x0

    cmp-long v5, v10, v16

    if-lez v5, :cond_27b

    iget-wide v10, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbx:J

    :goto_135
    const-string/jumbo v4, "active_view"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v24, 0x0

    const-string/jumbo v4, "ad_is_javascript"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_156

    const-string/jumbo v4, "ad_passback_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    :cond_156
    const-string/jumbo v4, "mediation"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string/jumbo v4, "custom_render_allowed"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string/jumbo v4, "content_url_opted_out"

    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v29

    const-string/jumbo v4, "prefetch"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v30

    const-string/jumbo v4, "refresh_interval_milliseconds"

    const-wide/16 v16, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    const-string/jumbo v4, "mediation_config_cache_time_milliseconds"

    const-wide/16 v32, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v32

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-string/jumbo v4, "gws_query_id"

    const-string/jumbo v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v4, "height"

    const-string/jumbo v5, "fluid"

    const-string/jumbo v32, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    const-string/jumbo v4, "native_express"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v33

    const-string/jumbo v4, "video_start_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zziq;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v35

    const-string/jumbo v4, "video_complete_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zziq;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v36

    const-string/jumbo v4, "rewards"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-result-object v34

    const-string/jumbo v4, "use_displayed_impression"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v37

    const-string/jumbo v4, "auto_protection_configuration"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;->zzh(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-result-object v38

    const-string/jumbo v4, "set_cookie"

    const-string/jumbo v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v4, "remote_ping_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zziq;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v41

    const-string/jumbo v4, "safe_browsing"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string/jumbo v4, "render_in_browser"

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzbnq:Z

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v43

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcaz:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbq:Z

    move/from16 v39, v0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v44}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_246
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_246} :catch_248

    goto/16 :goto_d0

    :catch_248
    move-exception v4

    const-string/jumbo v5, "Could not parse the inline ad response: "

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_275

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_25e
    invoke-static {v4}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto/16 :goto_d0

    :cond_269
    :try_start_269
    iget-object v8, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnm:Ljava/util/List;

    goto/16 :goto_f6

    :cond_26d
    iget-object v9, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnn:Ljava/util/List;

    goto/16 :goto_108

    :cond_271
    iget-object v15, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcca:Ljava/util/List;
    :try_end_273
    .catch Lorg/json/JSONException; {:try_start_269 .. :try_end_273} :catch_248

    goto/16 :goto_11a

    :cond_275
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_25e

    :cond_27b
    move-wide v10, v12

    goto/16 :goto_135

    :cond_27e
    move-object v7, v5

    goto/16 :goto_c8
.end method

.method private static zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p1, 0x0

    :cond_3
    return-object p1

    :cond_4
    if-nez p1, :cond_b

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method private static zza(Ljava/util/HashMap;Landroid/location/Location;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    const-wide v6, 0x416312d000000000L    # 1.0E7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "radius"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "lat"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "long"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "uule"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static zza$7edf9512$5c31bcc4(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zziv;Landroid/location/Location;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            "Lcom/google/android/gms/internal/zziv;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1a

    const-string/jumbo v2, "eid"

    const-string/jumbo v3, ","

    move-object/from16 v0, p4

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcaq:Landroid/os/Bundle;

    if-eqz v2, :cond_26

    const-string/jumbo v2, "ad_pos"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcaq:Landroid/os/Bundle;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzsy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    const-string/jumbo v4, "abf"

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    iget-wide v6, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatm:J

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-eqz v2, :cond_4f

    const-string/jumbo v2, "cust_age"

    sget-object v4, Lcom/google/android/gms/internal/zziq;->zzcel:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    iget-wide v8, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatm:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_5b

    const-string/jumbo v2, "extras"

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatn:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6c

    const-string/jumbo v2, "cust_gender"

    iget v4, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatn:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzato:Ljava/util/List;

    if-eqz v2, :cond_78

    const-string/jumbo v2, "kw"

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzato:Ljava/util/List;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatq:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_89

    const-string/jumbo v2, "tag_for_child_directed_treatment"

    iget v4, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatq:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_89
    iget-boolean v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatp:Z

    if-eqz v2, :cond_96

    const-string/jumbo v2, "adtest"

    const-string/jumbo v4, "on"

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_96
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v4, 0x2

    if-lt v2, v4, :cond_1a4

    iget-boolean v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatr:Z

    if-eqz v2, :cond_aa

    const-string/jumbo v2, "d_imp_hdr"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_aa
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzats:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ba

    const-string/jumbo v2, "ppid"

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzats:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ba
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatt:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    if-eqz v2, :cond_1a4

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatt:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    .line 2000
    iget v2, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzawz:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_d4

    const-string/jumbo v2, "acolor"

    iget v6, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzawz:I

    invoke-static {v6}, Lcom/google/android/gms/internal/zziq;->zzau(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d4
    iget v2, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->backgroundColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_e8

    const-string/jumbo v2, "bgcolor"

    iget v6, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->backgroundColor:I

    invoke-static {v6}, Lcom/google/android/gms/internal/zziq;->zzau(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e8
    iget v2, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxa:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_110

    iget v2, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxb:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_110

    const-string/jumbo v2, "gradientto"

    iget v6, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxa:I

    invoke-static {v6}, Lcom/google/android/gms/internal/zziq;->zzau(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "gradientfrom"

    iget v6, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxb:I

    invoke-static {v6}, Lcom/google/android/gms/internal/zziq;->zzau(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_110
    iget v2, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxc:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_124

    const-string/jumbo v2, "bcolor"

    iget v6, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxc:I

    invoke-static {v6}, Lcom/google/android/gms/internal/zziq;->zzau(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_124
    const-string/jumbo v2, "bthick"

    iget v6, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxd:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxe:I

    packed-switch v2, :pswitch_data_7b4

    const/4 v2, 0x0

    :goto_136
    if-eqz v2, :cond_13e

    const-string/jumbo v6, "btype"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13e
    iget v2, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxf:I

    packed-switch v2, :pswitch_data_7c0

    const/4 v2, 0x0

    :goto_144
    if-eqz v2, :cond_14c

    const-string/jumbo v6, "callbuttoncolor"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14c
    iget-object v2, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxg:Ljava/lang/String;

    if-eqz v2, :cond_158

    const-string/jumbo v2, "channel"

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxg:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_158
    iget v2, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxh:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_16c

    const-string/jumbo v2, "dcolor"

    iget v6, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxh:I

    invoke-static {v6}, Lcom/google/android/gms/internal/zziq;->zzau(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16c
    iget-object v2, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxi:Ljava/lang/String;

    if-eqz v2, :cond_178

    const-string/jumbo v2, "font"

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxi:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_178
    iget v2, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxj:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_18c

    const-string/jumbo v2, "hcolor"

    iget v6, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxj:I

    invoke-static {v6}, Lcom/google/android/gms/internal/zziq;->zzau(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18c
    const-string/jumbo v2, "headersize"

    iget v6, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxk:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxl:Ljava/lang/String;

    if-eqz v2, :cond_1a4

    const-string/jumbo v2, "q"

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxl:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :cond_1a4
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v4, 0x3

    if-lt v2, v4, :cond_1b5

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatv:Ljava/lang/String;

    if-eqz v2, :cond_1b5

    const-string/jumbo v2, "url"

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatv:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b5
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v4, 0x5

    if-lt v2, v4, :cond_1de

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatx:Landroid/os/Bundle;

    if-eqz v2, :cond_1c6

    const-string/jumbo v2, "custom_targeting"

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatx:Landroid/os/Bundle;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c6
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaty:Ljava/util/List;

    if-eqz v2, :cond_1d2

    const-string/jumbo v2, "category_exclusions"

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaty:Ljava/util/List;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d2
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatz:Ljava/lang/String;

    if-eqz v2, :cond_1de

    const-string/jumbo v2, "request_agent"

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatz:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1de
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v4, 0x6

    if-lt v2, v4, :cond_1ef

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaua:Ljava/lang/String;

    if-eqz v2, :cond_1ef

    const-string/jumbo v2, "request_pkg"

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaua:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ef
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v4, 0x7

    if-lt v2, v4, :cond_200

    const-string/jumbo v2, "is_designed_for_families"

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaub:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    :cond_200
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaut:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-nez v2, :cond_283

    const-string/jumbo v2, "format"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaur:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauv:Z

    if-eqz v2, :cond_21f

    const-string/jumbo v2, "fluid"

    const-string/jumbo v3, "height"

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21f
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_22f

    const-string/jumbo v2, "smart_w"

    const-string/jumbo v3, "full"

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22f
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_23f

    const-string/jumbo v2, "smart_h"

    const-string/jumbo v3, "auto"

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23f
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaut:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v2, :cond_328

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaut:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    array-length v8, v7

    const/4 v2, 0x0

    move v4, v2

    move v2, v3

    :goto_253
    if-ge v4, v8, :cond_30c

    aget-object v9, v7, v4

    iget-boolean v3, v9, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauv:Z

    if-eqz v3, :cond_2b9

    const/4 v2, 0x1

    :goto_25c
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_253

    .line 2000
    :pswitch_260
    const-string/jumbo v2, "none"

    goto/16 :goto_136

    :pswitch_265
    const-string/jumbo v2, "dashed"

    goto/16 :goto_136

    :pswitch_26a
    const-string/jumbo v2, "dotted"

    goto/16 :goto_136

    :pswitch_26f
    const-string/jumbo v2, "solid"

    goto/16 :goto_136

    :pswitch_274
    const-string/jumbo v2, "dark"

    goto/16 :goto_144

    :pswitch_279
    const-string/jumbo v2, "light"

    goto/16 :goto_144

    :pswitch_27e
    const-string/jumbo v2, "medium"

    goto/16 :goto_144

    .line 0
    :cond_283
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v6, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaut:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    array-length v7, v6

    const/4 v2, 0x0

    move v12, v2

    move v2, v3

    move v3, v4

    move v4, v12

    :goto_28f
    if-ge v4, v7, :cond_21f

    aget-object v8, v6, v4

    iget-boolean v9, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauv:Z

    if-nez v9, :cond_2a2

    if-nez v3, :cond_2a2

    const-string/jumbo v3, "format"

    iget-object v9, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaur:Ljava/lang/String;

    invoke-virtual {v5, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_2a2
    iget-boolean v8, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauv:Z

    if-eqz v8, :cond_2b2

    if-nez v2, :cond_2b2

    const-string/jumbo v2, "fluid"

    const-string/jumbo v8, "height"

    invoke-virtual {v5, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_2b2
    if-eqz v3, :cond_2b6

    if-nez v2, :cond_21f

    :cond_2b6
    add-int/lit8 v4, v4, 0x1

    goto :goto_28f

    :cond_2b9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2c5

    const-string/jumbo v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c5
    iget v3, v9, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    const/4 v10, -0x1

    if-ne v3, v10, :cond_306

    iget v3, v9, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    int-to-float v3, v3

    iget v10, p1, Lcom/google/android/gms/internal/zziv;->zzcbd:F

    div-float/2addr v3, v10

    float-to-int v3, v3

    :goto_2d1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    const/4 v10, -0x2

    if-ne v3, v10, :cond_309

    iget v3, v9, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    int-to-float v3, v3

    iget v9, p1, Lcom/google/android/gms/internal/zziv;->zzcbd:F

    div-float/2addr v3, v9

    float-to-int v3, v3

    :goto_2e6
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2e9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2e9} :catch_2eb

    goto/16 :goto_25c

    :catch_2eb
    move-exception v2

    const-string/jumbo v3, "Problem serializing ad request to JSON: "

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7ad

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_301
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_305
    return-object v2

    :cond_306
    :try_start_306
    iget v3, v9, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    goto :goto_2d1

    :cond_309
    iget v3, v9, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    goto :goto_2e6

    :cond_30c
    if-eqz v2, :cond_322

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_31b

    const/4 v2, 0x0

    const-string/jumbo v3, "|"

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31b
    const/4 v2, 0x0

    const-string/jumbo v3, "320x50"

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_322
    const-string/jumbo v2, "sz"

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_328
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcax:I

    if-eqz v2, :cond_368

    const-string/jumbo v2, "native_version"

    iget v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauw:Z

    if-nez v2, :cond_368

    const-string/jumbo v2, "native_templates"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaps:Ljava/util/List;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "native_image_orientation"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapo:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    .line 3000
    if-eqz v2, :cond_748

    iget v2, v2, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzbgq:I

    :goto_34f
    packed-switch v2, :pswitch_data_7ca

    const-string/jumbo v2, "any"

    .line 0
    :goto_355
    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbi:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_368

    const-string/jumbo v2, "native_custom_templates"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbi:Ljava/util/List;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_368
    const-string/jumbo v2, "slotname"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaou:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "pn"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcas:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_38c

    const-string/jumbo v2, "vc"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcas:Landroid/content/pm/PackageInfo;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38c
    const-string/jumbo v2, "ms"

    move-object/from16 v0, p3

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "seq_num"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcau:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "session_id"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcav:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "js"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbv:Landroid/os/Bundle;

    .line 4000
    const-string/jumbo v3, "am"

    iget v4, p1, Lcom/google/android/gms/internal/zziv;->zzcgd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "cog"

    iget-boolean v4, p1, Lcom/google/android/gms/internal/zziv;->zzcge:Z

    invoke-static {v4}, Lcom/google/android/gms/internal/zziq;->zzab(Z)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "coh"

    iget-boolean v4, p1, Lcom/google/android/gms/internal/zziv;->zzcgf:Z

    invoke-static {v4}, Lcom/google/android/gms/internal/zziq;->zzab(Z)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/zziv;->zzcgg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e4

    const-string/jumbo v3, "carrier"

    iget-object v4, p1, Lcom/google/android/gms/internal/zziv;->zzcgg:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e4
    const-string/jumbo v3, "gl"

    iget-object v4, p1, Lcom/google/android/gms/internal/zziv;->zzcgh:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zziv;->zzcgi:Z

    if-eqz v3, :cond_3fb

    const-string/jumbo v3, "simulator"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3fb
    iget-boolean v3, p1, Lcom/google/android/gms/internal/zziv;->zzcgj:Z

    if-eqz v3, :cond_40a

    const-string/jumbo v3, "is_sidewinder"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40a
    const-string/jumbo v3, "ma"

    iget-boolean v4, p1, Lcom/google/android/gms/internal/zziv;->zzcgk:Z

    invoke-static {v4}, Lcom/google/android/gms/internal/zziq;->zzab(Z)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "sp"

    iget-boolean v4, p1, Lcom/google/android/gms/internal/zziv;->zzcgl:Z

    invoke-static {v4}, Lcom/google/android/gms/internal/zziq;->zzab(Z)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "hl"

    iget-object v4, p1, Lcom/google/android/gms/internal/zziv;->zzcgm:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/zziv;->zzcgn:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_43a

    const-string/jumbo v3, "mv"

    iget-object v4, p1, Lcom/google/android/gms/internal/zziv;->zzcgn:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43a
    const-string/jumbo v3, "muv"

    iget v4, p1, Lcom/google/android/gms/internal/zziv;->zzcgo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p1, Lcom/google/android/gms/internal/zziv;->zzcgp:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_457

    const-string/jumbo v3, "cnt"

    iget v4, p1, Lcom/google/android/gms/internal/zziv;->zzcgp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_457
    const-string/jumbo v3, "gnt"

    iget v4, p1, Lcom/google/android/gms/internal/zziv;->zzcgq:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "pt"

    iget v4, p1, Lcom/google/android/gms/internal/zziv;->zzcgr:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "rm"

    iget v4, p1, Lcom/google/android/gms/internal/zziv;->zzcgs:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "riv"

    iget v4, p1, Lcom/google/android/gms/internal/zziv;->zzcgt:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "build"

    iget-object v6, p1, Lcom/google/android/gms/internal/zziv;->zzcgy:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "is_charging"

    iget-boolean v7, p1, Lcom/google/android/gms/internal/zziv;->zzcgv:Z

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "battery_level"

    iget-wide v8, p1, Lcom/google/android/gms/internal/zziv;->zzcgu:D

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v6, "battery"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "active_network_state"

    iget v7, p1, Lcom/google/android/gms/internal/zziv;->zzcgx:I

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "active_network_metered"

    iget-boolean v7, p1, Lcom/google/android/gms/internal/zziv;->zzcgw:Z

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "network"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "is_browser_custom_tabs_capable"

    iget-boolean v7, p1, Lcom/google/android/gms/internal/zziv;->zzcgz:Z

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "browser"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v2, :cond_59a

    const-string/jumbo v4, "android_mem_info"

    .line 5000
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "runtime_free"

    const-string/jumbo v8, "runtime_free_memory"

    const-wide/16 v10, -0x1

    invoke-virtual {v2, v8, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "runtime_max"

    const-string/jumbo v8, "runtime_max_memory"

    const-wide/16 v10, -0x1

    invoke-virtual {v2, v8, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "runtime_total"

    const-string/jumbo v8, "runtime_total_memory"

    const-wide/16 v10, -0x1

    invoke-virtual {v2, v8, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "debug_memory_info"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Debug$MemoryInfo;

    if-eqz v2, :cond_597

    const-string/jumbo v7, "debug_info_dalvik_private_dirty"

    iget v8, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "debug_info_dalvik_pss"

    iget v8, v2, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "debug_info_dalvik_shared_dirty"

    iget v8, v2, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "debug_info_native_private_dirty"

    iget v8, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "debug_info_native_pss"

    iget v8, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "debug_info_native_shared_dirty"

    iget v8, v2, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "debug_info_other_private_dirty"

    iget v8, v2, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "debug_info_other_pss"

    iget v8, v2, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "debug_info_other_shared_dirty"

    iget v2, v2, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4000
    :cond_597
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_59a
    const-string/jumbo v2, "device"

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6000
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "doritos"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "pii"

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    const-string/jumbo v2, "platform"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "submodel"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_755

    invoke-static {v5, p2}, Lcom/google/android/gms/internal/zziq;->zza(Ljava/util/HashMap;Landroid/location/Location;)V

    :cond_5c7
    :goto_5c7
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5d4

    const-string/jumbo v2, "quality_signals"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcaw:Landroid/os/Bundle;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d4
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_5e9

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcaz:Z

    if-eqz v2, :cond_5e9

    const-string/jumbo v2, "forceHttps"

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcaz:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e9
    if-eqz p5, :cond_5f3

    const-string/jumbo v2, "content_info"

    move-object/from16 v0, p5

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f3
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_76b

    const-string/jumbo v2, "u_sd"

    iget v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbd:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sh"

    iget v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sw"

    iget v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_61c
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_642

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbe:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_626
    .catch Lorg/json/JSONException; {:try_start_306 .. :try_end_626} :catch_2eb

    move-result v2

    if-nez v2, :cond_636

    :try_start_629
    const-string/jumbo v2, "view_hierarchy"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbe:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_636
    .catch Lorg/json/JSONException; {:try_start_629 .. :try_end_636} :catch_791

    :cond_636
    :goto_636
    :try_start_636
    const-string/jumbo v2, "correlation_id"

    iget-wide v6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbf:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_642
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_64f

    const-string/jumbo v2, "request_id"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbg:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64f
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_665

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbk:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    if-eqz v2, :cond_665

    const-string/jumbo v2, "capability"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbk:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_665
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_67b

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_67b

    const-string/jumbo v2, "anchor"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbl:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_67b
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_68d

    const-string/jumbo v2, "android_app_volume"

    iget v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbm:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68d
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_69f

    const-string/jumbo v2, "android_app_muted"

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbs:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_69f
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_6b5

    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbn:I

    if-lez v2, :cond_6b5

    const-string/jumbo v2, "target_api"

    iget v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbn:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b5
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_6cb

    const-string/jumbo v3, "scroll_index"

    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbo:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_79a

    const/4 v2, -0x1

    :goto_6c4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6cb
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_6dd

    const-string/jumbo v2, "_activity_context"

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbp:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6dd
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_704

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbt:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6e8
    .catch Lorg/json/JSONException; {:try_start_636 .. :try_end_6e8} :catch_2eb

    move-result v2

    if-nez v2, :cond_6f8

    :try_start_6eb
    const-string/jumbo v2, "app_settings"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbt:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f8
    .catch Lorg/json/JSONException; {:try_start_6eb .. :try_end_6f8} :catch_79e

    :cond_6f8
    :goto_6f8
    :try_start_6f8
    const-string/jumbo v2, "render_in_browser"

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzbnq:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_704
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_716

    const-string/jumbo v2, "android_num_video_cache_tasks"

    iget v3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_716
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->zzaz(I)Z

    move-result v2

    if-eqz v2, :cond_73e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/zzkh;->zzam(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Ad Request JSON: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7a7

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_73b
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    :cond_73e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/zzkh;->zzam(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_305

    .line 3000
    :cond_748
    const/4 v2, 0x0

    goto/16 :goto_34f

    :pswitch_74b
    const-string/jumbo v2, "portrait"

    goto/16 :goto_355

    :pswitch_750
    const-string/jumbo v2, "landscape"

    goto/16 :goto_355

    .line 0
    :cond_755
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5c7

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatu:Landroid/location/Location;

    if-eqz v2, :cond_5c7

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatu:Landroid/location/Location;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/zziq;->zza(Ljava/util/HashMap;Landroid/location/Location;)V

    goto/16 :goto_5c7

    :cond_76b
    const-string/jumbo v2, "u_sd"

    iget v3, p1, Lcom/google/android/gms/internal/zziv;->zzcbd:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sh"

    iget v3, p1, Lcom/google/android/gms/internal/zziv;->zzcbc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sw"

    iget v3, p1, Lcom/google/android/gms/internal/zziv;->zzcbb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_61c

    :catch_791
    move-exception v2

    const-string/jumbo v3, "Problem serializing view hierarchy to JSON"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_636

    :cond_79a
    iget v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbo:I

    goto/16 :goto_6c4

    :catch_79e
    move-exception v2

    const-string/jumbo v3, "Problem creating json from app settings"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6f8

    :cond_7a7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_7ac
    .catch Lorg/json/JSONException; {:try_start_6f8 .. :try_end_7ac} :catch_2eb

    goto :goto_73b

    :cond_7ad
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_301

    .line 2000
    :pswitch_data_7b4
    .packed-switch 0x0
        :pswitch_260
        :pswitch_265
        :pswitch_26a
        :pswitch_26f
    .end packed-switch

    :pswitch_data_7c0
    .packed-switch 0x0
        :pswitch_279
        :pswitch_27e
        :pswitch_274
    .end packed-switch

    .line 3000
    :pswitch_data_7ca
    .packed-switch 0x1
        :pswitch_74b
        :pswitch_750
    .end packed-switch
.end method

.method private static zzab(Z)Ljava/lang/Integer;
    .registers 2

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static zzau(I)Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-wide/16 v6, -0x1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbto:Ljava/lang/String;

    if-eqz v0, :cond_13

    const-string/jumbo v0, "ad_base_url"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbto:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccb:Ljava/lang/String;

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "ad_size"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccb:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1f
    const-string/jumbo v0, "native"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzauu:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzauu:Z

    if-eqz v0, :cond_163

    const-string/jumbo v0, "ad_json"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_33
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccd:Ljava/lang/String;

    if-eqz v0, :cond_3f

    const-string/jumbo v0, "debug_dialog"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccd:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3f
    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbx:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_54

    const-string/jumbo v0, "interstitial_timeout"

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbx:J

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_54
    iget v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzki;->zztk()I

    move-result v2

    if-ne v0, v2, :cond_16d

    const-string/jumbo v0, "orientation"

    const-string/jumbo v2, "portrait"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnm:Ljava/util/List;

    if-eqz v0, :cond_79

    const-string/jumbo v0, "click_urls"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnm:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zziq;->zzk(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_79
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnn:Ljava/util/List;

    if-eqz v0, :cond_89

    const-string/jumbo v0, "impression_urls"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnn:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zziq;->zzk(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcca:Ljava/util/List;

    if-eqz v0, :cond_99

    const-string/jumbo v0, "manual_impression_urls"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcca:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zziq;->zzk(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_99
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccg:Ljava/lang/String;

    if-eqz v0, :cond_a5

    const-string/jumbo v0, "active_view"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccg:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a5
    const-string/jumbo v0, "ad_is_javascript"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcce:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccf:Ljava/lang/String;

    if-eqz v0, :cond_b9

    const-string/jumbo v0, "ad_passback_url"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccf:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b9
    const-string/jumbo v0, "mediation"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcby:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "custom_render_allowed"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcch:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "content_url_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcci:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "prefetch"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccj:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbns:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_e7

    const-string/jumbo v0, "refresh_interval_milliseconds"

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbns:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_e7
    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbz:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_f5

    const-string/jumbo v0, "mediation_config_cache_time_milliseconds"

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbz:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_f5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_105

    const-string/jumbo v0, "gws_query_id"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccm:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_105
    const-string/jumbo v2, "fluid"

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzauv:Z

    if-eqz v0, :cond_184

    const-string/jumbo v0, "height"

    :goto_10f
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "native_express"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzauw:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcco:Ljava/util/List;

    if-eqz v0, :cond_12a

    const-string/jumbo v0, "video_start_urls"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcco:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zziq;->zzk(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccp:Ljava/util/List;

    if-eqz v0, :cond_13a

    const-string/jumbo v0, "video_complete_urls"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccp:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zziq;->zzk(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccn:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    if-eqz v0, :cond_14a

    const-string/jumbo v0, "rewards"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccn:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->zzrw()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14a
    const-string/jumbo v0, "use_displayed_impression"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccq:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "auto_protection_configuration"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccr:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "render_in_browser"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnq:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v1

    :cond_163
    const-string/jumbo v0, "ad_html"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_33

    :cond_16d
    iget v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzki;->zztj()I

    move-result v2

    if-ne v0, v2, :cond_69

    const-string/jumbo v0, "orientation"

    const-string/jumbo v2, "landscape"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_69

    :cond_184
    const-string/jumbo v0, ""

    goto :goto_10f
.end method

.method private static zzk(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_19
    return-object v1
.end method
