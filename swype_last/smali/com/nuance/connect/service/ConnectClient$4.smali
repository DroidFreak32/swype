.class Lcom/nuance/connect/service/ConnectClient$4;
.super Lcom/nuance/connect/internal/Property$StringValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$4;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$StringValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$4;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$000(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "commandQueueStringListener.onValueChanged() name="

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " value="

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->URL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$4;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/comm/CommandQueue;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$200(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/comm/CommandQueue;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/comm/CommandQueue;->setServerURL(Ljava/lang/String;)V

    :cond_36
    :goto_36
    return-void

    :cond_37
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->MINIMUM_SSL_PROTOCOL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$4;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/comm/CommandQueue;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$200(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/comm/CommandQueue;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/comm/CommandQueue;->updateMinimumSSLProtocol(Ljava/lang/String;)V

    goto :goto_36
.end method
