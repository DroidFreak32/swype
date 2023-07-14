.class Lcom/localytics/android/LocationProvider;
.super Lcom/localytics/android/BaseProvider;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/LocationProvider$LocationDatabaseHelper;,
        Lcom/localytics/android/LocationProvider$InfoV3Columns;,
        Lcom/localytics/android/LocationProvider$GeofencesAttributesV3Columns;,
        Lcom/localytics/android/LocationProvider$GeofencesV3Columns;
    }
.end annotation


# static fields
.field static final DATABASE_VERSION:I = 0x1


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;)V
    .locals 0
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/localytics/android/BaseProvider;-><init>(Lcom/localytics/android/LocalyticsDao;)V

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V
    .locals 3
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 26
    invoke-direct {p0, p2, p1}, Lcom/localytics/android/BaseProvider;-><init>(Lcom/localytics/android/LocalyticsDao;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/localytics/android/LocationProvider$LocationDatabaseHelper;

    iget-object v1, p0, Lcom/localytics/android/LocationProvider;->mDbPath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2}, Lcom/localytics/android/LocationProvider$LocationDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V

    invoke-virtual {v0}, Lcom/localytics/android/LocationProvider$LocationDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/LocationProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    return-void
.end method


# virtual methods
.method canAddToDB()Z
    .locals 4

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/localytics/android/LocationProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/localytics/android/LocationProvider;->maxSiloDbSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method maxSiloDbSize()J
    .locals 4

    .prologue
    .line 48
    const-wide/16 v0, 0xa

    sget-wide v2, Lcom/localytics/android/Constants;->BYTES_IN_A_MEGABYTE:J

    mul-long/2addr v0, v2

    return-wide v0
.end method
