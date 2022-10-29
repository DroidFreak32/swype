.class Lcom/nuance/connect/service/ConnectClient$8;
.super Lcom/nuance/connect/internal/Property$BooleanValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$8;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$BooleanValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEVELOPER_LOG_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$8;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient$8;->this$0:Lcom/nuance/connect/service/ConnectClient;

    sget-object v3, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOGGING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/nuance/connect/service/ConnectClient;->reconfigureLogger(ZI)V
    invoke-static {v1, v0, v2}, Lcom/nuance/connect/service/ConnectClient;->access$400(Lcom/nuance/connect/service/ConnectClient;ZI)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_LICENSED_BUILD:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$8;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # setter for: Lcom/nuance/connect/service/ConnectClient;->isLicensed:Z
    invoke-static {v1, v0}, Lcom/nuance/connect/service/ConnectClient;->access$502(Lcom/nuance/connect/service/ConnectClient;Z)Z

    goto :goto_2b
.end method
