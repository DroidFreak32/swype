.class Lcom/nuance/connect/internal/DLMConnectorInternal$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/location/ConnectLocationListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$1;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocation(Lcom/nuance/connect/location/ConnectLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$1;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$000(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onLocation()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$1;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$100(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/location/ConnectLocation;)V

    return-void
.end method

.method public onLocationComplete(Lcom/nuance/connect/location/ConnectLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$1;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$000(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onLocationComplete()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$1;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$100(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/location/ConnectLocation;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$1;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$200(Lcom/nuance/connect/internal/DLMConnectorInternal;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
