.class final Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;
.super Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;
.source "ProfileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/ProfileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProfileDatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected final migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 130
    const-string/jumbo v1, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "changes"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "scope"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "change"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "customer_id"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    sget-object v1, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_db

    .line 143
    sget-object v15, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v15

    .line 145
    const/4 v9, 0x0

    .line 148
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_35
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v14, "values":Landroid/content/ContentValues;
    sget-object v1, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "profile"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "_id ASC"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 153
    :goto_4b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_c8

    move-result v1

    if-eqz v1, :cond_d2

    .line 157
    :try_start_51
    new-instance v13, Lorg/json/JSONObject;

    const-string/jumbo v1, "attribute"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    .local v13, "oldJSON":Lorg/json/JSONObject;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 159
    .local v12, "newJSON":Lorg/json/JSONObject;
    const-string/jumbo v1, "op"

    sget-object v2, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-virtual {v2}, Lcom/localytics/android/ProfileHandler$ProfileOperation;->getOperationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 161
    .local v11, "key":Ljava/lang/String;
    const-string/jumbo v1, "attr"

    invoke-virtual {v12, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string/jumbo v1, "value"

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string/jumbo v1, "scope"

    sget-object v2, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {v2}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v1, "change"

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v1, "customer_id"

    const-string/jumbo v2, "customer_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v1, "changes"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 168
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V
    :try_end_bf
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_bf} :catch_c0
    .catchall {:try_start_51 .. :try_end_bf} :catchall_c8

    goto :goto_4b

    .line 170
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "newJSON":Lorg/json/JSONObject;
    .end local v13    # "oldJSON":Lorg/json/JSONObject;
    :catch_c0
    move-exception v10

    .line 172
    .local v10, "e":Lorg/json/JSONException;
    :try_start_c1
    const-string/jumbo v1, "Caught JSON exception"

    invoke-static {v1, v10}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c7
    .catchall {:try_start_c1 .. :try_end_c7} :catchall_c8

    goto :goto_4b

    .line 180
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v14    # "values":Landroid/content/ContentValues;
    :catchall_c8
    move-exception v1

    if-eqz v9, :cond_ce

    .line 182
    :try_start_cb
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_ce
    throw v1

    .line 186
    :catchall_cf
    move-exception v1

    monitor-exit v15
    :try_end_d1
    .catchall {:try_start_cb .. :try_end_d1} :catchall_cf

    throw v1

    .line 176
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_d2
    :try_start_d2
    invoke-static {}, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;->cleanUpOldDB()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_c8

    .line 180
    if-eqz v9, :cond_da

    .line 182
    :try_start_d7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_da
    monitor-exit v15
    :try_end_db
    .catchall {:try_start_d7 .. :try_end_db} :catchall_cf

    .line 188
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_db
    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 117
    if-nez p1, :cond_b

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "db cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_b
    const-string/jumbo v0, "PRAGMA auto_vacuum = INCREMENTAL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 124
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 204
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

    .line 206
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_27

    .line 211
    const-string/jumbo v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 213
    :cond_27
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 193
    if-gtz p2, :cond_5

    .line 195
    invoke-virtual {p0, p1}, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;->migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 197
    :cond_5
    return-void
.end method
