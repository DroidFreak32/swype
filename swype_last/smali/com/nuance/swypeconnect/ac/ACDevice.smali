.class public final Lcom/nuance/swypeconnect/ac/ACDevice;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;
    }
.end annotation


# instance fields
.field private device:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDevice;->device:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    return-void
.end method


# virtual methods
.method public final getDeviceType()Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDevice;->device:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getType()Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    move-result-object v0

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDevice;->device:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLastCheckin()Ljava/util/Date;
    .registers 5

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDevice;->device:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckin()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDevice;->device:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
