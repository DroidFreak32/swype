.class Lcom/localytics/android/MarketingProvider;
.super Lcom/localytics/android/BaseProvider;
.source "MarketingProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;,
        Lcom/localytics/android/MarketingProvider$PlacesCampaignsDisplayedV3Columns;,
        Lcom/localytics/android/MarketingProvider$PlacesCampaignsEventV3Columns;,
        Lcom/localytics/android/MarketingProvider$PlacesCampaignsGeofenceTriggerV3Columns;,
        Lcom/localytics/android/MarketingProvider$PlacesCampaignAttributesV3Columns;,
        Lcom/localytics/android/MarketingProvider$PlacesCampaignV3Columns;,
        Lcom/localytics/android/MarketingProvider$InboxCampaignAttributesV3Columns;,
        Lcom/localytics/android/MarketingProvider$InboxCampaignV3Columns;,
        Lcom/localytics/android/MarketingProvider$CamapignsDisplayedV3Columns;,
        Lcom/localytics/android/MarketingProvider$FrequencyCappingBlackoutTimeV3Columns;,
        Lcom/localytics/android/MarketingProvider$FrequencyCappingBlackoutWeekdayV3Columns;,
        Lcom/localytics/android/MarketingProvider$FrequencyCappingBlackoutDateV3Columns;,
        Lcom/localytics/android/MarketingProvider$FrequencyCappingDisplayFrequencyV3Columns;,
        Lcom/localytics/android/MarketingProvider$FrequencyCappingV3Columns;,
        Lcom/localytics/android/MarketingProvider$MarketingConditionValuesV3Columns;,
        Lcom/localytics/android/MarketingProvider$MarketingConditionsV3Columns;,
        Lcom/localytics/android/MarketingProvider$MarketingRuleEventV3Columns;,
        Lcom/localytics/android/MarketingProvider$MarketingDisplayedV3Columns;,
        Lcom/localytics/android/MarketingProvider$MarketingRulesV3Columns;
    }
.end annotation


# static fields
.field static final DATABASE_VERSION:I = 0x5


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;)V
    .locals 0
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/localytics/android/BaseProvider;-><init>(Lcom/localytics/android/LocalyticsDao;)V

    .line 60
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V
    .locals 3
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 40
    invoke-direct {p0, p2, p1}, Lcom/localytics/android/BaseProvider;-><init>(Lcom/localytics/android/LocalyticsDao;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/localytics/android/MarketingProvider;->mDbPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingProvider;->determineCreativeLocation(Ljava/lang/String;)V

    .line 43
    invoke-interface {p2}, Lcom/localytics/android/LocalyticsDao;->getAndroidVersionInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingProvider;->moveCreativesIfNecessary(I)V

    .line 51
    new-instance v0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;

    iget-object v1, p0, Lcom/localytics/android/MarketingProvider;->mDbPath:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, p2}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V

    invoke-virtual {v0}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/MarketingProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    return-void
.end method


# virtual methods
.method canAddToDB()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method determineCreativeLocation(Ljava/lang/String;)V
    .locals 4
    .param p1, "dbPath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 127
    iget-object v2, p0, Lcom/localytics/android/MarketingProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/localytics/android/MarketingProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getAndroidVersionInt()I

    move-result v2

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 131
    .local v1, "useNewLocation":Z
    iget-object v2, p0, Lcom/localytics/android/MarketingProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2, v1}, Lcom/localytics/android/LocalyticsDao;->useNewCreativeLocation(Z)V

    .line 132
    const-string/jumbo v2, "Use new creatives location after Lollipop."

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 139
    .end local v1    # "useNewLocation":Z
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/localytics/android/MarketingProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/localytics/android/LocalyticsDao;->useNewCreativeLocation(Z)V

    .line 137
    const-string/jumbo v2, "Use old creatives location."

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_0
.end method

.method maxSiloDbSize()J
    .locals 4

    .prologue
    .line 65
    const-wide/16 v0, 0xa

    sget-wide v2, Lcom/localytics/android/Constants;->BYTES_IN_A_MEGABYTE:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method moveCreativesIfNecessary(I)V
    .locals 5
    .param p1, "sdkInt"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 77
    const/16 v3, 0x15

    if-lt p1, v3, :cond_4

    .line 80
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/localytics/android/MarketingProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v3}, Lcom/localytics/android/CreativeManager;->getOldZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, "oldCreativeRootDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/localytics/android/MarketingProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v3}, Lcom/localytics/android/CreativeManager;->getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "newCreativeRootDir":Ljava/io/File;
    :try_start_0
    iget-boolean v3, p0, Lcom/localytics/android/MarketingProvider;->mDatabaseJustMoved:Z

    if-eqz v3, :cond_0

    .line 88
    invoke-static {v2, v1}, Lcom/localytics/android/Utils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Moved creatives from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to newCreativeRootDir"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    iget-boolean v3, p0, Lcom/localytics/android/MarketingProvider;->mDatabaseJustMoved:Z

    if-eqz v3, :cond_1

    .line 113
    invoke-static {v2}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 114
    const-string/jumbo v3, "Removed old creatives folder."

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 122
    .end local v1    # "newCreativeRootDir":Ljava/io/File;
    .end local v2    # "oldCreativeRootDir":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 93
    .restart local v1    # "newCreativeRootDir":Ljava/io/File;
    .restart local v2    # "oldCreativeRootDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    invoke-static {v1}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 99
    const-string/jumbo v3, "Failed to copy creative file"

    invoke-static {v3, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :goto_1
    iget-boolean v3, p0, Lcom/localytics/android/MarketingProvider;->mDatabaseJustMoved:Z

    if-eqz v3, :cond_1

    .line 113
    invoke-static {v2}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 114
    const-string/jumbo v3, "Removed old creatives folder."

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_2
    :try_start_2
    const-string/jumbo v3, "Old creative directory doesn\'t exist"

    invoke-static {v3, v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-boolean v4, p0, Lcom/localytics/android/MarketingProvider;->mDatabaseJustMoved:Z

    if-eqz v4, :cond_3

    .line 113
    invoke-static {v2}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 114
    const-string/jumbo v4, "Removed old creatives folder."

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    :cond_3
    throw v3

    .line 120
    .end local v1    # "newCreativeRootDir":Ljava/io/File;
    .end local v2    # "oldCreativeRootDir":Ljava/io/File;
    :cond_4
    const-string/jumbo v3, "No need to move creatives."

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_0
.end method
