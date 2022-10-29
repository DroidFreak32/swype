.class Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;
.super Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;
.source "AnalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/AnalyticsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnalyticsDatabaseHelper"
.end annotation


# instance fields
.field private mScreensFromV2:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 362
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V

    .line 363
    return-void
.end method


# virtual methods
.method protected addFirstOpenEventToInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 787
    const-string/jumbo v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "info"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "first_open_event_blob"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method protected addScreens(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 792
    const-string/jumbo v3, "CREATE TABLE %s (%s TEXT NOT NULL)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "screens"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "name"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 795
    iget-object v3, p0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->mScreensFromV2:Lorg/json/JSONArray;

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->mScreensFromV2:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_56

    .line 797
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    iget-object v3, p0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->mScreensFromV2:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_56

    .line 802
    :try_start_2e
    iget-object v3, p0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->mScreensFromV2:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_33} :catch_4f

    move-result-object v1

    .line 809
    .local v1, "screen":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 811
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 812
    .local v2, "screenValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string/jumbo v3, "screens"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 797
    .end local v2    # "screenValues":Landroid/content/ContentValues;
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 805
    .end local v1    # "screen":Ljava/lang/String;
    :catch_4f
    move-exception v3

    const-string/jumbo v3, "Bad data in v2 db. Non-string type in screen flow"

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 817
    .end local v0    # "i":I
    :cond_56
    return-void
.end method

.method protected migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 51
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 390
    const-string/jumbo v4, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER NOT NULL);"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "events"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "blob"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "upload_format"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 400
    const-string/jumbo v4, "CREATE TABLE %s (%s TEXT PRIMARY KEY, %s TEXT NOT NULL);"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "identifiers"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "key"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "value"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 408
    const-string/jumbo v4, "CREATE TABLE %s (%s TEXT PRIMARY KEY, %s TEXT NOT NULL);"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "custom_dimensions"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "custom_dimension_key"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "custom_dimension_value"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 445
    const-string/jumbo v4, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT UNIQUE NOT NULL, %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL CHECK(%s IN (%s, %s)), %s INTEGER NOT NULL CHECK(%s IN (%s, %s)), %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s INTEGER CHECK (%s >= 0), %s INTEGER CHECK (%s >= 0), %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL CHECK (%s >= 0), %s TEXT, %s INTEGER);"

    const/16 v5, 0x24

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "info"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "api_key"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "uuid"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "created_time"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "created_time"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "opt_out"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string/jumbo v7, "opt_out"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string/jumbo v7, "0"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string/jumbo v7, "1"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string/jumbo v7, "push_disabled"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string/jumbo v7, "push_disabled"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string/jumbo v7, "0"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string/jumbo v7, "1"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string/jumbo v7, "sender_id"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string/jumbo v7, "registration_id"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string/jumbo v7, "registration_version"

    aput-object v7, v5, v6

    const/16 v6, 0x11

    const-string/jumbo v7, "customer_id"

    aput-object v7, v5, v6

    const/16 v6, 0x12

    const-string/jumbo v7, "user_type"

    aput-object v7, v5, v6

    const/16 v6, 0x13

    const-string/jumbo v7, "fb_attribution"

    aput-object v7, v5, v6

    const/16 v6, 0x14

    const-string/jumbo v7, "play_attribution"

    aput-object v7, v5, v6

    const/16 v6, 0x15

    const-string/jumbo v7, "first_android_id"

    aput-object v7, v5, v6

    const/16 v6, 0x16

    const-string/jumbo v7, "first_advertising_id"

    aput-object v7, v5, v6

    const/16 v6, 0x17

    const-string/jumbo v7, "package_name"

    aput-object v7, v5, v6

    const/16 v6, 0x18

    const-string/jumbo v7, "app_version"

    aput-object v7, v5, v6

    const/16 v6, 0x19

    const-string/jumbo v7, "current_session_uuid"

    aput-object v7, v5, v6

    const/16 v6, 0x1a

    const-string/jumbo v7, "last_session_open_time"

    aput-object v7, v5, v6

    const/16 v6, 0x1b

    const-string/jumbo v7, "last_session_open_time"

    aput-object v7, v5, v6

    const/16 v6, 0x1c

    const-string/jumbo v7, "last_session_close_time"

    aput-object v7, v5, v6

    const/16 v6, 0x1d

    const-string/jumbo v7, "last_session_close_time"

    aput-object v7, v5, v6

    const/16 v6, 0x1e

    const-string/jumbo v7, "next_session_number"

    aput-object v7, v5, v6

    const/16 v6, 0x1f

    const-string/jumbo v7, "next_session_number"

    aput-object v7, v5, v6

    const/16 v6, 0x20

    const-string/jumbo v7, "next_header_number"

    aput-object v7, v5, v6

    const/16 v6, 0x21

    const-string/jumbo v7, "next_header_number"

    aput-object v7, v5, v6

    const/16 v6, 0x22

    const-string/jumbo v7, "queued_close_session_blob"

    aput-object v7, v5, v6

    const/16 v6, 0x23

    const-string/jumbo v7, "queued_close_session_blob_upload_format"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 496
    sget-object v4, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_630

    .line 498
    sget-object v48, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v48

    .line 500
    const/16 v24, 0x0

    .line 501
    .local v24, "cursor":Landroid/database/Cursor;
    :try_start_176
    new-instance v47, Landroid/content/ContentValues;

    invoke-direct/range {v47 .. v47}, Landroid/content/ContentValues;-><init>()V
    :try_end_17b
    .catchall {:try_start_176 .. :try_end_17b} :catchall_261

    .line 503
    .local v47, "values":Landroid/content/ContentValues;
    const/4 v12, 0x0

    .line 504
    .local v12, "apiKey":Ljava/lang/String;
    const/16 v43, 0x0

    .line 505
    .local v43, "uuid":Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 506
    .local v18, "createdTime":J
    const/16 v39, 0x0

    .line 507
    .local v39, "optedOut":Z
    const-wide/16 v28, 0x1

    .line 508
    .local v28, "headerNumber":J
    const-wide/16 v44, 0x1

    .line 509
    .local v44, "sessionNumber":J
    const/16 v38, 0x0

    .line 510
    .local v38, "newestCloseSessionTag":Ljava/lang/String;
    const-wide/16 v40, 0x0

    .line 511
    .local v40, "newestCloseSessionTime":J
    const/16 v21, 0x0

    .line 512
    .local v21, "currentSessionUUID":Ljava/lang/String;
    const/16 v25, 0x0

    .line 513
    .local v25, "customerID":Ljava/lang/String;
    const/16 v42, 0x0

    .line 517
    .local v42, "screenFlow":Lorg/json/JSONArray;
    :try_start_190
    sget-object v4, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "api_keys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 518
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1f0

    .line 520
    const-string/jumbo v4, "api_key"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 521
    const-string/jumbo v4, "uuid"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 522
    const-string/jumbo v4, "created_time"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 523
    const-string/jumbo v4, "opt_out"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string/jumbo v5, "1"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1eb
    .catchall {:try_start_190 .. :try_end_1eb} :catchall_267

    move-result v5

    if-ne v4, v5, :cond_264

    const/16 v39, 0x1

    .line 528
    :cond_1f0
    :goto_1f0
    if-eqz v24, :cond_1f7

    .line 530
    :try_start_1f2
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_1f5
    .catchall {:try_start_1f2 .. :try_end_1f5} :catchall_261

    .line 531
    const/16 v24, 0x0

    .line 537
    :cond_1f7
    :try_start_1f7
    sget-object v4, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "identifiers"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 538
    :goto_206
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_26e

    .line 540
    const-string/jumbo v4, "key"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 541
    .local v35, "key":Ljava/lang/String;
    const-string/jumbo v4, "value"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 542
    .local v46, "value":Ljava/lang/String;
    const-string/jumbo v4, "customer_id"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_237

    .line 543
    move-object/from16 v25, v46

    .line 545
    :cond_237
    const-string/jumbo v4, "key"

    move-object/from16 v0, v47

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string/jumbo v4, "value"

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string/jumbo v4, "identifiers"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 548
    invoke-virtual/range {v47 .. v47}, Landroid/content/ContentValues;->clear()V
    :try_end_259
    .catchall {:try_start_1f7 .. :try_end_259} :catchall_25a

    goto :goto_206

    .line 553
    .end local v35    # "key":Ljava/lang/String;
    .end local v46    # "value":Ljava/lang/String;
    :catchall_25a
    move-exception v4

    if-eqz v24, :cond_260

    .line 555
    :try_start_25d
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_260
    throw v4

    .line 744
    .end local v12    # "apiKey":Ljava/lang/String;
    .end local v18    # "createdTime":J
    .end local v21    # "currentSessionUUID":Ljava/lang/String;
    .end local v25    # "customerID":Ljava/lang/String;
    .end local v28    # "headerNumber":J
    .end local v38    # "newestCloseSessionTag":Ljava/lang/String;
    .end local v39    # "optedOut":Z
    .end local v40    # "newestCloseSessionTime":J
    .end local v42    # "screenFlow":Lorg/json/JSONArray;
    .end local v43    # "uuid":Ljava/lang/String;
    .end local v44    # "sessionNumber":J
    .end local v47    # "values":Landroid/content/ContentValues;
    :catchall_261
    move-exception v4

    monitor-exit v48
    :try_end_263
    .catchall {:try_start_25d .. :try_end_263} :catchall_261

    throw v4

    .line 523
    .restart local v12    # "apiKey":Ljava/lang/String;
    .restart local v18    # "createdTime":J
    .restart local v21    # "currentSessionUUID":Ljava/lang/String;
    .restart local v25    # "customerID":Ljava/lang/String;
    .restart local v28    # "headerNumber":J
    .restart local v38    # "newestCloseSessionTag":Ljava/lang/String;
    .restart local v39    # "optedOut":Z
    .restart local v40    # "newestCloseSessionTime":J
    .restart local v42    # "screenFlow":Lorg/json/JSONArray;
    .restart local v43    # "uuid":Ljava/lang/String;
    .restart local v44    # "sessionNumber":J
    .restart local v47    # "values":Landroid/content/ContentValues;
    :cond_264
    const/16 v39, 0x0

    goto :goto_1f0

    .line 528
    :catchall_267
    move-exception v4

    if-eqz v24, :cond_26d

    .line 530
    :try_start_26a
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_26d
    throw v4

    .line 553
    :cond_26e
    if-eqz v24, :cond_275

    .line 555
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_273
    .catchall {:try_start_26a .. :try_end_273} :catchall_261

    .line 556
    const/16 v24, 0x0

    .line 562
    :cond_275
    :try_start_275
    sget-object v4, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "custom_dimensions"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 563
    :goto_284
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2da

    .line 565
    const-string/jumbo v4, "custom_dimension_key"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 566
    .restart local v35    # "key":Ljava/lang/String;
    const-string/jumbo v4, "custom_dimension_key"

    const-string/jumbo v5, "com.localytics.android:"

    const-string/jumbo v6, ""

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string/jumbo v4, "custom_dimension_value"

    const-string/jumbo v5, "custom_dimension_value"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string/jumbo v4, "custom_dimensions"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 569
    invoke-virtual/range {v47 .. v47}, Landroid/content/ContentValues;->clear()V
    :try_end_2d2
    .catchall {:try_start_275 .. :try_end_2d2} :catchall_2d3

    goto :goto_284

    .line 574
    .end local v35    # "key":Ljava/lang/String;
    :catchall_2d3
    move-exception v4

    if-eqz v24, :cond_2d9

    .line 576
    :try_start_2d6
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 577
    :cond_2d9
    throw v4

    .line 574
    :cond_2da
    if-eqz v24, :cond_2e1

    .line 576
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 577
    const/16 v24, 0x0

    .line 581
    :cond_2e1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v13

    .line 582
    .local v13, "appContext":Landroid/content/Context;
    if-eqz v12, :cond_471

    .line 584
    sget-object v4, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->preUploadBuildBlobs(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 586
    const/16 v27, 0x0

    .line 589
    .local v27, "headerBlob":Lorg/json/JSONObject;
    :goto_2f2
    sget-object v4, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v13, v4, v12}, Lcom/localytics/android/MigrationDatabaseHelper;->convertDatabaseToJson(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    .line 590
    .local v26, "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_471

    .line 594
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .local v14, "builder":Ljava/lang/StringBuilder;
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "i$":Ljava/util/Iterator;
    move-wide/from16 v30, v28

    .end local v28    # "headerNumber":J
    .local v30, "headerNumber":J
    :goto_309
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46d

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/json/JSONObject;
    :try_end_315
    .catchall {:try_start_2d6 .. :try_end_315} :catchall_261

    .line 599
    .local v34, "json":Lorg/json/JSONObject;
    :try_start_315
    const-string/jumbo v4, "dt"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "h"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_337

    .line 601
    if-nez v27, :cond_67d

    .line 603
    const-string/jumbo v4, "seq"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 605
    .end local v30    # "headerNumber":J
    .restart local v28    # "headerNumber":J
    :goto_332
    move-object/from16 v27, v34

    move-wide/from16 v30, v28

    .end local v28    # "headerNumber":J
    .restart local v30    # "headerNumber":J
    goto :goto_309

    .line 609
    :cond_337
    const-string/jumbo v4, "seq"
    :try_end_33a
    .catch Ljava/lang/Exception; {:try_start_315 .. :try_end_33a} :catch_678
    .catchall {:try_start_315 .. :try_end_33a} :catchall_261

    const-wide/16 v6, 0x1

    add-long v28, v30, v6

    .end local v30    # "headerNumber":J
    .restart local v28    # "headerNumber":J
    :try_start_33e
    move-object/from16 v0, v27

    move-wide/from16 v1, v30

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 610
    const-string/jumbo v4, "u"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 612
    const-string/jumbo v4, "attrs"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 613
    const-string/jumbo v5, "lpg"

    invoke-static {v13}, Lcom/localytics/android/DatapointHelper;->isLocationPermissionGranted(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 615
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string/jumbo v4, "dt"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "c"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41f

    .line 618
    const/16 v33, 0x0

    .line 619
    .local v33, "isMostRecentClose":Z
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 620
    .local v20, "currentCloseSessionTag":Ljava/lang/String;
    const-string/jumbo v4, "u"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 621
    .local v17, "closeUUID":Ljava/lang/String;
    sget-object v4, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/localytics/android/MigrationDatabaseHelper;->wallTimeForEvent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v22

    .line 625
    .local v22, "currentCloseSessionWallTimeMillis":J
    if-eqz v38, :cond_3d9

    .line 629
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 630
    .local v16, "closeSessionContentValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "upload_format"

    sget-object v5, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v5}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    cmp-long v4, v22, v40

    if-lez v4, :cond_404

    .line 635
    const-string/jumbo v4, "blob"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string/jumbo v4, "events"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 650
    .end local v16    # "closeSessionContentValues":Landroid/content/ContentValues;
    :cond_3d9
    move-object/from16 v38, v20

    .line 651
    move-wide/from16 v40, v22

    .line 652
    const/16 v33, 0x1

    .line 656
    :goto_3df
    if-eqz v33, :cond_3f5

    const-string/jumbo v4, "fl"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f5

    .line 658
    const-string/jumbo v4, "fl"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v42

    .line 672
    .end local v17    # "closeUUID":Ljava/lang/String;
    .end local v20    # "currentCloseSessionTag":Ljava/lang/String;
    .end local v22    # "currentCloseSessionWallTimeMillis":J
    .end local v33    # "isMostRecentClose":Z
    :cond_3f5
    :goto_3f5
    invoke-virtual/range {v47 .. v47}, Landroid/content/ContentValues;->clear()V

    .line 673
    const/4 v4, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-wide/from16 v30, v28

    .line 678
    .end local v28    # "headerNumber":J
    .restart local v30    # "headerNumber":J
    goto/16 :goto_309

    .line 644
    .end local v30    # "headerNumber":J
    .restart local v16    # "closeSessionContentValues":Landroid/content/ContentValues;
    .restart local v17    # "closeUUID":Ljava/lang/String;
    .restart local v20    # "currentCloseSessionTag":Ljava/lang/String;
    .restart local v22    # "currentCloseSessionWallTimeMillis":J
    .restart local v28    # "headerNumber":J
    .restart local v33    # "isMostRecentClose":Z
    :cond_404
    const-string/jumbo v4, "blob"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string/jumbo v4, "events"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3df

    .line 679
    .end local v16    # "closeSessionContentValues":Landroid/content/ContentValues;
    .end local v17    # "closeUUID":Ljava/lang/String;
    .end local v20    # "currentCloseSessionTag":Ljava/lang/String;
    .end local v22    # "currentCloseSessionWallTimeMillis":J
    .end local v33    # "isMostRecentClose":Z
    :catch_41a
    move-exception v4

    :goto_41b
    move-wide/from16 v30, v28

    .end local v28    # "headerNumber":J
    .restart local v30    # "headerNumber":J
    goto/16 :goto_309

    .line 663
    .end local v30    # "headerNumber":J
    .restart local v28    # "headerNumber":J
    :cond_41f
    const-string/jumbo v4, "dt"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_443

    .line 665
    const-string/jumbo v4, "nth"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v44

    .line 666
    const-string/jumbo v4, "u"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 668
    :cond_443
    const-string/jumbo v4, "blob"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string/jumbo v4, "upload_format"

    sget-object v5, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v5}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    const-string/jumbo v4, "events"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_46c
    .catch Ljava/lang/Exception; {:try_start_33e .. :try_end_46c} :catch_41a
    .catchall {:try_start_33e .. :try_end_46c} :catchall_261

    goto :goto_3f5

    .end local v28    # "headerNumber":J
    .end local v34    # "json":Lorg/json/JSONObject;
    .restart local v30    # "headerNumber":J
    :cond_46d
    move-wide/from16 v28, v30

    .line 680
    .end local v30    # "headerNumber":J
    .restart local v28    # "headerNumber":J
    goto/16 :goto_2f2

    .line 685
    .end local v14    # "builder":Ljava/lang/StringBuilder;
    .end local v26    # "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v27    # "headerBlob":Lorg/json/JSONObject;
    .end local v32    # "i$":Ljava/util/Iterator;
    :cond_471
    :try_start_471
    sget-object v4, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "info"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 686
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_627

    .line 688
    const-string/jumbo v4, "api_key"

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string/jumbo v4, "uuid"

    move-object/from16 v0, v47

    move-object/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string/jumbo v4, "created_time"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 691
    const-string/jumbo v4, "opt_out"

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 692
    const-string/jumbo v4, "push_disabled"

    const-string/jumbo v5, "push_disabled"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string/jumbo v4, "sender_id"

    const-string/jumbo v5, "sender_id"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string/jumbo v4, "registration_id"

    const-string/jumbo v5, "registration_id"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string/jumbo v4, "registration_version"

    const-string/jumbo v5, "registration_version"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    if-eqz v25, :cond_631

    .line 698
    const-string/jumbo v4, "customer_id"

    move-object/from16 v0, v47

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string/jumbo v4, "user_type"

    const-string/jumbo v5, "known"

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :goto_527
    const-string/jumbo v4, "fb_attribution"

    const-string/jumbo v5, "fb_attribution"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string/jumbo v4, "play_attribution"

    const-string/jumbo v5, "play_attribution"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string/jumbo v4, "first_android_id"

    const-string/jumbo v5, "first_android_id"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string/jumbo v4, "first_advertising_id"

    const-string/jumbo v5, "first_advertising_id"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string/jumbo v4, "app_version"

    invoke-static {v13}, Lcom/localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string/jumbo v4, "package_name"

    const-string/jumbo v5, "package_name"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string/jumbo v4, "current_session_uuid"

    move-object/from16 v0, v47

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string/jumbo v4, "last_session_open_time"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 714
    .local v36, "lastSessionOpenTime":J
    const-string/jumbo v4, "last_session_open_time"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 715
    const-string/jumbo v4, "last_session_close_time"

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 716
    const-string/jumbo v4, "next_header_number"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 717
    const-string/jumbo v4, "next_session_number"

    const-wide/16 v6, 0x1

    add-long v6, v6, v44

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 718
    cmp-long v4, v40, v36

    if-lez v4, :cond_64f

    .line 720
    const-string/jumbo v4, "queued_close_session_blob"

    move-object/from16 v0, v47

    move-object/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string/jumbo v4, "queued_close_session_blob_upload_format"

    sget-object v5, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v5}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->mScreensFromV2:Lorg/json/JSONArray;

    .line 731
    :cond_619
    :goto_619
    const-string/jumbo v4, "info"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 732
    invoke-virtual/range {v47 .. v47}, Landroid/content/ContentValues;->clear()V
    :try_end_627
    .catchall {:try_start_471 .. :try_end_627} :catchall_648

    .line 737
    .end local v36    # "lastSessionOpenTime":J
    :cond_627
    if-eqz v24, :cond_62c

    .line 739
    :try_start_629
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 743
    :cond_62c
    invoke-static {}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->cleanUpOldDB()V

    .line 744
    monitor-exit v48
    :try_end_630
    .catchall {:try_start_629 .. :try_end_630} :catchall_261

    .line 746
    .end local v12    # "apiKey":Ljava/lang/String;
    .end local v13    # "appContext":Landroid/content/Context;
    .end local v18    # "createdTime":J
    .end local v21    # "currentSessionUUID":Ljava/lang/String;
    .end local v24    # "cursor":Landroid/database/Cursor;
    .end local v25    # "customerID":Ljava/lang/String;
    .end local v28    # "headerNumber":J
    .end local v38    # "newestCloseSessionTag":Ljava/lang/String;
    .end local v39    # "optedOut":Z
    .end local v40    # "newestCloseSessionTime":J
    .end local v42    # "screenFlow":Lorg/json/JSONArray;
    .end local v43    # "uuid":Ljava/lang/String;
    .end local v44    # "sessionNumber":J
    .end local v47    # "values":Landroid/content/ContentValues;
    :cond_630
    return-void

    .line 703
    .restart local v12    # "apiKey":Ljava/lang/String;
    .restart local v13    # "appContext":Landroid/content/Context;
    .restart local v18    # "createdTime":J
    .restart local v21    # "currentSessionUUID":Ljava/lang/String;
    .restart local v24    # "cursor":Landroid/database/Cursor;
    .restart local v25    # "customerID":Ljava/lang/String;
    .restart local v28    # "headerNumber":J
    .restart local v38    # "newestCloseSessionTag":Ljava/lang/String;
    .restart local v39    # "optedOut":Z
    .restart local v40    # "newestCloseSessionTime":J
    .restart local v42    # "screenFlow":Lorg/json/JSONArray;
    .restart local v43    # "uuid":Ljava/lang/String;
    .restart local v44    # "sessionNumber":J
    .restart local v47    # "values":Landroid/content/ContentValues;
    :cond_631
    :try_start_631
    const-string/jumbo v4, "customer_id"

    move-object/from16 v0, v47

    move-object/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string/jumbo v4, "user_type"

    const-string/jumbo v5, "anonymous"

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_646
    .catchall {:try_start_631 .. :try_end_646} :catchall_648

    goto/16 :goto_527

    .line 737
    :catchall_648
    move-exception v4

    if-eqz v24, :cond_64e

    .line 739
    :try_start_64b
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_64e
    throw v4
    :try_end_64f
    .catchall {:try_start_64b .. :try_end_64f} :catchall_261

    .line 724
    .restart local v36    # "lastSessionOpenTime":J
    :cond_64f
    if-eqz v38, :cond_619

    .line 726
    :try_start_651
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 727
    .local v15, "closeEventTagValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "blob"

    move-object/from16 v0, v38

    invoke-virtual {v15, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string/jumbo v4, "upload_format"

    sget-object v5, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v5}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    const-string/jumbo v4, "events"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_677
    .catchall {:try_start_651 .. :try_end_677} :catchall_648

    goto :goto_619

    .line 679
    .end local v15    # "closeEventTagValues":Landroid/content/ContentValues;
    .end local v28    # "headerNumber":J
    .end local v36    # "lastSessionOpenTime":J
    .restart local v14    # "builder":Ljava/lang/StringBuilder;
    .restart local v26    # "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v27    # "headerBlob":Lorg/json/JSONObject;
    .restart local v30    # "headerNumber":J
    .restart local v32    # "i$":Ljava/util/Iterator;
    .restart local v34    # "json":Lorg/json/JSONObject;
    :catch_678
    move-exception v4

    move-wide/from16 v28, v30

    .end local v30    # "headerNumber":J
    .restart local v28    # "headerNumber":J
    goto/16 :goto_41b

    .end local v28    # "headerNumber":J
    .restart local v30    # "headerNumber":J
    :cond_67d
    move-wide/from16 v28, v30

    .end local v30    # "headerNumber":J
    .restart local v28    # "headerNumber":J
    goto/16 :goto_332
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 377
    if-nez p1, :cond_b

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "db cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_b
    const-string/jumbo v0, "PRAGMA auto_vacuum = INCREMENTAL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 384
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 770
    invoke-super {p0, p1}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 772
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

    .line 774
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_27

    .line 779
    const-string/jumbo v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 781
    :cond_27
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 751
    if-gtz p2, :cond_5

    .line 753
    invoke-virtual {p0, p1}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 756
    :cond_5
    const/4 v0, 0x2

    if-ge p2, v0, :cond_b

    .line 758
    invoke-virtual {p0, p1}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->addFirstOpenEventToInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 761
    :cond_b
    const/4 v0, 0x3

    if-ge p2, v0, :cond_11

    .line 763
    invoke-virtual {p0, p1}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->addScreens(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 765
    :cond_11
    return-void
.end method
