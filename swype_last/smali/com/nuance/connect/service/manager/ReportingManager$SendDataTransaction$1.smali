.class Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 8

    # getter for: Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onResponse - tracking"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    # getter for: Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->commandQueue:Ljava/util/Queue;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$300(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "36"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "36"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_78

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "36"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    # setter for: Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;
    invoke-static {v1, v2}, Lcom/nuance/connect/service/manager/ReportingManager;->access$402(Lcom/nuance/connect/service/manager/ReportingManager;Ljava/util/HashSet;)Ljava/util/HashSet;

    const/4 v1, 0x0

    :goto_43
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_80

    :try_start_49
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    # getter for: Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/nuance/connect/service/manager/ReportingManager;->access$400(Lcom/nuance/connect/service/manager/ReportingManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_58} :catch_5b

    :goto_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :catch_5b
    move-exception v2

    # getter for: Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error found while parsing tracking responses for reporting: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_58

    :cond_78
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/ReportingManager;->access$402(Lcom/nuance/connect/service/manager/ReportingManager;Ljava/util/HashSet;)Ljava/util/HashSet;

    :cond_80
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    # invokes: Lcom/nuance/connect/service/manager/ReportingManager;->sendAllowedMetricsToHost()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$500(Lcom/nuance/connect/service/manager/ReportingManager;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    # invokes: Lcom/nuance/connect/service/manager/ReportingManager;->savePreferences()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$600(Lcom/nuance/connect/service/manager/ReportingManager;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    const-wide/16 v2, 0x3c

    invoke-static {v2, v3}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(J)J

    move-result-wide v2

    # setter for: Lcom/nuance/connect/service/manager/ReportingManager;->trackingNextRun:J
    invoke-static {v0, v2, v3}, Lcom/nuance/connect/service/manager/ReportingManager;->access$702(Lcom/nuance/connect/service/manager/ReportingManager;J)J

    # getter for: Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Tracking next run set to: ["

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    # getter for: Lcom/nuance/connect/service/manager/ReportingManager;->trackingNextRun:J
    invoke-static {v2}, Lcom/nuance/connect/service/manager/ReportingManager;->access$700(Lcom/nuance/connect/service/manager/ReportingManager;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "]["

    invoke-static {}, Lcom/nuance/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    # invokes: Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->sendReports()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$800(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)V

    # getter for: Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onResponse - tracking - complete"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void
.end method
