.class Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAvailable()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->access$000(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->access$000(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;->updateAvailable()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    return-void
.end method
