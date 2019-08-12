.class Lcom/nuance/connect/service/comm/HttpConnector$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/comm/HttpConnector;

.field final synthetic val$expiringServerConn:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/comm/HttpConnector;Ljava/net/HttpURLConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/comm/HttpConnector$3;->this$0:Lcom/nuance/connect/service/comm/HttpConnector;

    iput-object p2, p0, Lcom/nuance/connect/service/comm/HttpConnector$3;->val$expiringServerConn:Ljava/net/HttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector$3;->this$0:Lcom/nuance/connect/service/comm/HttpConnector;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/HttpConnector;->access$000(Lcom/nuance/connect/service/comm/HttpConnector;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "Expired - disconnecting"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/service/comm/HttpConnector$3$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/HttpConnector$3$1;-><init>(Lcom/nuance/connect/service/comm/HttpConnector$3;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
