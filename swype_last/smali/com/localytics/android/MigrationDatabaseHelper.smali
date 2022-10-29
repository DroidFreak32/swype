.class final Lcom/localytics/android/MigrationDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MigrationDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/MigrationDatabaseHelper$1;,
        Lcom/localytics/android/MigrationDatabaseHelper$EventFlow;,
        Lcom/localytics/android/MigrationDatabaseHelper$ProfileDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$AmpConditionValuesDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$AmpConditionsDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$AmpRuleEventDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$AmpDisplayedDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$AmpRulesDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$UploadBlobsDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$UploadBlobEventsDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$SessionsDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$EventHistoryDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$EventsDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$CustomDimensionsDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$IdentifiersDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$InfoDbColumns;,
        Lcom/localytics/android/MigrationDatabaseHelper$ApiKeysDbColumns;
    }
.end annotation


# static fields
.field private static final CLOSE_EVENT:Ljava/lang/String;

.field private static final EVENTS_SORT_ORDER:Ljava/lang/String;

.field private static final EVENT_FORMAT:Ljava/lang/String; = "%s:%s"

.field private static final FLOW_EVENT:Ljava/lang/String;

.field private static final JOINER_ARG_UPLOAD_EVENTS_COLUMNS:[Ljava/lang/String;

.field private static final OPEN_EVENT:Ljava/lang/String;

.field private static final OPT_IN_EVENT:Ljava/lang/String;

.field private static final OPT_OUT_EVENT:Ljava/lang/String;

.field private static final PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

.field private static final PROJECTION_UPLOAD_EVENTS:[Ljava/lang/String;

.field private static final SELECTION_UPLOAD_NULL_BLOBS:Ljava/lang/String;

.field private static final UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;


# instance fields
.field private mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "open"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->OPEN_EVENT:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "close"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->CLOSE_EVENT:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "opt_in"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->OPT_IN_EVENT:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "opt_out"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->OPT_OUT_EVENT:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "flow"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->FLOW_EVENT:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "CAST(%s as TEXT)"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->EVENTS_SORT_ORDER:Ljava/lang/String;

    .line 58
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "events_key_ref"

    aput-object v1, v0, v3

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "CAST(%s AS TEXT)"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "events_key_ref"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;

    .line 70
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->JOINER_ARG_UPLOAD_EVENTS_COLUMNS:[Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "%s IS NULL"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "processed_in_blob"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->SELECTION_UPLOAD_NULL_BLOBS:Ljava/lang/String;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "event_name"

    aput-object v1, v0, v4

    const-string/jumbo v1, "wall_time"

    aput-object v1, v0, v5

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper;->PROJECTION_UPLOAD_EVENTS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 95
    invoke-interface {p3}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 96
    iput-object p3, p0, Lcom/localytics/android/MigrationDatabaseHelper;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 97
    return-void
.end method

.method private static convertAttributesToJson(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;J)Lorg/json/JSONObject;
    .registers 18
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2239
    const/4 v9, 0x0

    .line 2242
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string/jumbo v1, "attributes"

    const/4 v2, 0x0

    const-string/jumbo v0, "%s = ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ?"

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "events_key_ref"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "attribute_key"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "attribute_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "attribute_key"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "attribute_key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "attribute_key"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "attribute_key"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "attribute_key"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "attribute_key"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "attribute_key"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "attribute_key"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0xb

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    sget-object v5, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    sget-object v5, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x3

    sget-object v5, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x4

    sget-object v5, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x5

    sget-object v5, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x6

    sget-object v5, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x7

    sget-object v5, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    aput-object v5, v4, v0

    const/16 v0, 0x8

    sget-object v5, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    aput-object v5, v4, v0

    const/16 v0, 0x9

    sget-object v5, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    aput-object v5, v4, v0

    const/16 v0, 0xa

    sget-object v5, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2244
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_a0
    .catchall {:try_start_1 .. :try_end_a0} :catchall_e1

    move-result v0

    if-nez v0, :cond_aa

    .line 2265
    if-eqz v9, :cond_a8

    .line 2267
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2268
    :cond_a8
    const/4 v8, 0x0

    :cond_a9
    :goto_a9
    return-object v8

    .line 2249
    :cond_aa
    :try_start_aa
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 2251
    .local v8, "attributes":Lorg/json/JSONObject;
    const-string/jumbo v0, "attribute_key"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 2252
    .local v11, "keyColumn":I
    const-string/jumbo v0, "attribute_value"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 2253
    .local v13, "valueColumn":I
    :goto_bd
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 2255
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2256
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2258
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e0
    .catchall {:try_start_aa .. :try_end_e0} :catchall_e1

    goto :goto_bd

    .line 2265
    .end local v8    # "attributes":Lorg/json/JSONObject;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "keyColumn":I
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "valueColumn":I
    :catchall_e1
    move-exception v0

    if-eqz v9, :cond_e7

    .line 2267
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2268
    :cond_e7
    throw v0

    .line 2265
    .restart local v8    # "attributes":Lorg/json/JSONObject;
    .restart local v11    # "keyColumn":I
    .restart local v13    # "valueColumn":I
    :cond_e8
    if-eqz v9, :cond_a9

    .line 2267
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_a9
.end method

.method static convertDatabaseToJson(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .registers 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "apiKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2112
    new-instance v19, Ljava/util/LinkedList;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedList;-><init>()V

    .line 2113
    .local v19, "result":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    const/4 v14, 0x0

    .line 2116
    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_6
    const-string/jumbo v3, "upload_blobs"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2118
    invoke-static/range {p1 .. p2}, Lcom/localytics/android/MigrationDatabaseHelper;->getApiKeyCreationTime(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v12

    .line 2120
    .local v12, "creationTime":J
    const-string/jumbo v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 2121
    .local v17, "idColumn":I
    const-string/jumbo v2, "uuid"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 2122
    .local v21, "uuidColumn":I
    :cond_27
    :goto_27
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_157

    move-result v2

    if-eqz v2, :cond_6f

    .line 2126
    :try_start_2d
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 2128
    .local v11, "blobHeader":Lorg/json/JSONObject;
    const-string/jumbo v2, "dt"

    const-string/jumbo v3, "h"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2129
    const-string/jumbo v2, "pa"

    invoke-virtual {v11, v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2130
    const-string/jumbo v2, "seq"

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v11, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2131
    const-string/jumbo v2, "u"

    move/from16 v0, v21

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2132
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/localytics/android/MigrationDatabaseHelper;->getSessionIdForBlobId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2, v3}, Lcom/localytics/android/MigrationDatabaseHelper;->getAttributesFromSession(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_6c} :catch_14e
    .catchall {:try_start_2d .. :try_end_6c} :catchall_157

    move-result-object v20

    .line 2133
    .local v20, "sessionAttributes":Lorg/json/JSONObject;
    if-nez v20, :cond_89

    .line 2187
    .end local v11    # "blobHeader":Lorg/json/JSONObject;
    .end local v20    # "sessionAttributes":Lorg/json/JSONObject;
    :cond_6f
    if-eqz v14, :cond_74

    .line 2189
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2194
    :cond_74
    const-string/jumbo v2, "JSON result is %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 2196
    return-object v19

    .line 2139
    .restart local v11    # "blobHeader":Lorg/json/JSONObject;
    .restart local v20    # "sessionAttributes":Lorg/json/JSONObject;
    :cond_89
    :try_start_89
    const-string/jumbo v2, "attrs"

    move-object/from16 v0, v20

    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2142
    invoke-static/range {p1 .. p1}, Lcom/localytics/android/MigrationDatabaseHelper;->getIdentifiers(Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONObject;

    move-result-object v18

    .line 2143
    .local v18, "identifiers":Lorg/json/JSONObject;
    if-eqz v18, :cond_9f

    .line 2145
    const-string/jumbo v2, "ids"

    move-object/from16 v0, v18

    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2148
    :cond_9f
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2150
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I
    :try_end_ab
    .catch Lorg/json/JSONException; {:try_start_89 .. :try_end_ab} :catch_14e
    .catchall {:try_start_89 .. :try_end_ab} :catchall_157

    .line 2152
    const/4 v10, 0x0

    .line 2155
    .local v10, "blobEvents":Landroid/database/Cursor;
    :try_start_ac
    const-string/jumbo v3, "upload_blob_events"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v5, "events_key_ref"

    aput-object v5, v4, v2

    const-string/jumbo v2, "%s = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "upload_blobs_key_ref"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "events_key_ref"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2157
    const-string/jumbo v2, "events_key_ref"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 2158
    .local v16, "eventIdColumn":I
    :goto_f0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_15e

    .line 2160
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_15e

    .line 2162
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v8}, Lcom/localytics/android/MigrationDatabaseHelper;->convertEventToJson(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;JJLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2163
    const-string/jumbo v2, "upload_blob_events"

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_146
    .catchall {:try_start_ac .. :try_end_146} :catchall_147

    goto :goto_f0

    .line 2173
    .end local v16    # "eventIdColumn":I
    :catchall_147
    move-exception v2

    if-eqz v10, :cond_14d

    .line 2175
    :try_start_14a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_14d
    throw v2
    :try_end_14e
    .catch Lorg/json/JSONException; {:try_start_14a .. :try_end_14e} :catch_14e
    .catchall {:try_start_14a .. :try_end_14e} :catchall_157

    .line 2179
    .end local v10    # "blobEvents":Landroid/database/Cursor;
    .end local v11    # "blobHeader":Lorg/json/JSONObject;
    .end local v18    # "identifiers":Lorg/json/JSONObject;
    .end local v20    # "sessionAttributes":Lorg/json/JSONObject;
    :catch_14e
    move-exception v15

    .line 2181
    .local v15, "e":Lorg/json/JSONException;
    :try_start_14f
    const-string/jumbo v2, "Caught exception"

    invoke-static {v2, v15}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_155
    .catchall {:try_start_14f .. :try_end_155} :catchall_157

    goto/16 :goto_27

    .line 2187
    .end local v12    # "creationTime":J
    .end local v15    # "e":Lorg/json/JSONException;
    .end local v17    # "idColumn":I
    .end local v21    # "uuidColumn":I
    :catchall_157
    move-exception v2

    if-eqz v14, :cond_15d

    .line 2189
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2190
    :cond_15d
    throw v2

    .line 2173
    .restart local v10    # "blobEvents":Landroid/database/Cursor;
    .restart local v11    # "blobHeader":Lorg/json/JSONObject;
    .restart local v12    # "creationTime":J
    .restart local v16    # "eventIdColumn":I
    .restart local v17    # "idColumn":I
    .restart local v18    # "identifiers":Lorg/json/JSONObject;
    .restart local v20    # "sessionAttributes":Lorg/json/JSONObject;
    .restart local v21    # "uuidColumn":I
    :cond_15e
    if-eqz v10, :cond_27

    .line 2175
    :try_start_160
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_163
    .catch Lorg/json/JSONException; {:try_start_160 .. :try_end_163} :catch_14e
    .catchall {:try_start_160 .. :try_end_163} :catchall_157

    goto/16 :goto_27
.end method

.method private static convertEventToJson(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;JJLjava/lang/String;)Lorg/json/JSONObject;
    .registers 51
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventId"    # J
    .param p4, "blobId"    # J
    .param p6, "apiKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1612
    new-instance v32, Lorg/json/JSONObject;

    invoke-direct/range {v32 .. v32}, Lorg/json/JSONObject;-><init>()V

    .line 1614
    .local v32, "result":Lorg/json/JSONObject;
    const/16 v16, 0x0

    .line 1618
    .local v16, "cursor":Landroid/database/Cursor;
    :try_start_7
    const-string/jumbo v5, "events"

    const/4 v6, 0x0

    const-string/jumbo v4, "%s = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "_id"

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string/jumbo v11, "_id"

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1620
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_abb

    .line 1622
    const-string/jumbo v4, "event_name"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1623
    .local v21, "eventName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/localytics/android/MigrationDatabaseHelper;->getSessionIdForEventId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v36

    .line 1624
    .local v36, "sessionId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Lcom/localytics/android/MigrationDatabaseHelper;->getSessionUuid(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v35

    .line 1625
    .local v35, "sessionUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Lcom/localytics/android/MigrationDatabaseHelper;->getSessionStartTime(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v38

    .line 1627
    .local v38, "sessionStartTime":J
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper;->OPEN_EVENT:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ed

    .line 1629
    const-string/jumbo v4, "dt"

    const-string/jumbo v5, "s"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1630
    const-string/jumbo v4, "ct"

    const-string/jumbo v5, "wall_time"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1631
    const-string/jumbo v4, "u"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1633
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Lcom/localytics/android/MigrationDatabaseHelper;->getElapsedTimeSinceLastSession(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v18

    .line 1634
    .local v18, "elapsedTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_c1

    .line 1636
    const-string/jumbo v4, "sl"

    move-wide/from16 v0, v18

    long-to-double v6, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1642
    :cond_c1
    const-string/jumbo v4, "nth"

    move-object/from16 v0, v32

    move-wide/from16 v1, v36

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1647
    const-string/jumbo v4, "event_lat"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_12b

    const-string/jumbo v4, "event_lng"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_12b

    .line 1649
    const-string/jumbo v4, "event_lat"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v26

    .line 1650
    .local v26, "lat":D
    const-string/jumbo v4, "event_lng"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v28

    .line 1652
    .local v28, "lng":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v26, v4

    if-eqz v4, :cond_12b

    const-wide/16 v4, 0x0

    cmpl-double v4, v28, v4

    if-eqz v4, :cond_12b

    .line 1654
    const-string/jumbo v4, "lat"

    move-object/from16 v0, v32

    move-wide/from16 v1, v26

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1655
    const-string/jumbo v4, "lng"

    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1659
    .end local v26    # "lat":D
    .end local v28    # "lng":D
    :cond_12b
    const-string/jumbo v4, "customer_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_16e

    .line 1661
    const-string/jumbo v4, "customer_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1662
    .local v17, "customerID":Ljava/lang/String;
    const-string/jumbo v4, "user_type"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 1664
    .local v41, "userType":Ljava/lang/String;
    const-string/jumbo v4, "cid"

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1665
    const-string/jumbo v4, "utp"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1668
    .end local v17    # "customerID":Ljava/lang/String;
    .end local v41    # "userType":Ljava/lang/String;
    :cond_16e
    const-string/jumbo v4, "ids"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_19d

    .line 1670
    const-string/jumbo v4, "ids"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1671
    .local v22, "ids":Ljava/lang/String;
    const-string/jumbo v4, "ids"

    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19d
    .catchall {:try_start_7 .. :try_end_19d} :catchall_203

    .line 1677
    .end local v22    # "ids":Ljava/lang/String;
    :cond_19d
    const/4 v13, 0x0

    .line 1680
    .local v13, "attributesCursor":Landroid/database/Cursor;
    :try_start_19e
    const-string/jumbo v5, "attributes"

    const/4 v6, 0x0

    const-string/jumbo v4, "%s = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "events_key_ref"

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1682
    const-string/jumbo v4, "attribute_key"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 1683
    .local v24, "keyColumn":I
    const-string/jumbo v4, "attribute_value"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 1684
    .local v43, "valueColumn":I
    :cond_1d3
    :goto_1d3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2e2

    .line 1686
    move/from16 v0, v24

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1687
    .local v23, "key":Ljava/lang/String;
    move/from16 v0, v43

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 1689
    .local v42, "value":Ljava/lang/String;
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20a

    .line 1691
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1fb
    .catchall {:try_start_19e .. :try_end_1fb} :catchall_1fc

    goto :goto_1d3

    .line 1733
    .end local v23    # "key":Ljava/lang/String;
    .end local v24    # "keyColumn":I
    .end local v42    # "value":Ljava/lang/String;
    .end local v43    # "valueColumn":I
    :catchall_1fc
    move-exception v4

    if-eqz v13, :cond_202

    .line 1735
    :try_start_1ff
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1736
    :cond_202
    throw v4
    :try_end_203
    .catchall {:try_start_1ff .. :try_end_203} :catchall_203

    .line 2095
    .end local v13    # "attributesCursor":Landroid/database/Cursor;
    .end local v18    # "elapsedTime":J
    .end local v21    # "eventName":Ljava/lang/String;
    .end local v35    # "sessionUuid":Ljava/lang/String;
    .end local v36    # "sessionId":J
    .end local v38    # "sessionStartTime":J
    :catchall_203
    move-exception v4

    if-eqz v16, :cond_209

    .line 2097
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2098
    :cond_209
    throw v4

    .line 1693
    .restart local v13    # "attributesCursor":Landroid/database/Cursor;
    .restart local v18    # "elapsedTime":J
    .restart local v21    # "eventName":Ljava/lang/String;
    .restart local v23    # "key":Ljava/lang/String;
    .restart local v24    # "keyColumn":I
    .restart local v35    # "sessionUuid":Ljava/lang/String;
    .restart local v36    # "sessionId":J
    .restart local v38    # "sessionStartTime":J
    .restart local v42    # "value":Ljava/lang/String;
    .restart local v43    # "valueColumn":I
    :cond_20a
    :try_start_20a
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_221

    .line 1695
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1d3

    .line 1697
    :cond_221
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_238

    .line 1699
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1d3

    .line 1701
    :cond_238
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24f

    .line 1703
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1d3

    .line 1705
    :cond_24f
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_267

    .line 1707
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1d3

    .line 1709
    :cond_267
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27f

    .line 1711
    const/4 v4, 0x6

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1d3

    .line 1713
    :cond_27f
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_297

    .line 1715
    const/4 v4, 0x7

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1d3

    .line 1717
    :cond_297
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b0

    .line 1719
    const/16 v4, 0x8

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1d3

    .line 1721
    :cond_2b0
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c9

    .line 1723
    const/16 v4, 0x9

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1d3

    .line 1725
    :cond_2c9
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d3

    .line 1727
    const/16 v4, 0xa

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e0
    .catchall {:try_start_20a .. :try_end_2e0} :catchall_1fc

    goto/16 :goto_1d3

    .line 1733
    .end local v23    # "key":Ljava/lang/String;
    .end local v42    # "value":Ljava/lang/String;
    :cond_2e2
    if-eqz v13, :cond_2e7

    .line 1735
    :try_start_2e4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_2e7
    .catchall {:try_start_2e4 .. :try_end_2e7} :catchall_203

    .line 2095
    .end local v13    # "attributesCursor":Landroid/database/Cursor;
    .end local v18    # "elapsedTime":J
    .end local v24    # "keyColumn":I
    .end local v43    # "valueColumn":I
    :cond_2e7
    :goto_2e7
    if-eqz v16, :cond_2ec

    .line 2097
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2102
    :cond_2ec
    return-object v32

    .line 1740
    :cond_2ed
    :try_start_2ed
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper;->CLOSE_EVENT:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_686

    .line 1742
    const-string/jumbo v4, "dt"

    const-string/jumbo v5, "c"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1743
    const-string/jumbo v4, "u"

    const-string/jumbo v5, "uuid"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1744
    const-string/jumbo v4, "su"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1745
    const-string/jumbo v4, "ss"

    move-wide/from16 v0, v38

    long-to-double v6, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1746
    const-string/jumbo v4, "ct"

    const-string/jumbo v5, "wall_time"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_35a
    .catchall {:try_start_2ed .. :try_end_35a} :catchall_203

    .line 1751
    const/16 v34, 0x0

    .line 1754
    .local v34, "sessionCursor":Landroid/database/Cursor;
    :try_start_35c
    const-string/jumbo v5, "sessions"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v7, "session_start_wall_time"

    aput-object v7, v6, v4

    const-string/jumbo v4, "%s = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "_id"

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v9, "session_key_ref"

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 1756
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_44a

    .line 1758
    const-string/jumbo v4, "ctl"

    const-string/jumbo v5, "wall_time"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    const-string/jumbo v5, "session_start_wall_time"

    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3dd
    .catchall {:try_start_35c .. :try_end_3dd} :catchall_453

    .line 1768
    if-eqz v34, :cond_3e2

    .line 1770
    :try_start_3df
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V
    :try_end_3e2
    .catchall {:try_start_3df .. :try_end_3e2} :catchall_203

    .line 1778
    :cond_3e2
    const/16 v20, 0x0

    .line 1781
    .local v20, "eventHistoryCursor":Landroid/database/Cursor;
    :try_start_3e4
    const-string/jumbo v5, "event_history"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v7, "name"

    aput-object v7, v6, v4

    const-string/jumbo v4, "%s = ? AND %s = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "session_key_ref"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "type"

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v4, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string/jumbo v11, "_id"

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1783
    new-instance v33, Lorg/json/JSONArray;

    invoke-direct/range {v33 .. v33}, Lorg/json/JSONArray;-><init>()V

    .line 1784
    .local v33, "screens":Lorg/json/JSONArray;
    :goto_428
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_45a

    .line 1786
    const-string/jumbo v4, "name"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_442
    .catchall {:try_start_3e4 .. :try_end_442} :catchall_443

    goto :goto_428

    .line 1796
    .end local v33    # "screens":Lorg/json/JSONArray;
    :catchall_443
    move-exception v4

    if-eqz v20, :cond_449

    .line 1798
    :try_start_446
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1799
    :cond_449
    throw v4
    :try_end_44a
    .catchall {:try_start_446 .. :try_end_44a} :catchall_203

    .line 1763
    .end local v20    # "eventHistoryCursor":Landroid/database/Cursor;
    :cond_44a
    :try_start_44a
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Session didn\'t exist"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_453
    .catchall {:try_start_44a .. :try_end_453} :catchall_453

    .line 1768
    :catchall_453
    move-exception v4

    if-eqz v34, :cond_459

    .line 1770
    :try_start_456
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 1771
    :cond_459
    throw v4
    :try_end_45a
    .catchall {:try_start_456 .. :try_end_45a} :catchall_203

    .line 1789
    .restart local v20    # "eventHistoryCursor":Landroid/database/Cursor;
    .restart local v33    # "screens":Lorg/json/JSONArray;
    :cond_45a
    :try_start_45a
    invoke-virtual/range {v33 .. v33}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_46a

    .line 1791
    const-string/jumbo v4, "fl"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_46a
    .catchall {:try_start_45a .. :try_end_46a} :catchall_443

    .line 1796
    :cond_46a
    if-eqz v20, :cond_46f

    .line 1798
    :try_start_46c
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1806
    :cond_46f
    const-string/jumbo v4, "event_lat"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_4cf

    const-string/jumbo v4, "event_lng"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_4cf

    .line 1808
    const-string/jumbo v4, "event_lat"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v26

    .line 1809
    .restart local v26    # "lat":D
    const-string/jumbo v4, "event_lng"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v28

    .line 1811
    .restart local v28    # "lng":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v26, v4

    if-eqz v4, :cond_4cf

    const-wide/16 v4, 0x0

    cmpl-double v4, v28, v4

    if-eqz v4, :cond_4cf

    .line 1813
    const-string/jumbo v4, "lat"

    move-object/from16 v0, v32

    move-wide/from16 v1, v26

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1814
    const-string/jumbo v4, "lng"

    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1818
    .end local v26    # "lat":D
    .end local v28    # "lng":D
    :cond_4cf
    const-string/jumbo v4, "customer_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_512

    .line 1820
    const-string/jumbo v4, "customer_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1821
    .restart local v17    # "customerID":Ljava/lang/String;
    const-string/jumbo v4, "user_type"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 1823
    .restart local v41    # "userType":Ljava/lang/String;
    const-string/jumbo v4, "cid"

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1824
    const-string/jumbo v4, "utp"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1827
    .end local v17    # "customerID":Ljava/lang/String;
    .end local v41    # "userType":Ljava/lang/String;
    :cond_512
    const-string/jumbo v4, "ids"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_541

    .line 1829
    const-string/jumbo v4, "ids"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1830
    .restart local v22    # "ids":Ljava/lang/String;
    const-string/jumbo v4, "ids"

    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_541
    .catchall {:try_start_46c .. :try_end_541} :catchall_203

    .line 1836
    .end local v22    # "ids":Ljava/lang/String;
    :cond_541
    const/4 v13, 0x0

    .line 1839
    .restart local v13    # "attributesCursor":Landroid/database/Cursor;
    :try_start_542
    const-string/jumbo v5, "attributes"

    const/4 v6, 0x0

    const-string/jumbo v4, "%s = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "events_key_ref"

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1841
    const-string/jumbo v4, "attribute_key"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 1842
    .restart local v24    # "keyColumn":I
    const-string/jumbo v4, "attribute_value"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 1843
    .restart local v43    # "valueColumn":I
    :cond_577
    :goto_577
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_67f

    .line 1845
    move/from16 v0, v24

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1846
    .restart local v23    # "key":Ljava/lang/String;
    move/from16 v0, v43

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 1848
    .restart local v42    # "value":Ljava/lang/String;
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 1850
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_59f
    .catchall {:try_start_542 .. :try_end_59f} :catchall_5a0

    goto :goto_577

    .line 1892
    .end local v23    # "key":Ljava/lang/String;
    .end local v24    # "keyColumn":I
    .end local v42    # "value":Ljava/lang/String;
    .end local v43    # "valueColumn":I
    :catchall_5a0
    move-exception v4

    if-eqz v13, :cond_5a6

    .line 1894
    :try_start_5a3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1895
    :cond_5a6
    throw v4
    :try_end_5a7
    .catchall {:try_start_5a3 .. :try_end_5a7} :catchall_203

    .line 1852
    .restart local v23    # "key":Ljava/lang/String;
    .restart local v24    # "keyColumn":I
    .restart local v42    # "value":Ljava/lang/String;
    .restart local v43    # "valueColumn":I
    :cond_5a7
    :try_start_5a7
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5be

    .line 1854
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_577

    .line 1856
    :cond_5be
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d5

    .line 1858
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_577

    .line 1860
    :cond_5d5
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5ec

    .line 1862
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_577

    .line 1864
    :cond_5ec
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_604

    .line 1866
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_577

    .line 1868
    :cond_604
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61c

    .line 1870
    const/4 v4, 0x6

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_577

    .line 1872
    :cond_61c
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_634

    .line 1874
    const/4 v4, 0x7

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_577

    .line 1876
    :cond_634
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64d

    .line 1878
    const/16 v4, 0x8

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_577

    .line 1880
    :cond_64d
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_666

    .line 1882
    const/16 v4, 0x9

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_577

    .line 1884
    :cond_666
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_577

    .line 1886
    const/16 v4, 0xa

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_67d
    .catchall {:try_start_5a7 .. :try_end_67d} :catchall_5a0

    goto/16 :goto_577

    .line 1892
    .end local v23    # "key":Ljava/lang/String;
    .end local v42    # "value":Ljava/lang/String;
    :cond_67f
    if-eqz v13, :cond_2e7

    .line 1894
    :try_start_681
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2e7

    .line 1899
    .end local v13    # "attributesCursor":Landroid/database/Cursor;
    .end local v20    # "eventHistoryCursor":Landroid/database/Cursor;
    .end local v24    # "keyColumn":I
    .end local v33    # "screens":Lorg/json/JSONArray;
    .end local v34    # "sessionCursor":Landroid/database/Cursor;
    .end local v43    # "valueColumn":I
    :cond_686
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper;->OPT_IN_EVENT:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69a

    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper;->OPT_OUT_EVENT:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f0

    .line 1901
    :cond_69a
    const-string/jumbo v4, "dt"

    const-string/jumbo v5, "o"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1902
    const-string/jumbo v4, "u"

    const-string/jumbo v5, "uuid"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1903
    const-string/jumbo v4, "out"

    sget-object v5, Lcom/localytics/android/MigrationDatabaseHelper;->OPT_OUT_EVENT:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1904
    const-string/jumbo v4, "ct"

    const-string/jumbo v5, "wall_time"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto/16 :goto_2e7

    .line 1906
    :cond_6f0
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper;->FLOW_EVENT:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80f

    .line 1908
    const-string/jumbo v4, "dt"

    const-string/jumbo v5, "f"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1909
    const-string/jumbo v4, "u"

    const-string/jumbo v5, "uuid"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1910
    const-string/jumbo v4, "ss"

    move-wide/from16 v0, v38

    long-to-double v6, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_731
    .catchall {:try_start_681 .. :try_end_731} :catchall_203

    .line 1919
    const/16 v20, 0x0

    .line 1922
    .restart local v20    # "eventHistoryCursor":Landroid/database/Cursor;
    :try_start_733
    const-string/jumbo v5, "event_history"

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v7, "type"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string/jumbo v7, "processed_in_blob"

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const-string/jumbo v7, "name"

    aput-object v7, v6, v4

    const-string/jumbo v4, "%s = ? AND %s <= ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "session_key_ref"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "processed_in_blob"

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v4, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string/jumbo v11, "_id"

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1924
    new-instance v30, Lorg/json/JSONArray;

    invoke-direct/range {v30 .. v30}, Lorg/json/JSONArray;-><init>()V

    .line 1925
    .local v30, "newScreens":Lorg/json/JSONArray;
    new-instance v31, Lorg/json/JSONArray;

    invoke-direct/range {v31 .. v31}, Lorg/json/JSONArray;-><init>()V

    .line 1926
    .local v31, "oldScreens":Lorg/json/JSONArray;
    :goto_787
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7f4

    .line 1928
    const-string/jumbo v4, "name"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1930
    .local v25, "name":Ljava/lang/String;
    const-string/jumbo v4, "type"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_7dd

    .line 1932
    const-string/jumbo v40, "e"

    .line 1939
    .local v40, "type":Ljava/lang/String;
    :goto_7b0
    const-string/jumbo v4, "processed_in_blob"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v4, p4, v4

    if-nez v4, :cond_7e1

    .line 1941
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7d5
    .catchall {:try_start_733 .. :try_end_7d5} :catchall_7d6

    goto :goto_787

    .line 1954
    .end local v25    # "name":Ljava/lang/String;
    .end local v30    # "newScreens":Lorg/json/JSONArray;
    .end local v31    # "oldScreens":Lorg/json/JSONArray;
    .end local v40    # "type":Ljava/lang/String;
    :catchall_7d6
    move-exception v4

    if-eqz v20, :cond_7dc

    .line 1956
    :try_start_7d9
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1957
    :cond_7dc
    throw v4
    :try_end_7dd
    .catchall {:try_start_7d9 .. :try_end_7dd} :catchall_203

    .line 1936
    .restart local v25    # "name":Ljava/lang/String;
    .restart local v30    # "newScreens":Lorg/json/JSONArray;
    .restart local v31    # "oldScreens":Lorg/json/JSONArray;
    :cond_7dd
    :try_start_7dd
    const-string/jumbo v40, "s"

    .restart local v40    # "type":Ljava/lang/String;
    goto :goto_7b0

    .line 1945
    :cond_7e1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_787

    .line 1949
    .end local v25    # "name":Ljava/lang/String;
    .end local v40    # "type":Ljava/lang/String;
    :cond_7f4
    const-string/jumbo v4, "nw"

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1950
    const-string/jumbo v4, "od"

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_808
    .catchall {:try_start_7dd .. :try_end_808} :catchall_7d6

    .line 1954
    if-eqz v20, :cond_2e7

    .line 1956
    :try_start_80a
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2e7

    .line 1966
    .end local v20    # "eventHistoryCursor":Landroid/database/Cursor;
    .end local v30    # "newScreens":Lorg/json/JSONArray;
    .end local v31    # "oldScreens":Lorg/json/JSONArray;
    :cond_80f
    const-string/jumbo v4, "dt"

    const-string/jumbo v5, "e"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1967
    const-string/jumbo v4, "ct"

    const-string/jumbo v5, "wall_time"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1968
    const-string/jumbo v4, "u"

    const-string/jumbo v5, "uuid"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1969
    const-string/jumbo v4, "su"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1970
    const-string/jumbo v4, "n"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1975
    const-string/jumbo v4, "clv_increase"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1976
    .local v14, "clv":J
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-eqz v4, :cond_896

    .line 1978
    const-string/jumbo v4, "v"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1984
    :cond_896
    const-string/jumbo v4, "event_lat"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_8f6

    const-string/jumbo v4, "event_lng"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_8f6

    .line 1986
    const-string/jumbo v4, "event_lat"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v26

    .line 1987
    .restart local v26    # "lat":D
    const-string/jumbo v4, "event_lng"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v28

    .line 1989
    .restart local v28    # "lng":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v26, v4

    if-eqz v4, :cond_8f6

    const-wide/16 v4, 0x0

    cmpl-double v4, v28, v4

    if-eqz v4, :cond_8f6

    .line 1991
    const-string/jumbo v4, "lat"

    move-object/from16 v0, v32

    move-wide/from16 v1, v26

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1992
    const-string/jumbo v4, "lng"

    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1996
    .end local v26    # "lat":D
    .end local v28    # "lng":D
    :cond_8f6
    const-string/jumbo v4, "customer_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_939

    .line 1998
    const-string/jumbo v4, "customer_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1999
    .restart local v17    # "customerID":Ljava/lang/String;
    const-string/jumbo v4, "user_type"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 2001
    .restart local v41    # "userType":Ljava/lang/String;
    const-string/jumbo v4, "cid"

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2002
    const-string/jumbo v4, "utp"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2005
    .end local v17    # "customerID":Ljava/lang/String;
    .end local v41    # "userType":Ljava/lang/String;
    :cond_939
    const-string/jumbo v4, "ids"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_968

    .line 2007
    const-string/jumbo v4, "ids"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2008
    .restart local v22    # "ids":Ljava/lang/String;
    const-string/jumbo v4, "ids"

    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_968
    .catchall {:try_start_80a .. :try_end_968} :catchall_203

    .line 2014
    .end local v22    # "ids":Ljava/lang/String;
    :cond_968
    const/4 v13, 0x0

    .line 2017
    .restart local v13    # "attributesCursor":Landroid/database/Cursor;
    :try_start_969
    const-string/jumbo v5, "attributes"

    const/4 v6, 0x0

    const-string/jumbo v4, "%s = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "events_key_ref"

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2019
    const-string/jumbo v4, "attribute_key"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 2020
    .restart local v24    # "keyColumn":I
    const-string/jumbo v4, "attribute_value"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 2021
    .restart local v43    # "valueColumn":I
    :cond_99e
    :goto_99e
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_aa6

    .line 2023
    move/from16 v0, v24

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2024
    .restart local v23    # "key":Ljava/lang/String;
    move/from16 v0, v43

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 2026
    .restart local v42    # "value":Ljava/lang/String;
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9ce

    .line 2028
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9c6
    .catchall {:try_start_969 .. :try_end_9c6} :catchall_9c7

    goto :goto_99e

    .line 2070
    .end local v23    # "key":Ljava/lang/String;
    .end local v24    # "keyColumn":I
    .end local v42    # "value":Ljava/lang/String;
    .end local v43    # "valueColumn":I
    :catchall_9c7
    move-exception v4

    if-eqz v13, :cond_9cd

    .line 2072
    :try_start_9ca
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2073
    :cond_9cd
    throw v4
    :try_end_9ce
    .catchall {:try_start_9ca .. :try_end_9ce} :catchall_203

    .line 2030
    .restart local v23    # "key":Ljava/lang/String;
    .restart local v24    # "keyColumn":I
    .restart local v42    # "value":Ljava/lang/String;
    .restart local v43    # "valueColumn":I
    :cond_9ce
    :try_start_9ce
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e5

    .line 2032
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_99e

    .line 2034
    :cond_9e5
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9fc

    .line 2036
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_99e

    .line 2038
    :cond_9fc
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a13

    .line 2040
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_99e

    .line 2042
    :cond_a13
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2b

    .line 2044
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_99e

    .line 2046
    :cond_a2b
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a43

    .line 2048
    const/4 v4, 0x6

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_99e

    .line 2050
    :cond_a43
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5b

    .line 2052
    const/4 v4, 0x7

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_99e

    .line 2054
    :cond_a5b
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a74

    .line 2056
    const/16 v4, 0x8

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_99e

    .line 2058
    :cond_a74
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8d

    .line 2060
    const/16 v4, 0x9

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_99e

    .line 2062
    :cond_a8d
    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99e

    .line 2064
    const/16 v4, 0xa

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->getCustomDimensionKey(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_aa4
    .catchall {:try_start_9ce .. :try_end_aa4} :catchall_9c7

    goto/16 :goto_99e

    .line 2070
    .end local v23    # "key":Ljava/lang/String;
    .end local v42    # "value":Ljava/lang/String;
    :cond_aa6
    if-eqz v13, :cond_aab

    .line 2072
    :try_start_aa8
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2077
    :cond_aab
    invoke-static/range {p0 .. p3}, Lcom/localytics/android/MigrationDatabaseHelper;->convertAttributesToJson(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v12

    .line 2079
    .local v12, "attributes":Lorg/json/JSONObject;
    if-eqz v12, :cond_2e7

    .line 2081
    const-string/jumbo v4, "attrs"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e7

    .line 2090
    .end local v12    # "attributes":Lorg/json/JSONObject;
    .end local v13    # "attributesCursor":Landroid/database/Cursor;
    .end local v14    # "clv":J
    .end local v21    # "eventName":Ljava/lang/String;
    .end local v24    # "keyColumn":I
    .end local v35    # "sessionUuid":Ljava/lang/String;
    .end local v36    # "sessionId":J
    .end local v38    # "sessionStartTime":J
    .end local v43    # "valueColumn":I
    :cond_abb
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
    :try_end_ac1
    .catchall {:try_start_aa8 .. :try_end_ac1} :catchall_203
.end method

.method private static getApiKeyCreationTime(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .registers 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2283
    const/4 v8, 0x0

    .line 2286
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string/jumbo v1, "api_keys"

    const/4 v2, 0x0

    const-string/jumbo v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "api_key"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2288
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2290
    const-string/jumbo v0, "created_time"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_4e

    move-result-wide v0

    .line 2300
    if-eqz v8, :cond_44

    .line 2302
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2303
    :cond_44
    return-wide v0

    .line 2296
    :cond_45
    :try_start_45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "API key entry couldn\'t be found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4e

    .line 2300
    :catchall_4e
    move-exception v0

    if-eqz v8, :cond_54

    .line 2302
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2303
    :cond_54
    throw v0
.end method

.method private static getAttributesFromSession(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Lorg/json/JSONObject;
    .registers 24
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2319
    const/4 v10, 0x0

    .line 2322
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string/jumbo v3, "sessions"

    const/4 v4, 0x0

    const-string/jumbo v2, "%s = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2324
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_24e

    .line 2326
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 2329
    .local v19, "result":Lorg/json/JSONObject;
    const-string/jumbo v2, "av"

    const-string/jumbo v3, "app_version"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2330
    const-string/jumbo v2, "dac"

    const-string/jumbo v3, "network_type"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2331
    const-string/jumbo v2, "device_android_id_hash"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2332
    .local v11, "deviceID":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    .line 2334
    const-string/jumbo v2, "du"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2336
    :cond_75
    const-string/jumbo v2, "dc"

    const-string/jumbo v3, "device_country"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2337
    const-string/jumbo v2, "dma"

    const-string/jumbo v3, "device_manufacturer"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2338
    const-string/jumbo v2, "dmo"

    const-string/jumbo v3, "device_model"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2339
    const-string/jumbo v2, "dov"

    const-string/jumbo v3, "android_version"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2340
    const-string/jumbo v2, "dp"

    const-string/jumbo v3, "Android"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2341
    const-string/jumbo v3, "dms"

    const-string/jumbo v2, "device_serial_number_hash"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_234

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_de
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2342
    const-string/jumbo v2, "dsdk"

    const-string/jumbo v3, "android_sdk"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2343
    const-string/jumbo v2, "au"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2344
    const-string/jumbo v2, "lv"

    const-string/jumbo v3, "localytics_library_version"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2345
    const-string/jumbo v2, "dt"

    const-string/jumbo v3, "a"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2346
    const-string/jumbo v3, "caid"

    const-string/jumbo v2, "device_android_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_241

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_130
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2348
    const-string/jumbo v2, "device_advertising_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_155

    .line 2350
    const-string/jumbo v2, "gcadid"

    const-string/jumbo v3, "device_advertising_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2354
    :cond_155
    const-string/jumbo v2, "iu"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2355
    .local v15, "installationID":Ljava/lang/String;
    if-eqz v15, :cond_16a

    .line 2357
    const-string/jumbo v2, "iu"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2359
    :cond_16a
    const-string/jumbo v2, "dlc"

    const-string/jumbo v3, "locale_country"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2360
    const-string/jumbo v2, "dll"

    const-string/jumbo v3, "locale_language"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2361
    const-string/jumbo v2, "nca"

    const-string/jumbo v3, "network_carrier"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2362
    const-string/jumbo v2, "nc"

    const-string/jumbo v3, "network_country"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2365
    const-string/jumbo v2, "fb_attribution"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/localytics/android/MigrationDatabaseHelper;->getStringFromAppInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2366
    .local v12, "fbAttribution":Ljava/lang/String;
    if-eqz v12, :cond_1c9

    .line 2368
    const-string/jumbo v2, "fbat"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2371
    :cond_1c9
    const-string/jumbo v2, "play_attribution"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/localytics/android/MigrationDatabaseHelper;->getStringFromAppInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2372
    .local v17, "playAttribution":Ljava/lang/String;
    if-eqz v17, :cond_1de

    .line 2374
    const-string/jumbo v2, "aurl"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2377
    :cond_1de
    const-string/jumbo v2, "registration_id"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/localytics/android/MigrationDatabaseHelper;->getStringFromAppInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2378
    .local v18, "registrationId":Ljava/lang/String;
    if-eqz v18, :cond_1f3

    .line 2380
    const-string/jumbo v2, "push"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2383
    :cond_1f3
    const-string/jumbo v2, "first_android_id"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/localytics/android/MigrationDatabaseHelper;->getStringFromAppInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2384
    .local v14, "firstAndroidId":Ljava/lang/String;
    if-eqz v14, :cond_206

    .line 2386
    const-string/jumbo v2, "aid"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2389
    :cond_206
    const-string/jumbo v2, "first_advertising_id"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/localytics/android/MigrationDatabaseHelper;->getStringFromAppInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2390
    .local v13, "firstAdvertisingId":Ljava/lang/String;
    if-eqz v13, :cond_219

    .line 2392
    const-string/jumbo v2, "gadid"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2395
    :cond_219
    const-string/jumbo v2, "package_name"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/localytics/android/MigrationDatabaseHelper;->getStringFromAppInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2396
    .local v16, "packageName":Ljava/lang/String;
    if-eqz v16, :cond_22e

    .line 2398
    const-string/jumbo v2, "pkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22e
    .catchall {:try_start_1 .. :try_end_22e} :catchall_256

    .line 2408
    :cond_22e
    if-eqz v10, :cond_233

    .line 2410
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2411
    .end local v11    # "deviceID":Ljava/lang/String;
    .end local v12    # "fbAttribution":Ljava/lang/String;
    .end local v13    # "firstAdvertisingId":Ljava/lang/String;
    .end local v14    # "firstAndroidId":Ljava/lang/String;
    .end local v15    # "installationID":Ljava/lang/String;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "playAttribution":Ljava/lang/String;
    .end local v18    # "registrationId":Ljava/lang/String;
    .end local v19    # "result":Lorg/json/JSONObject;
    :cond_233
    :goto_233
    return-object v19

    .line 2341
    .restart local v11    # "deviceID":Ljava/lang/String;
    .restart local v19    # "result":Lorg/json/JSONObject;
    :cond_234
    :try_start_234
    const-string/jumbo v2, "device_serial_number_hash"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_de

    .line 2346
    :cond_241
    const-string/jumbo v2, "device_android_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_24b
    .catchall {:try_start_234 .. :try_end_24b} :catchall_256

    move-result-object v2

    goto/16 :goto_130

    .line 2408
    .end local v11    # "deviceID":Ljava/lang/String;
    .end local v19    # "result":Lorg/json/JSONObject;
    :cond_24e
    if-eqz v10, :cond_253

    .line 2410
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2411
    :cond_253
    const/16 v19, 0x0

    goto :goto_233

    .line 2408
    :catchall_256
    move-exception v2

    if-eqz v10, :cond_25c

    .line 2410
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2411
    :cond_25c
    throw v2
.end method

.method private static getCustomDimensionKey(I)Ljava/lang/String;
    .registers 5
    .param p0, "dimension"    # I

    .prologue
    .line 2697
    const-string/jumbo v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "c"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, p0, -0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getElapsedTimeSinceLastSession(Landroid/database/sqlite/SQLiteDatabase;J)J
    .registers 12
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sessionId"    # J

    .prologue
    .line 2670
    const/4 v8, 0x0

    .line 2673
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string/jumbo v1, "sessions"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "elapsed"

    aput-object v3, v2, v0

    const-string/jumbo v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2675
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2677
    const-string/jumbo v0, "elapsed"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_4c

    move-result-wide v0

    .line 2687
    if-eqz v8, :cond_45

    .line 2689
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2690
    :cond_45
    return-wide v0

    .line 2683
    :cond_46
    :try_start_46
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4c

    .line 2687
    :catchall_4c
    move-exception v0

    if-eqz v8, :cond_52

    .line 2689
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2690
    :cond_52
    throw v0
.end method

.method private static getIdentifiers(Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONObject;
    .registers 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2498
    const/4 v8, 0x0

    .line 2501
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string/jumbo v1, "identifiers"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2503
    const/4 v9, 0x0

    .line 2505
    .local v9, "result":Lorg/json/JSONObject;
    :goto_10
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2507
    if-nez v9, :cond_1d

    .line 2509
    new-instance v9, Lorg/json/JSONObject;

    .end local v9    # "result":Lorg/json/JSONObject;
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 2512
    .restart local v9    # "result":Lorg/json/JSONObject;
    :cond_1d
    const-string/jumbo v0, "key"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_37

    goto :goto_10

    .line 2519
    .end local v9    # "result":Lorg/json/JSONObject;
    :catchall_37
    move-exception v0

    if-eqz v8, :cond_3d

    .line 2521
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2522
    :cond_3d
    throw v0

    .line 2519
    .restart local v9    # "result":Lorg/json/JSONObject;
    :cond_3e
    if-eqz v8, :cond_43

    .line 2521
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2522
    :cond_43
    return-object v9
.end method

.method private static getSessionIdForBlobId(Landroid/database/sqlite/SQLiteDatabase;J)J
    .registers 18
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "blobId"    # J

    .prologue
    .line 2429
    const/4 v8, 0x0

    .line 2432
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string/jumbo v1, "upload_blob_events"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "events_key_ref"

    aput-object v3, v2, v0

    const-string/jumbo v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "upload_blobs_key_ref"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2434
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 2436
    const-string/jumbo v0, "events_key_ref"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_93

    move-result-wide v10

    .line 2449
    .local v10, "eventId":J
    if-eqz v8, :cond_45

    .line 2451
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2459
    :cond_45
    const/4 v8, 0x0

    .line 2462
    :try_start_46
    const-string/jumbo v1, "events"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "session_key_ref"

    aput-object v3, v2, v0

    const-string/jumbo v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2464
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 2466
    const-string/jumbo v0, "session_key_ref"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_84
    .catchall {:try_start_46 .. :try_end_84} :catchall_a3

    move-result-wide v12

    .line 2478
    .local v12, "sessionId":J
    if-eqz v8, :cond_8a

    .line 2480
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2486
    .end local v10    # "eventId":J
    .end local v12    # "sessionId":J
    :cond_8a
    :goto_8a
    return-wide v12

    .line 2449
    :cond_8b
    if-eqz v8, :cond_90

    .line 2451
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2452
    :cond_90
    const-wide/16 v12, -0x1

    goto :goto_8a

    .line 2449
    :catchall_93
    move-exception v0

    if-eqz v8, :cond_99

    .line 2451
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2452
    :cond_99
    throw v0

    .line 2473
    .restart local v10    # "eventId":J
    :cond_9a
    :try_start_9a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No session associated with event"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a3
    .catchall {:try_start_9a .. :try_end_a3} :catchall_a3

    .line 2478
    :catchall_a3
    move-exception v0

    if-eqz v8, :cond_a9

    .line 2480
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2481
    :cond_a9
    throw v0
.end method

.method private static getSessionIdForEventId(Landroid/database/sqlite/SQLiteDatabase;J)J
    .registers 12
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "eventId"    # J

    .prologue
    .line 2568
    const/4 v8, 0x0

    .line 2571
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string/jumbo v1, "events"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "session_key_ref"

    aput-object v3, v2, v0

    const-string/jumbo v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2573
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2575
    const-string/jumbo v0, "session_key_ref"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_4c

    move-result-wide v0

    .line 2585
    if-eqz v8, :cond_45

    .line 2587
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2588
    :cond_45
    return-wide v0

    .line 2581
    :cond_46
    :try_start_46
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4c

    .line 2585
    :catchall_4c
    move-exception v0

    if-eqz v8, :cond_52

    .line 2587
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2588
    :cond_52
    throw v0
.end method

.method private static getSessionStartTime(Landroid/database/sqlite/SQLiteDatabase;J)J
    .registers 12
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sessionId"    # J

    .prologue
    .line 2636
    const/4 v8, 0x0

    .line 2639
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string/jumbo v1, "sessions"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "session_start_wall_time"

    aput-object v3, v2, v0

    const-string/jumbo v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2641
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2643
    const-string/jumbo v0, "session_start_wall_time"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_4c

    move-result-wide v0

    .line 2653
    if-eqz v8, :cond_45

    .line 2655
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2656
    :cond_45
    return-wide v0

    .line 2649
    :cond_46
    :try_start_46
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4c

    .line 2653
    :catchall_4c
    move-exception v0

    if-eqz v8, :cond_52

    .line 2655
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2656
    :cond_52
    throw v0
.end method

.method private static getSessionUuid(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .registers 12
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sessionId"    # J

    .prologue
    .line 2602
    const/4 v8, 0x0

    .line 2605
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string/jumbo v1, "sessions"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "uuid"

    aput-object v3, v2, v0

    const-string/jumbo v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2607
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2609
    const-string/jumbo v0, "uuid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_4c

    move-result-object v0

    .line 2619
    if-eqz v8, :cond_45

    .line 2621
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2622
    :cond_45
    return-object v0

    .line 2615
    :cond_46
    :try_start_46
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4c

    .line 2619
    :catchall_4c
    move-exception v0

    if-eqz v8, :cond_52

    .line 2621
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2622
    :cond_52
    throw v0
.end method

.method private static getStringFromAppInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 2536
    const/4 v8, 0x0

    .line 2540
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_2
    const-string/jumbo v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2542
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2544
    invoke-interface {v8, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_2b

    move-result-object v0

    .line 2549
    if-eqz v8, :cond_23

    .line 2551
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2556
    :cond_23
    :goto_23
    return-object v0

    .line 2549
    :cond_24
    if-eqz v8, :cond_29

    .line 2551
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_29
    move-object v0, v9

    .line 2556
    goto :goto_23

    .line 2549
    :catchall_2b
    move-exception v0

    if-eqz v8, :cond_31

    .line 2551
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2552
    :cond_31
    throw v0
.end method

.method static preUploadBuildBlobs(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 20
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2718
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 2720
    .local v12, "eventIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v13, 0x0

    .line 2721
    .local v13, "eventsCursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 2724
    .local v11, "blob_eventsCursor":Landroid/database/Cursor;
    :try_start_7
    const-string/jumbo v3, "events"

    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper;->PROJECTION_UPLOAD_EVENTS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/localytics/android/MigrationDatabaseHelper;->EVENTS_SORT_ORDER:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2726
    const-string/jumbo v3, "upload_blob_events"

    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper;->PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/localytics/android/MigrationDatabaseHelper;->UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2728
    const-string/jumbo v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 2729
    .local v15, "idColumn":I
    new-instance v2, Landroid/database/CursorJoiner;

    sget-object v3, Lcom/localytics/android/MigrationDatabaseHelper;->JOINER_ARG_UPLOAD_EVENTS_COLUMNS:[Ljava/lang/String;

    sget-object v4, Lcom/localytics/android/MigrationDatabaseHelper;->PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

    invoke-direct {v2, v13, v3, v11, v4}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 2730
    invoke-virtual {v2}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/database/CursorJoiner$Result;

    .line 2732
    .local v16, "joinerResult":Landroid/database/CursorJoiner$Result;
    sget-object v2, Lcom/localytics/android/MigrationDatabaseHelper$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v16 .. v16}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_f0

    goto :goto_3d

    .line 2736
    :pswitch_55
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catchall {:try_start_7 .. :try_end_60} :catchall_61

    goto :goto_3d

    .line 2748
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "idColumn":I
    .end local v16    # "joinerResult":Landroid/database/CursorJoiner$Result;
    :catchall_61
    move-exception v2

    if-eqz v13, :cond_67

    .line 2750
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2754
    :cond_67
    if-eqz v11, :cond_6c

    .line 2756
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2757
    :cond_6c
    throw v2

    .line 2748
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v15    # "idColumn":I
    :cond_6d
    if-eqz v13, :cond_72

    .line 2750
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2754
    :cond_72
    if-eqz v11, :cond_77

    .line 2756
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2761
    :cond_77
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_ee

    .line 2764
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 2768
    .local v17, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    const-string/jumbo v2, "upload_blobs"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 2770
    .local v10, "blobId":Ljava/lang/Long;
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 2773
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_a9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    .line 2775
    .local v18, "x":Ljava/lang/Long;
    const-string/jumbo v2, "upload_blobs_key_ref"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2776
    const-string/jumbo v2, "events_key_ref"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2778
    const-string/jumbo v2, "upload_blob_events"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2780
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    goto :goto_a9

    .line 2783
    .end local v18    # "x":Ljava/lang/Long;
    :cond_d6
    const-string/jumbo v2, "processed_in_blob"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2784
    const-string/jumbo v2, "event_history"

    sget-object v3, Lcom/localytics/android/MigrationDatabaseHelper;->SELECTION_UPLOAD_NULL_BLOBS:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2785
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 2787
    .end local v10    # "blobId":Ljava/lang/Long;
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_ee
    return-void

    .line 2732
    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_55
    .end packed-switch
.end method

.method static wallTimeForEvent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .registers 14
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 2201
    const/4 v8, 0x0

    .line 2202
    .local v8, "query":Landroid/database/Cursor;
    const-wide/16 v10, 0x0

    .line 2205
    .local v10, "wallTime":J
    :try_start_3
    const-string/jumbo v1, "events"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "wall_time"

    aput-object v3, v2, v0

    const-string/jumbo v3, "uuid=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2211
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2213
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_31

    move-result-wide v10

    .line 2218
    :cond_2b
    if-eqz v8, :cond_30

    .line 2220
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2224
    :cond_30
    return-wide v10

    .line 2218
    :catchall_31
    move-exception v0

    if-eqz v8, :cond_37

    .line 2220
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_37
    throw v0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 111
    if-nez p1, :cond_b

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "db cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_b
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 340
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 342
    const-string/jumbo v0, "SQLite library version is: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "select sqlite_version()"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 344
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_27

    .line 349
    const-string/jumbo v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 351
    :cond_27
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 26
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 124
    const/4 v4, 0x3

    move/from16 v0, p2

    if-ge v0, v4, :cond_41

    .line 126
    const-string/jumbo v4, "upload_blob_events"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    const-string/jumbo v4, "event_history"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    const-string/jumbo v4, "upload_blobs"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    const-string/jumbo v4, "attributes"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    const-string/jumbo v4, "events"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    const-string/jumbo v4, "sessions"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    :cond_41
    const/4 v4, 0x4

    move/from16 v0, p2

    if-ge v0, v4, :cond_61

    .line 138
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "sessions"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "iu"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    :cond_61
    const/4 v4, 0x5

    move/from16 v0, p2

    if-ge v0, v4, :cond_81

    .line 143
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "sessions"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "device_wifi_mac_hash"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    :cond_81
    const/4 v4, 0x6

    move/from16 v0, p2

    if-ge v0, v4, :cond_129

    .line 148
    const/4 v13, 0x0

    .line 151
    .local v13, "attributesCursor":Landroid/database/Cursor;
    :try_start_87
    const-string/jumbo v5, "attributes"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v7, "_id"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string/jumbo v7, "attribute_key"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 155
    const-string/jumbo v4, "_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 156
    .local v15, "idColumnIndex":I
    const-string/jumbo v4, "attribute_key"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 158
    .local v16, "keyColumnIndex":I
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v18, "tempValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "%s = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 160
    .local v21, "whereClause":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 162
    .local v20, "whereArgs":[Ljava/lang/String;
    const/4 v4, -0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 163
    :goto_d0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_124

    .line 165
    const-string/jumbo v4, "attribute_key"

    const-string/jumbo v5, "%s:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/localytics/android/MigrationDatabaseHelper;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v8}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v4, 0x0

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v20, v4

    .line 168
    const-string/jumbo v4, "attributes"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V
    :try_end_11c
    .catchall {:try_start_87 .. :try_end_11c} :catchall_11d

    goto :goto_d0

    .line 175
    .end local v15    # "idColumnIndex":I
    .end local v16    # "keyColumnIndex":I
    .end local v18    # "tempValues":Landroid/content/ContentValues;
    .end local v20    # "whereArgs":[Ljava/lang/String;
    .end local v21    # "whereClause":Ljava/lang/String;
    :catchall_11d
    move-exception v4

    if-eqz v13, :cond_123

    .line 177
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_123
    throw v4

    .line 175
    .restart local v15    # "idColumnIndex":I
    .restart local v16    # "keyColumnIndex":I
    .restart local v18    # "tempValues":Landroid/content/ContentValues;
    .restart local v20    # "whereArgs":[Ljava/lang/String;
    .restart local v21    # "whereClause":Ljava/lang/String;
    :cond_124
    if-eqz v13, :cond_129

    .line 177
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 183
    .end local v13    # "attributesCursor":Landroid/database/Cursor;
    .end local v15    # "idColumnIndex":I
    .end local v16    # "keyColumnIndex":I
    .end local v18    # "tempValues":Landroid/content/ContentValues;
    .end local v20    # "whereArgs":[Ljava/lang/String;
    .end local v21    # "whereClause":Ljava/lang/String;
    :cond_129
    const/4 v4, 0x7

    move/from16 v0, p2

    if-ge v0, v4, :cond_171

    .line 186
    const-string/jumbo v4, "CREATE TABLE IF NOT EXISTS %s (%s TEXT, %s INTEGER);"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "info"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "fb_attribution"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "first_run"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v19, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "fb_attribution"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v4, "first_run"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 190
    const-string/jumbo v4, "info"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 193
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_171
    const/16 v4, 0x8

    move/from16 v0, p2

    if-ge v0, v4, :cond_19e

    .line 196
    const-string/jumbo v4, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL);"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "identifiers"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "key"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "value"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    :cond_19e
    const/16 v4, 0x9

    move/from16 v0, p2

    if-ge v0, v4, :cond_1bf

    .line 202
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s INTEGER NOT NULL DEFAULT 0;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "events"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "clv_increase"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    :cond_1bf
    const/16 v4, 0xa

    move/from16 v0, p2

    if-ge v0, v4, :cond_1e0

    .line 208
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "info"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "play_attribution"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 211
    :cond_1e0
    const/16 v4, 0xb

    move/from16 v0, p2

    if-ge v0, v4, :cond_21c

    .line 214
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "info"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "registration_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "info"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "registration_version"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 218
    :cond_21c
    const/16 v4, 0xc

    move/from16 v0, p2

    if-ge v0, v4, :cond_2db

    .line 221
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "info"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "first_android_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "info"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "first_telephony_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "info"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "package_name"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .restart local v19    # "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "first_android_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/localytics/android/MigrationDatabaseHelper;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v5}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/localytics/android/DatapointHelper;->getAndroidIdOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v4, "first_telephony_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/localytics/android/MigrationDatabaseHelper;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v5}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/localytics/android/DatapointHelper;->getTelephonyDeviceIdOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string/jumbo v4, "package_name"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/localytics/android/MigrationDatabaseHelper;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v5}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v4, "info"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 231
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "sessions"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "device_android_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_2db
    const/16 v4, 0xd

    move/from16 v0, p2

    if-ge v0, v4, :cond_317

    .line 237
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s REAL;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "events"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "event_lat"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 238
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s REAL;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "events"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "event_lng"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    :cond_317
    const/16 v4, 0xe

    move/from16 v0, p2

    if-ge v0, v4, :cond_470

    .line 244
    const-string/jumbo v4, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER, %s INTEGER, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER, %s INTEGER NOT NULL, %s TEXT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL)"

    const/16 v5, 0x13

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "amp_rules"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "campaign_id"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "expiration"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "display_seconds"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "display_session"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "version"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string/jumbo v7, "phone_location"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string/jumbo v7, "phone_size_width"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string/jumbo v7, "phone_size_height"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string/jumbo v7, "tablet_location"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string/jumbo v7, "tablet_size_width"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string/jumbo v7, "tablet_size_height"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string/jumbo v7, "time_to_display"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string/jumbo v7, "internet_required"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string/jumbo v7, "ab_test"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string/jumbo v7, "rule_name"

    aput-object v7, v5, v6

    const/16 v6, 0x11

    const-string/jumbo v7, "location"

    aput-object v7, v5, v6

    const/16 v6, 0x12

    const-string/jumbo v7, "devices"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    const-string/jumbo v4, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "amp_ruleevent"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "event_name"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "rule_id_ref"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "amp_rules"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v4, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER NOT NULL DEFAULT 0, %s INTEGER NOT NULL);"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "amp_displayed"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "displayed"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "campaign_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 255
    const-string/jumbo v4, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "amp_conditions"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "attribute_name"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "operator"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "rule_id_ref"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "amp_rules"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 258
    const-string/jumbo v4, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "amp_condition_values"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "value"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "condition_id_ref"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "amp_conditions"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 261
    :cond_470
    const/16 v4, 0xf

    move/from16 v0, p2

    if-ge v0, v4, :cond_49d

    .line 264
    const-string/jumbo v4, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL);"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "custom_dimensions"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "custom_dimension_key"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "custom_dimension_value"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    :cond_49d
    const/16 v4, 0x10

    move/from16 v0, p2

    if-ge v0, v4, :cond_50f

    .line 270
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "info"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "first_advertising_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 273
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "sessions"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "device_advertising_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s INTEGER;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "info"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "push_disabled"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "info"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "sender_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 282
    :cond_50f
    const/16 v4, 0x11

    move/from16 v0, p2

    if-ge v0, v4, :cond_5c9

    .line 285
    const-string/jumbo v4, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT, %s INTEGER)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "profile"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "attribute"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "action"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "events"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "customer_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 289
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "events"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "user_type"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 290
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "events"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "ids"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s INTEGER"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "info"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "last_session_open_time"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s INTEGER NOT NULL CHECK (%s >= 0) DEFAULT 0"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "sessions"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "elapsed"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "elapsed"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 299
    :cond_5c9
    const/16 v4, 0x12

    move/from16 v0, p2

    if-ge v0, v4, :cond_68f

    .line 301
    const-string/jumbo v4, "ALTER TABLE %s ADD COLUMN %s TEXT"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "profile"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "customer_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    const/4 v14, 0x0

    .line 303
    .local v14, "cursor":Landroid/database/Cursor;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 308
    .restart local v19    # "values":Landroid/content/ContentValues;
    :try_start_5f0
    const-string/jumbo v5, "profile"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 309
    :goto_5ff
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_68a

    .line 311
    const-string/jumbo v4, "_id"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_613
    .catchall {:try_start_5f0 .. :try_end_613} :catchall_683

    move-result-object v17

    .line 314
    .local v17, "rowID":Ljava/lang/String;
    :try_start_614
    new-instance v12, Lorg/json/JSONObject;

    const-string/jumbo v4, "attribute"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 315
    .local v12, "attributeJSON":Lorg/json/JSONObject;
    const-string/jumbo v4, "attribute"

    const-string/jumbo v5, "attributes"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string/jumbo v4, "customer_id"

    const-string/jumbo v5, "id"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v4, "profile"

    const-string/jumbo v5, "%s = %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v17, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 318
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V
    :try_end_663
    .catch Ljava/lang/Exception; {:try_start_614 .. :try_end_663} :catch_664
    .catchall {:try_start_614 .. :try_end_663} :catchall_683

    goto :goto_5ff

    .line 322
    .end local v12    # "attributeJSON":Lorg/json/JSONObject;
    :catch_664
    move-exception v4

    :try_start_665
    const-string/jumbo v4, "profile"

    const-string/jumbo v5, "%s = %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v17, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_681
    .catchall {:try_start_665 .. :try_end_681} :catchall_683

    goto/16 :goto_5ff

    .line 328
    .end local v17    # "rowID":Ljava/lang/String;
    :catchall_683
    move-exception v4

    if-eqz v14, :cond_689

    .line 330
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_689
    throw v4

    .line 328
    :cond_68a
    if-eqz v14, :cond_68f

    .line 330
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 335
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_68f
    return-void
.end method
