.class public Lcom/nuance/connect/util/TimeConversion;
.super Ljava/lang/Object;


# static fields
.field public static final MILLIS_IN_DAY:J = 0x5265c00L

.field public static final MILLIS_IN_HOUR:J = 0x36ee80L

.field public static final MILLIS_IN_MINUTE:J = 0xea60L

.field public static final MILLIS_IN_SECOND:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDaysToMillis(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertDaysToTimeStamp(I)J
    .locals 2

    invoke-static {p0}, Lcom/nuance/connect/util/TimeConversion;->convertDaysToMillis(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nuance/connect/util/TimeConversion;->convertMillisToTimeStamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertDaysToTimeStamp(IJ)J
    .locals 3

    invoke-static {p0}, Lcom/nuance/connect/util/TimeConversion;->convertDaysToMillis(I)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/connect/util/TimeConversion;->convertMillisToTimeStamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertHoursToMillis(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertHoursToTimeStamp(I)J
    .locals 2

    invoke-static {p0}, Lcom/nuance/connect/util/TimeConversion;->convertHoursToMillis(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nuance/connect/util/TimeConversion;->convertMillisToTimeStamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertHoursToTimeStamp(IJ)J
    .locals 3

    invoke-static {p0}, Lcom/nuance/connect/util/TimeConversion;->convertHoursToMillis(I)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/connect/util/TimeConversion;->convertMillisToTimeStamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertMillisToTimeStamp(J)J
    .locals 2

    invoke-static {}, Lcom/nuance/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/nuance/connect/util/TimeConversion;->convertMillisToTimeStamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertMillisToTimeStamp(JJ)J
    .locals 2

    add-long v0, p2, p0

    return-wide v0
.end method

.method public static convertMinutesToMillis(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertMinutesToTimeStamp(I)J
    .locals 2

    invoke-static {p0}, Lcom/nuance/connect/util/TimeConversion;->convertMinutesToMillis(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nuance/connect/util/TimeConversion;->convertMillisToTimeStamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertMinutesToTimeStamp(IJ)J
    .locals 3

    invoke-static {p0}, Lcom/nuance/connect/util/TimeConversion;->convertMinutesToMillis(I)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/connect/util/TimeConversion;->convertMillisToTimeStamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertSecondsToMillis(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static convertSecondsToTimeStamp(J)J
    .locals 2

    invoke-static {p0, p1}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nuance/connect/util/TimeConversion;->convertMillisToTimeStamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertSecondsToTimeStamp(JJ)J
    .locals 2

    invoke-static {p0, p1}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lcom/nuance/connect/util/TimeConversion;->convertMillisToTimeStamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static prettyDateFormat(J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM/dd/yyyy hh:mm:ss:SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
