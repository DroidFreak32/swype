.class public Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;
.super Lcom/nuance/connect/internal/AbstractService;

# interfaces
.implements Lcom/nuance/connect/api/PlatformUpdateService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/PlatformUpdateServiceInternal$2;
    }
.end annotation


# static fields
.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;


# instance fields
.field private final callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private downloadCallback:Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private final messageHandler:Landroid/os/Handler;

.field private updateAvailable:Z

.field private updateCategoryId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .registers 4

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstractService;-><init>()V

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal$1;-><init>(Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    iput-object p1, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->messageHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;Landroid/os/Handler;Landroid/os/Message;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100()[Lcom/nuance/connect/internal/common/InternalMessages;
    .registers 1

    sget-object v0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .registers 7

    const/4 v1, 0x0

    sget-object v0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_b6

    :cond_12
    :goto_12
    return-void

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->updateCategoryId:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->updateCategoryId:Ljava/lang/String;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->updateAvailable:Z

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-array v2, v1, [Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;

    array-length v2, v0

    :goto_32
    if-ge v1, v2, :cond_12

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;->updateAvailable()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :pswitch_3c
    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_INSTALL_READY"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->downloadCallback:Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->downloadCallback:Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;->downloadComplete(Ljava/io/File;)V

    goto :goto_12

    :pswitch_5e
    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_PROGRESS"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->downloadCallback:Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;

    if-eqz v1, :cond_12

    if-nez v0, :cond_7d

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->downloadCallback:Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;

    invoke-interface {v0}, Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;->downloadStarted()V

    goto :goto_12

    :cond_7d
    iget-object v1, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->downloadCallback:Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;->downloadPercentage(I)V

    goto :goto_12

    :pswitch_83
    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_CANCEL_ACK"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->downloadCallback:Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->downloadCallback:Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;->downloadStopped(I)V

    goto/16 :goto_12

    :pswitch_97
    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_DOWNLOAD_FAILED"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->downloadCallback:Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->downloadCallback:Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;->downloadFailed(I)V

    goto/16 :goto_12

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_13
        :pswitch_3c
        :pswitch_5e
        :pswitch_83
        :pswitch_97
    .end packed-switch
.end method


# virtual methods
.method public cancelDownload()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "cancelDownload()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->updateAvailable:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->downloadCallback:Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_PLATFORM_UPDATE_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->updateCategoryId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_1d
    return-void
.end method

.method public downloadUpdate(Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;)V
    .registers 5

    iput-object p1, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->downloadCallback:Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;

    iget-boolean v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->updateAvailable:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_PLATFORM_UPDATE_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->updateCategoryId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->UPDATE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->UPDATE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->updateAvailable:Z

    return v0
.end method

.method public registerCallback(Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;)V
    .registers 3

    iget-boolean v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->updateAvailable:Z

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;->updateAvailable()V

    :cond_7
    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallback(Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->downloadCallback:Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->downloadCallback:Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->downloadCallback:Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;

    :cond_f
    return-void
.end method

.method public unregisterCallback(Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallbacks()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method
