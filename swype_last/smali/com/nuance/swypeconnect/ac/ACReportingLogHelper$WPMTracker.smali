.class Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WPMTracker"
.end annotation


# instance fields
.field private sessionDuration:I

.field private wordCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->reset()V

    return-void
.end method


# virtual methods
.method public addTimeToSession(J)V
    .registers 8

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->sessionDuration:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->sessionDuration:I

    return-void
.end method

.method public getDuration()I
    .registers 2

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->sessionDuration:I

    return v0
.end method

.method public getWPM()F
    .registers 3

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->hasTrackingInformation()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->wordCount:I

    int-to-float v0, v0

    const v1, 0x476a6000    # 60000.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->sessionDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getWordCount()I
    .registers 2

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->wordCount:I

    return v0
.end method

.method public hasTrackingInformation()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->wordCount:I

    if-le v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public incrementWordCount(I)V
    .registers 3

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->wordCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->wordCount:I

    return-void
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->sessionDuration:I

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->wordCount:I

    return-void
.end method
