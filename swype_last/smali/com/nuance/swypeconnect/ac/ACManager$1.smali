.class Lcom/nuance/swypeconnect/ac/ACManager$1;
.super Lcom/nuance/connect/internal/Property$StringValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACManager;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager$1;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

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

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$1;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    # getter for: Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->access$000(Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "locationChangedListener.locationChangedListener() name="

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " value="

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$1;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectStarted()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LOCATION_COUNTRY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$1;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    # getter for: Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->access$100(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_33
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$1;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    # getter for: Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->access$100(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_57

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    const/16 v2, 0x15

    const-string/jumbo v3, "Device location has updated"

    invoke-interface {v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;->connectionStatus(ILjava/lang/String;)V

    goto :goto_42

    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v0

    :cond_5a
    return-void
.end method
