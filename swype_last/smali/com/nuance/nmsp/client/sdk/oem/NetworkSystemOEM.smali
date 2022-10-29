.class public Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;,
        Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;,
        Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

.field private static final c:Ljava/lang/Integer;

.field private static final d:Ljava/lang/Integer;

.field private static final e:Ljava/lang/Integer;

.field private static final f:Ljava/lang/Integer;


# instance fields
.field private b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

.field private g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->c:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->d:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->e:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->f:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    return-void
.end method

.method static synthetic a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;
    .registers 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;[Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a([Ljava/lang/Object;)V

    return-void
.end method

.method private a([Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getMyAddr()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v0, p1, p0, v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/Integer;
    .registers 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/Integer;
    .registers 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public static terminate()V
    .registers 0

    return-void
.end method


# virtual methods
.method public clearPendingOps(Ljava/lang/Object;)V
    .registers 4

    move-object v0, p1

    check-cast v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;

    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->f:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;

    if-eqz v1, :cond_d

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->f:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->b()V

    :goto_c
    return-void

    :cond_d
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "SOCKET WRITE ERROR: socket read thread is null"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1d
    invoke-virtual {p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->closeSocket(Ljava/lang/Object;)V

    goto :goto_c
.end method

.method public closeSocket(Ljava/lang/Object;)V
    .registers 11

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->g:Ljava/lang/Object;

    monitor-enter v4

    :try_start_d
    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->f:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;

    if-nez v1, :cond_16

    monitor-exit v4
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    goto :goto_9

    :catchall_13
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_16
    :try_start_16
    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->f:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;)Z

    move-result v1

    if-nez v1, :cond_af

    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->f:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->a()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->f:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;

    move v1, v2

    :goto_27
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_13

    iget-object v4, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->a:Ljava/net/Socket;

    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    :try_start_2e
    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->c:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->c:Ljava/io/InputStream;

    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->a:Ljava/net/Socket;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_3e} :catch_58

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->d:Ljava/lang/Integer;

    aput-object v4, v1, v3

    iget-object v3, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;

    aput-object v3, v1, v2

    sget-object v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aput-object v2, v1, v7

    aput-object p1, v1, v8

    const/4 v2, 0x4

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->e:Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a([Ljava/lang/Object;)V

    goto :goto_9

    :catch_58
    move-exception v1

    sget-object v4, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v4

    if-eqz v4, :cond_94

    sget-object v4, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Socket Close Expception - ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] Message - ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_94
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->d:Ljava/lang/Integer;

    aput-object v4, v1, v3

    iget-object v3, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;

    aput-object v3, v1, v2

    sget-object v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aput-object v2, v1, v7

    aput-object p1, v1, v8

    const/4 v2, 0x4

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->e:Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a([Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_af
    move v1, v3

    goto/16 :goto_27
.end method

.method public handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    check-cast p1, [Ljava/lang/Object;

    aget-object v0, p1, v2

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->c:Ljava/lang/Integer;

    if-ne v0, v1, :cond_1d

    aget-object v0, p1, v3

    check-cast v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;

    aget-object v1, p1, v4

    check-cast v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aget-object v2, p1, v5

    aget-object v3, p1, v6

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;->openSocketCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    aget-object v0, p1, v2

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->d:Ljava/lang/Integer;

    if-ne v0, v1, :cond_33

    aget-object v0, p1, v3

    check-cast v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;

    aget-object v1, p1, v4

    check-cast v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aget-object v2, p1, v5

    aget-object v3, p1, v6

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;->closeSocketCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1c

    :cond_33
    aget-object v0, p1, v2

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->e:Ljava/lang/Integer;

    if-ne v0, v1, :cond_6a

    aget-object v0, p1, v3

    check-cast v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$ReadSocketCallback;

    aget-object v1, p1, v4

    check-cast v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aget-object v2, p1, v5

    aget-object v3, p1, v6

    check-cast v3, [B

    const/4 v4, 0x5

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x7

    aget-object v6, p1, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x8

    aget-object v7, p1, v7

    invoke-interface/range {v0 .. v7}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$ReadSocketCallback;->readSocketCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;Ljava/lang/Object;[BIIILjava/lang/Object;)V

    goto :goto_1c

    :cond_6a
    aget-object v0, p1, v2

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->f:Ljava/lang/Integer;

    if-ne v0, v1, :cond_1c

    aget-object v0, p1, v3

    check-cast v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$WriteSocketCallback;

    aget-object v1, p1, v4

    check-cast v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aget-object v2, p1, v5

    aget-object v3, p1, v6

    check-cast v3, [B

    const/4 v4, 0x5

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x7

    aget-object v6, p1, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x8

    aget-object v7, p1, v7

    invoke-interface/range {v0 .. v7}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$WriteSocketCallback;->writeSocketCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;Ljava/lang/Object;[BIIILjava/lang/Object;)V

    goto/16 :goto_1c
.end method

.method public isNetworkHealthy()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public openSSLSocket(Ljava/lang/String;ILjava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;Ljava/lang/Object;)V
    .registers 16

    const/4 v8, 0x1

    new-instance v4, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;

    invoke-direct {v4}, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;-><init>()V

    invoke-virtual {p3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SSL_SelfSigned_Cert"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, "TRUE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    :cond_47
    iput-boolean v8, v4, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;->enableSelfSignedCert:Z

    :cond_49
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SSL_Cert_Summary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v4, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;->certSummary:Ljava/lang/String;

    :cond_61
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SSL_Cert_Data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v4, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;->certData:Ljava/lang/String;

    goto :goto_a

    :cond_7a
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;-><init>(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;Ljava/lang/String;ILcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;Ljava/lang/Object;)V

    :try_start_85
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->start()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89

    :goto_88
    return-void

    :catch_89
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_c5

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Open Socket Exception - ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] Message - ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_c5
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->c:Ljava/lang/Integer;

    aput-object v2, v0, v1

    aput-object p4, v0, v8

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a([Ljava/lang/Object;)V

    goto :goto_88
.end method

.method public openSocket(Ljava/lang/String;ILcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;Ljava/lang/Object;)V
    .registers 13

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;-><init>(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;Ljava/lang/String;ILcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;Ljava/lang/Object;)V

    :try_start_b
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->start()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Open Socket Exception - ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] Message - ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_4b
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->c:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a([Ljava/lang/Object;)V

    goto :goto_e
.end method

.method public setSessionId(Ljava/lang/Object;[B)V
    .registers 3

    return-void
.end method

.method public socketRead(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;[BIILcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$ReadSocketCallback;Ljava/lang/Object;)Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;
    .registers 16

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;->NETWORK_READ_FULL:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;

    if-eq p2, v0, :cond_17

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Blackberry NetworkSystem only supports NETWORK_READ_FULL"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_14
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    :goto_16
    return-object v0

    :cond_17
    check-cast p1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;

    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->f:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;

    if-eqz v0, :cond_4b

    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->f:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;)Z

    move-result v0

    if-nez v0, :cond_38

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;-><init>(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;[BIILcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$ReadSocketCallback;Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->f:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;->a(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;)Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    move-result-object v0

    goto :goto_16

    :cond_38
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "socket read thread is stopping"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_48
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    goto :goto_16

    :cond_4b
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5b

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "SOCKET READ ERROR: socket read thread is null"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_5b
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    goto :goto_16
.end method

.method public socketWrite(Ljava/lang/Object;[BIILcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$WriteSocketCallback;Ljava/lang/Object;)Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;
    .registers 16

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "socketWrite(bufferLen:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_29
    move-object v0, p1

    check-cast v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;

    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->a:Ljava/net/Socket;

    if-eqz v1, :cond_34

    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->d:Ljava/io/OutputStream;

    if-nez v1, :cond_37

    :cond_34
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    :goto_36
    return-object v0

    :cond_37
    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->d:Ljava/io/OutputStream;

    :try_start_39
    invoke-virtual {v0, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3f} :catch_97

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->f:Ljava/lang/Integer;

    aput-object v1, v0, v4

    aput-object p5, v0, v5

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aput-object v1, v0, v6

    aput-object p1, v0, v7

    aput-object p2, v0, v8

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object p6, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a([Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_94

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "socketWrite(bufferLen:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_94
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    goto :goto_36

    :catch_97
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_d3

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Socket Write Exception - ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] Message - ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_d3
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->f:Ljava/lang/Integer;

    aput-object v1, v0, v4

    aput-object p5, v0, v5

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    aput-object v1, v0, v6

    aput-object p1, v0, v7

    aput-object p2, v0, v8

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object p6, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->a([Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->closeSocket(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    goto/16 :goto_36
.end method
