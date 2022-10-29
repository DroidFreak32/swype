.class final Lcom/nuance/nmdp/speechkit/DataUploadProxy;
.super Lcom/nuance/nmdp/speechkit/CommandProxyBase;
.source "DataUploadProxy.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/DataUploadCommand;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/nmdp/speechkit/CommandProxyBase",
        "<",
        "Lcom/nuance/nmdp/speechkit/DataUploadResult;",
        ">;",
        "Lcom/nuance/nmdp/speechkit/DataUploadCommand;"
    }
.end annotation


# instance fields
.field private _isReady:Z

.field private _listener:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;Ljava/lang/Object;)V
    .registers 6
    .param p1, "kit"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p2, "listener"    # Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;
    .param p3, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->getDataUploadCmd()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/nuance/nmdp/speechkit/CommandProxyBase;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_a
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_listener:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    .line 21
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_isReady:Z

    .line 23
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->init()V

    .line 24
    return-void

    .line 21
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/DataUploadProxy;)Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/DataUploadProxy;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_listener:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/DataUploadProxy;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/DataUploadProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/DataUploadProxy;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/DataUploadProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected final createCommand(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;)Lcom/nuance/nmdp/speechkit/CommandBase;
    .registers 5
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
            "Lcom/nuance/nmdp/speechkit/DataUploadResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    new-instance v0, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;-><init>(Lcom/nuance/nmdp/speechkit/DataUploadProxy;Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final setListener(Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    .prologue
    .line 29
    const-string/jumbo v0, "listener"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_9
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_listener:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    .line 34
    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method

.method final setReady()V
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_isReady:Z

    .line 73
    return-void
.end method

.method public final start()V
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_isReady:Z

    if-eqz v0, :cond_7

    .line 78
    invoke-super {p0}, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->start()V

    .line 80
    :cond_7
    return-void
.end method
