.class Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;
.super Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/service/manager/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 6

    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onResponse - tracking"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$300(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "36"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "36"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "36"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, v2}, Lcom/nuance/connect/service/manager/ReportingManager;->access$402(Lcom/nuance/connect/service/manager/ReportingManager;Ljava/util/HashSet;)Ljava/util/HashSet;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/ReportingManager;->access$400(Lcom/nuance/connect/service/manager/ReportingManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error found while parsing tracking responses for reporting: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/ReportingManager;->access$402(Lcom/nuance/connect/service/manager/ReportingManager;Ljava/util/HashSet;)Ljava/util/HashSet;

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$500(Lcom/nuance/connect/service/manager/ReportingManager;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$600(Lcom/nuance/connect/service/manager/ReportingManager;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    const-wide/16 v2, 0x3c

    invoke-static {v2, v3}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nuance/connect/service/manager/ReportingManager;->access$702(Lcom/nuance/connect/service/manager/ReportingManager;J)J

    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "Tracking next run set to: ["

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/ReportingManager;->access$700(Lcom/nuance/connect/service/manager/ReportingManager;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "]["

    invoke-static {}, Lcom/nuance/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "]"

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$1;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$800(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)V

    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onResponse - tracking - complete"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void
.end method
