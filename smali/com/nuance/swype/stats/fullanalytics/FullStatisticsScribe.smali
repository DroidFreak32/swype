.class public Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;
.super Lcom/nuance/swype/stats/AbstractScribe;
.source "FullStatisticsScribe.java"

# interfaces
.implements Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/nuance/swype/stats/AbstractScribe;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method public recordKeyboardSizeChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "newSize"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->KEYBOARD_RESIZE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->allowedProcess(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->KEYBOARD_RESIZE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    const-string v1, "KEYBOARD_SIZE"

    invoke-virtual {p0, v0, v1, p1}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

.method public recordLanguageChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newLanguage"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->LANGUAGE_CHANGE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->allowedProcess(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->LANGUAGE_CHANGE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "oldValue"    # Ljava/lang/Object;

    .prologue
    .line 28
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SETTINGS_CHANGE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->allowedProcess(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SETTINGS_CHANGE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "after:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "before:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method public trackDistanceSwyped(J)V
    .locals 5
    .param p1, "distance"    # J

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->getHelper()Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;

    move-result-object v0

    .line 44
    .local v0, "helper":Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->TOTAL_SWYPE_DISTANCE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->allowedProcess(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    sget-object v1, Lcom/nuance/swype/stats/fullanalytics/FullStatisticsScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recordTotalSwypeDistance distance="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->trackDistanceSwype(J)V

    .line 48
    :cond_0
    return-void
.end method
