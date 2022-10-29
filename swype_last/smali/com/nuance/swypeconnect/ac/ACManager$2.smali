.class Lcom/nuance/swypeconnect/ac/ACManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/ConnectionCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACManager;

.field final synthetic val$callback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(II)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;->connected(II)V

    return-void
.end method

.method public onConnectionStatus(ILjava/lang/String;)V
    .registers 4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0, p2}, Lcom/nuance/swypeconnect/ac/ACManager;->convertJSONTasksToServiceTasks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_a
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;->connectionStatus(ILjava/lang/String;)V

    return-void
.end method

.method public onDisconnected(I)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;->disconnected(I)V

    return-void
.end method
