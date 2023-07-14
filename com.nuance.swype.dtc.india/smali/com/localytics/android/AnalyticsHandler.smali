.class Lcom/localytics/android/AnalyticsHandler;
.super Lcom/localytics/android/BaseHandler;
.source "AnalyticsHandler.java"

# interfaces
.implements Lcom/localytics/android/LocationListener;


# static fields
.field private static final BASE_PUSH_REGISTRATION_BACKOFF:J = 0x1388L

.field private static final MAX_PUSH_REGISTRATION_RETRIES:I = 0x3

.field private static final MESSAGE_CLOSE:I = 0x66

.field private static final MESSAGE_DISABLE_NOTIFICATIONS:I = 0x6e

.field private static final MESSAGE_OPEN:I = 0x65

.field private static final MESSAGE_OPT_OUT:I = 0x6c

.field private static final MESSAGE_REGISTER_PUSH:I = 0x6d

.field private static final MESSAGE_RETRIEVE_TOKEN_FROM_INSTANCEID:I = 0x71

.field private static final MESSAGE_SET_CUSTOM_DIMENSION:I = 0x6b

.field private static final MESSAGE_SET_IDENTIFIER:I = 0x69

.field private static final MESSAGE_SET_LOCATION:I = 0x6a

.field private static final MESSAGE_SET_PUSH_REGID:I = 0x6f

.field private static final MESSAGE_SET_REFERRERID:I = 0x70

.field private static final MESSAGE_TAG_EVENT:I = 0x67

.field private static final MESSAGE_TAG_SCREEN:I = 0x68

.field private static final PARAM_LOCALYTICS_REFERRER_TEST_MODE:Ljava/lang/String; = "localytics_test_mode"

.field private static final PROJECTION_SET_CUSTOM_DIMENSION:[Ljava/lang/String;

.field private static final PROJECTION_SET_IDENTIFIER:[Ljava/lang/String;

.field private static final SELECTION_SET_CUSTOM_DIMENSION:Ljava/lang/String;

.field private static final SELECTION_SET_IDENTIFIER:Ljava/lang/String;

.field private static sLastLocation:Landroid/location/Location;

.field private static sNumPushRegistrationRetries:I


# instance fields
.field private mAppWasUpgraded:Z

.field private mCachedCustomDimensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedIdentifiers:Ljava/util/Map;
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

.field mFirstSessionEver:Z

.field private mInstallId:Ljava/lang/String;

.field mIsSessionOpen:Z

.field private mLastScreenTag:Ljava/lang/String;

.field protected final mListeners:Lcom/localytics/android/ListenersSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/localytics/android/ListenersSet",
            "<",
            "Lcom/localytics/android/AnalyticsListener;",
            ">;"
        }
    .end annotation
.end field

.field mReferrerTestModeEnabled:Z

.field private mSanitizingDictionary:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSentReferrerTestMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "custom_dimension_value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->PROJECTION_SET_CUSTOM_DIMENSION:[Ljava/lang/String;

    .line 136
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "custom_dimension_key"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_CUSTOM_DIMENSION:Ljava/lang/String;

    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "key"

    aput-object v1, v0, v3

    const-string/jumbo v1, "value"

    aput-object v1, v0, v4

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->PROJECTION_SET_IDENTIFIER:[Ljava/lang/String;

    .line 146
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "key"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_IDENTIFIER:Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->sLastLocation:Landroid/location/Location;

    .line 156
    sput v3, Lcom/localytics/android/AnalyticsHandler;->sNumPushRegistrationRetries:I

    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V
    .locals 3
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BaseHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 166
    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mAppWasUpgraded:Z

    .line 167
    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    .line 168
    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mReferrerTestModeEnabled:Z

    .line 169
    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mSentReferrerTestMode:Z

    .line 171
    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    .line 191
    const-string/jumbo v0, "Analytics"

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->siloName:Ljava/lang/String;

    .line 192
    new-instance v0, Lcom/localytics/android/ListenersSet;

    const-class v1, Lcom/localytics/android/AnalyticsListener;

    invoke-direct {v0, v1}, Lcom/localytics/android/ListenersSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mSanitizingDictionary:Ljava/util/HashMap;

    .line 196
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mSanitizingDictionary:Ljava/util/HashMap;

    const-string/jumbo v1, "facebook"

    const-string/jumbo v2, "Facebook"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mSanitizingDictionary:Ljava/util/HashMap;

    const-string/jumbo v1, "twitter"

    const-string/jumbo v2, "Twitter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mSanitizingDictionary:Ljava/util/HashMap;

    const-string/jumbo v1, "native"

    const-string/jumbo v2, "Native"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method private _addLocationIDsAndCustomDimensions(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "eventBlob"    # Lorg/json/JSONObject;
    .param p2, "identifiers"    # Lorg/json/JSONObject;
    .param p3, "customerID"    # Ljava/lang/String;
    .param p4, "userType"    # Ljava/lang/String;

    .prologue
    .line 1393
    :try_start_0
    sget-object v2, Lcom/localytics/android/AnalyticsHandler;->sLastLocation:Landroid/location/Location;

    if-eqz v2, :cond_0

    .line 1395
    sget-object v2, Lcom/localytics/android/AnalyticsHandler;->sLastLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    .line 1396
    .local v10, "lat":D
    sget-object v2, Lcom/localytics/android/AnalyticsHandler;->sLastLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    .line 1397
    .local v12, "lng":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v10, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmpl-double v2, v12, v2

    if-eqz v2, :cond_0

    .line 1399
    const-string/jumbo v2, "lat"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1400
    const-string/jumbo v2, "lng"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1404
    .end local v10    # "lat":D
    .end local v12    # "lng":D
    :cond_0
    const-string/jumbo v2, "cid"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1405
    const-string/jumbo v2, "utp"

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1407
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1409
    const-string/jumbo v2, "ids"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1415
    :cond_1
    const/4 v8, 0x0

    .line 1418
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v3, "custom_dimensions"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1420
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1422
    const-string/jumbo v2, "custom_dimension_key"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1423
    .local v9, "key":Ljava/lang/String;
    const-string/jumbo v2, "custom_dimension_value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1424
    .local v15, "value":Ljava/lang/String;
    const-string/jumbo v2, "custom_dimension_"

    const-string/jumbo v3, "c"

    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 1425
    .local v14, "newKey":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1430
    .end local v9    # "key":Ljava/lang/String;
    .end local v14    # "newKey":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_2

    .line 1432
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1433
    :cond_2
    throw v2

    .line 1440
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    :cond_3
    :goto_1
    return-void

    .line 1430
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_4
    if-eqz v8, :cond_3

    .line 1432
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private _areNotificationsDisabled()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 930
    const/4 v7, 0x0

    .line 931
    .local v7, "disabled":Z
    const/4 v6, 0x0

    .line 934
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "push_disabled"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 935
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 937
    const-string/jumbo v0, "push_disabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 938
    if-ne v0, v8, :cond_0

    move v7, v8

    .line 939
    :goto_1
    goto :goto_0

    :cond_0
    move v7, v9

    .line 938
    goto :goto_1

    .line 943
    :cond_1
    if-eqz v6, :cond_2

    .line 945
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 949
    :cond_2
    return v7

    .line 943
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 945
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private _clearScreens()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1475
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "screens"

    invoke-virtual {v0, v1, v2, v2}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1476
    iput-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mLastScreenTag:Ljava/lang/String;

    .line 1477
    return-void
.end method

.method private _createCloseBlob(Lcom/localytics/android/AnalyticsHeader;ZJ)Ljava/lang/String;
    .locals 11
    .param p1, "header"    # Lcom/localytics/android/AnalyticsHeader;
    .param p2, "isRecoveredClose"    # Z
    .param p3, "currentTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 1301
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1302
    .local v1, "eventUUID":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1303
    .local v0, "eventBlob":Lorg/json/JSONObject;
    const-string/jumbo v5, "dt"

    const-string/jumbo v6, "c"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1304
    const-string/jumbo v5, "u"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1305
    const-string/jumbo v5, "su"

    invoke-virtual {p1}, Lcom/localytics/android/AnalyticsHeader;->getOpenSessionUUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1306
    invoke-virtual {p1}, Lcom/localytics/android/AnalyticsHeader;->getLastSessionStartTime()J

    move-result-wide v2

    .line 1307
    .local v2, "lastSessionStartTime":J
    const-string/jumbo v5, "ss"

    long-to-double v6, v2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1308
    const-string/jumbo v5, "ct"

    long-to-double v6, p3

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1309
    const-string/jumbo v5, "ctl"

    sub-long v6, p3, v2

    long-to-double v6, v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1311
    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_getScreens()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1312
    .local v4, "screens":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1314
    const-string/jumbo v5, "fl"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1316
    :cond_0
    const-string/jumbo v5, "isl"

    invoke-virtual {v0, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1318
    invoke-virtual {p1}, Lcom/localytics/android/AnalyticsHeader;->getIdentifiersObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p1}, Lcom/localytics/android/AnalyticsHeader;->getCustomerID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/localytics/android/AnalyticsHeader;->getUserType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/localytics/android/AnalyticsHandler;->_addLocationIDsAndCustomDimensions(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string/jumbo v5, "%s\n%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/localytics/android/AnalyticsHeader;->getHeaderBlob()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private _dequeQueuedCloseSessionTag(Z)V
    .locals 12
    .param p1, "saveAsEvent"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1554
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1556
    .local v9, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_3

    .line 1558
    const/4 v6, 0x0

    .line 1559
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1560
    .local v7, "queuedCloseSessionTag":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1563
    .local v8, "queuedCloseSessionTagUploadFormat":I
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "queued_close_session_blob"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "queued_close_session_blob_upload_format"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1564
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1566
    const-string/jumbo v1, "queued_close_session_blob"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1567
    const-string/jumbo v1, "queued_close_session_blob_upload_format"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1572
    :cond_0
    if-eqz v6, :cond_1

    .line 1574
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1579
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    if-nez v1, :cond_2

    .line 1583
    :try_start_1
    new-instance v0, Lcom/localytics/android/AnalyticsHeader;

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getInstallationId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHeader;-><init>(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    .local v0, "header":Lcom/localytics/android/AnalyticsHeader;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->_createCloseBlob(Lcom/localytics/android/AnalyticsHeader;ZJ)Ljava/lang/String;

    move-result-object v7

    .line 1585
    sget-object v1, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v1}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 1592
    .end local v0    # "header":Lcom/localytics/android/AnalyticsHeader;
    :cond_2
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1594
    const-string/jumbo v1, "blob"

    invoke-virtual {v9, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    const-string/jumbo v1, "upload_format"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1596
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v2, "events"

    invoke-virtual {v1, v2, v9}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1597
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 1598
    iput-boolean v11, p0, Lcom/localytics/android/AnalyticsHandler;->mAppWasUpgraded:Z

    .line 1599
    iput-boolean v11, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    .line 1600
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_clearScreens()V

    .line 1604
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "queuedCloseSessionTag":Ljava/lang/String;
    .end local v8    # "queuedCloseSessionTagUploadFormat":I
    :cond_3
    const-string/jumbo v1, "queued_close_session_blob"

    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1605
    const-string/jumbo v1, "queued_close_session_blob_upload_format"

    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1606
    const-string/jumbo v1, "last_session_close_time"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1607
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v2, "info"

    invoke-virtual {v1, v2, v9, v10, v10}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1608
    return-void

    .line 1572
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "queuedCloseSessionTag":Ljava/lang/String;
    .restart local v8    # "queuedCloseSessionTagUploadFormat":I
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 1574
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1575
    :cond_4
    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private _getCustomDimension(I)Ljava/lang/String;
    .locals 9
    .param p1, "dimension"    # I

    .prologue
    const/4 v8, 0x0

    .line 972
    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-lt p1, v0, :cond_1

    .line 998
    :cond_0
    :goto_0
    return-object v8

    .line 977
    :cond_1
    const/4 v8, 0x0

    .line 978
    .local v8, "value":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->getCustomDimensionAttributeKey(I)Ljava/lang/String;

    move-result-object v7

    .line 979
    .local v7, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 982
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "custom_dimensions"

    sget-object v2, Lcom/localytics/android/AnalyticsHandler;->PROJECTION_SET_CUSTOM_DIMENSION:[Ljava/lang/String;

    sget-object v3, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_CUSTOM_DIMENSION:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 984
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 986
    const-string/jumbo v0, "custom_dimension_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 991
    :cond_2
    if-eqz v6, :cond_0

    .line 993
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 991
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 993
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 994
    :cond_3
    throw v0
.end method

.method private _getPushRegistrationId()Ljava/lang/String;
    .locals 8

    .prologue
    .line 906
    const/4 v7, 0x0

    .line 907
    .local v7, "pushRegId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 910
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "registration_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 912
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    const-string/jumbo v0, "registration_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 919
    :cond_0
    if-eqz v6, :cond_1

    .line 921
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 925
    :cond_1
    if-nez v7, :cond_2

    const-string/jumbo v7, ""

    .end local v7    # "pushRegId":Ljava/lang/String;
    :cond_2
    return-object v7

    .line 919
    .restart local v7    # "pushRegId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 921
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private _registerPush(Ljava/lang/String;)V
    .locals 9
    .param p1, "newSenderID"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 873
    const/4 v6, 0x0

    .line 875
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 878
    .local v7, "senderId":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "sender_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "registration_version"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "registration_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 880
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    const-string/jumbo v0, "sender_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 887
    :cond_0
    if-eqz v6, :cond_1

    .line 889
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 894
    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 897
    invoke-direct {p0, p1, v8}, Lcom/localytics/android/AnalyticsHandler;->_setPushID(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :cond_2
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_retrieveTokenFromInstanceId(Ljava/lang/String;)V

    .line 901
    return-void

    .line 887
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 889
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private _retrieveLastScreenTag()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1482
    const/4 v0, 0x0

    .line 1483
    .local v0, "lastScreen":Ljava/lang/String;
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v2, v2, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "SELECT MAX(rowid), %s FROM %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "screens"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1487
    .local v1, "query":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1489
    const-string/jumbo v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1491
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1493
    return-object v0
.end method

.method private _retrieveTokenFromInstanceId()V
    .locals 1

    .prologue
    .line 2018
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_getPushSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_retrieveTokenFromInstanceId(Ljava/lang/String;)V

    .line 2019
    return-void
.end method

.method private _retrieveTokenFromInstanceId(Ljava/lang/String;)V
    .locals 10
    .param p1, "senderId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 2023
    iget-object v5, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v5}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "com.google.android.c2dm.permission.RECEIVE"

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 2028
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2030
    const-string/jumbo v5, "GCM registration failed, got empty sender id"

    invoke-static {v5}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 2069
    :cond_0
    :goto_0
    return-void

    .line 2034
    :cond_1
    iget-object v5, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v5}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v5

    .line 2035
    const-string/jumbo v6, "GCM"

    invoke-virtual {v5, p1, v6}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2036
    .local v4, "token":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2038
    const-string/jumbo v5, "GCM registered, new id: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 2039
    invoke-direct {p0, v4}, Lcom/localytics/android/AnalyticsHandler;->_setPushID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2046
    .end local v4    # "token":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2048
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Exception while registering GCM"

    invoke-static {v5, v2}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2049
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 2050
    .local v3, "error":Ljava/lang/String;
    const-string/jumbo v5, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "TIMEOUT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2052
    :cond_2
    sget v5, Lcom/localytics/android/AnalyticsHandler;->sNumPushRegistrationRetries:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lcom/localytics/android/AnalyticsHandler;->sNumPushRegistrationRetries:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_4

    .line 2054
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sget v5, Lcom/localytics/android/AnalyticsHandler;->sNumPushRegistrationRetries:I

    add-int/lit8 v5, v5, -0x1

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide/16 v8, 0x1388

    mul-long v0, v6, v8

    .line 2055
    .local v0, "delay":J
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "GCM registration ERROR_SERVICE_NOT_AVAILABLE. Retrying in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " milliseconds."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 2056
    invoke-virtual {p0, p1, v0, v1}, Lcom/localytics/android/AnalyticsHandler;->registerPush(Ljava/lang/String;J)V

    goto :goto_0

    .line 2043
    .end local v0    # "delay":J
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "error":Ljava/lang/String;
    .restart local v4    # "token":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "GCM registration failed, got empty token"

    invoke-static {v5}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2060
    .end local v4    # "token":Ljava/lang/String;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "error":Ljava/lang/String;
    :cond_4
    sput v8, Lcom/localytics/android/AnalyticsHandler;->sNumPushRegistrationRetries:I

    goto/16 :goto_0

    .line 2067
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "error":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "\'com.google.android.c2dm.permission.RECEIVE\' missing from AndroidManifest.xml"

    invoke-static {v5}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private _reuploadFirstSession(Ljava/lang/String;)V
    .locals 4
    .param p1, "referrerId"    # Ljava/lang/String;

    .prologue
    .line 2191
    invoke-virtual {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_replaceAttributionInFirstSession(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2192
    .local v0, "updatedEventBlob":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2194
    new-instance v1, Lcom/localytics/android/ReferralUploader;

    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_getCustomerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/localytics/android/ReferralUploader;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    invoke-virtual {v1}, Lcom/localytics/android/ReferralUploader;->start()V

    .line 2196
    :cond_0
    return-void
.end method

.method private _setCustomDimension(ILjava/lang/String;)V
    .locals 8
    .param p1, "dimension"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1648
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->getCustomDimensionAttributeKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1649
    .local v0, "key":Ljava/lang/String;
    monitor-enter p0

    .line 1651
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1653
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v3, "custom_dimensions"

    const-string/jumbo v4, "%s = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "custom_dimension_key"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1655
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1660
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1661
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "custom_dimension_key"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    const-string/jumbo v2, "custom_dimension_value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v3, "custom_dimensions"

    sget-object v4, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_CUSTOM_DIMENSION:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 1665
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v3, "custom_dimensions"

    invoke-virtual {v2, v3, v1}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1667
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1675
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1672
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private _setNotificationsDisabled(I)V
    .locals 4
    .param p1, "disabled"    # I

    .prologue
    const/4 v3, 0x0

    .line 801
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 802
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "push_disabled"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 803
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v2, "info"

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 804
    return-void
.end method

.method private _setOptedOut(Z)V
    .locals 4
    .param p1, "isOptingOut"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1911
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_isOptedOut()Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1926
    :goto_0
    return-void

    .line 1916
    :cond_0
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_tagOptEvent(Z)V

    .line 1918
    iget-boolean v1, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 1920
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_close()V

    .line 1923
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1924
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "opt_out"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1925
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v2, "info"

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private _setPushID(Ljava/lang/String;)V
    .locals 6
    .param p1, "pushRegId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1970
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_getPushRegistrationId()Ljava/lang/String;

    move-result-object v1

    .line 1971
    .local v1, "oldRegistrationId":Ljava/lang/String;
    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    .line 1973
    .local v0, "newRegistrationId":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1974
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "registration_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    const-string/jumbo v3, "registration_version"

    iget-object v4, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    iget-object v3, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "info"

    invoke-virtual {v3, v4, v2, v5, v5}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1978
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1980
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_tagPushRegisteredEvent()V

    .line 1982
    :cond_0
    return-void

    .end local v0    # "newRegistrationId":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    move-object v0, p1

    .line 1971
    goto :goto_0
.end method

.method private _setPushID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "pushRegId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1986
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_getPushRegistrationId()Ljava/lang/String;

    move-result-object v1

    .line 1987
    .local v1, "oldRegistrationId":Ljava/lang/String;
    if-nez p2, :cond_1

    const-string/jumbo v0, ""

    .line 1989
    .local v0, "newRegistrationId":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1990
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "sender_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    const-string/jumbo v3, "registration_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    iget-object v3, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "info"

    invoke-virtual {v3, v4, v2, v5, v5}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1994
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1996
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_tagPushRegisteredEvent()V

    .line 1998
    :cond_0
    return-void

    .end local v0    # "newRegistrationId":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    move-object v0, p2

    .line 1987
    goto :goto_0
.end method

.method private _setReferrerId(Ljava/lang/String;)V
    .locals 8
    .param p1, "referrerId"    # Ljava/lang/String;

    .prologue
    .line 2159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2161
    const/4 v6, 0x0

    .line 2164
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "play_attribution"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2166
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2168
    const-string/jumbo v0, "play_attribution"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2171
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2172
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "play_attribution"

    invoke-virtual {v7, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[REFERRAL] _setReferrerId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->i(Ljava/lang/String;)I

    .line 2175
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_reuploadFirstSession(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2181
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_0
    if-eqz v6, :cond_1

    .line 2183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2187
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-void

    .line 2181
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private _tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 12
    .param p1, "event"    # Ljava/lang/String;
    .param p3, "clv"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1140
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Lcom/localytics/android/AnalyticsHeader;

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getInstallationId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHeader;-><init>(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    .local v0, "header":Lcom/localytics/android/AnalyticsHeader;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1143
    .local v10, "eventUUID":Ljava/lang/String;
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 1144
    .local v8, "currentTime":J
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v6

    .line 1145
    .local v6, "appContext":Landroid/content/Context;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1146
    .local v11, "eventValues":Landroid/content/ContentValues;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1147
    .local v7, "eventBlob":Lorg/json/JSONObject;
    const-string/jumbo v1, "dt"

    const-string/jumbo v2, "e"

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1148
    const-string/jumbo v1, "ct"

    long-to-double v2, v8

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v7, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1149
    const-string/jumbo v1, "u"

    invoke-virtual {v7, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1150
    const-string/jumbo v2, "su"

    iget-boolean v1, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getOpenSessionUUID()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1151
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1153
    const-string/jumbo v1, "n"

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1163
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1165
    const-string/jumbo v1, "v"

    invoke-virtual {v7, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1168
    :cond_0
    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getIdentifiersObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getCustomerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getUserType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v1, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->_addLocationIDsAndCustomDimensions(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    if-eqz p2, :cond_1

    .line 1172
    const-string/jumbo v1, "attrs"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1175
    :cond_1
    const-string/jumbo v1, "blob"

    const-string/jumbo v2, "%s\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getHeaderBlob()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string/jumbo v1, "upload_format"

    sget-object v2, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v2}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1178
    invoke-virtual {v11}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1180
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v2, "events"

    invoke-virtual {v1, v2, v11}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1182
    :cond_2
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v1}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/AnalyticsListener;

    if-nez p3, :cond_5

    const-wide/16 v2, 0x0

    :goto_2
    invoke-interface {v1, p1, p2, v2, v3}, Lcom/localytics/android/AnalyticsListener;->localyticsDidTagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 1187
    .end local v0    # "header":Lcom/localytics/android/AnalyticsHeader;
    .end local v6    # "appContext":Landroid/content/Context;
    .end local v7    # "eventBlob":Lorg/json/JSONObject;
    .end local v8    # "currentTime":J
    .end local v10    # "eventUUID":Ljava/lang/String;
    .end local v11    # "eventValues":Landroid/content/ContentValues;
    :goto_3
    return-void

    .line 1150
    .restart local v0    # "header":Lcom/localytics/android/AnalyticsHeader;
    .restart local v6    # "appContext":Landroid/content/Context;
    .restart local v7    # "eventBlob":Lorg/json/JSONObject;
    .restart local v8    # "currentTime":J
    .restart local v10    # "eventUUID":Ljava/lang/String;
    .restart local v11    # "eventValues":Landroid/content/ContentValues;
    :cond_3
    const-string/jumbo v1, ""

    goto/16 :goto_0

    .line 1157
    :cond_4
    const-string/jumbo v1, "n"

    invoke-virtual {v7, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 1187
    .end local v0    # "header":Lcom/localytics/android/AnalyticsHeader;
    .end local v6    # "appContext":Landroid/content/Context;
    .end local v7    # "eventBlob":Lorg/json/JSONObject;
    .end local v8    # "currentTime":J
    .end local v10    # "eventUUID":Ljava/lang/String;
    .end local v11    # "eventValues":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    goto :goto_3

    .line 1182
    .restart local v0    # "header":Lcom/localytics/android/AnalyticsHeader;
    .restart local v6    # "appContext":Landroid/content/Context;
    .restart local v7    # "eventBlob":Lorg/json/JSONObject;
    .restart local v8    # "currentTime":J
    .restart local v10    # "eventUUID":Ljava/lang/String;
    .restart local v11    # "eventValues":Landroid/content/ContentValues;
    :cond_5
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_2
.end method

.method private _tagOpenEvent()V
    .locals 20

    .prologue
    .line 1193
    :try_start_0
    new-instance v2, Lcom/localytics/android/AnalyticsHeader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getInstallationId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/localytics/android/AnalyticsHeader;-><init>(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    .local v2, "header":Lcom/localytics/android/AnalyticsHeader;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1197
    .local v17, "infoValues":Landroid/content/ContentValues;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1198
    .local v14, "eventUUID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 1199
    .local v8, "currentTime":J
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1200
    .local v11, "eventBlob":Lorg/json/JSONObject;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1201
    .local v15, "eventValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "dt"

    const-string/jumbo v4, "s"

    invoke-virtual {v11, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1202
    const-string/jumbo v3, "ct"

    long-to-double v4, v8

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v11, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1203
    const-string/jumbo v3, "u"

    invoke-virtual {v11, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1205
    const-wide/16 v12, 0x0

    .line 1206
    .local v12, "elapsedTime":J
    invoke-virtual {v2}, Lcom/localytics/android/AnalyticsHeader;->getLastSessionStartTime()J

    move-result-wide v18

    .line 1207
    .local v18, "lastSessionStartTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v18, v4

    if-lez v3, :cond_0

    .line 1209
    sub-long v12, v8, v18

    .line 1212
    :cond_0
    const-string/jumbo v3, "sl"

    long-to-double v4, v12

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v11, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1217
    const-string/jumbo v3, "nth"

    invoke-virtual {v2}, Lcom/localytics/android/AnalyticsHeader;->getSessionSequenceNumber()I

    move-result v4

    invoke-virtual {v11, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1219
    invoke-virtual {v2}, Lcom/localytics/android/AnalyticsHeader;->getIdentifiersObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2}, Lcom/localytics/android/AnalyticsHeader;->getCustomerID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/localytics/android/AnalyticsHeader;->getUserType()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3, v4, v5}, Lcom/localytics/android/AnalyticsHandler;->_addLocationIDsAndCustomDimensions(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const-string/jumbo v3, "%s\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/localytics/android/AnalyticsHeader;->getHeaderBlob()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1222
    .local v16, "headerEventBlob":Ljava/lang/String;
    const-string/jumbo v3, "blob"

    move-object/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const-string/jumbo v3, "upload_format"

    sget-object v4, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v4}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1225
    const-string/jumbo v3, "last_session_open_time"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1226
    const-string/jumbo v3, "next_session_number"

    invoke-virtual {v2}, Lcom/localytics/android/AnalyticsHeader;->getSessionSequenceNumber()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1227
    const-string/jumbo v3, "current_session_uuid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    if-eqz v3, :cond_1

    .line 1230
    const-string/jumbo v3, "first_open_event_blob"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "info"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1233
    invoke-virtual {v15}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "events"

    invoke-virtual {v3, v4, v15}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    .end local v2    # "header":Lcom/localytics/android/AnalyticsHeader;
    .end local v8    # "currentTime":J
    .end local v11    # "eventBlob":Lorg/json/JSONObject;
    .end local v12    # "elapsedTime":J
    .end local v14    # "eventUUID":Ljava/lang/String;
    .end local v15    # "eventValues":Landroid/content/ContentValues;
    .end local v16    # "headerEventBlob":Ljava/lang/String;
    .end local v17    # "infoValues":Landroid/content/ContentValues;
    .end local v18    # "lastSessionStartTime":J
    :cond_2
    :goto_0
    return-void

    .line 1238
    :catch_0
    move-exception v10

    .line 1240
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Failed to save session open event"

    invoke-static {v3, v10}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _tagOptEvent(Z)V
    .locals 12
    .param p1, "isOptingOut"    # Z

    .prologue
    .line 1274
    :try_start_0
    new-instance v0, Lcom/localytics/android/AnalyticsHeader;

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getInstallationId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHeader;-><init>(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    .local v0, "header":Lcom/localytics/android/AnalyticsHeader;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1277
    .local v10, "eventUUID":Ljava/lang/String;
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v6

    .line 1278
    .local v6, "currentTime":J
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 1279
    .local v9, "eventBlob":Lorg/json/JSONObject;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1280
    .local v11, "eventValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "dt"

    const-string/jumbo v2, "o"

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1281
    const-string/jumbo v1, "u"

    invoke-virtual {v9, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1282
    const-string/jumbo v1, "out"

    invoke-virtual {v9, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1283
    const-string/jumbo v1, "ct"

    long-to-double v2, v6

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v9, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1285
    const-string/jumbo v1, "blob"

    const-string/jumbo v2, "%s\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getHeaderBlob()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const-string/jumbo v1, "upload_format"

    sget-object v2, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v2}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1288
    invoke-virtual {v11}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1290
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v2, "events"

    invoke-virtual {v1, v2, v11}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    .end local v0    # "header":Lcom/localytics/android/AnalyticsHeader;
    .end local v6    # "currentTime":J
    .end local v9    # "eventBlob":Lorg/json/JSONObject;
    .end local v10    # "eventUUID":Ljava/lang/String;
    .end local v11    # "eventValues":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 1293
    :catch_0
    move-exception v8

    .line 1295
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Failed to save opt in/out event"

    invoke-static {v1, v8}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _tagPushRegisteredEvent()V
    .locals 2

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const-string/jumbo v1, "Localytics Push Registered"

    invoke-interface {v0, v1}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;)V

    .line 2003
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->upload()V

    .line 2004
    return-void
.end method

.method private _tagQueuedCloseEvent(Z)V
    .locals 11
    .param p1, "isRecoveredClose"    # Z

    .prologue
    .line 1248
    :try_start_0
    new-instance v0, Lcom/localytics/android/AnalyticsHeader;

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getInstallationId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHeader;-><init>(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    .local v0, "header":Lcom/localytics/android/AnalyticsHeader;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1251
    .local v10, "infoValues":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 1253
    .local v8, "currentTime":J
    if-nez p1, :cond_0

    .line 1255
    const-string/jumbo v1, "last_session_close_time"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1258
    :cond_0
    invoke-direct {p0, v0, p1, v8, v9}, Lcom/localytics/android/AnalyticsHandler;->_createCloseBlob(Lcom/localytics/android/AnalyticsHeader;ZJ)Ljava/lang/String;

    move-result-object v6

    .line 1259
    .local v6, "closeBlob":Ljava/lang/String;
    const-string/jumbo v1, "queued_close_session_blob"

    invoke-virtual {v10, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string/jumbo v1, "queued_close_session_blob_upload_format"

    sget-object v2, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v2}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1262
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v2, "info"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v10, v3, v4}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    .end local v0    # "header":Lcom/localytics/android/AnalyticsHeader;
    .end local v6    # "closeBlob":Ljava/lang/String;
    .end local v8    # "currentTime":J
    .end local v10    # "infoValues":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 1264
    :catch_0
    move-exception v7

    .line 1266
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Failed to save queued session close event"

    invoke-static {v1, v7}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _tagScreen(Ljava/lang/String;)V
    .locals 3
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 1457
    iget-boolean v1, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    if-eqz v1, :cond_1

    .line 1459
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLastScreenTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1461
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler;->mLastScreenTag:Ljava/lang/String;

    .line 1462
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1463
    .local v0, "screenValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v2, "screens"

    invoke-virtual {v1, v2, v0}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1471
    .end local v0    # "screenValues":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    const-string/jumbo v1, "Screen not tagged because a session is not open"

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/localytics/android/AnalyticsHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/AnalyticsHandler;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_areNotificationsDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/AnalyticsHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Ljava/lang/Long;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->_tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/localytics/android/AnalyticsHandler;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/AnalyticsHandler;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_getCustomDimension(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/localytics/android/AnalyticsHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/AnalyticsHandler;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mInstallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/localytics/android/AnalyticsHandler;->PROJECTION_SET_IDENTIFIER:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_IDENTIFIER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/AnalyticsHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_tagScreen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/localytics/android/AnalyticsHandler;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/AnalyticsHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/AnalyticsHandler;->_setCustomDimension(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/AnalyticsHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_setPushID(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/localytics/android/AnalyticsHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/AnalyticsHandler;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_setNotificationsDisabled(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/localytics/android/AnalyticsHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/AnalyticsHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_setOptedOut(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/AnalyticsHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_registerPush(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/AnalyticsHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_setReferrerId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/localytics/android/AnalyticsHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/AnalyticsHandler;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_retrieveTokenFromInstanceId()V

    return-void
.end method

.method private getCustomDimensionAttributeKey(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1003
    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-ge p1, v0, :cond_0

    .line 1005
    const-string/jumbo v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "custom_dimension_"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    :goto_0
    return-object v0

    .line 1009
    :cond_0
    const-string/jumbo v0, "Custom dimension index cannot exceed 19"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 1010
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sanitizeMethodString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 548
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "normalizedMethodString":Ljava/lang/String;
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mSanitizingDictionary:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 550
    .local v1, "sanitizedMethodString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 553
    .end local v1    # "sanitizedMethodString":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "sanitizedMethodString":Ljava/lang/String;
    :cond_0
    move-object v1, p1

    goto :goto_0
.end method


# virtual methods
.method protected _close()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1622
    iget-boolean v1, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    if-nez v1, :cond_0

    .line 1624
    const-string/jumbo v1, "Session was not open, so close is not possible."

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1637
    :goto_0
    return-void

    .line 1628
    :cond_0
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v1}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/AnalyticsListener;

    invoke-interface {v1}, Lcom/localytics/android/AnalyticsListener;->localyticsSessionWillClose()V

    .line 1630
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1631
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "last_session_close_time"

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1632
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v2, "info"

    invoke-virtual {v1, v2, v0, v5, v5}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1634
    invoke-direct {p0, v4}, Lcom/localytics/android/AnalyticsHandler;->_tagQueuedCloseEvent(Z)V

    .line 1636
    iput-boolean v4, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    goto :goto_0
.end method

.method protected _deleteUploadedData(I)V
    .locals 4
    .param p1, "maxRowToDelete"    # I

    .prologue
    .line 796
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "events"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_id <= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 797
    return-void
.end method

.method protected _getCustomerId()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1028
    const/4 v6, 0x0

    .line 1029
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v7, p0, Lcom/localytics/android/AnalyticsHandler;->mInstallId:Ljava/lang/String;

    .line 1032
    .local v7, "customerId":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "customer_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1034
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    const-string/jumbo v0, "customer_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1041
    :cond_0
    if-eqz v6, :cond_1

    .line 1043
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1047
    :cond_1
    return-object v7

    .line 1041
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1043
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected _getDataToUpload()Ljava/util/TreeMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 841
    .local v9, "eventsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 844
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "events"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 846
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 848
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 849
    .local v8, "eventID":I
    const-string/jumbo v0, "blob"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 850
    .local v7, "eventBlob":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 855
    .end local v7    # "eventBlob":Ljava/lang/String;
    .end local v8    # "eventID":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 857
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 861
    :cond_0
    :goto_1
    return-object v9

    .line 855
    :cond_1
    if-eqz v6, :cond_0

    .line 857
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method _getIdentifiers()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    const/4 v6, 0x0

    .line 214
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v7, "customerIDs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "identifiers"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 221
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    const-string/jumbo v0, "key"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 225
    .local v9, "value":Ljava/lang/String;
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 230
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_0
    :goto_1
    return-object v7

    .line 230
    :cond_1
    if-eqz v6, :cond_0

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected _getMaxRowToUpload()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 815
    const/4 v7, 0x0

    .line 816
    .local v7, "numberOfAttributes":I
    const/4 v6, 0x0

    .line 819
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "events"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 820
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 827
    :cond_0
    if-eqz v6, :cond_1

    .line 829
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    .line 833
    :goto_0
    return v0

    .line 827
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 829
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 833
    goto :goto_0
.end method

.method _getPushSenderId()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1100
    const/4 v6, 0x0

    .line 1103
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "sender_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1105
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    const-string/jumbo v0, "sender_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1112
    if-eqz v6, :cond_0

    .line 1114
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1118
    :cond_0
    :goto_0
    return-object v0

    .line 1112
    :cond_1
    if-eqz v6, :cond_2

    .line 1114
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v7

    .line 1118
    goto :goto_0

    .line 1112
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1114
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method _getScreens()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1325
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1326
    .local v7, "screens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "screens"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1328
    .local v6, "query":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    const-string/jumbo v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1332
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1334
    return-object v7
.end method

.method protected _getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;
    .locals 2
    .param p2, "customerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/localytics/android/BaseUploadThread;"
        }
    .end annotation

    .prologue
    .line 868
    .local p1, "data":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    new-instance v0, Lcom/localytics/android/AnalyticsUploadHandler;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/localytics/android/AnalyticsUploadHandler;-><init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    return-object v0
.end method

.method protected _init()V
    .locals 3

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    if-nez v0, :cond_0

    .line 2075
    new-instance v0, Lcom/localytics/android/AnalyticsProvider;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->siloName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/AnalyticsProvider;-><init>(Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    .line 2078
    :cond_0
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_initApiKey()V

    .line 2079
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_initCachedIdentifiers()V

    .line 2080
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_initCachedCustomDimensions()V

    .line 2081
    return-void
.end method

.method protected _initApiKey()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2085
    const/4 v7, 0x0

    .line 2088
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 2089
    .local v6, "appVersion":Ljava/lang/String;
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "app_version"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "uuid"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "next_session_number"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "customer_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2091
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2094
    const-string/jumbo v0, "Loading details for API key %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 2096
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2097
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "app_version"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2099
    const-string/jumbo v0, "app_version"

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mAppWasUpgraded:Z

    .line 2103
    :cond_0
    invoke-virtual {v9}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2105
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2108
    :cond_1
    const-string/jumbo v0, "next_session_number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_3

    move v0, v10

    :goto_0
    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    .line 2109
    const-string/jumbo v0, "uuid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mInstallId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2141
    :goto_1
    if-eqz v7, :cond_2

    .line 2143
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2147
    :cond_2
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_retrieveLastScreenTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLastScreenTag:Ljava/lang/String;

    .line 2149
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 2150
    return-void

    :cond_3
    move v0, v11

    .line 2108
    goto :goto_0

    .line 2114
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_1
    const-string/jumbo v0, "Performing first-time initialization for new API key %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 2116
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2117
    .local v8, "installationID":Ljava/lang/String;
    iput-object v8, p0, Lcom/localytics/android/AnalyticsHandler;->mInstallId:Ljava/lang/String;

    .line 2118
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2119
    .restart local v9    # "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "api_key"

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    const-string/jumbo v0, "uuid"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    const-string/jumbo v0, "created_time"

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2122
    const-string/jumbo v0, "opt_out"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2123
    const-string/jumbo v0, "push_disabled"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2124
    const-string/jumbo v0, "customer_id"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    const-string/jumbo v0, "user_type"

    const-string/jumbo v1, "anonymous"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    const-string/jumbo v0, "fb_attribution"

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/DatapointHelper;->getFBAttribution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    const-string/jumbo v0, "first_android_id"

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/DatapointHelper;->getAndroidIdOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    const-string/jumbo v0, "package_name"

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    const-string/jumbo v0, "app_version"

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    const-string/jumbo v0, "next_session_number"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2131
    const-string/jumbo v0, "next_header_number"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2132
    const-string/jumbo v0, "last_session_open_time"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2133
    const-string/jumbo v0, "last_session_close_time"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2134
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    invoke-virtual {v0, v1, v9}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2141
    .end local v6    # "appVersion":Ljava/lang/String;
    .end local v8    # "installationID":Ljava/lang/String;
    .end local v9    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 2143
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method protected _initCachedCustomDimensions()V
    .locals 4

    .prologue
    .line 1847
    monitor-enter p0

    .line 1849
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1851
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    .line 1853
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 1855
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_getCustomDimension(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1857
    :cond_1
    monitor-exit p0

    return-void

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected _initCachedIdentifiers()V
    .locals 2

    .prologue
    .line 1835
    monitor-enter p0

    .line 1837
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1839
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_getIdentifiers()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1842
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected _isOptedOut()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1886
    const/4 v6, 0x0

    .line 1889
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "opt_out"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1891
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1893
    const-string/jumbo v0, "opt_out"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    .line 1898
    :goto_0
    if-eqz v6, :cond_0

    .line 1900
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1905
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v8

    .line 1893
    goto :goto_0

    .line 1898
    :cond_2
    if-eqz v6, :cond_3

    .line 1900
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 1905
    goto :goto_1

    .line 1898
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1900
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1901
    :cond_4
    throw v0
.end method

.method protected _onUploadCompleted(ZLjava/lang/String;)V
    .locals 1
    .param p1, "successful"    # Z
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 810
    return-void
.end method

.method protected _open()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1507
    iget-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    if-eqz v0, :cond_1

    .line 1509
    const-string/jumbo v0, "Session was already open"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1550
    :cond_0
    :goto_0
    return-void

    .line 1513
    :cond_1
    const/4 v6, 0x0

    .line 1516
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "last_session_close_time"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1517
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1519
    const-string/jumbo v0, "last_session_close_time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1520
    .local v8, "sessionCloseTime":J
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    sget-wide v2, Lcom/localytics/android/Constants;->SESSION_EXPIRATION:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    move v7, v10

    .line 1522
    .local v7, "newSession":Z
    :goto_1
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/AnalyticsListener;

    iget-boolean v2, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    iget-boolean v3, p0, Lcom/localytics/android/AnalyticsHandler;->mAppWasUpgraded:Z

    if-nez v7, :cond_5

    move v1, v10

    :goto_2
    invoke-interface {v0, v2, v3, v1}, Lcom/localytics/android/AnalyticsListener;->localyticsSessionWillOpen(ZZZ)V

    .line 1524
    if-eqz v7, :cond_6

    const-string/jumbo v0, "Opening new session"

    :goto_3
    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 1526
    invoke-direct {p0, v7}, Lcom/localytics/android/AnalyticsHandler;->_dequeQueuedCloseSessionTag(Z)V

    .line 1527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    .line 1529
    if-eqz v7, :cond_2

    .line 1531
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_tagOpenEvent()V

    .line 1536
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/BaseProvider;->deleteOldFiles(Landroid/content/Context;)V

    .line 1539
    :cond_2
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/AnalyticsListener;

    iget-boolean v2, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    iget-boolean v3, p0, Lcom/localytics/android/AnalyticsHandler;->mAppWasUpgraded:Z

    if-nez v7, :cond_7

    move v1, v10

    :goto_4
    invoke-interface {v0, v2, v3, v1}, Lcom/localytics/android/AnalyticsListener;->localyticsSessionDidOpen(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    .end local v7    # "newSession":Z
    .end local v8    # "sessionCloseTime":J
    :cond_3
    if-eqz v6, :cond_0

    .line 1546
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v8    # "sessionCloseTime":J
    :cond_4
    move v7, v11

    .line 1520
    goto :goto_1

    .restart local v7    # "newSession":Z
    :cond_5
    move v1, v11

    .line 1522
    goto :goto_2

    .line 1524
    :cond_6
    :try_start_1
    const-string/jumbo v0, "Opening old closed session and reconnecting"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_7
    move v1, v11

    .line 1539
    goto :goto_4

    .line 1544
    .end local v7    # "newSession":Z
    .end local v8    # "sessionCloseTime":J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    .line 1546
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1547
    :cond_8
    throw v0
.end method

.method _replaceAttributionInFirstSession(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "referrerId"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 2202
    const/4 v8, 0x0

    .line 2205
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "first_open_event_blob"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2207
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2209
    const-string/jumbo v0, "first_open_event_blob"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2210
    .local v10, "firstEventBlob":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2215
    const-string/jumbo v0, "[\n]"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 2218
    .local v7, "blobs":[Ljava/lang/String;
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2219
    .local v12, "headerBlob":Lorg/json/JSONObject;
    const-string/jumbo v0, "attrs"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    .line 2221
    .local v11, "headerAttributes":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/DatapointHelper;->getAdvertisingInfo(Landroid/content/Context;)Lcom/localytics/android/DatapointHelper$AdvertisingInfo;

    move-result-object v6

    .line 2222
    .local v6, "advertisingInfo":Lcom/localytics/android/DatapointHelper$AdvertisingInfo;
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v11, v6, v0}, Lcom/localytics/android/AnalyticsHandler;->_updateHeaderForTestModeAttribution(Ljava/lang/String;Lorg/json/JSONObject;Lcom/localytics/android/DatapointHelper$AdvertisingInfo;Z)V

    .line 2224
    const-string/jumbo v0, "aurl"

    invoke-virtual {v11, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2225
    const-string/jumbo v0, "%s\n%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v3, v7, v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2236
    if-eqz v8, :cond_0

    .line 2238
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2242
    .end local v6    # "advertisingInfo":Lcom/localytics/android/DatapointHelper$AdvertisingInfo;
    .end local v7    # "blobs":[Ljava/lang/String;
    .end local v10    # "firstEventBlob":Ljava/lang/String;
    .end local v11    # "headerAttributes":Lorg/json/JSONObject;
    .end local v12    # "headerBlob":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v0

    .line 2227
    .restart local v7    # "blobs":[Ljava/lang/String;
    .restart local v10    # "firstEventBlob":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2229
    .local v9, "e":Lorg/json/JSONException;
    :try_start_2
    const-string/jumbo v0, "JSONException"

    invoke-static {v0, v9}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2236
    .end local v7    # "blobs":[Ljava/lang/String;
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v10    # "firstEventBlob":Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    .line 2238
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v13

    .line 2242
    goto :goto_0

    .line 2236
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 2238
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method protected _setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1680
    if-eqz p2, :cond_0

    .line 1682
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1685
    :cond_0
    const-string/jumbo v2, "customer_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1687
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_getCustomerId()Ljava/lang/String;

    move-result-object v0

    .line 1690
    .local v0, "currentCustomerId":Ljava/lang/String;
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1742
    .end local v0    # "currentCustomerId":Ljava/lang/String;
    :goto_0
    return-void

    .line 1697
    .restart local v0    # "currentCustomerId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "first_name"

    invoke-virtual {p0, v2, v4}, Lcom/localytics/android/AnalyticsHandler;->_setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const-string/jumbo v2, "last_name"

    invoke-virtual {p0, v2, v4}, Lcom/localytics/android/AnalyticsHandler;->_setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    const-string/jumbo v2, "full_name"

    invoke-virtual {p0, v2, v4}, Lcom/localytics/android/AnalyticsHandler;->_setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const-string/jumbo v2, "email"

    invoke-virtual {p0, v2, v4}, Lcom/localytics/android/AnalyticsHandler;->_setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1703
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1705
    const-string/jumbo v2, "customer_id"

    iget-object v3, p0, Lcom/localytics/android/AnalyticsHandler;->mInstallId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    const-string/jumbo v2, "user_type"

    const-string/jumbo v3, "anonymous"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    :goto_1
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v3, "info"

    invoke-virtual {v2, v3, v1, v4, v4}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1716
    .end local v0    # "currentCustomerId":Ljava/lang/String;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_2
    monitor-enter p0

    .line 1718
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1720
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v3, "identifiers"

    const-string/jumbo v4, "%s = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "key"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 1722
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    :cond_3
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1710
    .restart local v0    # "currentCustomerId":Ljava/lang/String;
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_4
    const-string/jumbo v2, "customer_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const-string/jumbo v2, "user_type"

    const-string/jumbo v3, "known"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1727
    .end local v0    # "currentCustomerId":Ljava/lang/String;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_5
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1728
    .restart local v1    # "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "key"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v3, "identifiers"

    sget-object v4, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_IDENTIFIER:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 1732
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v3, "identifiers"

    invoke-virtual {v2, v3, v1}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 1734
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1739
    :cond_6
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method _updateHeaderForTestModeAttribution(Ljava/lang/String;Lorg/json/JSONObject;Lcom/localytics/android/DatapointHelper$AdvertisingInfo;Z)V
    .locals 12
    .param p1, "playAttribution"    # Ljava/lang/String;
    .param p2, "headerAttributes"    # Lorg/json/JSONObject;
    .param p3, "advertisingInfo"    # Lcom/localytics/android/DatapointHelper$AdvertisingInfo;
    .param p4, "ignoreFirstSession"    # Z

    .prologue
    .line 1340
    iget-boolean v9, p0, Lcom/localytics/android/AnalyticsHandler;->mSentReferrerTestMode:Z

    if-nez v9, :cond_6

    .line 1348
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1350
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "[&]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1351
    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_3

    aget-object v9, v0, v4

    .line 1353
    const-string/jumbo v10, "[=]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1354
    .local v6, "keyValue":[Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 1356
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .local v5, "key":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 1357
    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v9, "localytics_test_mode"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/localytics/android/AnalyticsHandler;->mReferrerTestModeEnabled:Z

    .line 1351
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1357
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1361
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keyValue":[Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_3
    if-nez p4, :cond_4

    iget-boolean v9, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    if-eqz v9, :cond_6

    :cond_4
    iget-boolean v9, p0, Lcom/localytics/android/AnalyticsHandler;->mReferrerTestModeEnabled:Z

    if-eqz v9, :cond_6

    .line 1365
    :try_start_0
    const-string/jumbo v9, "[REFERRAL] using fake id for attribution test mode"

    invoke-static {v9}, Lcom/localytics/android/Localytics$Log;->i(Ljava/lang/String;)I

    .line 1366
    new-instance v9, Ljava/security/SecureRandom;

    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v9}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 1367
    .local v3, "fakeDeviceID":Ljava/lang/String;
    const-string/jumbo v9, "aid"

    invoke-virtual {p2, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1368
    const-string/jumbo v9, "du"

    invoke-static {v3}, Lcom/localytics/android/DatapointHelper;->getSha256_buggy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1369
    const-string/jumbo v9, "caid"

    invoke-virtual {p2, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1370
    if-eqz p3, :cond_5

    .line 1372
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1373
    .local v2, "fakeAdvertisingId":Ljava/lang/String;
    const-string/jumbo v9, "gadid"

    invoke-virtual {p2, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1374
    const-string/jumbo v9, "gcadid"

    invoke-virtual {p2, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1376
    .end local v2    # "fakeAdvertisingId":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/localytics/android/AnalyticsHandler;->mSentReferrerTestMode:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    .end local v3    # "fakeDeviceID":Ljava/lang/String;
    :cond_6
    :goto_2
    return-void

    .line 1378
    :catch_0
    move-exception v1

    .line 1380
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v9, "Exception adding values to object"

    invoke-static {v9, v1}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method addListener(Lcom/localytics/android/AnalyticsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/localytics/android/AnalyticsListener;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/ListenersSet;->add(Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method areNotificationsDisabled()Z
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$1;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getBool(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method closeSession()V
    .locals 1

    .prologue
    .line 1804
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1805
    return-void
.end method

.method getCachedCustomDimensions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1822
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1823
    .local v0, "customDimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    monitor-enter p0

    .line 1825
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1827
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1829
    :cond_0
    monitor-exit p0

    .line 1830
    return-object v0

    .line 1829
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCachedIdentifiers()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1809
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1810
    .local v0, "identifiers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 1812
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1814
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1816
    :cond_0
    monitor-exit p0

    .line 1817
    return-object v0

    .line 1816
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCustomDimension(I)Ljava/lang/String;
    .locals 1
    .param p1, "dimension"    # I

    .prologue
    .line 954
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$14;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/AnalyticsHandler$14;-><init>(Lcom/localytics/android/AnalyticsHandler;I)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getString(Ljava/util/concurrent/Callable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCustomerIdFuture()Ljava/util/concurrent/FutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1016
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$15;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$15;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getFuture(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method getIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1772
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$18;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/AnalyticsHandler$18;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getString(Ljava/util/concurrent/Callable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInstallationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1053
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$16;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$16;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getString(Ljava/util/concurrent/Callable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPushRegistrationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1065
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$17;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$17;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getString(Ljava/util/concurrent/Callable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessageExtended(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 560
    iget v13, p1, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 787
    invoke-super {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessageExtended(Landroid/os/Message;)V

    .line 791
    :goto_0
    return-void

    .line 564
    :pswitch_0
    const-string/jumbo v13, "Analytics handler received MESSAGE_OPEN"

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 566
    new-instance v13, Lcom/localytics/android/AnalyticsHandler$2;

    invoke-direct {v13, p0}, Lcom/localytics/android/AnalyticsHandler$2;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v13}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 584
    :pswitch_1
    const-string/jumbo v13, "Analytics handler received MESSAGE_CLOSE"

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 586
    new-instance v13, Lcom/localytics/android/AnalyticsHandler$3;

    invoke-direct {v13, p0}, Lcom/localytics/android/AnalyticsHandler$3;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v13}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 604
    :pswitch_2
    const-string/jumbo v13, "Analytics handler received MESSAGE_TAG_EVENT"

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 606
    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/Object;

    move-object v8, v13

    check-cast v8, [Ljava/lang/Object;

    .line 607
    .local v8, "params":[Ljava/lang/Object;
    const/4 v13, 0x0

    aget-object v4, v8, v13

    check-cast v4, Ljava/lang/String;

    .line 609
    .local v4, "event":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v0, v8, v13

    check-cast v0, Ljava/util/Map;

    .line 610
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, 0x2

    aget-object v1, v8, v13

    check-cast v1, Ljava/lang/Long;

    .line 612
    .local v1, "clv":Ljava/lang/Long;
    new-instance v13, Lcom/localytics/android/AnalyticsHandler$4;

    invoke-direct {v13, p0, v4, v0, v1}, Lcom/localytics/android/AnalyticsHandler$4;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    invoke-virtual {p0, v13}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 630
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "clv":Ljava/lang/Long;
    .end local v4    # "event":Ljava/lang/String;
    .end local v8    # "params":[Ljava/lang/Object;
    :pswitch_3
    const-string/jumbo v13, "Analytics handler received MESSAGE_TAG_SCREEN"

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 632
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 634
    .local v11, "screen":Ljava/lang/String;
    new-instance v13, Lcom/localytics/android/AnalyticsHandler$5;

    invoke-direct {v13, p0, v11}, Lcom/localytics/android/AnalyticsHandler$5;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 652
    .end local v11    # "screen":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v13, "Analytics handler received MESSAGE_SET_CUSTOM_DIMENSION"

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 654
    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/Object;

    move-object v8, v13

    check-cast v8, [Ljava/lang/Object;

    .line 655
    .restart local v8    # "params":[Ljava/lang/Object;
    const/4 v13, 0x0

    aget-object v13, v8, v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 656
    .local v2, "dimension":I
    const/4 v13, 0x1

    aget-object v12, v8, v13

    check-cast v12, Ljava/lang/String;

    .line 658
    .local v12, "value":Ljava/lang/String;
    new-instance v13, Lcom/localytics/android/AnalyticsHandler$6;

    invoke-direct {v13, p0, v2, v12}, Lcom/localytics/android/AnalyticsHandler$6;-><init>(Lcom/localytics/android/AnalyticsHandler;ILjava/lang/String;)V

    invoke-virtual {p0, v13}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 670
    .end local v2    # "dimension":I
    .end local v8    # "params":[Ljava/lang/Object;
    .end local v12    # "value":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v13, "Analytics handler received MESSAGE_SET_IDENTIFIER"

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 672
    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/Object;

    move-object v8, v13

    check-cast v8, [Ljava/lang/Object;

    .line 673
    .restart local v8    # "params":[Ljava/lang/Object;
    const/4 v13, 0x0

    aget-object v6, v8, v13

    check-cast v6, Ljava/lang/String;

    .line 674
    .local v6, "key":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v12, v8, v13

    check-cast v12, Ljava/lang/String;

    .line 676
    .restart local v12    # "value":Ljava/lang/String;
    new-instance v13, Lcom/localytics/android/AnalyticsHandler$7;

    invoke-direct {v13, p0, v6, v12}, Lcom/localytics/android/AnalyticsHandler$7;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 688
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "params":[Ljava/lang/Object;
    .end local v12    # "value":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v13, "Analytics handler received MESSAGE_SET_LOCATION"

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 690
    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/location/Location;

    sput-object v13, Lcom/localytics/android/AnalyticsHandler;->sLastLocation:Landroid/location/Location;

    goto/16 :goto_0

    .line 695
    :pswitch_7
    const-string/jumbo v13, "Analytics handler received MESSAGE_SET_PUSH_REGID"

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 697
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 699
    .local v9, "pushRegId":Ljava/lang/String;
    new-instance v13, Lcom/localytics/android/AnalyticsHandler$8;

    invoke-direct {v13, p0, v9}, Lcom/localytics/android/AnalyticsHandler$8;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 711
    .end local v9    # "pushRegId":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v13, "Analytics handler received MESSAGE_DISABLE_NOTIFICATIONS"

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 713
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 715
    .local v3, "disabled":I
    new-instance v13, Lcom/localytics/android/AnalyticsHandler$9;

    invoke-direct {v13, p0, v3}, Lcom/localytics/android/AnalyticsHandler$9;-><init>(Lcom/localytics/android/AnalyticsHandler;I)V

    invoke-virtual {p0, v13}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 727
    .end local v3    # "disabled":I
    :pswitch_9
    const-string/jumbo v13, "Analytics handler received MESSAGE_OPT_OUT"

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 729
    iget v13, p1, Landroid/os/Message;->arg1:I

    if-eqz v13, :cond_0

    const/4 v5, 0x1

    .line 731
    .local v5, "isOptingOut":Z
    :goto_1
    new-instance v13, Lcom/localytics/android/AnalyticsHandler$10;

    invoke-direct {v13, p0, v5}, Lcom/localytics/android/AnalyticsHandler$10;-><init>(Lcom/localytics/android/AnalyticsHandler;Z)V

    invoke-virtual {p0, v13}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 729
    .end local v5    # "isOptingOut":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 743
    :pswitch_a
    const-string/jumbo v13, "Analytics handler received MESSAGE_REGISTER_PUSH"

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 745
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 747
    .local v7, "newSenderId":Ljava/lang/String;
    new-instance v13, Lcom/localytics/android/AnalyticsHandler$11;

    invoke-direct {v13, p0, v7}, Lcom/localytics/android/AnalyticsHandler$11;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 759
    .end local v7    # "newSenderId":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v13, "Analytics handler received MESSAGE_SET_REFERRERID"

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 761
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 763
    .local v10, "referrerId":Ljava/lang/String;
    new-instance v13, Lcom/localytics/android/AnalyticsHandler$12;

    invoke-direct {v13, p0, v10}, Lcom/localytics/android/AnalyticsHandler$12;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 774
    .end local v10    # "referrerId":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v13, "Analytics handler received MESSAGE_RETRIEVE_TOKEN_FROM_INSTANCEID"

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 776
    new-instance v13, Lcom/localytics/android/AnalyticsHandler$13;

    invoke-direct {v13, p0}, Lcom/localytics/android/AnalyticsHandler$13;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v13}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method isOptedOut()Z
    .locals 1

    .prologue
    .line 1953
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$19;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$19;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getBool(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method public localyticsDidTriggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .locals 0
    .param p2, "event"    # Lcom/localytics/android/Region$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/Region;",
            ">;",
            "Lcom/localytics/android/Region$Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2254
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/Region;>;"
    return-void
.end method

.method public localyticsDidUpdateLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 2248
    invoke-virtual {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->setLocation(Landroid/location/Location;)V

    .line 2249
    return-void
.end method

.method public localyticsDidUpdateMonitoredGeofences(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2259
    .local p1, "added":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    .local p2, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    return-void
.end method

.method openSession()V
    .locals 1

    .prologue
    .line 1747
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1748
    return-void
.end method

.method registerPush(Ljava/lang/String;J)V
    .locals 2
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 2008
    const/16 v0, 0x6d

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->queueMessageDelayed(Landroid/os/Message;J)Z

    .line 2009
    return-void
.end method

.method retrieveTokenFromInstanceId()V
    .locals 1

    .prologue
    .line 2013
    const/16 v0, 0x71

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 2014
    return-void
.end method

.method setCustomDimension(ILjava/lang/String;)V
    .locals 4
    .param p1, "dimension"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1752
    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-lt p1, v0, :cond_1

    .line 1754
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only valid dimensions are 0 - 19"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1757
    :cond_1
    const/16 v0, 0x6b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1758
    return-void
.end method

.method setDeveloperListener(Lcom/localytics/android/AnalyticsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/localytics/android/AnalyticsListener;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/ListenersSet;->setDevListener(Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1762
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1764
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1767
    :cond_0
    const/16 v0, 0x69

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1768
    return-void
.end method

.method setLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1881
    const/16 v0, 0x6a

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1882
    return-void
.end method

.method setNotificationsDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1965
    const/16 v2, 0x6e

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1966
    return-void

    :cond_0
    move v0, v1

    .line 1965
    goto :goto_0
.end method

.method setOptedOut(Z)V
    .locals 5
    .param p1, "isOptingOut"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1946
    const-string/jumbo v2, "Requested opt-out state is %b"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 1948
    const/16 v2, 0x6c

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1949
    return-void

    :cond_0
    move v0, v1

    .line 1948
    goto :goto_0
.end method

.method setPushRegistrationId(Ljava/lang/String;)V
    .locals 1
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 1095
    const/16 v0, 0x6f

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1096
    return-void
.end method

.method setReferrerId(Ljava/lang/String;)V
    .locals 1
    .param p1, "referrerId"    # Ljava/lang/String;

    .prologue
    .line 2154
    const/16 v0, 0x70

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 2155
    return-void
.end method

.method public tagAddedToCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 4
    .param p1, "itemName"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "itemPrice"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p5, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v0, "attributesCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    .line 321
    invoke-interface {v0, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 324
    :cond_0
    if-eqz p1, :cond_1

    .line 326
    const-string/jumbo v1, "Item Name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_1
    if-eqz p2, :cond_2

    .line 330
    const-string/jumbo v1, "Item ID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_2
    if-eqz p3, :cond_3

    .line 334
    const-string/jumbo v1, "Item Type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_3
    if-eqz p4, :cond_4

    .line 338
    const-string/jumbo v1, "Item Price"

    invoke-virtual {p4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_4
    const-string/jumbo v1, "Localytics Added To Cart"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 342
    return-void
.end method

.method public tagCompletedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 5
    .param p1, "totalPrice"    # Ljava/lang/Long;
    .param p2, "itemCount"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 366
    .local v0, "attributesCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 368
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 370
    :cond_0
    if-eqz p1, :cond_1

    .line 372
    const-string/jumbo v1, "Total Price"

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_1
    if-eqz p2, :cond_2

    .line 376
    const-string/jumbo v1, "Item Count"

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 380
    .local v2, "clv":J
    :goto_0
    sget-object v1, Lcom/localytics/android/Constants;->IGNORE_STANDARD_EVENT_CLV:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 382
    const-wide/16 v2, 0x0

    .line 385
    :cond_3
    const-string/jumbo v1, "Localytics Completed Checkout"

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 386
    return-void

    .line 379
    .end local v2    # "clv":J
    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public tagContentRated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 4
    .param p1, "contentName"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "rating"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p5, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 465
    .local v0, "attributesCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    .line 467
    invoke-interface {v0, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 470
    :cond_0
    if-eqz p1, :cond_1

    .line 472
    const-string/jumbo v1, "Content Name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_1
    if-eqz p2, :cond_2

    .line 476
    const-string/jumbo v1, "Content ID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_2
    if-eqz p3, :cond_3

    .line 480
    const-string/jumbo v1, "Content Type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_3
    if-eqz p4, :cond_4

    .line 484
    const-string/jumbo v1, "Content Rating"

    invoke-virtual {p4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_4
    const-string/jumbo v1, "Localytics Content Rated"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 488
    return-void
.end method

.method public tagContentViewed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "contentName"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 391
    .local v0, "attributesCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 393
    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 396
    :cond_0
    if-eqz p1, :cond_1

    .line 398
    const-string/jumbo v1, "Content Name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_1
    if-eqz p2, :cond_2

    .line 402
    const-string/jumbo v1, "Content ID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_2
    if-eqz p3, :cond_3

    .line 406
    const-string/jumbo v1, "Content Type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_3
    const-string/jumbo v1, "Localytics Content Viewed"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 410
    return-void
.end method

.method tagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 11
    .param p1, "eventName"    # Ljava/lang/String;
    .param p3, "customerValueIncrease"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v10, 0x32

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "event cannot be null or empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 247
    :cond_0
    if-eqz p2, :cond_5

    .line 253
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    const-string/jumbo v4, "attributes is empty.  Did the caller make an error?"

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 258
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v4

    if-le v4, v10, :cond_2

    .line 260
    const-string/jumbo v4, "attributes size is %d, exceeding the maximum size of %d.  Did the caller make an error?"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 263
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 265
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 266
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 268
    .local v3, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 270
    const-string/jumbo v4, "attributes cannot contain null or empty keys"

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 272
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 274
    const-string/jumbo v4, "attributes cannot contain null or empty values"

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 279
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    const/16 v4, 0x67

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v8

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v4, v5}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 280
    return-void
.end method

.method public tagInvited(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
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
    .line 531
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 532
    .local v0, "attributesCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 534
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 537
    :cond_0
    if-eqz p1, :cond_1

    .line 539
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->sanitizeMethodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "sanitizedMethodString":Ljava/lang/String;
    const-string/jumbo v2, "Method Name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .end local v1    # "sanitizedMethodString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "Localytics Invited"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 544
    return-void
.end method

.method public tagLoggedIn(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
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
    .line 509
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 510
    .local v0, "attributesCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 512
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 515
    :cond_0
    if-eqz p1, :cond_1

    .line 517
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->sanitizeMethodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "sanitizedMethodString":Ljava/lang/String;
    const-string/jumbo v2, "Method Name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .end local v1    # "sanitizedMethodString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "Localytics Logged In"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 522
    return-void
.end method

.method public tagLoggedOut(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "Localytics Logged Out"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 527
    return-void
.end method

.method public tagPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 5
    .param p1, "itemName"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "itemPrice"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p5, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 285
    .local v0, "attributesCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    .line 287
    invoke-interface {v0, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 290
    :cond_0
    if-eqz p1, :cond_1

    .line 292
    const-string/jumbo v1, "Item Name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_1
    if-eqz p2, :cond_2

    .line 296
    const-string/jumbo v1, "Item ID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_2
    if-eqz p3, :cond_3

    .line 300
    const-string/jumbo v1, "Item Type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_3
    if-eqz p4, :cond_4

    .line 304
    const-string/jumbo v1, "Item Price"

    invoke-virtual {p4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_4
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 308
    .local v2, "clv":J
    :goto_0
    sget-object v1, Lcom/localytics/android/Constants;->IGNORE_STANDARD_EVENT_CLV:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 310
    const-wide/16 v2, 0x0

    .line 313
    :cond_5
    const-string/jumbo v1, "Localytics Purchased"

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 314
    return-void

    .line 307
    .end local v2    # "clv":J
    :cond_6
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public tagRegistered(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
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
    .line 492
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 493
    .local v0, "attributesCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 495
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 498
    :cond_0
    if-eqz p1, :cond_1

    .line 500
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->sanitizeMethodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "sanitizedMethodString":Ljava/lang/String;
    const-string/jumbo v2, "Method Name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .end local v1    # "sanitizedMethodString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "Localytics Registered"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 505
    return-void
.end method

.method tagScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 1871
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1873
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "event cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1876
    :cond_0
    const/16 v0, 0x68

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1877
    return-void
.end method

.method public tagSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 4
    .param p1, "queryText"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "resultCount"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 415
    .local v0, "attributesCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 417
    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 420
    :cond_0
    if-eqz p1, :cond_1

    .line 422
    const-string/jumbo v1, "Search Query"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_1
    if-eqz p2, :cond_2

    .line 426
    const-string/jumbo v1, "Content Type"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_2
    if-eqz p3, :cond_3

    .line 430
    const-string/jumbo v1, "Search Result Count"

    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_3
    const-string/jumbo v1, "Localytics Searched"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 433
    return-void
.end method

.method public tagShared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "contentName"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p5, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 438
    .local v0, "attributesCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    .line 440
    invoke-interface {v0, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 443
    :cond_0
    if-eqz p1, :cond_1

    .line 445
    const-string/jumbo v1, "Content Name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_1
    if-eqz p2, :cond_2

    .line 449
    const-string/jumbo v1, "Content ID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_2
    if-eqz p3, :cond_3

    .line 453
    const-string/jumbo v1, "Content Type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_3
    if-eqz p4, :cond_4

    .line 457
    const-string/jumbo v1, "Method Name"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_4
    const-string/jumbo v1, "Localytics Shared"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 460
    return-void
.end method

.method public tagStartedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 4
    .param p1, "totalPrice"    # Ljava/lang/Long;
    .param p2, "itemCount"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 347
    .local v0, "attributesCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 349
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 351
    :cond_0
    if-eqz p1, :cond_1

    .line 353
    const-string/jumbo v1, "Total Price"

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_1
    if-eqz p2, :cond_2

    .line 357
    const-string/jumbo v1, "Item Count"

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_2
    const-string/jumbo v1, "Localytics Started Checkout"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 361
    return-void
.end method
