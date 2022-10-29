.class final Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;

.field private d:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;

.field private e:Ljava/lang/Object;

.field private f:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

.field private g:Z

.field private h:Ljava/util/Vector;

.field private i:Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;

.field private j:Z

.field private synthetic k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;Ljava/lang/String;ILcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;Ljava/lang/Object;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->e:Ljava/lang/Object;

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->g:Z

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->h:Ljava/util/Vector;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->i:Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->j:Z

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->b:I

    iput-object p4, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;

    iput-object p5, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;

    iput-object p6, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->h:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;Ljava/lang/String;ILcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;Ljava/lang/Object;)V
    .registers 11

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->e:Ljava/lang/Object;

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->g:Z

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->h:Ljava/util/Vector;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->i:Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->j:Z

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->b:I

    iput-object p5, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;

    iput-object p6, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;

    iput-object p7, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->h:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->j:Z

    iput-object p4, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->i:Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->g:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;)Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;
    .registers 8

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->g:Z

    if-nez v0, :cond_58

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_e
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->h:Ljava/util/Vector;

    if-nez v3, :cond_4c

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    const-string/jumbo v0, "SocketReadThread: queue is null!!"

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1a
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v3

    const-string/jumbo v4, "addNewJob() notifying"

    invoke-virtual {v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_2e
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_55

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_4b

    if-eqz v1, :cond_4b

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_4b
    :goto_4b
    return-object v0

    :cond_4c
    :try_start_4c
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->h:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_55

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1a

    :catchall_55
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_58
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    const-string/jumbo v1, "SocketReadThread is already stopping!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_6c
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    goto :goto_4b
.end method

.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->g:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->h:Ljava/util/Vector;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->h:Ljava/util/Vector;

    if-nez v2, :cond_24

    const-string/jumbo v0, "SocketReadThread.cleanPendingJobs(): queue is null!!"

    :goto_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_2a

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_23
    return-void

    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->h:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2a

    goto :goto_f

    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final run()V
    .registers 14

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Open Socket connection on host:- ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] and port["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_3c
    :try_start_3c
    iget-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->j:Z

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->a:Ljava/lang/String;

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->b:I

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->i:Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;

    invoke-static {v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspSSLSocketFactory;->createSocket(Ljava/lang/String;ILcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;)Ljava/net/Socket;

    move-result-object v2

    :goto_4a
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_20c

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v1

    const-string/jumbo v2, "SocketReadThread NETWORK_ERROR. !sock.isConnected()"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_64
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->b()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->e:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;[Ljava/lang/Object;)V

    :cond_86
    :goto_86
    return-void

    :cond_87
    new-instance v2, Ljava/net/Socket;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->a:Ljava/lang/String;

    iget v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->b:I

    invoke-direct {v2, v1, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_90
    .catch Ljava/net/UnknownHostException; {:try_start_3c .. :try_end_90} :catch_91
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_90} :catch_ef
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_90} :catch_14e
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_90} :catch_1ad

    goto :goto_4a

    :catch_91
    move-exception v1

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Open Streams Exception - ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] Message - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_d1
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->b()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;

    aput-object v3, v2, v9

    sget-object v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aput-object v3, v2, v10

    const/4 v3, 0x0

    aput-object v3, v2, v11

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->e:Ljava/lang/Object;

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;[Ljava/lang/Object;)V

    goto :goto_86

    :catch_ef
    move-exception v1

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_12f

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Open Streams Exception - ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] Message - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_12f
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->b()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;

    aput-object v3, v2, v9

    sget-object v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aput-object v3, v2, v10

    const/4 v3, 0x0

    aput-object v3, v2, v11

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->e:Ljava/lang/Object;

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;[Ljava/lang/Object;)V

    goto/16 :goto_86

    :catch_14e
    move-exception v1

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_18e

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Open Streams Exception - ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] Message - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_18e
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->b()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;

    aput-object v3, v2, v9

    sget-object v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aput-object v3, v2, v10

    const/4 v3, 0x0

    aput-object v3, v2, v11

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->e:Ljava/lang/Object;

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;[Ljava/lang/Object;)V

    goto/16 :goto_86

    :catch_1ad
    move-exception v1

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_1ed

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Open Streams Exception - ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] Message - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_1ed
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->b()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;

    aput-object v3, v2, v9

    sget-object v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aput-object v3, v2, v10

    const/4 v3, 0x0

    aput-object v3, v2, v11

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->e:Ljava/lang/Object;

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;[Ljava/lang/Object;)V

    goto/16 :goto_86

    :cond_20c
    :try_start_20c
    iget-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->j:Z

    if-eqz v1, :cond_218

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v1, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    :cond_218
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    const/4 v1, 0x1

    const/16 v3, 0x28

    invoke-virtual {v2, v1, v3}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_226} :catch_2df

    :cond_226
    :goto_226
    :try_start_226
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_22d
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_22d} :catch_321

    move-result-object v6

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->e:Ljava/lang/Object;

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;-><init>(Ljava/net/Socket;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;Ljava/lang/Object;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->b()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;

    aput-object v4, v3, v9

    sget-object v4, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aput-object v4, v3, v10

    aput-object v1, v3, v11

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->e:Ljava/lang/Object;

    aput-object v4, v3, v12

    invoke-static {v2, v3}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;[Ljava/lang/Object;)V

    :goto_254
    :try_start_254
    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->g:Z

    if-nez v2, :cond_86

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_25f
    .catch Ljava/lang/Exception; {:try_start_254 .. :try_end_25f} :catch_2a4

    :cond_25f
    :goto_25f
    :try_start_25f
    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->g:Z

    if-nez v2, :cond_3a7

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->h:Ljava/util/Vector;

    if-eqz v2, :cond_3a7

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->h:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3a7

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_283

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    const-string/jumbo v4, "socket read thread. waiting syncObj in."

    invoke-virtual {v2, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V
    :try_end_283
    .catchall {:try_start_25f .. :try_end_283} :catchall_2a1

    :cond_283
    :try_start_283
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_28c
    .catch Ljava/lang/Exception; {:try_start_283 .. :try_end_28c} :catch_383
    .catchall {:try_start_283 .. :try_end_28c} :catchall_2a1

    :cond_28c
    :goto_28c
    :try_start_28c
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_25f

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    const-string/jumbo v4, "socket read thread. waiting syncObj out."

    invoke-virtual {v2, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V
    :try_end_2a0
    .catchall {:try_start_28c .. :try_end_2a0} :catchall_2a1

    goto :goto_25f

    :catchall_2a1
    move-exception v1

    :try_start_2a2
    monitor-exit v3

    throw v1
    :try_end_2a4
    .catch Ljava/lang/Exception; {:try_start_2a2 .. :try_end_2a4} :catch_2a4

    :catch_2a4
    move-exception v1

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NetworkSystemJ2me.run() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto/16 :goto_86

    :catch_2df
    move-exception v1

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v3

    if-eqz v3, :cond_226

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Set Socket Option Exception - ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] Message - ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto/16 :goto_226

    :catch_321
    move-exception v1

    :try_start_322
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_325
    .catch Ljava/io/IOException; {:try_start_322 .. :try_end_325} :catch_509

    :goto_325
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_364

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Set Socket Option Exception - ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] Message - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_364
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->b()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->c:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;

    aput-object v3, v2, v9

    sget-object v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aput-object v3, v2, v10

    const/4 v3, 0x0

    aput-object v3, v2, v11

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->e:Ljava/lang/Object;

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;[Ljava/lang/Object;)V

    goto/16 :goto_86

    :catch_383
    move-exception v2

    :try_start_384
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v4

    if-eqz v4, :cond_28c

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "InterruptedException ie:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto/16 :goto_28c

    :cond_3a7
    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->g:Z

    if-nez v2, :cond_3af

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->h:Ljava/util/Vector;

    if-nez v2, :cond_3b2

    :cond_3af
    monitor-exit v3

    goto/16 :goto_86

    :cond_3b2
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->h:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->h:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/Vector;->removeElementAt(I)V

    monitor-exit v3
    :try_end_3c2
    .catchall {:try_start_384 .. :try_end_3c2} :catchall_2a1

    :try_start_3c2
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3d6

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v3

    const-string/jumbo v4, "socket read thread. reading socket in."

    invoke-virtual {v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_3d6
    move v3, v8

    :goto_3d7
    iget v4, v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->c:I

    if-ge v3, v4, :cond_412

    iget-object v4, v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->a:[B

    iget v6, v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->b:I

    add-int/2addr v6, v3

    iget v7, v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->c:I

    sub-int/2addr v7, v3

    invoke-virtual {v5, v4, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_408

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "socket read thread. bytesRead:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_408
    if-gez v4, :cond_474

    iget-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->g:Z

    if-nez v3, :cond_412

    sget-object v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    :cond_412
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_426

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v3

    const-string/jumbo v4, "socket read thread. reading socket out."

    invoke-virtual {v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V
    :try_end_426
    .catch Ljava/io/IOException; {:try_start_3c2 .. :try_end_426} :catch_477
    .catch Ljava/lang/Exception; {:try_start_3c2 .. :try_end_426} :catch_2a4

    :cond_426
    :goto_426
    :try_start_426
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    sget-object v4, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    if-ne v3, v4, :cond_4bd

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->c()Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget-object v7, v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$ReadSocketCallback;

    aput-object v7, v4, v6

    const/4 v6, 0x2

    sget-object v7, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aput-object v7, v4, v6

    const/4 v6, 0x3

    aput-object v1, v4, v6

    const/4 v6, 0x4

    iget-object v7, v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->a:[B

    aput-object v7, v4, v6

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/Integer;

    iget v9, v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->b:I

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    const/4 v6, 0x6

    new-instance v7, Ljava/lang/Integer;

    iget v9, v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->c:I

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    const/4 v6, 0x7

    new-instance v7, Ljava/lang/Integer;

    iget v9, v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->c:I

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    const/16 v6, 0x8

    iget-object v2, v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->e:Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;[Ljava/lang/Object;)V

    goto/16 :goto_254

    :cond_474
    add-int/2addr v3, v4

    goto/16 :goto_3d7

    :catch_477
    move-exception v3

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v4

    if-eqz v4, :cond_4b7

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Socket Read/Available Expception - ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] Message - ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_4b7
    sget-object v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    goto/16 :goto_426

    :cond_4bd
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->c()Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget-object v7, v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$ReadSocketCallback;

    aput-object v7, v4, v6

    const/4 v6, 0x2

    sget-object v7, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aput-object v7, v4, v6

    const/4 v6, 0x3

    aput-object v1, v4, v6

    const/4 v6, 0x4

    iget-object v7, v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->a:[B

    aput-object v7, v4, v6

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/Integer;

    iget v9, v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->b:I

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    const/4 v6, 0x6

    new-instance v7, Ljava/lang/Integer;

    iget v9, v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->c:I

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    const/4 v6, 0x7

    new-instance v7, Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    const/16 v6, 0x8

    iget-object v2, v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->e:Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->k:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    invoke-virtual {v2, v1}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->closeSocket(Ljava/lang/Object;)V
    :try_end_507
    .catch Ljava/lang/Exception; {:try_start_426 .. :try_end_507} :catch_2a4

    goto/16 :goto_254

    :catch_509
    move-exception v2

    goto/16 :goto_325
.end method
