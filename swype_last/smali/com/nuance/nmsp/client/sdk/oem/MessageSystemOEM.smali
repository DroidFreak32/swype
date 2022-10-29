.class public Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$TimerRunnable;,
        Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;
    }
.end annotation


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private final b:Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;

.field private final c:Ljava/lang/Thread;

.field private final d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;",
            "Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$TimerRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->d:Ljava/util/Hashtable;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->b:Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$1;

    invoke-direct {v1, p0}, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$1;-><init>(Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->c:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;
    .registers 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;)Ljava/util/Hashtable;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->d:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->b:Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;

    return-object v0
.end method

.method public static terminate()V
    .registers 0

    return-void
.end method


# virtual methods
.method public cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z
    .registers 6

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$TimerRunnable;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "TIMER cancelTask() _pendingTimerTasks.size():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->d:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_2b
    if-eqz v0, :cond_56

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "TIMER _handler.removeCallbacks("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_51
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->b:Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_56
    if-eqz v0, :cond_5a

    const/4 v0, 0x1

    :goto_59
    return v0

    :cond_5a
    const/4 v0, 0x0

    goto :goto_59
.end method

.method public createMessage(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;)Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;
    .registers 4

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;

    invoke-direct {v0, p1, p2}, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;-><init>(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;)V

    return-object v0
.end method

.method public getMyAddr()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public getNumOfVRThreads()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getVRAddr()[Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V
    .registers 8

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$TimerRunnable;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$TimerRunnable;-><init>(Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)V

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "TIMER _handler.postDelayed("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_29
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->b:Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    invoke-virtual {p0, p1, p2}, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->createMessage(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;)Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;

    move-result-object v0

    check-cast p4, Ljava/lang/Thread;

    iput-object p4, v0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;->msgReceiver:Ljava/lang/Thread;

    check-cast p3, Ljava/lang/Thread;

    iput-object p3, v0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;->msgSender:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->b:Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$2;

    invoke-direct {v2, p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$2;-><init>(Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;)V

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSessionId([B)V
    .registers 2

    return-void
.end method

.method public stop()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->b:Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$3;

    invoke-direct {v1, p0}, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$3;-><init>(Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
