.class public Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;
.super Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACReportingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACReportingAggregate"
.end annotation


# instance fields
.field private interval:D

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;-><init>(Landroid/os/Bundle;Lcom/nuance/swypeconnect/ac/ACReportingService$1;)V

    const-string/jumbo v0, "STAT_POINT_VALUE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;->value:D

    const-string/jumbo v0, "STAT_POINT_INTERVAL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;->interval:D

    return-void
.end method


# virtual methods
.method public getInterval()D
    .locals 2

    iget-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;->interval:D

    return-wide v0
.end method

.method public getType()Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;->AGGREGATE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 9

    const/16 v8, 0x20

    invoke-super {p0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->hashCode()I

    move-result v0

    iget-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;->interval:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v6, v2, v8

    xor-long/2addr v2, v6

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v2, v4, v8

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public setInterval(D)V
    .locals 1

    iput-wide p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;->interval:D

    return-void
.end method

.method public setValue(D)V
    .locals 1

    iput-wide p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;->value:D

    return-void
.end method

.method toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "STAT_ID"

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "STAT_NAME"

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "STAT_POINT_VALUE"

    iget-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;->value:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v1, "STAT_POINT_INTERVAL"

    iget-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;->interval:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v1, "STAT_EXTRA"

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "STAT_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "STAT_TIMESTAMP"

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingAggregate;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method
