.class Lcom/nuance/swypeconnect/ac/ACManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/host/service/HostInterface;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACManager;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager$1;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/host/service/HostInterface$HostService;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$1;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->access$500(Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/connect/host/service/BuildSettings;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
