.class Lcom/localytics/android/ManifestProvider;
.super Lcom/localytics/android/BaseProvider;
.source "ManifestProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/ManifestProvider$ManifestDatabaseHelper;,
        Lcom/localytics/android/ManifestProvider$InfoV3Columns;
    }
.end annotation


# static fields
.field static final DATABASE_VERSION:I = 0x1


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;)V
    .registers 2
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/localytics/android/BaseProvider;-><init>(Lcom/localytics/android/LocalyticsDao;)V

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V
    .registers 6
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 24
    invoke-direct {p0, p2, p1}, Lcom/localytics/android/BaseProvider;-><init>(Lcom/localytics/android/LocalyticsDao;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/localytics/android/ManifestProvider$ManifestDatabaseHelper;

    iget-object v1, p0, Lcom/localytics/android/ManifestProvider;->mDbPath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2}, Lcom/localytics/android/ManifestProvider$ManifestDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V

    invoke-virtual {v0}, Lcom/localytics/android/ManifestProvider$ManifestDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/ManifestProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    return-void
.end method


# virtual methods
.method canAddToDB()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method maxSiloDbSize()J
    .registers 5

    .prologue
    .line 46
    const-wide/16 v0, 0x1

    sget-wide v2, Lcom/localytics/android/Constants;->BYTES_IN_A_MEGABYTE:J

    mul-long/2addr v0, v2

    return-wide v0
.end method
