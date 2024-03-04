.class Lcom/nuance/connect/service/manager/SessionManager$1;
.super Lcom/nuance/connect/internal/Property$IntegerValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/SessionManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/SessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$IntegerValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$000(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pollingChangeListener.setConfiguration("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLLING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iput v3, v0, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$100(Lcom/nuance/connect/service/manager/SessionManager;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$300(Lcom/nuance/connect/service/manager/SessionManager;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/SessionManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v0, v3, v3}, Lcom/nuance/connect/service/manager/SessionManager;->access$400(Lcom/nuance/connect/service/manager/SessionManager;ZZ)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_SERVER_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$200(Lcom/nuance/connect/service/manager/SessionManager;)V

    goto :goto_0
.end method
