.class final Lcom/nuance/nmdp/speechkit/LogRevisionProxy;
.super Lcom/nuance/nmdp/speechkit/CommandProxyBase;
.source "LogRevisionProxy.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/GenericCommand;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/nmdp/speechkit/CommandProxyBase",
        "<",
        "Lcom/nuance/nmdp/speechkit/GenericResult;",
        ">;",
        "Lcom/nuance/nmdp/speechkit/GenericCommand;"
    }
.end annotation


# instance fields
.field private _appSessionId:Ljava/lang/String;

.field private _error:Lcom/nuance/nmdp/speechkit/SpeechError;

.field private _listener:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Ljava/lang/Object;)V
    .locals 2
    .param p1, "kit"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p2, "appSessionId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;
    .param p4, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->getLogRevisionCmd()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/nuance/nmdp/speechkit/CommandProxyBase;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->_error:Lcom/nuance/nmdp/speechkit/SpeechError;

    .line 19
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->_appSessionId:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->_listener:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->init()V

    .line 25
    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/LogRevisionProxy;)Lcom/nuance/nmdp/speechkit/SpeechError;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LogRevisionProxy;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->_error:Lcom/nuance/nmdp/speechkit/SpeechError;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/LogRevisionProxy;Lcom/nuance/nmdp/speechkit/SpeechError;)Lcom/nuance/nmdp/speechkit/SpeechError;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LogRevisionProxy;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->_error:Lcom/nuance/nmdp/speechkit/SpeechError;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/LogRevisionProxy;)Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LogRevisionProxy;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->_listener:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/LogRevisionProxy;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/LogRevisionProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected final createCommand(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;)Lcom/nuance/nmdp/speechkit/CommandBase;
    .locals 6
    .param p1, "runner"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;)",
            "Lcom/nuance/nmdp/speechkit/CommandBase",
            "<",
            "Lcom/nuance/nmdp/speechkit/GenericResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    new-instance v0, Lcom/nuance/nmdp/speechkit/LogRevisionProxy$1;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->_appSessionId:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/LogRevisionProxy$1;-><init>(Lcom/nuance/nmdp/speechkit/LogRevisionProxy;Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method final setListener(Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    .prologue
    .line 30
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->_listener:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
