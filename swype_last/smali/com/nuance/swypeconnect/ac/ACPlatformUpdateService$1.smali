.class Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAvailable()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->platformUpdateCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->access$000(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    array-length v2, v0

    :goto_10
    if-ge v1, v2, :cond_1a

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;->updateAvailable()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1a
    return-void
.end method
