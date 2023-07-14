.class Lcom/nuance/connect/internal/DLMConnectorInternal$3;
.super Lcom/nuance/connect/internal/Property$BooleanValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$3;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$BooleanValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .locals 9
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

    const-string/jumbo v1, "USER_DLM_SYNC_ENABLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$3;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$402(Lcom/nuance/connect/internal/DLMConnectorInternal;Z)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$3;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$700(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Dlm sync property change: "

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$3;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$700(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "syncEnabled: "

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$3;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$400(Lcom/nuance/connect/internal/DLMConnectorInternal;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "; accountEnabled: "

    iget-object v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$3;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v4}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$500(Lcom/nuance/connect/internal/DLMConnectorInternal;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, "; dataAccepted:"

    iget-object v6, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$3;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v6}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$600(Lcom/nuance/connect/internal/DLMConnectorInternal;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string/jumbo v7, "; syncAllowed:"

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$3;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v8}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$800(Lcom/nuance/connect/internal/DLMConnectorInternal;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "USER_DLM_SYNC_ACCOUNT_ENABLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$3;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$502(Lcom/nuance/connect/internal/DLMConnectorInternal;Z)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "USER_ALLOW_USAGE_COLLECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$3;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$602(Lcom/nuance/connect/internal/DLMConnectorInternal;Z)Z

    goto/16 :goto_0
.end method
