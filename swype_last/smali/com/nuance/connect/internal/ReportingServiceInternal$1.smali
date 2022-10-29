.class Lcom/nuance/connect/internal/ReportingServiceInternal$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ReportingServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method notifyCallbacks(ZLandroid/os/Bundle;)V
    .registers 6

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ReportingServiceInternal;->notifyCallbacksOfLoggingSuccess(Landroid/os/Bundle;)V
    invoke-static {v0, p2}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$000(Lcom/nuance/connect/internal/ReportingServiceInternal;Landroid/os/Bundle;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    const/4 v1, 0x4

    const-string/jumbo v2, "Writing to the staging database failed"

    # invokes: Lcom/nuance/connect/internal/ReportingServiceInternal;->notifyCallbacksOfLoggingFailure(ILjava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2, p2}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$100(Lcom/nuance/connect/internal/ReportingServiceInternal;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_7
.end method

.method public onAggregate(ZLjava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V
    .registers 15

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "STAT_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "STAT_NAME"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "STAT_POINT_VALUE"

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v1, "STAT_POINT_INTERVAL"

    invoke-virtual {v0, v1, p6, p7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v1, "STAT_EXTRA"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "STAT_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "STAT_TIMESTAMP"

    invoke-virtual {v0, v1, p9, p10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/internal/ReportingServiceInternal$1;->notifyCallbacks(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public onIndividual(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "STAT_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "STAT_NAME"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "STAT_VALUE"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "STAT_EXTRA"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "STAT_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "STAT_TIMESTAMP"

    invoke-virtual {v0, v1, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/internal/ReportingServiceInternal$1;->notifyCallbacks(ZLandroid/os/Bundle;)V

    return-void
.end method
