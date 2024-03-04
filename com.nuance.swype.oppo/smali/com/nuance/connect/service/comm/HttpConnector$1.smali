.class Lcom/nuance/connect/service/comm/HttpConnector$1;
.super Lcom/nuance/connect/internal/Property$StringValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/comm/HttpConnector;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/comm/HttpConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/comm/HttpConnector$1;->this$0:Lcom/nuance/connect/service/comm/HttpConnector;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$StringValueListener;-><init>()V

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector$1;->this$0:Lcom/nuance/connect/service/comm/HttpConnector;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/HttpConnector;->access$000(Lcom/nuance/connect/service/comm/HttpConnector;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "serverUrlChangeListener.setConfiguration("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector$1;->this$0:Lcom/nuance/connect/service/comm/HttpConnector;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nuance/connect/service/comm/HttpConnector;->access$102(Lcom/nuance/connect/service/comm/HttpConnector;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
