.class public Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;
.super Lcom/nuance/swype/stats/AbstractScribe;
.source "FullStatisticsScribe.java"

# interfaces
.implements Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nuance/swype/stats/AbstractScribe;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public mark()V
    .registers 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->getTracker()Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;

    move-result-object v0

    .line 54
    .local v0, "t":Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;
    if-eqz v0, :cond_9

    .line 55
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;->mark()V

    .line 57
    :cond_9
    return-void
.end method

.method public mark(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->getTracker()Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;

    move-result-object v0

    .line 62
    .local v0, "t":Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;
    if-eqz v0, :cond_9

    .line 63
    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;->mark(I)V

    .line 65
    :cond_9
    return-void
.end method

.method public mark(II)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "count"    # I

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->getTracker()Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;

    move-result-object v0

    .line 70
    .local v0, "t":Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;
    if-eqz v0, :cond_9

    .line 71
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;->mark(II)V

    .line 73
    :cond_9
    return-void
.end method

.method public recordKeyboardSizeChange(Ljava/lang/String;)V
    .registers 4
    .param p1, "newSize"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->KEYBOARD_RESIZE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->allowedProcess(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 38
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->KEYBOARD_RESIZE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    const-string/jumbo v1, "KEYBOARD_SIZE"

    invoke-virtual {p0, v0, v1, p1}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_10
    return-void
.end method

.method public recordLanguageChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newLanguage"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->LANGUAGE_CHANGE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->allowedProcess(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 23
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->LANGUAGE_CHANGE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_d
    return-void
.end method

.method public recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "oldValue"    # Ljava/lang/Object;

    .prologue
    .line 29
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SETTINGS_CHANGE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->allowedProcess(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 30
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SETTINGS_CHANGE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "after:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "before:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_35
    return-void
.end method

.method public trackDistanceSwyped(J)V
    .registers 8
    .param p1, "distance"    # J

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->getHelper()Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;

    move-result-object v0

    .line 45
    .local v0, "helper":Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;
    if-eqz v0, :cond_26

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->TOTAL_SWYPE_DISTANCE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->allowedProcess(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 46
    sget-object v1, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recordTotalSwypeDistance distance="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->trackDistanceSwype(J)V

    .line 49
    :cond_26
    return-void
.end method
