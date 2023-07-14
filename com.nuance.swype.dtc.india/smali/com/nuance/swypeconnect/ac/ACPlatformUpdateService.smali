.class public Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;
.super Lcom/nuance/swypeconnect/ac/ACService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;,
        Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;,
        Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;
    }
.end annotation


# static fields
.field public static final REASON_FAILED_DISK_FULL:I = 0x6

.field public static final REASON_FAILED_HTTP:I = 0x0

.field public static final REASON_FAILED_UNKNOWN:I = 0x7

.field public static final REASON_NETWORK_TIMEOUT:I = 0x4

.field public static final REASON_USER_CANCELED:I = 0x3


# instance fields
.field private downloadCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private final platformUpdateCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private service:Lcom/nuance/connect/api/PlatformUpdateService;

.field private final updateCallback:Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;


# direct methods
.method constructor <init>(Lcom/nuance/connect/api/PlatformUpdateService;)V
    .locals 2

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->platformUpdateCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$1;-><init>(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->updateCallback:Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->log:Lcom/nuance/connect/util/Logger$Log;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->service:Lcom/nuance/connect/api/PlatformUpdateService;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->platformUpdateCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->finishDownload()V

    return-void
.end method

.method private finishDownload()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->service:Lcom/nuance/connect/api/PlatformUpdateService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->downloadCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/PlatformUpdateService;->unregisterCallback(Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->downloadCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;

    return-void
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->service:Lcom/nuance/connect/api/PlatformUpdateService;

    invoke-interface {v0}, Lcom/nuance/connect/api/PlatformUpdateService;->cancelDownload()V

    return-void
.end method

.method public downloadUpdate(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x82

    const-string/jumbo v2, "There is currently no update available for download."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->downloadCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;

    invoke-direct {v1, p0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;-><init>(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;-><init>(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$1;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->downloadCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->service:Lcom/nuance/connect/api/PlatformUpdateService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->downloadCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/PlatformUpdateService;->downloadUpdate(Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;)V

    :cond_1
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PACKAGE_UPDATER_SERVICE"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->service:Lcom/nuance/connect/api/PlatformUpdateService;

    invoke-interface {v0}, Lcom/nuance/connect/api/PlatformUpdateService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->platformUpdateCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->service:Lcom/nuance/connect/api/PlatformUpdateService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->updateCallback:Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/PlatformUpdateService;->registerCallback(Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->platformUpdateCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method requiresDocument(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shutdown()V
    .locals 0

    return-void
.end method

.method start()V
    .locals 0

    return-void
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->platformUpdateCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->platformUpdateCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->service:Lcom/nuance/connect/api/PlatformUpdateService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->updateCallback:Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/PlatformUpdateService;->unregisterCallback(Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;)V

    :cond_0
    return-void
.end method

.method public unregisterCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->platformUpdateCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->service:Lcom/nuance/connect/api/PlatformUpdateService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->updateCallback:Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/PlatformUpdateService;->unregisterCallback(Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;)V

    return-void
.end method
