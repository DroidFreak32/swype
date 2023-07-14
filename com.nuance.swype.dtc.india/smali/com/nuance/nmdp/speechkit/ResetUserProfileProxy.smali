.class final Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;
.super Lcom/nuance/nmdp/speechkit/CommandProxyBase;
.source "ResetUserProfileProxy.java"

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
.field private _error:Lcom/nuance/nmdp/speechkit/SpeechError;

.field private _listener:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Ljava/lang/Object;)V
    .locals 2
    .param p1, "kit"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p2, "listener"    # Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;
    .param p3, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->getResetUerProfileCmd()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/nuance/nmdp/speechkit/CommandProxyBase;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->_error:Lcom/nuance/nmdp/speechkit/SpeechError;

    .line 17
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->_listener:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->init()V

    .line 22
    return-void

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;)Lcom/nuance/nmdp/speechkit/SpeechError;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->_error:Lcom/nuance/nmdp/speechkit/SpeechError;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;Lcom/nuance/nmdp/speechkit/SpeechError;)Lcom/nuance/nmdp/speechkit/SpeechError;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->_error:Lcom/nuance/nmdp/speechkit/SpeechError;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;)Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->_listener:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->callback(Ljava/lang/Runnable;)V

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
            "Lcom/nuance/nmdp/speechkit/GenericResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    new-instance v0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;-><init>(Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setListener(Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    .prologue
    .line 27
    const-string/jumbo v0, "listener"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->_listener:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    .line 32
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
