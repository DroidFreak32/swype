.class Lcom/nuance/connect/internal/ClientBinderInternal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/ClientBinder;


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "com.nuance.connect.service.ConnectClient"


# instance fields
.field private final connectBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final connectBound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final context:Landroid/content/Context;

.field private volatile lastMessageSent:J

.field private final lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private mConnectConnection:Landroid/content/ServiceConnection;

.field private final mInboundHandler:Landroid/os/Handler;

.field private final mInboundMessenger:Landroid/os/Messenger;

.field private volatile mOutboundMessenger:Landroid/os/Messenger;

.field private final messageQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final priorityMessageQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final restart:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final rwLock:[I

.field private final service:Landroid/content/Intent;

.field private final serviceManager:Lcom/nuance/connect/api/ConnectServiceManager;

.field private final serviceReady:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/connect/api/ConnectServiceManager;Landroid/os/Handler;Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->serviceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->priorityMessageQueue:Ljava/util/concurrent/BlockingQueue;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->lastMessageSent:J

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->rwLock:[I

    new-instance v0, Lcom/nuance/connect/internal/ClientBinderInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ClientBinderInternal$1;-><init>(Lcom/nuance/connect/internal/ClientBinderInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mConnectConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->serviceManager:Lcom/nuance/connect/api/ConnectServiceManager;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.nuance.connect.service.ConnectClient"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->service:Landroid/content/Intent;

    iput-object p3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mInboundHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mInboundHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mInboundMessenger:Landroid/os/Messenger;

    iput-object p4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/nuance/connect/internal/ClientBinderInternal;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/ClientBinderInternal;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/ClientBinderInternal;)Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/ClientBinderInternal;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/ClientBinderInternal;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->processPriorityQueuedMessages()V

    return-void
.end method

.method private bind()V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_5c

    iget-object v2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_5c

    iget-object v2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_17
    iget-object v2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->service:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->service:Landroid/content/Intent;

    iget-object v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mConnectConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_80

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_80

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v4, v3

    move v2, v1

    :goto_43
    if-ge v2, v4, :cond_80

    aget-object v5, v3, v2

    const-string/jumbo v6, "com.nuance.connect.service.ConnectClient"

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    :goto_52
    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Did not find the connect service.  Please verify the service is your AndroidManifest.xml"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_5c
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_5c} :catch_60
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_5c} :catch_65

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :catch_60
    move-exception v0

    invoke-direct {p0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V

    goto :goto_5c

    :catch_65
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failure in binding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_80
    move v0, v1

    goto :goto_52
.end method

.method private processPriorityQueuedMessages()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->priorityMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendConnectPriorityMessage(Landroid/os/Message;)Z

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private sendUnregisterClient()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UNREGISTER_CLIENT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    :cond_d
    return-void
.end method

.method private declared-synchronized setConnectBoundState(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->serviceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unbind()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_10
    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mConnectConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->service:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "unbind() serviceWasRunning="

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method public getLastMessageSent()J
    .registers 3

    iget-wide v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->lastMessageSent:J

    return-wide v0
.end method

.method public getLock()[I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->rwLock:[I

    return-object v0
.end method

.method public isBound()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendUnregisterClient()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->unbind()V

    return-void
.end method

.method protected processQueuedMessages()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->priorityMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "priorityMessageQueue is not empty... processing queue"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->processPriorityQueuedMessages()V

    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendConnectMessage(Landroid/os/Message;)Z

    goto :goto_21

    :cond_31
    return-void
.end method

.method public restart()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->bind()V

    :cond_b
    return-void
.end method

.method public sendConnectMessage(Landroid/os/Message;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Landroid/os/Message;Z)Z

    move-result v0

    return v0
.end method

.method public sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z
    .registers 8

    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method public sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z
    .registers 9

    const/high16 v3, -0x80000000

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method public sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method public sendConnectPriorityMessage(Landroid/os/Message;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Landroid/os/Message;Z)Z

    move-result v0

    return v0
.end method

.method public sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z
    .registers 8

    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method public sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z
    .registers 9

    const/high16 v3, -0x80000000

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method public sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method protected sendMessage(Landroid/os/Message;Z)Z
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->getLock()[I

    move-result-object v2

    monitor-enter v2

    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->lastMessageSent:J

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "sendMessage: "

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/InternalMessages;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " priority:"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_3c

    :cond_39
    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->bind()V

    :cond_3c
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->serviceManager:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v1}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v1

    if-nez v1, :cond_62

    if-nez p2, :cond_50

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Message dropped, build is unlicensed"

    invoke-interface {v1, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    monitor-exit v2

    :goto_4f
    return v0

    :cond_50
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Priority Message allowed, but, build is unlicensed"

    invoke-interface {v1, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->serviceManager:Lcom/nuance/connect/api/ConnectServiceManager;

    const/16 v3, 0xe

    const-string/jumbo v4, "Build is unlicensed."

    invoke-interface {v1, v3, v4}, Lcom/nuance/connect/api/ConnectServiceManager;->notifyConnectionStatus(ILjava/lang/String;)V

    :cond_62
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->serviceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_6c

    if-eqz p2, :cond_82

    :cond_6c
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;
    :try_end_76
    .catchall {:try_start_6 .. :try_end_76} :catchall_8d

    if-eqz v1, :cond_82

    :try_start_78
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mInboundMessenger:Landroid/os/Messenger;

    iput-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_81} :catch_90
    .catch Ljava/lang/NullPointerException; {:try_start_78 .. :try_end_81} :catch_af
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_81} :catch_ca
    .catchall {:try_start_78 .. :try_end_81} :catchall_8d

    const/4 v0, 0x1

    :cond_82
    :goto_82
    if-nez v0, :cond_8b

    if-eqz p2, :cond_e9

    :try_start_86
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->priorityMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_8b
    :goto_8b
    monitor-exit v2

    goto :goto_4f

    :catchall_8d
    move-exception v0

    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_8d

    throw v0

    :catch_90
    move-exception v1

    :try_start_91
    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "RemoteException re="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V

    goto :goto_82

    :catch_af
    move-exception v1

    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "NullPointerException npe="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_82

    :catch_ca
    move-exception v1

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V

    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Exception e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_82

    :cond_e9
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_ee
    .catchall {:try_start_91 .. :try_end_ee} :catchall_8d

    goto :goto_8b
.end method

.method protected sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_9
    instance-of v1, p2, Ljava/util/HashMap;

    if-eqz v1, :cond_26

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "DEFAULT_KEY"

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_3b

    :cond_1d
    :goto_1d
    iput p3, v0, Landroid/os/Message;->arg1:I

    iput p4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Landroid/os/Message;Z)Z

    move-result v0

    return v0

    :cond_26
    :try_start_26
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_3d

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "DEFAULT_KEY"

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1d

    :catch_3b
    move-exception v1

    goto :goto_1d

    :cond_3d
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_52

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1d

    :cond_52
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_6b

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1d

    :cond_6b
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_84

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1d

    :cond_84
    instance-of v1, p2, Landroid/os/Bundle;

    if-eqz v1, :cond_1d

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_8d} :catch_3b

    goto :goto_1d
.end method

.method public setClientComplete()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->serviceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_e
    return-void
.end method

.method public start()V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->bind()V

    return-void
.end method

.method public stop()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendUnregisterClient()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->unbind()V

    return-void
.end method
