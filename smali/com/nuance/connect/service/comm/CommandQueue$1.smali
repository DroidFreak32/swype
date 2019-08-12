.class Lcom/nuance/connect/service/comm/CommandQueue$1;
.super Lcom/nuance/connect/internal/Property$IntegerValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/comm/CommandQueue;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/comm/CommandQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$IntegerValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$000(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "intListener(defaultDelay) ("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$102(Lcom/nuance/connect/service/comm/CommandQueue;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->HTTP_ANALYTICS_TIME:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$000(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "networkUsageLengthListener.setConfiguration("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$200(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->setTrackingInterval(I)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->NETWORK_TIMEOUT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$000(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "networkTimeoutListener.setConfiguration("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$302(Lcom/nuance/connect/service/comm/CommandQueue;I)I

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CONNECTION_LIMIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$000(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "concurrentConnectionListener.setConfiguration("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    const/4 v2, 0x1

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$402(Lcom/nuance/connect/service/comm/CommandQueue;I)I

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$400(Lcom/nuance/connect/service/comm/CommandQueue;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->setCorePoolSize(I)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$400(Lcom/nuance/connect/service/comm/CommandQueue;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->setMaximumPoolSize(I)V

    goto/16 :goto_0
.end method
