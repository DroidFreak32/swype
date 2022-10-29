.class Lcom/nuance/connect/internal/DLMConnectorInternal$2;
.super Lcom/nuance/connect/internal/Property$StringValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$2;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$StringValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LOCATION_COUNTRY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$2;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/nuance/connect/internal/DLMConnectorInternal;->processLocationUpate(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$300(Lcom/nuance/connect/internal/DLMConnectorInternal;Ljava/lang/String;)V

    :cond_18
    return-void
.end method
