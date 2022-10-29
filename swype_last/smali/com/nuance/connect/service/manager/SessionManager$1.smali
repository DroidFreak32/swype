.class Lcom/nuance/connect/service/manager/SessionManager$1;
.super Lcom/nuance/connect/internal/Property$IntegerValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/SessionManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/SessionManager;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$IntegerValueListener;-><init>()V

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLLING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/nuance/connect/service/manager/SessionManager;->pollingInterval:I
    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$002(Lcom/nuance/connect/service/manager/SessionManager;I)I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # getter for: Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$100(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pollingChangeListener.pollingInterval("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # getter for: Lcom/nuance/connect/service/manager/SessionManager;->pollMode:Lcom/nuance/connect/service/manager/SessionManager$PollMode;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$300(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/SessionManager$PollMode;->AUTOMATIC:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    if-ne v0, v1, :cond_5b

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/SessionManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # invokes: Lcom/nuance/connect/service/manager/SessionManager;->poll(ZZ)V
    invoke-static {v0, v3, v3}, Lcom/nuance/connect/service/manager/SessionManager;->access$600(Lcom/nuance/connect/service/manager/SessionManager;ZZ)V

    :cond_5b
    return-void

    :cond_5c
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CUSTOMER_POLLING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/nuance/connect/service/manager/SessionManager;->customerPollingInterval:I
    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$202(Lcom/nuance/connect/service/manager/SessionManager;I)I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # getter for: Lcom/nuance/connect/service/manager/SessionManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$100(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pollingChangeListener.customerPollingInterval("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # getter for: Lcom/nuance/connect/service/manager/SessionManager;->customerPollingInterval:I
    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$200(Lcom/nuance/connect/service/manager/SessionManager;)I

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    sget-object v1, Lcom/nuance/connect/service/manager/SessionManager$PollMode;->MANUAL:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    # setter for: Lcom/nuance/connect/service/manager/SessionManager;->pollMode:Lcom/nuance/connect/service/manager/SessionManager$PollMode;
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/SessionManager;->access$302(Lcom/nuance/connect/service/manager/SessionManager;Lcom/nuance/connect/service/manager/SessionManager$PollMode;)Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # invokes: Lcom/nuance/connect/service/manager/SessionManager;->determineNextPoll()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$400(Lcom/nuance/connect/service/manager/SessionManager;)V

    goto :goto_40

    :cond_b0
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LICENSING_SERVER_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$1;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    # invokes: Lcom/nuance/connect/service/manager/SessionManager;->loadUnlicensedPollInterval()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$500(Lcom/nuance/connect/service/manager/SessionManager;)V

    goto/16 :goto_40
.end method
