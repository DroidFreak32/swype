.class public Lcom/nuance/nmsp/client/sdk/oem/TimerSystemOEM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/oem/TimerSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static terminate()V
    .locals 0

    return-void
.end method


# virtual methods
.method public cancel(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public schedule(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
