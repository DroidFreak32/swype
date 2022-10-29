.class Lcom/localytics/android/LocationProvider$LocationDatabaseHelper;
.super Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocationDatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 264
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V

    .line 265
    return-void
.end method


# virtual methods
.method protected migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 292
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY,%s TEXT NOT NULL UNIQUE,%s TEXT,%s INTEGER NOT NULL,%s INTEGER NOT NULL,%s INTEGER NOT NULL,%s INTEGER NOT NULL DEFAULT 0,%s INTEGER NOT NULL DEFAULT 0,%s INTEGER NOT NULL DEFAULT 0,%s INTEGER NOT NULL DEFAULT 0,%s INTEGER NOT NULL DEFAULT 1,%s INTEGER NOT NULL DEFAULT 0);"

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "geofences"

    aput-object v2, v1, v4

    const-string/jumbo v2, "place_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "identifier"

    aput-object v2, v1, v6

    const-string/jumbo v2, "name"

    aput-object v2, v1, v7

    const-string/jumbo v2, "latitude"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "longitude"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "radius"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "enter_analytics_enabled"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "exit_analytics_enabled"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "entered_time"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "exited_time"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "schema_version"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "is_monitored"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 320
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT,%s INTEGER REFERENCES %s(%s) ON DELETE CASCADE,%s TEXT NOT NULL,%s TEXT NOT NULL);"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "geofences_attributes"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "place_id"

    aput-object v2, v1, v6

    const-string/jumbo v2, "geofences"

    aput-object v2, v1, v7

    const-string/jumbo v2, "place_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "key"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "value"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 334
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER,%s INTEGER);"

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "info"

    aput-object v2, v1, v4

    const-string/jumbo v2, "places_data_last_modified"

    aput-object v2, v1, v5

    const-string/jumbo v2, "location_monitoring_enabled"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 279
    if-nez p1, :cond_b

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "db cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_b
    const-string/jumbo v0, "PRAGMA auto_vacuum = INCREMENTAL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 285
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/localytics/android/LocationProvider$LocationDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 286
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 354
    invoke-super {p0, p1}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 356
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

    .line 358
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_27

    .line 363
    const-string/jumbo v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 365
    :cond_27
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 345
    if-gtz p2, :cond_5

    .line 347
    invoke-virtual {p0, p1}, Lcom/localytics/android/LocationProvider$LocationDatabaseHelper;->migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 349
    :cond_5
    return-void
.end method
