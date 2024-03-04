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
    .locals 2
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
    :try_start_0
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_listener:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_isReady:Z

    .line 23
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->init()V

    .line 24
    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/DataUploadProxy;)Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/DataUploadProxy;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_listener:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/DataUploadProxy;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/DataUploadProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/DataUploadProxy;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/DataUploadProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected final createCommand(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;)Lcom/nuance/nmdp/speechkit/CommandBase;
    .locals 1
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
    .locals 2
    .param p1, "listener"    # Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    .prologue
    .line 29
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_listener:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final setReady()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_isReady:Z

    .line 73
    return-void
.end method

.method public final start()V
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_isReady:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-super {p0}, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->start()V

    .line 80
    :cond_0
    return-void
.end method
