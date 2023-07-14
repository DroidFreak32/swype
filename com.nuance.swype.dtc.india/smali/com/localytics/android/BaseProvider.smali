.class abstract Lcom/localytics/android/BaseProvider;
.super Ljava/lang/Object;
.source "BaseProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;,
        Lcom/localytics/android/BaseProvider$InClauseBuilder;
    }
.end annotation


# static fields
.field static final DATABASE_FILE:Ljava/lang/String; = "com.localytics.android.%s.%s.sqlite"

.field private static final OLD_DATABASE_FILE:Ljava/lang/String; = "com.localytics.android.%s.sqlite"

.field private static final sCountProjectionMap:Ljava/util/Map;
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


# instance fields
.field mDatabaseJustMoved:Z

.field mDb:Landroid/database/sqlite/SQLiteDatabase;

.field mDbPath:Ljava/lang/String;

.field mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/localytics/android/BaseProvider;->getCountProjectionMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/BaseProvider;->sCountProjectionMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;)V
    .locals 0
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/localytics/android/BaseProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 103
    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Ljava/lang/String;)V
    .locals 8
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "dbName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/localytics/android/BaseProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 108
    iget-object v1, p0, Lcom/localytics/android/BaseProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAndroidVersionInt()I

    move-result v1

    const-string/jumbo v2, "com.localytics.android.%s.%s.sqlite"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/localytics/android/BaseProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/DatapointHelper;->getSha256_buggy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/localytics/android/BaseProvider;->moveDatabaseIfNecessary(ILjava/lang/String;)Z

    move-result v0

    .line 111
    .local v0, "useNewLocation":Z
    invoke-virtual {p0, p2, v0}, Lcom/localytics/android/BaseProvider;->makeDatabasePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/localytics/android/BaseProvider;->mDbPath:Ljava/lang/String;

    .line 113
    const-string/jumbo v1, "Database path for %s is %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v5

    iget-object v3, p0, Lcom/localytics/android/BaseProvider;->mDbPath:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method static buildSqlInClause(Ljava/util/List;Lcom/localytics/android/BaseProvider$InClauseBuilder;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/localytics/android/BaseProvider$InClauseBuilder",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "builder":Lcom/localytics/android/BaseProvider$InClauseBuilder;, "Lcom/localytics/android/BaseProvider$InClauseBuilder<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/localytics/android/BaseProvider;->buildSqlInClauseImpl(Ljava/lang/Object;ILcom/localytics/android/BaseProvider$InClauseBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static buildSqlInClause(Lorg/json/JSONArray;Lcom/localytics/android/BaseProvider$InClauseBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/localytics/android/BaseProvider$InClauseBuilder",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 457
    .local p1, "builder":Lcom/localytics/android/BaseProvider$InClauseBuilder;, "Lcom/localytics/android/BaseProvider$InClauseBuilder<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/localytics/android/BaseProvider;->buildSqlInClauseImpl(Ljava/lang/Object;ILcom/localytics/android/BaseProvider$InClauseBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSqlInClauseImpl(Ljava/lang/Object;ILcom/localytics/android/BaseProvider$InClauseBuilder;)Ljava/lang/String;
    .locals 5
    .param p0, "listOrArray"    # Ljava/lang/Object;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/localytics/android/BaseProvider$InClauseBuilder",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 464
    .local p2, "builder":Lcom/localytics/android/BaseProvider$InClauseBuilder;, "Lcom/localytics/android/BaseProvider$InClauseBuilder<TT;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 467
    instance-of v4, p0, Ljava/util/List;

    if-eqz v4, :cond_2

    move-object v2, p0

    .line 469
    check-cast v2, Ljava/util/List;

    .line 470
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/localytics/android/BaseProvider$InClauseBuilder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 484
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    :goto_1
    add-int/lit8 v4, p1, -0x1

    if-eq v1, v4, :cond_1

    .line 486
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_2
    instance-of v4, p0, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    move-object v0, p0

    .line 474
    check-cast v0, Lorg/json/JSONArray;

    .line 477
    .local v0, "array":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/localytics/android/BaseProvider$InClauseBuilder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1

    .line 489
    .end local v0    # "array":Lorg/json/JSONArray;
    :cond_3
    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static deleteDirectory(Ljava/io/File;)Z
    .locals 5
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 208
    .local v1, "child":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/localytics/android/BaseProvider;->deleteDirectory(Ljava/io/File;)Z

    move-result v4

    .line 209
    if-nez v4, :cond_0

    .line 211
    const/4 v4, 0x0

    .line 217
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "child":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return v4

    .line 206
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "child":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "child":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v4

    goto :goto_1
.end method

.method static deleteOldFiles(Landroid/content/Context;)V
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 193
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "localytics"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/localytics/android/BaseProvider;->deleteDirectory(Ljava/io/File;)Z

    .line 194
    return-void
.end method

.method private static getCountProjectionMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "_count"

    const-string/jumbo v2, "COUNT(*)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-object v0
.end method

.method private getNumberOfRows(Ljava/lang/String;)I
    .locals 6
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 222
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method private static newDatabaseDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 181
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, ".localytics"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 183
    return-object v0
.end method


# virtual methods
.method abstract canAddToDB()Z
.end method

.method close()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 448
    return-void
.end method

.method insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 7
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 268
    const-string/jumbo v2, "Insert table: %s, values: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0}, Lcom/localytics/android/BaseProvider;->canAddToDB()Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    const-string/jumbo v2, "Database is full; data not inserted"

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 273
    const-wide/16 v0, -0x1

    .line 280
    :goto_0
    return-wide v0

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 278
    .local v0, "result":J
    const-string/jumbo v2, "Inserted row with new id %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_0
.end method

.method makeDatabasePath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "useNewLocation"    # Z

    .prologue
    .line 154
    const-string/jumbo v2, "com.localytics.android.%s.%s.sqlite"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/localytics/android/BaseProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v5}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/localytics/android/DatapointHelper;->getSha256_buggy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "databaseName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/localytics/android/BaseProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/BaseProvider;->newDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 159
    .local v1, "newDatabaseDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 164
    .end local v1    # "newDatabaseDir":Ljava/io/File;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/localytics/android/BaseProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method abstract maxSiloDbSize()J
.end method

.method moveDatabaseIfNecessary(ILjava/lang/String;)Z
    .locals 9
    .param p1, "sdkInt"    # I
    .param p2, "dbName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 118
    const/16 v6, 0x15

    if-lt p1, v6, :cond_1

    .line 120
    iget-object v6, p0, Lcom/localytics/android/BaseProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/localytics/android/BaseProvider;->newDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 121
    .local v3, "newDatabaseDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v0, "dbInNewLocation":Ljava/io/File;
    iget-object v6, p0, Lcom/localytics/android/BaseProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 124
    .local v1, "dbInOldLocation":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    :try_start_0
    invoke-static {v0}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 129
    invoke-static {v1, v0}, Lcom/localytics/android/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 130
    invoke-static {v1}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 131
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-journal"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 132
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/localytics/android/BaseProvider;->mDatabaseJustMoved:Z

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Moved database from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "dbInNewLocation":Ljava/io/File;
    .end local v1    # "dbInOldLocation":Ljava/io/File;
    .end local v3    # "newDatabaseDir":Ljava/io/File;
    :goto_0
    return v4

    .line 136
    .restart local v0    # "dbInNewLocation":Ljava/io/File;
    .restart local v1    # "dbInOldLocation":Ljava/io/File;
    .restart local v3    # "newDatabaseDir":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Exception while copying database to new location"

    invoke-static {v4, v2}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 139
    goto :goto_0

    .line 144
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v5, "No need to move database."

    invoke-static {v5}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "dbInNewLocation":Ljava/io/File;
    .end local v1    # "dbInOldLocation":Ljava/io/File;
    .end local v3    # "newDatabaseDir":Ljava/io/File;
    :cond_1
    move v4, v5

    .line 149
    goto :goto_0
.end method

.method query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 241
    const-string/jumbo v1, "Query table: %s, projection: %s, selection: %s, selectionArgs: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 243
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 244
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 246
    if-eqz p2, :cond_0

    array-length v1, p2

    if-ne v7, v1, :cond_0

    const-string/jumbo v1, "_count"

    aget-object v2, p2, v6

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    sget-object v1, Lcom/localytics/android/BaseProvider;->sCountProjectionMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 253
    .local v8, "result":Landroid/database/Cursor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Query result is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 255
    return-object v8
.end method

.method remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 367
    const-string/jumbo v1, "Delete table: %s, selection: %s, selectionArgs: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 370
    if-nez p2, :cond_0

    .line 372
    iget-object v1, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "1"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 379
    .local v0, "count":I
    :goto_0
    const-string/jumbo v1, "Deleted %d rows"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 381
    return v0

    .line 376
    .end local v0    # "count":I
    :cond_0
    iget-object v1, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_0
.end method

.method replace(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 7
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 293
    const-string/jumbo v2, "Replace table: %s, values: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Lcom/localytics/android/BaseProvider;->canAddToDB()Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    const-string/jumbo v2, "Database is full; data not replaced"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 298
    const-wide/16 v0, -0x1

    .line 305
    :goto_0
    return-wide v0

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 303
    .local v0, "result":J
    const-string/jumbo v2, "Replaced row with id %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public runBatchTransaction(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 431
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 432
    iget-object v0, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    iget-object v0, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 400
    const-string/jumbo v0, "Update table: %s, values: %s, selection: %s, selectionArgs: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method vacuumIfNecessary()V
    .locals 6

    .prologue
    .line 314
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 317
    long-to-double v0, v0

    invoke-virtual {p0}, Lcom/localytics/android/BaseProvider;->maxSiloDbSize()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 319
    new-instance v0, Lcom/localytics/android/BaseProvider$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/BaseProvider$1;-><init>(Lcom/localytics/android/BaseProvider;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 348
    :cond_0
    return-void
.end method
