.class Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$2;
.super Lcom/nuance/connect/internal/Property$StringValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

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

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "connectivityStringListener.onValueChanged() name="

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " value="

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FOREGROUND_DATA_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectivity:Lcom/nuance/connect/system/Connectivity;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/system/Connectivity;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectivity:Lcom/nuance/connect/system/Connectivity;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/system/Connectivity;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/system/Connectivity;->setForegroundConfiguration(Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BACKGROUND_DATA_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectivity:Lcom/nuance/connect/system/Connectivity;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/system/Connectivity;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectivity:Lcom/nuance/connect/system/Connectivity;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/system/Connectivity;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/system/Connectivity;->setBackgroundConfiguration(Ljava/lang/String;)V

    goto :goto_3b
.end method
