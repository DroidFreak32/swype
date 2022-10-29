.class Lcom/nuance/connect/service/ConnectClient$3;
.super Lcom/nuance/connect/internal/Property$IntegerValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$3;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$IntegerValueListener;-><init>()V

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$3;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$000(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "connectivityIntListener.onValueChanged() name="

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " value="

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->STABLE_CELLULAR_CONNECTION_THRESHOLD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$3;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->connectivity:Lcom/nuance/connect/system/Connectivity;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$100(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/system/Connectivity;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nuance/connect/system/Connectivity;->setStableCellularTime(I)V

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->STABLE_WIFI_CONNECTION_THRESHOLD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$3;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->connectivity:Lcom/nuance/connect/system/Connectivity;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$100(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/system/Connectivity;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nuance/connect/system/Connectivity;->setStableWifiTime(I)V

    goto :goto_3a
.end method
