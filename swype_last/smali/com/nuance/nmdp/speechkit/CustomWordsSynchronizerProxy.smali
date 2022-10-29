.class public final Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;
.super Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;
.source "CustomWordsSynchronizerProxy.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;


# instance fields
.field private final _kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

.field private _listener:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

.field private _synchronizer:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;Ljava/lang/Object;)V
    .registers 7
    .param p1, "kit"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p2, "dictationType"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;
    .param p5, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 19
    invoke-direct {p0, p5}, Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;-><init>(Ljava/lang/Object;)V

    .line 21
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    .line 22
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .line 24
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$1;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_synchronizer:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_synchronizer:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->createCustomWordsSynchronizerListener()Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->listener()Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createCustomWordsSynchronizerListener()Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;
    .registers 2

    .prologue
    .line 140
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)V

    return-object v0
.end method

.method private listener()Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;
    .registers 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    monitor-exit v1

    return-object v0

    .line 136
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method


# virtual methods
.method public final addCustomWordsSet(Ljava/util/Set;Z)V
    .registers 4
    .param p2, "clearAllCustomWords"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 38
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$2;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;Ljava/util/Set;Z)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method public final cancel()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 122
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$8;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$8;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public final clearAllCustomWords()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 66
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$4;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$4;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public final deleteAllUserInformation()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 79
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$5;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$5;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public final removeCustomWordsSet(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 53
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$3;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;Ljava/util/Set;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public final setDictationType(Ljava/lang/String;)V
    .registers 3
    .param p1, "dictationType"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 106
    const-string/jumbo v0, "Dictation Type"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkStringArgForNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$7;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$7;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .registers 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 92
    const-string/jumbo v0, "language"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkStringArgForNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$6;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$6;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method
