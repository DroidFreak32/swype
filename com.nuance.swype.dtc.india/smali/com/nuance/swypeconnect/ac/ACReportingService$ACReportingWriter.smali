.class public Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACReportingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ACReportingWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;


# direct methods
.method private constructor <init>(Lcom/nuance/swypeconnect/ac/ACReportingService;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swypeconnect/ac/ACReportingService;Lcom/nuance/swypeconnect/ac/ACReportingService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;-><init>(Lcom/nuance/swypeconnect/ac/ACReportingService;)V

    return-void
.end method


# virtual methods
.method isEntryAllowed(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;)Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACReportingService;->isEntryAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isReportingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$200(Lcom/nuance/swypeconnect/ac/ACReportingService;)Lcom/nuance/connect/api/ReportingService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/ReportingService;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public logAggregate(Ljava/lang/String;Ljava/lang/String;DDLjava/util/Date;Ljava/lang/String;)V
    .locals 5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "STAT_ID"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "STAT_NAME"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "STAT_POINT_VALUE"

    invoke-virtual {v2, v0, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v0, "STAT_POINT_INTERVAL"

    invoke-virtual {v2, v0, p5, p6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v0, "STAT_EXTRA"

    invoke-virtual {v2, v0, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "STAT_TYPE"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "STAT_TIMESTAMP"

    if-nez p7, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$200(Lcom/nuance/swypeconnect/ac/ACReportingService;)Lcom/nuance/connect/api/ReportingService;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/ReportingService;->log(Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {p7}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public logPoint(Ljava/lang/String;Ljava/lang/String;DLjava/util/Date;Ljava/lang/String;)V
    .locals 7

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public logPoint(Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;)V
    .locals 6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public logPoint(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/lang/String;)V
    .locals 7

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Z)V

    return-void
.end method

.method public logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Z)V
    .locals 4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "STAT_ID"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "STAT_NAME"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "STAT_VALUE"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "STAT_EXTRA"

    invoke-virtual {v2, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "STAT_TYPE"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "STAT_TIMESTAMP"

    if-nez p4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "STAT_RECORD_LANGUAGE"

    invoke-virtual {v2, v0, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$200(Lcom/nuance/swypeconnect/ac/ACReportingService;)Lcom/nuance/connect/api/ReportingService;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/ReportingService;->log(Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
