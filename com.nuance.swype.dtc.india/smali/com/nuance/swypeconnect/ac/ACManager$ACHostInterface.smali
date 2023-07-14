.class Lcom/nuance/swypeconnect/ac/ACManager$ACHostInterface;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/host/service/HostInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ACHostInterface"
.end annotation


# instance fields
.field private buildSettings:Lcom/nuance/connect/host/service/BuildSettings;


# direct methods
.method constructor <init>(Lcom/nuance/connect/host/service/BuildSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager$ACHostInterface;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    return-void
.end method


# virtual methods
.method public getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/host/service/HostInterface$HostService;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ACHostInterface;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
