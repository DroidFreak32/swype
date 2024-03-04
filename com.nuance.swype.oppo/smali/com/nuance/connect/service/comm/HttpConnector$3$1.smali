.class Lcom/nuance/connect/service/comm/HttpConnector$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/comm/HttpConnector$3;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/comm/HttpConnector$3;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/comm/HttpConnector$3$1;->this$1:Lcom/nuance/connect/service/comm/HttpConnector$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector$3$1;->this$1:Lcom/nuance/connect/service/comm/HttpConnector$3;

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector$3;->val$expiringServerConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method
