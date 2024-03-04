.class final Lcom/nuance/nmdp/speechkit/VocalizerProxy;
.super Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;
.source "VocalizerProxy.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Vocalizer;


# instance fields
.field private final _kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

.field private _listener:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

.field private _vocalizer:Lcom/nuance/nmdp/speechkit/VocalizerImpl;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Ljava/lang/Object;)V
    .locals 1
    .param p1, "kit"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p2, "voice"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    .param p5, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 14
    invoke-direct {p0, p5}, Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;-><init>(Ljava/lang/Object;)V

    .line 15
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    .line 16
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .line 17
    new-instance v0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/nuance/nmdp/speechkit/VocalizerProxy$1;-><init>(Lcom/nuance/nmdp/speechkit/VocalizerProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/VocalizerProxy;)Lcom/nuance/nmdp/speechkit/VocalizerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    .prologue
    .line 6
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->_vocalizer:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/VocalizerProxy;Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/VocalizerImpl;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerProxy;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->_vocalizer:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/VocalizerProxy;)Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    .prologue
    .line 6
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/VocalizerProxy;)Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->createVocalizerListener()Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/nmdp/speechkit/VocalizerProxy;)Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->listener()Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/nmdp/speechkit/VocalizerProxy;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/nmdp/speechkit/VocalizerProxy;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createVocalizerListener()Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/VocalizerProxy$2;-><init>(Lcom/nuance/nmdp/speechkit/VocalizerProxy;)V

    return-object v0
.end method

.method private listener()Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    .locals 2

    .prologue
    .line 28
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 67
    new-instance v0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$3;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/VocalizerProxy$3;-><init>(Lcom/nuance/nmdp/speechkit/VocalizerProxy;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 109
    const-string v0, "language"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkStringArgForNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$6;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/VocalizerProxy$6;-><init>(Lcom/nuance/nmdp/speechkit/VocalizerProxy;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method public final setListener(Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    .prologue
    .line 136
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    .line 141
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final setVoice(Ljava/lang/String;)V
    .locals 1
    .param p1, "voice"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 123
    const-string v0, "voice"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkStringArgForNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$7;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/VocalizerProxy$7;-><init>(Lcom/nuance/nmdp/speechkit/VocalizerProxy;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public final speakMarkupString(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 80
    const-string v0, "text"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/nmdp/speechkit/VocalizerProxy$4;-><init>(Lcom/nuance/nmdp/speechkit/VocalizerProxy;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public final speakString(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkForInvalid()V

    .line 95
    const-string v0, "text"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/nmdp/speechkit/VocalizerProxy$5;-><init>(Lcom/nuance/nmdp/speechkit/VocalizerProxy;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method
