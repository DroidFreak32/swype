.class Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;
.super Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;
.source "MarketingProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MarketingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarketingDatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 1214
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V

    .line 1215
    return-void
.end method


# virtual methods
.method protected addControlGroup(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1516
    const-string/jumbo v0, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT 0;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "marketing_rules"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "control_group"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1517
    return-void
.end method

.method protected addInboxCampaignTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1637
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER UNIQUE NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER, %s TEXT, %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT, %s INTEGER NOT NULL, %s INTEGER NOT NULL DEFAULT 0, %s INTEGER NOT NULL DEFAULT 1, %s TEXT, %s TEXT);"

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "inbox_campaigns"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "campaign_id"

    aput-object v2, v1, v6

    const-string/jumbo v2, "expiration"

    aput-object v2, v1, v7

    const-string/jumbo v2, "version"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "received_date"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "ab_test"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "rule_name"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "listing_title"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "listing_summary"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "sort_order"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "read"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "schema_version"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "thumbnail_location"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "creative_location"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1669
    const-string/jumbo v0, "CREATE TABLE %s (%s TEXT NOT NULL, %s TEXT NOT NULL,%s INTEGER REFERENCES %s(%s) ON DELETE CASCADE);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "inbox_campaign_attributes"

    aput-object v2, v1, v4

    const-string/jumbo v2, "key"

    aput-object v2, v1, v5

    const-string/jumbo v2, "value"

    aput-object v2, v1, v6

    const-string/jumbo v2, "inbox_id_ref"

    aput-object v2, v1, v7

    const-string/jumbo v2, "inbox_campaigns"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1677
    return-void
.end method

.method protected addNonUniqueRuleName(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1501
    const-string/jumbo v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "marketing_rules"

    aput-object v2, v1, v3

    const-string/jumbo v2, "rule_name_non_unique"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1507
    const-string/jumbo v0, "UPDATE %s SET %s = %s;"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "marketing_rules"

    aput-object v2, v1, v3

    const-string/jumbo v2, "rule_name_non_unique"

    aput-object v2, v1, v4

    const-string/jumbo v2, "rule_name"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1511
    return-void
.end method

.method protected addPlacesCampaignTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1682
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY,%s INTEGER NOT NULL,%s TEXT,%s INTEGER, %s INTEGER NOT NULL, %s TEXT, %s TEXT NOT NULL, %s INTEGER DEFAULT 0,%s INTEGER DEFAULT 1,%s TEXT,%s TEXT);"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "places_campaigns"

    aput-object v2, v1, v4

    const-string/jumbo v2, "campaign_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "creative_id"

    aput-object v2, v1, v6

    const-string/jumbo v2, "creative_type"

    aput-object v2, v1, v7

    const-string/jumbo v2, "expiration"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "version"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "ab_test"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "rule_name"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "control_group"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "schema_version"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "message"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "sound_filename"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1708
    const-string/jumbo v0, "CREATE TABLE %s (%s TEXT NOT NULL, %s TEXT NOT NULL,%s INTEGER REFERENCES %s(%s) ON DELETE CASCADE);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "places_campaign_attributes"

    aput-object v2, v1, v4

    const-string/jumbo v2, "key"

    aput-object v2, v1, v5

    const-string/jumbo v2, "value"

    aput-object v2, v1, v6

    const-string/jumbo v2, "campaign_id"

    aput-object v2, v1, v7

    const-string/jumbo v2, "places_campaigns"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "campaign_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1718
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER NOT NULL, %s INTEGER REFERENCES %s(%s) ON DELETE CASCADE);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "places_campaigns_geofence_triggers"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "place_id"

    aput-object v2, v1, v6

    const-string/jumbo v2, "campaign_id"

    aput-object v2, v1, v7

    const-string/jumbo v2, "places_campaigns"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "campaign_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1730
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) ON DELETE CASCADE);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "places_campaigns_events"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "event"

    aput-object v2, v1, v6

    const-string/jumbo v2, "campaign_id"

    aput-object v2, v1, v7

    const-string/jumbo v2, "places_campaigns"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "campaign_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1742
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY);"

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "places_campaigns_displayed"

    aput-object v2, v1, v4

    const-string/jumbo v2, "campaign_id"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1746
    return-void
.end method

.method protected addSchemaVersion(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1522
    const-string/jumbo v0, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT 1;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "marketing_rules"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "schema_version"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1523
    return-void
.end method

.method protected migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 1241
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER, %s INTEGER, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER, %s INTEGER NOT NULL, %s TEXT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL)"

    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "marketing_rules"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v11

    const-string/jumbo v2, "campaign_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "expiration"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string/jumbo v3, "display_seconds"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "display_session"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "version"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "phone_location"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "phone_size_width"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "phone_size_height"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "tablet_location"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "tablet_size_width"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "tablet_size_height"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "time_to_display"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "internet_required"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "ab_test"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "rule_name"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "location"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "devices"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1281
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "marketing_ruleevent"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v11

    const-string/jumbo v2, "event_name"

    aput-object v2, v1, v5

    const-string/jumbo v2, "rule_id_ref"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string/jumbo v3, "marketing_rules"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1291
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY);"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "marketing_displayed"

    aput-object v2, v1, v4

    const-string/jumbo v2, "campaign_id"

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1297
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "marketing_conditions"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v11

    const-string/jumbo v2, "attribute_name"

    aput-object v2, v1, v5

    const-string/jumbo v2, "operator"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string/jumbo v3, "rule_id_ref"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "marketing_rules"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1309
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "marketing_condition_values"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v11

    const-string/jumbo v2, "value"

    aput-object v2, v1, v5

    const-string/jumbo v2, "condition_id_ref"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string/jumbo v3, "marketing_conditions"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1318
    sget-object v0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_10

    .line 1320
    sget-object v10, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v10

    .line 1322
    const/4 v8, 0x0

    .line 1323
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1326
    .local v9, "values":Landroid/content/ContentValues;
    :try_start_1
    sget-object v0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "amp_rules"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "_id ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1327
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1329
    const-string/jumbo v0, "_id"

    const-string/jumbo v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1330
    const-string/jumbo v0, "campaign_id"

    const-string/jumbo v1, "campaign_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1331
    const-string/jumbo v0, "expiration"

    const-string/jumbo v1, "expiration"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1332
    const-string/jumbo v0, "display_seconds"

    const-string/jumbo v1, "display_seconds"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1333
    const-string/jumbo v0, "display_session"

    const-string/jumbo v1, "display_session"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1334
    const-string/jumbo v0, "version"

    const-string/jumbo v1, "version"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    const-string/jumbo v0, "phone_location"

    const-string/jumbo v1, "phone_location"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    const-string/jumbo v0, "phone_size_width"

    const-string/jumbo v1, "phone_size_width"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1337
    const-string/jumbo v0, "phone_size_height"

    const-string/jumbo v1, "phone_size_height"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1338
    const-string/jumbo v0, "tablet_location"

    const-string/jumbo v1, "tablet_location"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    const-string/jumbo v0, "tablet_size_width"

    const-string/jumbo v1, "tablet_size_width"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1340
    const-string/jumbo v0, "tablet_size_height"

    const-string/jumbo v1, "tablet_size_height"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1341
    const-string/jumbo v0, "time_to_display"

    const-string/jumbo v1, "time_to_display"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1342
    const-string/jumbo v0, "internet_required"

    const-string/jumbo v1, "internet_required"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1343
    const-string/jumbo v0, "ab_test"

    const-string/jumbo v1, "ab_test"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    const-string/jumbo v0, "rule_name"

    const-string/jumbo v1, "rule_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const-string/jumbo v0, "location"

    const-string/jumbo v1, "location"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const-string/jumbo v0, "devices"

    const-string/jumbo v1, "devices"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const-string/jumbo v0, "marketing_rules"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1348
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1353
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_0

    .line 1355
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1356
    :cond_0
    throw v0

    .line 1447
    .end local v9    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1353
    .restart local v9    # "values":Landroid/content/ContentValues;
    :cond_1
    if-eqz v8, :cond_2

    .line 1355
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1356
    const/4 v8, 0x0

    .line 1362
    :cond_2
    :try_start_4
    sget-object v0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "amp_ruleevent"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "_id ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1363
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1365
    const-string/jumbo v0, "_id"

    const-string/jumbo v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1366
    const-string/jumbo v0, "event_name"

    const-string/jumbo v1, "event_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const-string/jumbo v0, "rule_id_ref"

    const-string/jumbo v1, "rule_id_ref"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1368
    const-string/jumbo v0, "marketing_ruleevent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1369
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 1374
    :catchall_2
    move-exception v0

    if-eqz v8, :cond_3

    .line 1376
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1377
    :cond_3
    throw v0

    .line 1374
    :cond_4
    if-eqz v8, :cond_5

    .line 1376
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1377
    const/4 v8, 0x0

    .line 1383
    :cond_5
    :try_start_6
    sget-object v0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "amp_displayed"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "_id ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1384
    :cond_6
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1386
    const-string/jumbo v0, "displayed"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v11, :cond_6

    .line 1388
    const-string/jumbo v0, "campaign_id"

    const-string/jumbo v1, "campaign_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1389
    const-string/jumbo v0, "marketing_displayed"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1390
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    .line 1396
    :catchall_3
    move-exception v0

    if-eqz v8, :cond_7

    .line 1398
    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1399
    :cond_7
    throw v0

    .line 1396
    :cond_8
    if-eqz v8, :cond_9

    .line 1398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1399
    const/4 v8, 0x0

    .line 1405
    :cond_9
    :try_start_8
    sget-object v0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "amp_conditions"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "_id ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1406
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1408
    const-string/jumbo v0, "_id"

    const-string/jumbo v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1409
    const-string/jumbo v0, "attribute_name"

    const-string/jumbo v1, "attribute_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    const-string/jumbo v0, "operator"

    const-string/jumbo v1, "operator"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const-string/jumbo v0, "rule_id_ref"

    const-string/jumbo v1, "rule_id_ref"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1412
    const-string/jumbo v0, "marketing_conditions"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1413
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_3

    .line 1418
    :catchall_4
    move-exception v0

    if-eqz v8, :cond_a

    .line 1420
    :try_start_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1421
    :cond_a
    throw v0

    .line 1418
    :cond_b
    if-eqz v8, :cond_c

    .line 1420
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1421
    const/4 v8, 0x0

    .line 1427
    :cond_c
    :try_start_a
    sget-object v0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "amp_condition_values"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "_id ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1428
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1430
    const-string/jumbo v0, "_id"

    const-string/jumbo v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1431
    const-string/jumbo v0, "value"

    const-string/jumbo v1, "value"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const-string/jumbo v0, "condition_id_ref"

    const-string/jumbo v1, "condition_id_ref"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1433
    const-string/jumbo v0, "marketing_condition_values"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1434
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_4

    .line 1439
    :catchall_5
    move-exception v0

    if-eqz v8, :cond_d

    .line 1441
    :try_start_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1442
    :cond_d
    throw v0

    .line 1439
    :cond_e
    if-eqz v8, :cond_f

    .line 1441
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1446
    :cond_f
    invoke-static {}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->cleanUpOldDB()V

    .line 1447
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1449
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_10
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1229
    if-nez p1, :cond_0

    .line 1231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "db cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1234
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1235
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1485
    invoke-super {p0, p1}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1487
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

    .line 1489
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    const-string/jumbo v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1496
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1454
    if-gtz p2, :cond_0

    .line 1456
    invoke-virtual {p0, p1}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1459
    :cond_0
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    .line 1461
    invoke-virtual {p0, p1}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->addNonUniqueRuleName(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1464
    :cond_1
    const/4 v0, 0x3

    if-ge p2, v0, :cond_2

    .line 1466
    invoke-virtual {p0, p1}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->setUpFrequencyCappingTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1467
    invoke-virtual {p0, p1}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->addControlGroup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1468
    invoke-virtual {p0, p1}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->addSchemaVersion(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1471
    :cond_2
    const/4 v0, 0x4

    if-ge p2, v0, :cond_3

    .line 1473
    invoke-virtual {p0, p1}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->addInboxCampaignTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1476
    :cond_3
    const/4 v0, 0x5

    if-ge p2, v0, :cond_4

    .line 1478
    invoke-virtual {p0, p1}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->addPlacesCampaignTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1480
    :cond_4
    return-void
.end method

.method protected setUpFrequencyCappingTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1528
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER UNIQUE, %s INTEGER, %s INTEGER);"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "frequency_capping_rules"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "campaign_id"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "max_display_count"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "ignore_global"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1539
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, FOREIGN KEY(%s) REFERENCES %s(%s) ON DELETE CASCADE);"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "frequency_capping_display_frequencies"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "frequency_id"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "count"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "days"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "frequency_id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "frequency_capping_rules"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1552
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, FOREIGN KEY(%s) REFERENCES %s(%s) ON DELETE CASCADE);"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "frequency_capping_blackout_dates"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "frequency_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "rule_group_id"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "start"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "end"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "frequency_id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "frequency_capping_rules"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1565
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, FOREIGN KEY(%s) REFERENCES %s(%s) ON DELETE CASCADE);"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "frequency_capping_blackout_weekdays"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "frequency_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "rule_group_id"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "day"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "frequency_id"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "frequency_capping_rules"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1576
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, FOREIGN KEY(%s) REFERENCES %s(%s) ON DELETE CASCADE);"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "frequency_capping_blackout_times"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "frequency_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "rule_group_id"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "start"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "end"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "frequency_id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "frequency_capping_rules"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1589
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1590
    .local v10, "displayedCampaigns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 1593
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "marketing_displayed"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "campaign_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1594
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1596
    const-string/jumbo v0, "campaign_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1601
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_0

    .line 1603
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 1601
    :cond_1
    if-eqz v9, :cond_2

    .line 1603
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1607
    :cond_2
    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL);"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "campaigns_displayed"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "campaign_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "date"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "ignore_global"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1616
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1618
    .local v8, "campaignId":Ljava/lang/Integer;
    const-string/jumbo v0, "INSERT INTO %s VALUES (?, datetime(0,\'unixepoch\'), ?);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "campaigns_displayed"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1626
    .end local v8    # "campaignId":Ljava/lang/Integer;
    :cond_3
    const-string/jumbo v0, "DROP TABLE %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "marketing_displayed"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1628
    const-string/jumbo v0, "DELETE FROM %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "marketing_rules"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1631
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v1}, Lcom/localytics/android/CreativeManager;->getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/localytics/android/BaseProvider;->deleteDirectory(Ljava/io/File;)Z

    .line 1632
    return-void
.end method
