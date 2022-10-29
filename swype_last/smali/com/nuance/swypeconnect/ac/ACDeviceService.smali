.class public final Lcom/nuance/swypeconnect/ac/ACDeviceService;
.super Lcom/nuance/swypeconnect/ac/ACService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;
    }
.end annotation


# instance fields
.field private configService:Lcom/nuance/connect/api/ConfigService;

.field private final deviceCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private deviceIdFilter:Lcom/nuance/connect/util/ActionFilter;

.field private infoCallback:Lcom/nuance/connect/util/ActionDelegateCallback;

.field private managerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACManager;",
            ">;"
        }
    .end annotation
.end field

.field private swyperIdFilter:Lcom/nuance/connect/util/ActionFilter;


# direct methods
.method protected constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/api/ConfigService;)V
    .registers 6

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-instance v0, Lcom/nuance/connect/util/ActionFilter;

    const-string/jumbo v1, "com.nuance.connect.DATA_AVAILABLE"

    const-string/jumbo v2, "com.nuance.connect.TYPE_SWYPER_ID"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/ActionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->swyperIdFilter:Lcom/nuance/connect/util/ActionFilter;

    new-instance v0, Lcom/nuance/connect/util/ActionFilter;

    const-string/jumbo v1, "com.nuance.connect.DATA_AVAILABLE"

    const-string/jumbo v2, "com.nuance.connect.TYPE_DEVICE_ID"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/ActionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceIdFilter:Lcom/nuance/connect/util/ActionFilter;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDeviceService$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDeviceService$1;-><init>(Lcom/nuance/swypeconnect/ac/ACDeviceService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->infoCallback:Lcom/nuance/connect/util/ActionDelegateCallback;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->configService:Lcom/nuance/connect/api/ConfigService;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->managerRef:Ljava/lang/ref/WeakReference;

    invoke-interface {p2}, Lcom/nuance/connect/api/ConfigService;->getSwyperId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-interface {p2}, Lcom/nuance/connect/api/ConfigService;->getSwyperId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_54

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Swyper Id: "

    invoke-interface {p2}, Lcom/nuance/connect/api/ConfigService;->getSwyperId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACDeviceService;)Lcom/nuance/connect/util/ActionFilter;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->swyperIdFilter:Lcom/nuance/connect/util/ActionFilter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACDeviceService;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->notifyCallbacksOfSwyperId()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACDeviceService;)Lcom/nuance/connect/util/ActionFilter;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceIdFilter:Lcom/nuance/connect/util/ActionFilter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACDeviceService;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->notifyCallbacksOfDeviceId()V

    return-void
.end method

.method private notifyCallbacksOfDeviceId()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v2}, Lcom/nuance/connect/api/ConfigService;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;->deviceRegistered(Ljava/lang/String;)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method private notifyCallbacksOfSwyperId()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getSwyperId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getSwyperId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_26

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Swyper Id: "

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v2}, Lcom/nuance/connect/api/ConfigService;->getSwyperId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v2}, Lcom/nuance/connect/api/ConfigService;->getSwyperId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;->swyperId(Ljava/lang/String;)V

    goto :goto_2c

    :cond_42
    return-void
.end method


# virtual methods
.method public final getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "DEVICE"

    return-object v0
.end method

.method public final getSwyperId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getSwyperId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final registerCallback(Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->managerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v1

    if-eqz v1, :cond_30

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->swyperIdFilter:Lcom/nuance/connect/util/ActionFilter;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceIdFilter:Lcom/nuance/connect/util/ActionFilter;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->infoCallback:Lcom/nuance/connect/util/ActionDelegateCallback;

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/api/ConnectServiceManager;->registerActionCallback(Lcom/nuance/connect/util/ActionDelegateCallback;Ljava/util/List;)V

    :cond_30
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final requiresDocument(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method final shutdown()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->isShutdown:Z

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->unregisterCallbacks()V

    return-void
.end method

.method final start()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->isShutdown:Z

    return-void
.end method

.method public final unregisterCallback(Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->managerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->infoCallback:Lcom/nuance/connect/util/ActionDelegateCallback;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConnectServiceManager;->unregisterActionCallback(Lcom/nuance/connect/util/ActionDelegateCallback;)V

    :cond_26
    return-void
.end method

.method public final unregisterCallbacks()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method
