.class public Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingDatapoint;
.super Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACReportingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACReportingDatapoint"
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingDatapoint;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;-><init>(Landroid/os/Bundle;Lcom/nuance/swypeconnect/ac/ACReportingService$1;)V

    const-string/jumbo v0, "STAT_VALUE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingDatapoint;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;->DATAPOINT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingDatapoint;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingDatapoint;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingDatapoint;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingDatapoint;->value:Ljava/lang/String;

    return-void
.end method

.method toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "STAT_ID"

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingDatapoint;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "STAT_NAME"

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingDatapoint;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "STAT_VALUE"

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingDatapoint;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "STAT_EXTRA"

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingDatapoint;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "STAT_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "STAT_TIMESTAMP"

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingDatapoint;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method
