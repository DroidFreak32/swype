.class abstract Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BaseProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/BaseProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LocalyticsDatabaseHelper"
.end annotation


# static fields
.field static final SQLITE_BOOLEAN_FALSE:Ljava/lang/String; = "0"

.field static final SQLITE_BOOLEAN_TRUE:Ljava/lang/String; = "1"

.field private static completedMigrations:I

.field static oldDB:Landroid/database/sqlite/SQLiteDatabase;

.field private static oldDBFile:Ljava/io/File;


# instance fields
.field mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 516
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 526
    invoke-interface {p3}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, v4, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 528
    iput-object p3, p0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 529
    const-class v4, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;

    monitor-enter v4

    .line 531
    :try_start_d
    sget-object v3, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    if-nez v3, :cond_4f

    .line 533
    const-string/jumbo v3, "com.localytics.android.%s.sqlite"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p3}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/localytics/android/DatapointHelper;->getSha256_buggy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "dbName":Ljava/lang/String;
    invoke-interface {p3}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    sput-object v3, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 538
    const/4 v3, 0x0

    sput v3, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->completedMigrations:I

    .line 539
    new-instance v1, Lcom/localytics/android/MigrationDatabaseHelper;

    const/16 v3, 0x12

    invoke-direct {v1, v0, v3, p3}, Lcom/localytics/android/MigrationDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V
    :try_end_49
    .catchall {:try_start_d .. :try_end_49} :catchall_59

    .line 542
    .local v1, "mDB":Lcom/localytics/android/MigrationDatabaseHelper;
    :try_start_49
    invoke-virtual {v1}, Lcom/localytics/android/MigrationDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sput-object v3, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_49 .. :try_end_4f} :catch_51
    .catchall {:try_start_49 .. :try_end_4f} :catchall_59

    .line 550
    .end local v0    # "dbName":Ljava/lang/String;
    .end local v1    # "mDB":Lcom/localytics/android/MigrationDatabaseHelper;
    .end local v2    # "path":Ljava/lang/String;
    :cond_4f
    :goto_4f
    :try_start_4f
    monitor-exit v4

    return-void

    .line 546
    .restart local v0    # "dbName":Ljava/lang/String;
    .restart local v1    # "mDB":Lcom/localytics/android/MigrationDatabaseHelper;
    .restart local v2    # "path":Ljava/lang/String;
    :catch_51
    move-exception v3

    const-string/jumbo v3, "Error opening old database; old data will not be retained."

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_4f

    .line 550
    .end local v0    # "dbName":Ljava/lang/String;
    .end local v1    # "mDB":Lcom/localytics/android/MigrationDatabaseHelper;
    .end local v2    # "path":Ljava/lang/String;
    :catchall_59
    move-exception v3

    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_4f .. :try_end_5b} :catchall_59

    throw v3
.end method

.method static cleanUpOldDB()V
    .registers 2

    .prologue
    .line 557
    sget v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->completedMigrations:I

    add-int/lit8 v0, v0, 0x1

    .line 558
    sput v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->completedMigrations:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    .line 560
    sget-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 561
    sget-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 563
    :cond_13
    return-void
.end method

.method static resetStaticVars()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 568
    sput-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    .line 569
    sput-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 570
    const/4 v0, 0x0

    sput v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->completedMigrations:I

    .line 571
    return-void
.end method


# virtual methods
.method protected abstract migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V
.end method
