.class Lcom/localytics/android/AnalyticsProvider;
.super Lcom/localytics/android/BaseProvider;
.source "AnalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;,
        Lcom/localytics/android/AnalyticsProvider$ScreensColumns;,
        Lcom/localytics/android/AnalyticsProvider$InfoV3Columns;,
        Lcom/localytics/android/AnalyticsProvider$IdentifiersV3Columns;,
        Lcom/localytics/android/AnalyticsProvider$EventsV3Columns;,
        Lcom/localytics/android/AnalyticsProvider$CustomDimensionsV3Columns;
    }
.end annotation


# static fields
.field static final DATABASE_VERSION:I = 0x3


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;)V
    .registers 2
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/localytics/android/BaseProvider;-><init>(Lcom/localytics/android/LocalyticsDao;)V

    .line 58
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V
    .registers 6
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 41
    invoke-direct {p0, p2, p1}, Lcom/localytics/android/BaseProvider;-><init>(Lcom/localytics/android/LocalyticsDao;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsProvider;->mDbPath:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p2}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/AnalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    return-void
.end method


# virtual methods
.method canAddToDB()Z
    .registers 5

    .prologue
    .line 69
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsProvider;->maxSiloDbSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method maxSiloDbSize()J
    .registers 5

    .prologue
    .line 63
    const-wide/16 v0, 0xa

    sget-wide v2, Lcom/localytics/android/Constants;->BYTES_IN_A_MEGABYTE:J

    mul-long/2addr v0, v2

    return-wide v0
.end method
